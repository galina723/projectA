
function DrawChart() {
    var ctx = document.getElementById('totalSales').getContext('2d');
    var totalSales = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
            datasets: [{
                    //label: '# of Votes',
                    data: [29, 45, 45, 30, 40, 31],
                    backgroundColor: 'rgba(255, 255, 255, 100);',
                    borderColor: 'rgba(255, 255, 255, 1)',
                    borderWidth: 1,
                    tension: 0.4, // Adjust the tension value to change the line curvature
                    pointRadius: 0
                }]
        },
        options: {
            scales: {
                y: {
                    //beginAtZero: true
                    display: false
                },
                x: {
                    display: false
                }
            },
            plugins: {
                legend: {
                    display: false
                }
            }

        }
    });

    var ctx = document.getElementById('averageOrder').getContext('2d');
    var averageOrder = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange', 'Magenta', 'Cyan', 'Ble', 'Pink', 'Cucu', 'Coco',
            'Melon', 'Water', 'Pot', 'Kiki', 'Kaka', 'Haha'],
            datasets: [{
                    label: '# of Votes',
                    data: [12, 19, 3, 5, 2, 3, 11, 10, 9, 17, 16, 15, 19, 20, 21],
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)',
                        'rgba(75, 192, 192, 0.2)',
                        'rgba(153, 102, 255, 0.2)',
                        'rgba(255, 159, 64, 0.2)',
                        'rgba(255, 159, 64, 0.2)',
                        'rgba(255, 159, 64, 0.2)',
                        'rgba(255, 159, 64, 0.2)',
                        'rgba(255, 159, 64, 0.2)',
                         'rgba(255, 159, 64, 0.2)',
                         'rgba(255, 159, 64, 0.2)',
                         'rgba(255, 159, 64, 0.2)',
                         
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                        'rgba(255, 159, 64, 1)',
                        'rgba(255, 159, 64, 1)',
                        'rgba(255, 159, 64, 1)',
                        'rgba(255, 159, 64, 1)',
                        'rgba(255, 159, 64, 1)',
                        'rgba(255, 159, 64, 1)',
                        'rgba(255, 159, 64, 1)',
                        'rgba(255, 159, 64, 1)'
                    ],
                    borderWidth: 1
                }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                    display: false
                },
                x: {
                    display: false
                }
                
            },
             plugins: {
                legend: {
                    display: false
                }
            }
        }
    });
}