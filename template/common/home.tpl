<?php echo $header; ?>
<div class="container">
    <div class="row">
        <div class="col-sm-24">
            <section class="category-menu">
                <div class="row">

                    <!-- item -->
                    <div class="col-sm-6">
                        <div class="category-menu__item">
                            <a class="category-menu__link" href="#">
                                <img class="category-menu__img" src="catalog/view/theme/Juria/image/category-img-1.jpg"
                                     alt="">
                                <span class="category-menu__label"><span>Майки</span> от <strong>400</strong> Р</span>
                            </a>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="category-menu__item">
                            <a class="category-menu__link" href="#">
                                <img class="category-menu__img" src="catalog/view/theme/Juria/image/category-img-2.jpg"
                                     alt="">
                                <span class="category-menu__label"><span>Трусики</span> от <strong>400</strong> Р</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="category-menu__item">
                            <a class="category-menu__link" href="#">
                                <img class="category-menu__img" src="catalog/view/theme/Juria/image/category-img-3.jpg"
                                     alt="">
                                <span class="category-menu__label"><span>Водолазки</span> от <strong>400</strong> Р</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="category-menu__item">
                            <a class="category-menu__link" href="#">
                                <img class="category-menu__img" src="catalog/view/theme/Juria/image/category-img-4.jpg"
                                     alt="">
                                <span class="category-menu__label"><span>Комплекты</span> от <strong>400</strong> Р</span>
                            </a>
                        </div>
                    </div>


                </div>
            </section>
        </div>
    </div>


    <!-- prices -->
    <h3>Рекомендуемые</h3>
    <p class="line"></p>

    <div class="row">

        <div class="prices col-lg-4 col-md-4 col-sm-4 col-xs-24">

        </div>

        <div class="prices col-lg-4 col-md-4 col-sm-4 col-xs-24">

        </div>

        <div class="prices col-lg-4 col-md-4 col-sm-4 col-xs-24">

        </div>

    </div>
    <!-- end prices -->








    <div class="row">
        <?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-24'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-24'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>">
            <?php echo $content_top; ?>
            <?php echo $content_bottom; ?>
        </div>
        <?php echo $column_right; ?>
    </div>
</div>
<?php echo $footer; ?>