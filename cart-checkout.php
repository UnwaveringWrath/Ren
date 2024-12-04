<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart Checkout</title>
    <link rel="stylesheet" href="cart-checkout.css">
</head>
<body>
    <nav>
        <ul>
            <li><a href="index.php" class="active">Home</a></li>
            <li><a href="flowers.html">Flowers</a></li>
            <li><a href="Arrangements.php">Set Arrangements</a></li>
            <li><a href="cart-checkout.php">Cart Checkout</a></li>
            <li><a href="ContactUs.html">Contact Us</a></li>
        </ul>
    </nav>
    <h1 style="color: rgb(255, 255, 255);">&#9830;  &#160;  &#160;   Ren &#160; &#160;      &#9830;</h1>
    <h2 class="subheading"><i> Home &#160;  of &#160;  Fleurs </i></h2>
    <div class="welcome"></div>
    
    <br> <br><br>
    <h1>Cart Checkout</h1>
    
    <div class="box">
        <h2>Order Summary</h2>
        <table id="order-summary">
            <thead>
                <tr>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody id="order-summary-body">
                <?php foreach ($cart as $item): 
                    $itemTotal = $item['price'] * $item['qty'];
                    $total += $itemTotal; ?>
                    <tr>
                        <td><?php echo $item['name']; ?></td>
                        <td><?php echo $item['qty']; ?></td>
                        <td>$<?php echo number_format($item['price'], 2); ?></td>
                        <td>$<?php echo number_format($itemTotal, 2); ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        <h3>Total: $<?php echo number_format
            <h3>Total: $<?php echo number_format($total, 2); ?></h3>
        </div>
    
        <div class="CCD">
            <h2>Credit Card Information</h2>
            <form id="credit-card-form-inputs" class="form-grid" method="POST">
                <input type="hidden" name="credit_card" value="1">
                <div class="form-group">
                    <label for="first-name">First Name:</label>
                    <input type="text" class="first-name" name="first-name" required>
                </div>
                <div class="form-group">
                    <label for="last-name">Last Name:</label>
                    <input type="text" class="last-name" name="last-name" required>
                </div>
                <div class="form-group">
                    <label for="credit-card-type">Credit Card Type:</label>
                    <select class="credit-card-type" name="credit-card-type" required>
                        <option value="visa">Visa</option>
                        <option value="platinum">Platinum</option>
                        <option value="credit">Credit</option>
                        <option value="debit">Debit</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="credit-card-number">Credit Card Number:</label>
                    <input type="text" class="credit-card-number" name="credit-card-number" required>
                </div>
                <div class="form-group">
                    <label for="vcc">VCC:</label>
                    <input type="text" class="vcc" name="vcc" required>
                </div>
                <div class="form-group">
                    <label for="pincode">Pincode:</label>
                    <input type="text" class="pincode" name="pincode" required>
                </div>
                <div class="form-group">
                    <button type="submit" id="submit-credit-card-form">Submit</button>
                </div>
            </form>
        </div>
    
        <div class="COD">
            <h2>Cash on Delivery Information</h2>
            <form id="cash-on-delivery-form-inputs" class="form-grid" method="POST">
                <input type="hidden" name="cash_on_delivery" value="1">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="address">Address:</label>
                    <textarea class="address" name="address" required></textarea>
                </div>
                <div class="form-group">
                    <label for="city">City:</label>
                    <input type="text" class="city" name="city" required>
                </div>
                <div class="form-group">
                    <label for="state">State:</label>
                    <input type="text" class="state" name="state" required>
                </div>
                <div class="form-group">
                    <label for="pincode">Pincode:</label>
                    <input type="text" class="pincode" name="pincode" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone:</label>
                    <input type="text" class="phone" name="phone" required>
                </div>
                <div class="form-group">
                    <button type="submit" id="submit-cash-on-delivery-form">Submit</button>
                </div>
            </form>
        </div>
    
        <footer>
            <p>Copyrights &#169 2024 - All rights reserved </p>
        </footer>
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="script.js"></script>
    </body>
    </html>