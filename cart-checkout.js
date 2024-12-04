// Get the cart items from local storage
let cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];

// Function to display cart items
function displayCartItems() {
    const cartContainer = document.getElementById('cart');
    cartContainer.innerHTML = '';

    cartItems.forEach((item, index) => {
        const cartItemHTML = `
            <div class="cart-item">
                <h3>${item.productName}</h3>
                <p>Quantity: ${item.quantity}</p>
                <p>Price: ${item.price}</p>
                <button class="remove-item" data-index="${index}">Remove</button>
            </div>
        `;
        cartContainer.innerHTML += cartItemHTML;
    });
}

// Function to calculate total cost
function calculateTotalCost() {
    let totalCost = 0;
    cartItems.forEach((item) => {
        totalCost += item.price * item.quantity;
    });
    return totalCost;
}

// Function to display order summary
function displayOrderSummary() {
    const orderSummaryBody = document.getElementById('order-summary-body');
    orderSummaryBody.innerHTML = '';

    cartItems.forEach((item) => {
        const orderSummaryRowHTML = `
            <tr>
                <td>${item.productName}</td>
                <td>${item.quantity}</td>
                <td>${item.price}</td>
                <td>${item.price * item.quantity}</td>
            </tr>
        `;
        orderSummaryBody.innerHTML += orderSummaryRowHTML;
    });

    const totalCost = calculateTotalCost();
    const totalCostHTML = `
        <tr>
            <td colspan="3">Total:</td>
            <td>${totalCost}</td>
        </tr>
    `;
    orderSummaryBody.innerHTML += totalCostHTML;
}

// Event listener for remove item button
document.addEventListener('click', (e) => {
    if (e.target.classList.contains('remove-item')) {
        const index = e.target.dataset.index;
        cartItems.splice(index, 1);
        localStorage.setItem('cartItems', JSON.stringify(cartItems));
        displayCartItems();
        displayOrderSummary();
    }
});

// Event listener for credit card form submission
document.getElementById('submit-credit-card-form').addEventListener('click', (e) => {
    e.preventDefault();
    // TO DO: Implement credit card payment processing
    alert('Credit card payment processing not implemented yet!');
});

// Event listener for cash on delivery form submission
document.getElementById('submit-cash-on-delivery-form').addEventListener('click', (e) => {
    e.preventDefault();
    // TO DO: Implement cash on delivery payment processing
    alert('Cash on delivery payment processing not implemented yet!');
});

// Display cart items and order summary on page load
displayCartItems();
displayOrderSummary();