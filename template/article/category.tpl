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
    <style>.article-item .pull-left {width:<?php echo $config_article_image_width; ?>px;}.article-item .caption {padding-left:<?php echo $config_article_image_width+15; ?>px;}</style>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php if($description){ ?>
      <div class="article-descr">
          <?php echo $description; ?>
      </div>
      <?php } ?>
      <?php if ($articles) { ?>
      <div class="row articles">
        <?php foreach ($articles as $article) { ?>
        <div class="article-item col-xs-12">
            <a href="<?php echo $article['href']; ?>" class="pull-left"><img src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>" title="<?php echo $article['name']; ?>" class="img-responsive" /></a>
            <div>
              <div class="caption">
                <h2><a href="<?php echo $article['href']; ?>"><?php echo $article['name']; ?></a></h2>
                <p><?php echo $article['description']; ?></p>
                <div class="article-date"><i class="article-time"></i> <?php echo $article['date_added']; ?></div>
              </div>
            </div>
        </div>
        <?php } ?>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$articles) { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
