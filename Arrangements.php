<?php

$conn = mysqli_connect("localhost", "username", "password", "database");

if (!$conn) {
    die("Connection failed: " + mysqli_connect_error());
}


$query = "SELECT * FROM arrangements";
$result = mysqli_query($conn, $query);


if (!$result) {
    die("Query failed: " + mysqli_error($conn));
}


$arrangements = array();


while ($row = mysqli_fetch_assoc($result)) {
    $arrangements[] = $row;
}

<div class="arrangements">
  <?php
  $arrangements = array(
    array('name' => 'My Love Bear', 'price' => 50, 'image' => 'my-love-bear.jpg', 'colors' => array('Red', 'Pink')),
    array('name' => 'Bridal 1', 'price' => 70, 'image' => 'bridal-1.jpg'),
    array('name' => 'Bridal 2', 'price' => 275, 'image' => 'bridal-2.jpg', 'colors' => array('White', 'Red')),
    array('name' => 'Rose Arch', 'price' => 350, 'image' => 'rose-arch.jpg', 'colors' => array('Pink', 'Red', 'White', 'Yellow', 'Blue')),
    array('name' => 'Love You Mum', 'price' => 25, 'image' => 'love-you-mum.jpg'),
    array('name' => 'Best Mum Ever', 'price' => 30, 'image' => 'best-mum-ever.jpg', 'colors' => array('Pink', 'Red', 'Purple', 'Yellow', 'Blue')),
    array('name' => 'Happy Birthday', 'price' => 30, 'image' => 'happy-birthday.jpg'),
    array('name' => 'Valentines 1', 'price' => 35, 'image' => 'valentines-1.jpg'),
    array('name' => 'Valentines 2', 'price' => 50, 'image' => 'valentines-2.jpg'),
    array('name' => 'Valentines 3', 'price' => 85, 'image' => 'valentines-3.jpg'),
    array('name' => 'LOVE', 'price' => 85, 'image' => 'love.jpg', 'sizes' => array('Small (50 roses)' => 85, 'Medium (100 roses)' => 125, 'Large (1000 roses)' => 1200)),
  );

  foreach ($arrangements as $arrangement) {
    ?>
    <div class="arrangement">
      <img src="images/<?php echo $arrangement['image']; ?>" alt="<?php echo $arrangement['name']; ?>">
      <h2><?php echo $arrangement['name']; ?></h2>
      <?php if (isset($arrangement['colors'])) { ?>
        <p>Available in: <?php echo implode(', ', $arrangement['colors']); ?></p>
      <?php } ?>
      <p>Price: $<?php echo $arrangement['price']; ?></p>
      <?php if (isset($arrangement['sizes'])) { ?>
        <form>
          <?php foreach ($arrangement['sizes'] as $size => $price) { ?>
            <input type="radio" id="<?php echo $size; ?>" name="size" value="<?php echo $price; ?>">
            <label for="<?php echo $size; ?>"><?php echo $size; ?> - $<?php echo $price; ?></label><br>
          <?php } ?>
        </form>
      <?php } ?>
      <button>Add to Cart</button>
    </div>
    <?php
  }
  ?>
</div>

mysqli_close($conn);
?>