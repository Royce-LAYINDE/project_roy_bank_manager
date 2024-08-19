// deconnexion.
function deconnexion() {
    var confirmation = window.confirm("Voulez-vous vraiment vous déconnecter ?");
      if (confirmation) {
        alert("Vous êtes maintenant déconnecté !");
        window.location.href = '/';
    } else {
        alert("La déconnexion a été annulée.");
    }
}


//affichage du tableau
document.addEventListener('DOMContentLoaded', function() {
    const table = document.getElementById('table');
    const lignes = table.getElementsByTagName('tr');
    const rechercheInput = document.getElementById('recherche');

    rechercheInput.addEventListener('input', function() {
        const filter = rechercheInput.value.toUpperCase();
        for (let i = 1; i < lignes.length; i++) {
            const ligne = lignes[i];
            const cellules = ligne.getElementsByTagName('td');
            let trouvee = false;
            for (let j = 0; j < cellules.length; j++) {
                const cellule = cellules[j];
                if (cellule) {
                    const txtValue = cellule.textContent || cellule.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        trouvee = true;
                        break;
                    }
                }
            }
            ligne.style.display = trouvee ? '' : 'none';
        }
    });

    function resetTable() {
        for (let i = 1; i < lignes.length; i++) {
            lignes[i].style.display = '';
        }
    }
});