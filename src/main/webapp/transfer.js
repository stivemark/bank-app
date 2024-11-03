/**
 * 
 */
function validateTransferForm() {
    const accountNumber = document.getElementById('accountNumber').value;
    const transferAmount = document.getElementById('transferAmount').value;
    const pin = document.getElementById('pin').value;
    const errorMessage = document.getElementById('error-message');

    // Simple validation checks
    if (!accountNumber || !transferAmount || !pin) {
        errorMessage.textContent = "All fields are required!";
        return false; // Prevent form submission
    }

    if (transferAmount <= 0) {
        errorMessage.textContent = "Amount must be greater than zero!";
        return false; // Prevent form submission
    }

    // Clear error message and allow form submission
    errorMessage.textContent = "";
    return true;
}

function goToHomePage() {
    window.location.href = 'index.html'; // Change this to the path of your home page
}
