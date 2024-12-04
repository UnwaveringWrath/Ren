function addToCart(arrangementName, arrangementImage) {
    // Create a new tab for the cart
    var cartTab = window.open("cart-checkout.html", "_blank");

    // Send arrangement data to cart tab
    cartTab.arrangementName = arrangementName;
    cartTab.arrangementImage = arrangementImage;

    // Add arrangement to cart
    cartTab.document.getElementById("cart").innerHTML += `
        <div class="cart-item">
            <img src="${arrangementImage}" alt="${arrangementName}">
            <h2>${arrangementName}</h2>
             <p>Price: ${arrangementPrice}</p>
        </div>
    `;
}

// Add event listener to arrangement cards
document.querySelectorAll(".card").forEach((card) => {
    card.addEventListener("mouseover", () => {
        card.querySelector("img").style.opacity = "0.5";
        card.querySelector(".hover-text").style.display = "block";
    });

    card.addEventListener("mouseout", () => {
        card.querySelector("img").style.opacity = "1";
        card.querySelector(".hover-text").style.display = "none";
    });
});