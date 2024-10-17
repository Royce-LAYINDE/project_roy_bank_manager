import os

from flask import Flask, render_template, request, redirect, url_for, session
from flask_login import LoginManager, UserMixin, login_user, login_required, logout_user, current_user
import mysql.connector
import pickle
import pandas as pd
from sklearn.preprocessing import LabelEncoder


app = Flask(__name__)
app.secret_key = "roybank1234"
login_manager = LoginManager(app)

# Définition de la classe User pour gérer les utilisateurs avec Flask-Login
class User(UserMixin):
    def __init__(self, user_id):
        self.id = user_id

# Chargement de l'utilisateur à partir de l'ID stocké dans la session
@login_manager.user_loader
def chargement_user(user_id):
    return User(user_id)

# Connexion à la base de données MySQL
def connexion_db():
    return mysql.connector.connect(
        host=os.getenv('MYSQL_HOST', '127.0.0.1'),       
        user=os.getenv('MYSQL_USER', 'royce'),  
        password=os.getenv('MYSQL_PASSWORD', 'Vempire61@'),  
        database=os.getenv('MYSQL_DATABASE', 'roy_bank')  
    )

# Vérification des identifiants de l'utilisateur dans la base de données
def verification_id(email, password):
    conn = connexion_db()
    cursor = conn.cursor()
    requete = "SELECT id, mot_de_passe FROM utilisateurs WHERE email = %s"
    cursor.execute(requete, (email,))
    user_data = cursor.fetchone()
    cursor.close()
    conn.close()
    if user_data:
        user_id, vrai_password = user_data
        if password == vrai_password:  
            return User(user_id)
    return None

# Route pour afficher la page de connexion
@app.route('/')
def afficherPageLogin():
    return render_template('login.html')

# Route pour gérer la connexion
@app.route('/connexion', methods=['GET', 'POST'])
def connexion():
    message_erreur = None
    if request.method == 'POST':
        email = request.form.get('email')
        password = request.form.get('password')
        user = verification_id(email, password)
        if user:
            login_user(user)
            return redirect(url_for('afficherPageAccueil'))
        else:
            message_erreur = "Identifiants invalides. Veuillez réessayer."
    return render_template('login.html', error_message=message_erreur)

# Fonction pour récupérer les données de LA TABLE CLIENT
def recup_infosClient():
    conn = connexion_db()
    cursor = conn.cursor(dictionary=True)  
    requete = "SELECT * FROM clients"  
    cursor.execute(requete)
    infos_clients = cursor.fetchall()
    conn.close()
    return infos_clients


# Route pour afficher la page d'accueil (requiert une connexion)
@app.route('/accueil')
@login_required
def afficherPageAccueil():
    conn = connexion_db()
    cursor = conn.cursor()
    cursor.execute("SELECT COUNT(*) FROM clients")
    nombre_clients = cursor.fetchone()[0]
    cursor.execute("SELECT COUNT(*) FROM clients WHERE marie = 'O'")
    total_marie = cursor.fetchone()[0]
    total_marie = (total_marie*100)/nombre_clients
    cursor.execute("SELECT COUNT(*) FROM clients WHERE marie = 'N'")
    total_non_marie = cursor.fetchone()[0]
    total_non_marie = (total_non_marie*100)/nombre_clients

    cursor.execute("SELECT COUNT(*) FROM clients WHERE dependants = '0'")
    dep_0 = cursor.fetchone()[0]
    dep_0 = (dep_0*100)/nombre_clients
    cursor.execute("SELECT COUNT(*) FROM clients WHERE dependants = '1'")
    dep_1 = cursor.fetchone()[0]
    dep_1 = (dep_1*100)/nombre_clients
    cursor.execute("SELECT COUNT(*) FROM clients WHERE dependants = '2'")
    dep_2 = cursor.fetchone()[0]
    dep_2 = (dep_2*100)/nombre_clients
    cursor.execute("SELECT COUNT(*) FROM clients WHERE dependants >= '3'")
    dep_3_plus = cursor.fetchone()[0]
    dep_3_plus = (dep_3_plus*100)/nombre_clients

    cursor.execute("SELECT COUNT(*) FROM clients WHERE education = 'O'")
    diplome_oui = cursor.fetchone()[0]
    diplome_oui = (diplome_oui*100)/nombre_clients
    cursor.execute("SELECT COUNT(*) FROM clients WHERE education = 'N'")
    diplome_non = cursor.fetchone()[0]
    diplome_non = (diplome_non*100)/nombre_clients

    cursor.execute("SELECT COUNT(*) FROM clients WHERE auto_entrepreneur = 'O'")
    auto_entrepreneur_oui = cursor.fetchone()[0]
    auto_entrepreneur_oui = (auto_entrepreneur_oui*100)/nombre_clients
    cursor.execute("SELECT COUNT(*) FROM clients WHERE auto_entrepreneur = 'N'")
    auto_entrepreneur_non = cursor.fetchone()[0]
    auto_entrepreneur_non = (auto_entrepreneur_non*100)/nombre_clients

    cursor.execute("SELECT COUNT(*) FROM clients WHERE zone_propriete = 'rural'")
    zone_rural = cursor.fetchone()[0]
    zone_rural = (zone_rural*100)/nombre_clients
    cursor.execute("SELECT COUNT(*) FROM clients WHERE zone_propriete = 'semiurban'")
    zone_semiurbain = cursor.fetchone()[0]
    zone_semiurbain = (zone_semiurbain*100)/nombre_clients
    cursor.execute("SELECT COUNT(*) FROM clients WHERE zone_propriete = 'urban'")
    zone_urbain = cursor.fetchone()[0]
    zone_urbain = (zone_urbain*100)/nombre_clients

    cursor.execute("SELECT COUNT(*) FROM clients WHERE genre = 'M'")
    masculin_count = cursor.fetchone()[0]
    masculin_count = (masculin_count*100)/nombre_clients
    cursor.execute("SELECT COUNT(*) FROM clients WHERE genre = 'F'")
    feminin_count = cursor.fetchone()[0]
    feminin_count = (feminin_count*100)/nombre_clients

    cursor.execute("""
        SELECT id_client, nom, prenom, revenu_mensuel 
        FROM clients 
        ORDER BY revenu_mensuel DESC 
        LIMIT 3
    """)
    top_revenus = cursor.fetchall()
    cursor.execute("""
        SELECT id_client, nom, prenom, revenu_mensuel 
        FROM clients 
        ORDER BY revenu_mensuel ASC 
        LIMIT 3
    """)
    low_revenus = cursor.fetchall()

    cursor.execute("SELECT COUNT(*) FROM historique_pret")
    nombre_pret = cursor.fetchone()[0]
    cursor.execute("SELECT COUNT(*) FROM historique_pret WHERE statut_pret = 'O'")
    nombre_pret_accorde = cursor.fetchone()[0]
    cursor.execute("SELECT COUNT(*) FROM historique_pret WHERE statut_pret = 'N'")
    nombre_pret_refuse = cursor.fetchone()[0]
    cursor.execute("SELECT MIN(date_emprunt), MAX(date_emprunt) FROM historique_pret")
    dates_pret = cursor.fetchone()
    date_petite = dates_pret[0]
    date_grande = dates_pret[1]

    cursor.execute("""
        SELECT c.id_client, c.nom, c.prenom, COUNT(t.id_transaction) AS nombre_transactions
        FROM clients c
        JOIN transactions t ON c.id_client = t.id_client
        GROUP BY c.id_client, c.nom, c.prenom
        ORDER BY nombre_transactions DESC
        LIMIT 3
    """)
    top_transactions = cursor.fetchall()
    cursor.execute("""
        SELECT c.id_client, c.nom, c.prenom, COUNT(t.id_transaction) AS nombre_transactions
        FROM clients c
        JOIN transactions t ON c.id_client = t.id_client
        GROUP BY c.id_client, c.nom, c.prenom
        ORDER BY nombre_transactions ASC
        LIMIT 3
    """)
    low_transactions = cursor.fetchall()

    cursor.close()
    conn.close()

    return render_template('accueil.html',total_marie=total_marie,total_non_marie=total_non_marie, 
                           masculin_count=masculin_count, feminin_count=feminin_count, 
                           dep_0=dep_0, dep_1=dep_1, dep_2=dep_2, dep_3_plus=dep_3_plus, 
                           diplome_oui=diplome_oui, diplome_non=diplome_non,
                           auto_entrepreneur_oui=auto_entrepreneur_oui, auto_entrepreneur_non=auto_entrepreneur_non,
                           zone_rural=zone_rural, zone_semiurbain=zone_semiurbain, zone_urbain=zone_urbain,
                           top_revenus = top_revenus, low_revenus=low_revenus,
                           nombre_pret=nombre_pret,nombre_pret_accorde=nombre_pret_accorde, nombre_pret_refuse=nombre_pret_refuse, date_grande=date_grande,date_petite=date_petite,
                           low_transactions=low_transactions,top_transactions=top_transactions
                           )

# Route pour afficher la page gestionClent (requiert une connexion)
@app.route('/gestionClient')
@login_required
def afficherPageGestionClient():
    infos_clients = recup_infosClient()
    return render_template('gestionClient.html', clients = infos_clients)

@app.route('/test')
def test():
    conn = connexion_db()
    cursor = conn.cursor(dictionary=True)  
    requete = "SELECT * FROM clients"  
    cursor.execute(requete)
    infos_clients = cursor.fetchall()
    conn.close()
    print("voici les données", infos_clients)
    return str(infos_clients)


# Route pour afficher la page transactions (requiert une connexion)
@app.route('/transactions')
@login_required
def afficherPageTransactions():
    infos_clients = recup_infosClient()
    return render_template('transactions.html', clients = infos_clients)

def recup_infosFormulaire():
    if request.method == 'POST':
        nom = request.form.get('nom')
        prenom = request.form.get('prenom')
        genre = request.form.get('genre')
        marie = request.form.get('marie')  
        dependants = int(request.form.get('dependants'))
        education = request.form.get('education')
        auto_entrepreneur = request.form.get('auto_entrepreneur')
        revenu_mensuel = float(request.form.get('revenu_mensuel'))
        co_revenu = float(request.form.get('corevenu'))
        zone_propriete = request.form.get('zone_propriete')
        montant_pret = float(request.form.get('montant_pret'))
        duree_pret = int(request.form.get('duree_pret'))
        historique_credit = int(request.form.get('hc'))

        donnees_formulaire = {
            'nom': nom,
            'prenom': prenom,
            'genre': genre,
            'marie': marie,
            'dependants': dependants,
            'education': education,
            'auto_entrepreneur': auto_entrepreneur,
            'revenu_mensuel': revenu_mensuel,
            'revenu_demandeur': co_revenu,
            'zone_propriete': zone_propriete,
            'montant_pret': montant_pret,
            'duree_pret': duree_pret,
            'historique_credit': historique_credit
        }
        # print("voici les données", donnees_formulaire)
        return donnees_formulaire
    
# Route pour afficher la page formulaire
@app.route('/formulairepret', methods=['GET', 'POST'])
@login_required
def afficherPageFormulairePret():
    if request.method == 'POST':
        donnees_formulaire = recup_infosFormulaire()
        if donnees_formulaire:
            session['donnees_formulaire'] = donnees_formulaire
            return redirect(url_for('prediction'))  # Redirection après soumission du formulaire
        print("voici la session au niveau de afficherPageFormulairePret ",
        session)
    return render_template('formulairePret.html')

# Route pour traiter la prédiction
@app.route('/prediction', methods=['GET', 'POST'])
@login_required
def prediction():
    donnees_formulaire = session.get('donnees_formulaire', None)
    if donnees_formulaire:
        client_nom = f"{donnees_formulaire['prenom']} {donnees_formulaire['nom']}"
        montant_pret = donnees_formulaire['montant_pret']
        colonnes = ['nom', 'prenom', 'genre', 'marie', 'dependants', 'education', 'auto_entrepreneur', 'revenu_mensuel', 'revenu_demandeur', 'zone_propriete', 'montant_pret', 'duree_pret', 'historique_credit']
        df = pd.DataFrame([donnees_formulaire], columns=colonnes)
        predata = df.drop(["nom", "prenom"], axis=1)

        # Encoder les colonnes catégorielles
        colonnes_categorielles = ['genre', 'marie', 'dependants', 'education', 'auto_entrepreneur', 'zone_propriete']
        for i in colonnes_categorielles:
            predata[i] = predata[i].astype("object")
            predata[i] = LabelEncoder().fit_transform(predata[i])

        # Charger le modèle et faire une prédiction
        with open("models/prediction_eligibilite_pret_modelRL_byRoyce.pkl", "rb") as modele:
            modeleRL = pickle.load(modele)

        prediction = modeleRL.predict(predata)
        session['verdict'] = prediction[0]  
        session['client_nom'] = client_nom
        session['montant_pret'] = montant_pret
        return redirect(url_for('afficherPageeligibilitePret'))  

    return "Erreur: Pas de données disponibles pour la prédiction."

# Route pour afficher le verdict
@app.route('/eligibilitePret', methods=['GET', 'POST'])
@login_required
def afficherPageeligibilitePret():
    verdict = session.get('verdict', None)
    client_nom = session.get('client_nom', None)
    montant_pret = session.get('montant_pret', None)
    if verdict is not None:
        return render_template('eligibilitePret.html', verdict=verdict,client_nom=client_nom, montant_pret =montant_pret )
    return "Erreur: Aucun verdict disponible."

@app.route("/client/<int:id_client>")
def voirClient(id_client):
    conn = connexion_db()
    cursor = conn.cursor(dictionary=True)
    requete = "SELECT * FROM clients WHERE id_client = %s"
    cursor.execute(requete, (id_client,))
    client = cursor.fetchone()
    requete2 = """
    SELECT  t.nature, t.montant_transaction, t.date_transaction
    FROM transactions t
    JOIN clients c ON c.id_client = t.id_client
    WHERE t.id_client = %s
    ORDER BY t.date_transaction DESC;
    """
    cursor.execute(requete2, (id_client,))
    transactions = cursor.fetchall()
    cursor.close()
    conn.close()

    if client is None:
        return "Client non trouvé", 404
    print(transactions)
    return render_template('voirClient.html', client=client, transactions=transactions)

if __name__ == '__main__':
    app.run(debug=True)
