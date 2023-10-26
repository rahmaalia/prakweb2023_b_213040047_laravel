<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home', [
        "title" => "Home"
    ]);
});

Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        "name" => "Rahma aliaputri Efendi",
        "email" => "rahmaaliaputri27@gmail.com",
        "image" => "rahma.png"
    ]);
});



Route::get('/blog', function () {
    $blog_posts = [
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

    return view('posts', [
        "title" => "Posts",
        "posts" => $blog_posts
    ]);
});

// halaman single post
Route::get('posts/{slug}', function($slug){
    $blog_posts = [
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

    $new_post = [];
    foreach ($blog_posts as $post) {
        if ($post["slug"] === $slug) {
            $new_post = $post;
        }
    }

    return view('post', [
        "title" => "Single Post",
        "post" => $new_post
    ]);
});
