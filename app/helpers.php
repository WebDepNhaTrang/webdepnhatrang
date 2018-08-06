<?php
/*
 * @select: string
 * @order_col: string
 * @order_by: asc/desc
 */
if(! function_exists('getAllBanners')){
    function getAllBanners($select='*', $order_col, $order_by="asc"){
        $item = App\Banner::select($select)
                ->orderBy($order_col, $order_by)
                ->get();
        return $item;
    }
}


?>