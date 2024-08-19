var canvasGenre = document.getElementById('graphiqueGenre');
var ctx1 = canvasGenre.getContext('2d');
var masculin_count = canvasGenre.getAttribute('data-masculin');
var feminin_count = canvasGenre.getAttribute('data-feminin');
var graphiqueGenre = new Chart(ctx1, {
    type: 'pie',
    data: {
        labels: ['Masculin', 'Féminin'],
        datasets: [{
            label: 'Répartition par Genre',
            data: [masculin_count, feminin_count],
            backgroundColor: ['#FFCE56', '#000000'],
            borderWidth: 1
        }]
    }
});

var canvasMarie = document.getElementById('graphiqueMarie');
var ctx1 = canvasMarie.getContext('2d');
var total_marie = canvasMarie.getAttribute('total_marie');
var total_non_marie = canvasMarie.getAttribute('total_non_marie');
var graphiqueMarie = new Chart(ctx1, {
    type: 'pie',
    data: {
        labels: ['Marié', 'Non Marié'],
        datasets: [{
            label: 'Répartition par Genre',
            data: [total_marie, total_non_marie],
            backgroundColor: ['#FFCE56', '#000000'],
            borderWidth: 1
        }]
    }
});

var canvasEducation = document.getElementById('graphiqueEducation');
var diplome_oui = canvasEducation.getAttribute('data_diplome_oui');
var diplome_non = canvasEducation.getAttribute('data_diplome_non');

var ctxEducation = canvasEducation.getContext('2d');
var graphiqueEducation = new Chart(ctxEducation, {
    type: 'pie',
    data: {
        labels: ['Diplômé', 'Non diplômé'],
        datasets: [{
            label: 'Répartition par éducation',
            data: [diplome_oui, diplome_non],
            backgroundColor: ['#33A6FF', '#FF335E'],
            borderColor: ['#33A6FF', '#FF335E'],
            borderWidth: 1
        }]
    }
});

var canvasAutoEntrepreneur = document.getElementById('graphiqueAutoEntrepreneur');
var auto_oui = canvasAutoEntrepreneur.getAttribute('data-auto-oui');
var auto_non = canvasAutoEntrepreneur.getAttribute('data-auto-non');

var ctxAutoEntrepreneur = canvasAutoEntrepreneur.getContext('2d');
var graphiqueAutoEntrepreneur = new Chart(ctxAutoEntrepreneur, {
    type: 'pie',
    data: {
        labels: ['Auto-Entrepreneur Oui', 'Auto-Entrepreneur Non'],
        datasets: [{
            label: 'Répartition Auto-Entrepreneur',
            data: [auto_oui, auto_non],
            backgroundColor: ['#36A2EB','#FF335E'],
            borderWidth: 1
        }]
    }
});

var canvasZonePropriete = document.getElementById('graphiqueZonePropriete');
var zone_rural = canvasZonePropriete.getAttribute('data-zone-rural');
var zone_semiurbain = canvasZonePropriete.getAttribute('data-zone-semiurbain');
var zone_urbain = canvasZonePropriete.getAttribute('data-zone-urbain');
var ctxZonePropriete = canvasZonePropriete.getContext('2d');
var graphiqueZonePropriete = new Chart(ctxZonePropriete, {
    type: 'pie',
    data: {
        labels: ['Rural', 'Semiurbain', 'Urbain'],
        datasets: [{
            label: 'Répartition par Zone de Propriété',
            data: [zone_rural, zone_semiurbain, zone_urbain],
            backgroundColor: ['#FF335E', '#36A2EB', '#FFCE56'],
            borderWidth: 1
        }]
    }
});


var canvasDep = document.getElementById('graphiqueDep');
var dep_0 = canvasDep.getAttribute('dep_0');
var dep_1 = canvasDep.getAttribute('dep_1');
var dep_2 = canvasDep.getAttribute('dep_2');
var dep_3_plus = canvasDep.getAttribute('dep_3_plus');
var ctxDep = canvasDep.getContext('2d');
var graphiqueDep = new Chart(ctxDep, {
    type: 'pie',
    data: {
        labels: ['0', '1', '2', '3+'],
        datasets: [{
            label: 'Répartition par nombre de Dépendants',
            data: [dep_0, dep_1, dep_2, dep_3_plus],
            backgroundColor: ['#000000', '#36A2EB', '#FFCE56','#FF335E'],
            borderWidth: 1
        }]
    }
});