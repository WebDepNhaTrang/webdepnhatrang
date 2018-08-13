<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use TCG\Voyager\Models\Post;
use App\Service;

class FrontendController extends Controller
{
    // Xử lý trang chi tiết tin tức
    public function newsDetail($slug, $id){
        $news = Post::where(["status" => "PUBLISHED", "slug" => $slug, "id" => $id])->first();
    
        return view('frontend.pages.news-detail')->with(['news' => $news]);
        
    }

    // Xử lý trang chi tiết dịch vụ
    public function serviceDetail($slug, $id){
        $service = Service::where(["slug" => $slug, "id" => $id])->first();
    
        return view('frontend.pages.service-detail')->with(['service' => $service]);
        
    }
}
