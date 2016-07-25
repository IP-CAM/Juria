<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php if(isset($breadcrumb['href'])){ ?>
    <li typeof="v:Breadcrumb"><a href="<?php echo $breadcrumb['href']; ?>" rel="v:url" property="v:title"><?php echo $breadcrumb['text']; ?></a></li>
    <?php }else{ ?>
    <li typeof="v:Breadcrumb"><?php echo $breadcrumb['text']; ?></li>
    <?php } ?>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> article"><?php echo $content_top; ?>
      <div class="row">
        <div class="col-sm-12">
            <h1><?php echo $heading_title; ?></h1>
            <div class="description">
                <?php echo $description; ?>
            </div>
            
        </div>
      </div>
        <?php if($products){ ?>
        <br />
        <h3><?php echo $text_related_products; ?></h3>
        <div class="row">
            <div class="article-products">
                <?php foreach($products as $product){ ?>
                <div class="product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <div class="product-thumb">
                        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
                        <div>
                          <div class="caption">
                            <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                            <p><?php echo $product['description']; ?></p>
                            <?php if ($product['rating']) { ?>
                            <div class="rating">
                              <?php for ($i = 1; $i <= 5; $i++) { ?>
                              <?php if ($product['rating'] < $i) { ?>
                              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                              <?php } else { ?>
                              <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                              <?php } ?>
                              <?php } ?>
                            </div>
                            <?php } ?>
                            <?php if ($product['price']) { ?>
                            <p class="price">
                              <?php if (!$product['special']) { ?>
                              <?php echo $product['price']; ?>
                              <?php } else { ?>
                              <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                              <?php } ?>
                              <?php if ($product['tax']) { ?>
                              <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                              <?php } ?>
                            </p>
                            <?php } ?>
                          </div>
                        </div>
                      </div>
                </div>
                <?php } ?>
            </div>
        </div>
        <?php } ?>        
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>