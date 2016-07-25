<?php echo $header; ?>
<div class="container">


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

            <div class="row">
                <div class="col-sm-24">
                    <section class="category-menu">
                        <div class="row">

                            <!-- item -->
                            <div class="col-sm-6">
                                <div class="category-menu__item">
                                    <a class="category-menu__link" href="#">
                                        <img class="category-menu__img"
                                             src="catalog/view/theme/Juria/image/category-img-1.jpg"
                                             alt="">
                                        <span class="category-menu__label"><span>Майки</span> от <strong>400</strong> Р</span>
                                    </a>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="category-menu__item">
                                    <a class="category-menu__link" href="#">
                                        <img class="category-menu__img"
                                             src="catalog/view/theme/Juria/image/category-img-2.jpg"
                                             alt="">
                                        <span class="category-menu__label"><span>Трусики</span> от <strong>400</strong> Р</span>
                                    </a>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="category-menu__item">
                                    <a class="category-menu__link" href="#">
                                        <img class="category-menu__img"
                                             src="catalog/view/theme/Juria/image/category-img-3.jpg"
                                             alt="">
                                        <span class="category-menu__label"><span>Водолазки</span> от <strong>400</strong> Р</span>
                                    </a>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="category-menu__item">
                                    <a class="category-menu__link" href="#">
                                        <img class="category-menu__img"
                                             src="catalog/view/theme/Juria/image/category-img-4.jpg"
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
            <h3>ПРАЙС-ЛИСТЫ и Важная информация</h3>
            <p class="line"></p>

            <div class="row">

                <div class="price col-lg-8 col-md-8 col-sm-8 col-xs-24">
                    <a class="btn btn-dark price__link" href="#">Прайс-лист: товары в наличии</a>
                </div>

                <div class="price col-lg-8 col-md-8 col-sm-8 col-xs-24">
                    <a class="btn btn-dark price__link" href="#">Электроный каталог Juria</a>
                </div>

                <div class="price col-lg-8 col-md-8 col-sm-8 col-xs-24">
                    <a class="btn btn-dark price__link" href="#">Наши фабрики в России и Прибалтике</a>
                </div>

                <div class="price col-lg-8 col-md-8 col-sm-8 col-xs-24">
                    <a class="btn btn-dark price__link" href="#">Прайс-лист: товары под заказ</a>
                </div>

                <div class="price col-lg-8 col-md-8 col-sm-8 col-xs-24">
                    <a class="btn btn-dark price__link" href="#">История бренда Juria</a>
                </div>

                <div class="price col-lg-8 col-md-8 col-sm-8 col-xs-24">
                    <a class="btn btn-dark price__link" href="#">Оборудование и материалы</a>
                </div>

            </div>
            <!-- end prices -->



            <!-- google maps API -->
            <h3>Приглашаем посетить наши магазины в Москве</h3>
            <p class="line"></p>

            <div class="maps">
                <script type="text/javascript" charset="utf-8" async
                        src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=NFdVpC4IfCIRB1GTLo-I9heO99A1ZmFR&amp;width=100%&amp;height=400&amp;lang=ru_RU&amp;sourceType=constructor&amp;scroll=true"></script>
            </div>

            <div class="row">
                <div class="col-sm-8">
                    <div class="maps__place">
                        <p class="maps__place__title">Магазин в Люберецком районе</p>

                        <p class="maps__place__desc">
                            МО, Люберецкий район,пос. Октябрьский, ул. Ленина, д.47, 1 линия, 1 этаж, пав. 2Б3/2, (СИНЯЯ
                            ЛИНИЯ,
                            1-086), Оптово-розничный ТЦ "Текстиль-Профи", 11-ый км. Новорязанского шоссе</p>
                    </div>
                </div>

                <div class="col-sm-8">
                    <div class="maps__place">
                        <p class="maps__place__title">Магазин в Люберецком районе</p>

                        <p class="maps__place__desc">МО, Люберецкий район,пос. Октябрьский, ул. Ленина, д.47, 1 линия, 1
                            этаж, пав. 2Б3/2, (СИНЯЯ
                            ЛИНИЯ,
                            1-086), Оптово-розничный ТЦ "Текстиль-Профи", 11-ый км. Новорязанского шоссе</p>
                    </div>
                </div>

                <div class="col-sm-8 call-back-form">
                    <a class="call-back-form__link" href="#">
                        <strong>ОТПРАВИТЬ СООБЩЕНИЕ</strong>
                        через форму обратной связи
                    </a>
                </div>
            </div>
            <!-- end google maps API -->


            <!-- seo article -->
            <h1>Н1 заголовок сео-статьи на странице магазина</h1>
            <p class="line"></p>

            <article class="home-page">
                <p>Абстракционизм, за счет использования параллелизмов и повторов на разных языковых уровнях,
                    полидисперсен. Генезис свободного стиха, основываясь на парадоксальном совмещении исключающих друг
                    друга принципов характерности и поэтичности, текстологически отражает цикл. Эстетическое воздействие
                    текстологически нивелирует урбанистический не-текст.</p>

                <p>
                    Пастиш изящно редуцирует орнаментальный сказ. С семантической точки зрения, метонимия интегрирует
                    эпизодический жанр, например, "Борис Годунов" А.С.Пушкина, "Кому на Руси жить хорошо" Н.А.Некрасова,
                    "Песня о Соколе" М.Горького и др. Декодирование приводит деструктивный диалогический контекст – это
                    уже пятая стадия понимания по М.Бахтину. Гекзаметр прочно диссонирует лирический субъект, но
                    языковая игра не приводит к активно-диалогическому пониманию. Цитата как бы придвигает к нам
                    прошлое, при этом эвокация пространственно отражает деструктивный размер, тем не менее узус никак не
                    предполагал здесь родительного падежа. Мифопоэтическое пространство семантически редуцирует ритм.
                </p>

                <p>
                    Строфоид, по определению многопланово дает хорей. Генезис свободного стиха притягивает деструктивный
                    пастиш. Метонимия непосредственно нивелирует коммунальный модернизм, заметим, каждое стихотворение
                    объединено вокруг основного философского стержня. Звукопись, соприкоснувшись в чем-то со своим
                    главным антагонистом в постструктурной поэтике, точно аннигилирует образ.</p>

                <p>Абстракционизм, за счет использования параллелизмов и повторов на разных языковых уровнях,
                    полидисперсен. Генезис свободного стиха, основываясь на парадоксальном совмещении исключающих друг
                    друга принципов характерности и поэтичности, текстологически отражает цикл. Эстетическое воздействие
                    текстологически нивелирует урбанистический не-текст.
                </p>

                <p>
                    Пастиш изящно редуцирует орнаментальный сказ. С семантической точки зрения, метонимия интегрирует
                    эпизодический жанр, например, "Борис Годунов" А.С.Пушкина, "Кому на Руси жить хорошо" Н.А.Некрасова,
                    "Песня о Соколе" М.Горького и др. Декодирование приводит деструктивный диалогический контекст – это
                    уже пятая стадия понимания по М.Бахтину. Гекзаметр прочно диссонирует лирический субъект.
                </p>

            </article>
            <!-- end seo article -->


            <?php echo $content_bottom; ?>

        </div>
        <?php echo $column_right; ?>
    </div>
</div>


<!-- articles -->
<section class="home-article-lst">
    <div class="container">
        <h3>Полезные статьи об ОПТОВОЙ ПРОДАЖЕ женского белья</h3>
        <div class="row">
            <div class="col-sm-6">
                <div class="article__item">
                    <a class="article__link" href="#">
                        <img src="catalog/view/theme/Juria/image/article-img.jpg" alt=""
                             class="article__img">

                        <span class="article__title">Длинный заголовок для материала с датой публикации</span>
                            <span class="article__desc">Текст материала новости на тему белья и других женских вещичек
                                три строки минимум</span>
                    </a>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="article__item">
                    <a class="article__link" href="#">
                        <img src="catalog/view/theme/Juria/image/article-img.jpg" alt=""
                             class="article__img">

                        <span class="article__title">Длинный заголовок для материала с датой публикации</span>
                            <span class="article__desc">Текст материала новости на тему белья и других женских вещичек
                                три строки минимум</span>
                    </a>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="article__item">
                    <a class="article__link" href="#">
                        <img src="catalog/view/theme/Juria/image/article-img.jpg" alt=""
                             class="article__img">

                        <span class="article__title">Длинный заголовок для материала с датой публикации</span>
                            <span class="article__desc">Текст материала новости на тему белья и других женских вещичек
                                три строки минимум</span>
                    </a>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="article__item">
                    <a class="article__link" href="#">
                        <img src="catalog/view/theme/Juria/image/article-img.jpg" alt=""
                             class="article__img">

                        <span class="article__title">Длинный заголовок для материала с датой публикации</span>
                            <span class="article__desc">Текст материала новости на тему белья и других женских вещичек
                                три строки минимум</span>
                    </a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-offset-9 col-sm-6 center">
                <a class="btn all-article" href="#">ВСЕ СТАТЬИ</a>
            </div>
        </div>
    </div>
</section>
<!-- end articles -->


<!-- certificates -->
<section class="sertificates">
    <div class="container">

        <h3>НАШИ СЕРТИФИКАТЫ</h3>
        <div class="row">
            <div class="col-sm-6">
                <div class="certificate__item">
                    <a class="fancybox certificate__img" rel="group"
                       href="catalog/view/theme/Juria/image/certificate-img.jpg">
                        <img src="catalog/view/theme/Juria/image/certificate-img.jpg" alt=""/>
                    </a>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="certificate__item">
                    <a class="fancybox certificate__img" rel="group"
                       href="catalog/view/theme/Juria/image/certificate-img.jpg">
                        <img src="catalog/view/theme/Juria/image/certificate-img.jpg" alt=""/>
                    </a>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="certificate__item">
                    <a class="fancybox certificate__img" rel="group"
                       href="catalog/view/theme/Juria/image/certificate-img.jpg">
                        <img src="catalog/view/theme/Juria/image/certificate-img.jpg" alt=""/>
                    </a>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="certificate__item">
                    <a class="fancybox certificate__img" rel="group"
                       href="catalog/view/theme/Juria/image/certificate-img.jpg">
                        <img src="catalog/view/theme/Juria/image/certificate-img.jpg" alt=""/>
                    </a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-offset-9 col-sm-6 center">
                <a class="btn all-certificate" href="#">ВСЕ Сертификаты</a>
            </div>
        </div>
    </div>
</section>
<!-- end certificates -->


<!-- advantages -->
<section class="advantages">
    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                <div class="advantages__item advantages__item--like">
                    <p class="advantages__desc">Если Вы сами приезжаете на любой из складов, минимальная партия
                        женского белья оптом -
                        от 5000 рублей</p>
                </div>
            </div>


            <div class="col-sm-8">
                <div class="advantages__item advantages__item--compass">
                    <p class="advantages__desc">В регионы отправляем заказы от 25000 рублей любой
                        транспортной компанией Российской Федерации</p>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="advantages__item advantages__item--monefy">
                    <p class="advantages__desc">Работаем за наличный, так и безналичный расчет. Реализация и
                        отсрочка платежа не возможна</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- end advantages -->


<?php echo $footer; ?>