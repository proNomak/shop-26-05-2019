<?php 

    $title="Каталог товаров";

    // session_start();

    include_once($_SERVER['DOCUMENT_ROOT'].'/modules/header.php');
?>

    <div class="caption">
        <h1>МУЖЧИНАМ</h1>
        <p>Все товары</p>
    </div>

    <div class="choice wrapper">
        <div class="choice_section category">
            <div class="choice_section_name">
                <div class="choice_section_name_text">
                    Категория
                </div>
                <div class="choice_section_name_arrow arrow-down">

                </div>
            </div>
            <div class="choice_section_list">
                <div class="choice_section_list_item">
                    Мужчинам
                </div>
                <div class="choice_section_list_item">
                    Женщинам
                </div>
                <div class="choice_section_list_item">
                    Детям
                </div>
                <div class="choice_section_list_item">
                    Кеды
                </div>
            </div>
        </div>
        
        <div class="choice_section size">
            <div class="choice_section_name">
                <div class="choice_section_name_text">
                    Размер
                </div>
                <div class="choice_section_name_arrow arrow-down">

                </div>
            </div>
            <div class="choice_section_list">
                <div class="choice_section_list_item">
                    L
                </div>
                <div class="choice_section_list_item">
                    XL
                </div>
                <div class="choice_section_list_item">
                    XXL
                </div>
                <div class="choice_section_list_item">
                    XXXL
                </div>
            </div>
        </div>
        
        <div class="choice_section cost">
            <div class="choice_section_name">
                <div class="choice_section_name_text">
                    Стоимость
                </div>
                <div class="choice_section_name_arrow arrow-down">

                </div>
            </div>
            <div class="choice_section_list">
                <div class="choice_section_list_item">
                    0-1000 руб.
                </div>
                <div class="choice_section_list_item">
                    1000-3000 руб.
                </div>
                <div class="choice_section_list_item">
                    3000-6000 руб.
                </div>
                <div class="choice_section_list_item">
                    6000-20000 руб.
                </div>
            </div>
        </div> 
    </div>

    <div class="catalog wrapper"></div>

    <div class="pagination wrapper"></div>

<?php 
    include_once($_SERVER['DOCUMENT_ROOT'].'/modules/footer.php');
?>

    <script src="/javascript/main.js"></script>
</body>
</html>