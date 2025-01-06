document.addEventListener('DOMContentLoaded', function() {
    // Existing code for featured properties and articles

    // Login and Signup functionality
    const loginBtn = document.getElementById('loginBtn');
    const loginForm = document.getElementById('loginForm');
    const signupForm = document.getElementById('signupForm');
    const closeLogin = document.getElementById('closeLogin');
    const closeSignup = document.getElementById('closeSignup');
    const signupLink = document.getElementById('signupLink');
    const loginLink = document.getElementById('loginLink');

    loginBtn.addEventListener('click', function(e) {
        e.preventDefault();
        loginForm.classList.remove('hidden');
    });

    closeLogin.addEventListener('click', function() {
        loginForm.classList.add('hidden');
    });

    closeSignup.addEventListener('click', function() {
        signupForm.classList.add('hidden');
    });

    signupLink.addEventListener('click', function(e) {
        e.preventDefault();
        loginForm.classList.add('hidden');
        signupForm.classList.remove('hidden');
    });

    loginLink.addEventListener('click', function(e) {
        e.preventDefault();
        signupForm.classList.add('hidden');
        loginForm.classList.remove('hidden');
    });

   
    const loginFormElement = document.getElementById('loginFormElement');
    const signupFormElement = document.getElementById('signupFormElement');

    loginFormElement.addEventListener('submit', function(e) {
        e.preventDefault();
        const email = document.getElementById('loginEmail').value;
        const password = document.getElementById('loginPassword').value;
        console.log('Login attempt:', { email, password });
       
        alert('Login functionality would be implemented here.');
    });

    signupFormElement.addEventListener('submit', function(e) {
        e.preventDefault();
        const name = document.getElementById('signupName').value;
        const email = document.getElementById('signupEmail').value;
        const password = document.getElementById('signupPassword').value;
        const role = document.querySelector('input[name="role"]:checked').value;
        console.log('Signup attempt:', { name, email, password, role });
       
        alert('Signup functionality would be implemented here.');
    });

    
});