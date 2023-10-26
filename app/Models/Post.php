<?php

namespace App\Models;



class Post 
{
    private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Rahma Aliaputri Efendi",
            "body" => "JLorem, ipsum dolor sit amet consectetur adipisicing elit. Minus itaque nobis eveniet nisi earum sequi molestias nulla pariatur, harum cupiditate ipsum nam quis, maxime laboriosam, sint fugiat. Id consectetur eveniet provident, saepe adipisci magnam aliquid. Eaque sunt voluptatem vero reiciendis, iusto quisquam explicabo est tempora repudiandae veritatis optio velit necessitatibus corporis culpa magnam asperiores, doloremque perferendis quo mollitia id accusantium voluptatum. Sequi pariatur atque assumenda laborum impedit, libero suscipit sapiente laudantium doloremque neque cumque eaque, totam illum saepe aliquid ea?",
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Raisya",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus iusto maxime optio molestiae cum saepe neque amet, reiciendis libero et ea dolor nulla harum accusamus commodi impedit officiis corporis. Quaerat natus cumque accusantium mollitia rem a maiores in, nihil saepe dicta voluptatem fuga deleniti iure reprehenderit eveniet aliquam fugit minus! Ipsa laborum harum ex dignissimos eaque debitis accusantium! Dignissimos commodi repudiandae dicta sequi reprehenderit maxime ea cupiditate vitae expedita ex, molestias placeat, tenetur, alias sint provident earum! Ex fugiat molestias nulla porro, doloribus quidem. Accusamus doloremque nam aperiam ullam illo modi, debitis ea neque expedita, eum quas voluptatum porro tenetur?",
        ],
    ];

    public static function all() 
    {
        return collect( self::$blog_posts);
    }

    public static function find($slug) 
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
