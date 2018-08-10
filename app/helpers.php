<?php
/*
 * Get All Banners
 * 
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

/*
 * Get All Services
 * 
 * @select: string
 * @order_col: string
 * @order_by: asc/desc
 */
if(! function_exists('getAllServices')){
    function getAllServices($select='*', $order_col, $order_by="asc"){
        $item = App\Service::select($select)
                ->orderBy($order_col, $order_by)
                ->get();
        return $item;
    }
}

/*
 * Get All Projects
 * 
 * @select: string
 * @order_col: string
 * @order_by: asc/desc
 * @paginate: number
 */
if(! function_exists('getAllProjects')){
    function getAllProjects($select='*', $order_col, $order_by="asc", $paginate = 4){
        $item = App\Project::select($select)
                ->orderBy($order_col, $order_by)
                ->paginate($paginate);
        return $item;
    }
}

/*
 * Get Post By Category
 * 
 * @select: string
 * @cat_id: number
 * @order_col: string
 * @order_by: asc/desc
 * @paginate: number
 */
if(! function_exists('getPostByCategory')){
    function getPostByCategory($select='*', $cat_id, $order_col, $order_by='asc', $paginate = 3){
        $item = TCG\Voyager\Models\Post::select($select)
                    ->where(["status" => "PUBLISHED", "category_id" => $cat_id])
                    ->orderBy($order_col, $order_by)
                    ->paginate($paginate);
        return $item;
    }
}

?>