/**
 * 
 */
function validateForm() {
    const pin = document.getElementById('pin').value;
    const confirmPin = document.getElementById('confirmPin').value;
    const errorMessage = document.getElementById('error-message');

    // Check if the PINs match
    if (pin !== confirmPin) {
        errorMessage.textContent = "PINs do not match!";
        return false; // Prevent form submission
    }

    // Clear error message and allow form submission
    errorMessage.textContent = "";
    return true;
}

function goToHomePage() {
    window.location.href = 'index.html'; // Change this to the path of your home page
}
