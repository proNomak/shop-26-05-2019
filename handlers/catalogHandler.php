<?php 
    include_once($_SERVER['DOCUMENT_ROOT'].'/config/config.php');

    $count_products_on_page=12;

    if(!empty($_GET['numPage'])) {
        $now_page=$_GET['numPage'];
    }

    $start_row=($now_page-1)*$count_products_on_page;

    $count_sql="SELECT * FROM `catalog`";
    $result_count = mysqli_query($link, $count_sql);
    $count_pages=ceil(mysqli_num_rows($result_count)/$count_products_on_page);

    $query = "SELECT * FROM `catalog` limit {$start_row}, {$count_products_on_page}";
    $result = mysqli_query($link, $query);

    $data=[
        'products'=> [],
        'pagination'=> [
            'countPages'=> $count_pages,
            'nowPage'=> $now_page
        ]
    ];

    while( $row = mysqli_fetch_assoc($result) ) {
        array_push($data['products'], $row);
    }

    echo json_encode($data);
?>