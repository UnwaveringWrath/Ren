// Add event listener to nav links
document.querySelectorAll('nav a').forEach((link) => {
    link.addEventListener('click', (e) => {
        // Remove active class from all links
        document.querySelectorAll('nav a').forEach((otherLink) => {
            otherLink.classList.remove('active');
        });
        // Add active class to clicked link
        e.target.classList.add('active');
    });
});

// Add event listener to latest offers buttons
document.querySelectorAll('.latest-offers button').forEach((button) => {
    button.addEventListener('click', () => {
        // Redirect to set arrangements page
        window.location.href = 'set-arrangements.html';
    });
});