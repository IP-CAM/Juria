<h3><?php echo $heading_title; ?></h3>
<p class="line"></p>
<div class="row flex">
    <?php foreach ($products as $product) { ?>
    <div class="product-layout b-prod col-lg-4 col-md-4 col-sm-4 col-xs-24">
        <div class="b-prod__body image">
            <a href="<?php echo $product['href']; ?>">
                <img src="<?php echo $product['thumb']; ?>"
                     alt="<?php echo $product['name']; ?>"
                     title="<?php echo $product['name']; ?>"
                     class="img-responsive"/>
            </a>
        </div>
        <h4 class="b-prod__title">
            <a href="<?php echo $product['href']; ?>">
                <?php echo $product['name']; ?>
            </a>
        </h4>

        <div class="b-prod__footer button-group">
            <button class="pay" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');">
                    <span class="hidden-xs hidden-sm hidden-md"><?php echo $product['price']; ?>
            </button>
        </div>
    </div>
    <?php } ?>
</div>