<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/fancyBox/source/jquery.fancybox.css" rel="stylesheet" media="screen"/>
    <script src="catalog/view/javascript/fancyBox/source/jquery.fancybox.js" type="text/javascript"></script>


    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css"/>
    <link href="//fonts.googleapis.com/css?family=Play:400,700&subset=latin,cyrillic" rel="stylesheet" type="text/css">

    <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
          media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?>
    <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
    <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
    <?php } ?>

    <link href="catalog/view/theme/Juria/stylesheet/stylesheet.css" rel="stylesheet">
    <link href="catalog/view/theme/Juria/stylesheet/main.css" rel="stylesheet">
</head>
<body class="<?php echo $class; ?>">

<header>
    <nav id="top">
        <div class="container">
            <div class="row">

                <!-- sub menu  -->
                <div class="col-xs-8">

                    <!-- menu -->
                    <ul class="list-inline">
                        <li class="sub-menu">
                            <a class="dropdown-toggle menu-hamburger" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false" href="#">
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Главная</a></li>
                                <li><a href="#">Как стать оптовым покупателем</a></li>
                                <li><a href="#">Оптовые условия</a></li>
                                <li><a href="#">Прайс: товары в начлии</a></li>
                                <li><a href="#">Прайс: товары под заказ</a></li>
                                <li><a href="#">Наш электроный каталог</a></li>
                                <li><a href="#">О компании</a></li>
                                <li><a href="#">Материалы и фурнитура</a></li>
                                <li><a href="#">Доставка и оплата</a></li>
                                <li><a href="#">Возврат товаров</a></li>
                                <li><a href="#">Контакты</a></li>
                            </ul>
                        </li>
                        <li>
                            <a class="" href="#">
                                <span class="hidden-sm hidden-md">Как стать оптовым покупателем</span>
                            </a>
                        </li>
                        <li>
                            <a class="" href="<?php echo $contact; ?>">
                                <span class="hidden-sm hidden-md">Контакты</span>
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- time working -->
                <div class="hidden-xs col-md-8">
                    <p class="time-working"><span>Режим работы:</span>
                        ПН-ПТ с 10 до 17 СБ, ВС с 11 до 16</p>
                </div>

                <!-- account -->
                <div class="col-xs-8 col-md-4">
                    <a class="account" href="<?php echo $account; ?>">
                         <span class="hidden-xs">
                             <?php echo $text_account; ?>
                         </span>
                    </a>
                </div>

                <!-- cart -->
                <div class="col-xs-8 col-md-4 cart">
                    <?php echo $cart; ?>
                </div>
            </div>
        </div>
    </nav>


    <!-- category menu -->
    <?php if ($categories) { ?>
    <nav id="menu" class="navbar">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse"
                        data-target=".navbar-ex1-collapse">
                    <span id="category" class="visible-xs"><?php echo $text_category; ?></span>
                    <i class="fa fa-caret-down" aria-hidden="true"></i>
                </button>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <?php foreach ($categories as $category) { ?>
                    <?php if ($category['children']) { ?>
                    <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle"
                                            data-toggle="dropdown"><?php echo $category['name']; ?></a>
                        <div class="dropdown-menu">
                            <div class="dropdown-inner">
                                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                <ul class="list-unstyled">
                                    <?php foreach ($children as $child) { ?>
                                    <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                    <?php } ?>
                                </ul>
                                <?php } ?>
                            </div>
                            <a href="<?php echo $category['href']; ?>"
                               class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a></div>
                    </li>
                    <?php } else { ?>
                    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                    <?php } ?>
                    <?php } ?>
                </ul>

                <?php echo $search; ?>
            </div>
        </div>
    </nav>

    <?php } ?>
    <!-- end category menu -->

    <!-- logo & phones -->
    <div id="header-bottom">
        <div class="container">
            <div class="row">

                <!-- logo -->
                <div class="col-sm-8">
                    <div class="logo" id="logo">
                        <?php if ($logo) { ?>
                        <a href="/">
                            <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>"
                                 alt="<?php echo $name; ?>" class="img-responsive"/>
                        <span>Оптовый интернет-магазин <br/>
                        женского белья Juria</span>
                        </a>
                        <?php } else { ?>
                        <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                        <?php } ?>
                    </div>
                </div>

                <!-- phones -->
                <div class="col-md-16 header-phones--more-info">
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="header-phones">
                                <li class="">+7 (956) 236-76-02</li>
                                <li class="">+7 (826) 345-76-55</li>
                                <li class="">+7 (126) 879-45-33</li>
                                <li class="">+7 (970) 243-67-87</li>
                            </ul>

                            <!-- Button trigger modal -->
                            <a class="call-back" href="#" data-toggle="modal" data-target="#callBackModal">
                                Заказать обратный звонок
                            </a>

                            <!-- Modal -->
                            <div class="modal fade" id="callBackModal" tabindex="-1" role="dialog"
                                 aria-labelledby="callBackModalLabel">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close"><span
                                                        aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="callBackModalLabel">Обратный звонок</h4>

                                            <p>Вы можете сделать заказ или получить консультацию
                                                по телефону. Просто оставьте свой номер и мы свяжемся
                                                с Вами в течении 10 минут.</p>
                                        </div>
                                        <div class="modal-body">
                                            <form class="form-horizontal">
                                                <div class="form-group">
                                                    <label for="inputName"
                                                           class="col-sm-8 control-label">Ваше имя</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="inputName"
                                                               name="name"
                                                               placeholder=""
                                                               pattern="^[a-zA-Zа-яА-Я'][a-zA-Zа-яА-Я-' ]+[a-zA-Zа-яА-Я']$"
                                                               required="required">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="inputPhone"
                                                           class="col-sm-8 control-label">номер телефона</label>
                                                    <div class="col-sm-10">
                                                        <input type="tel" class="form-control" id="inputPhone"
                                                               name="inputPhone"
                                                               placeholder=""
                                                               pattern="^([\+]+)*[0-9\x20\x28\x29\-]{7,20}$"
                                                               required="required">
                                                    </div>
                                                </div>

                                                <div class="modal-footer">
                                                    <div class="form-group">
                                                        <div class="col-sm-24">
                                                            <button type="submit" class="btn btn-default">Перезвоните
                                                                мне
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- more info -->
                        <div class="col-md-12">
                            <p class="more-info">Оптовые партии от 5 тыс. рублей самовывозом
                                и от 25 тыс. - транспортными компаниями.
                                Реализация и отсрочка платежа не возможна.</p>

                            <a href="#" class="cooperation-link">Условия сотрудничества</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end logo & phones -->

</header>

<!-- breadcrumb -->
<section class="breadcrumb-b">
    <div class="container">
        <div class="row">
            <ul class="breadcrumb">
                <li><a href="http://oc.adlers.net.ua/">Главная</a></li>
                <li><span>Доставка товара</span></li>
            </ul>
        </div>
    </div>

    <hr/>
</section>


<div class="container">
    <div class="row">
        <div class="article-item col-xs-24">
            <div class="row">

                <!-- img article -->
                <div class="col-sm-6">
                    <a style="background-image: url('http://oc.adlers.net.ua/image/cache/catalog/juria/article-img-200x200.jpg')"
                       href="http://oc.adlers.net.ua/interesno/stat3.html" class="pull-left">
                    </a>
                </div>

                <!-- article title & decs -->
                <div class="col-sm-18">
                    <div class="caption">
                        <h2><a href="http://oc.adlers.net.ua/interesno/stat3.html">Длинный заголовок для материала с
                                датой
                                публикации</a></h2>
                        <p>Текст материала новости на тему белья и других женских вещичек три строки минимум. Текст
                            материала новости на тему белья и других женских вещичек три строки минимум. Текст материала
                            новости на тему белья и других женских вещичек три строки минимум. </p>
                        <a class="btn more-info" href="http://oc.adlers.net.ua/interesno/stat3.html">Подробнее</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="article-item col-xs-24">
            <div class="row">

                <!-- img article -->
                <div class="col-sm-6">
                    <a style="background-image: url('http://oc.adlers.net.ua/image/cache/catalog/juria/article-img-200x200.jpg')"
                       href="http://oc.adlers.net.ua/interesno/stat3.html" class="pull-left">
                    </a>
                </div>

                <!-- article title & decs -->
                <div class="col-sm-18">
                    <div class="caption">
                        <h2><a href="http://oc.adlers.net.ua/interesno/stat3.html">Длинный заголовок для материала с
                                датой
                                публикации</a></h2>
                        <p>Текст материала новости на тему белья и других женских вещичек три строки минимум. Текст
                            материала новости на тему белья и других женских вещичек три строки минимум. Текст материала
                            новости на тему белья и других женских вещичек три строки минимум. </p>
                        <a class="btn more-info" href="http://oc.adlers.net.ua/interesno/stat3.html">Подробнее</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- pagination -->

<div class="row">
    <div class="col-sm-24">
        <nav class="paginator">
            <ul class="pagination">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li><a href="#">1</a></li>
                <li class="active"><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</div>