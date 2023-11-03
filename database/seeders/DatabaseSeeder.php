<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        User::create([
            'name' => ' Rahma Aliaputri Efendi',
            'email' => 'rahma@gmail.com',
            'password' => bcrypt('12345')
        ]);

        User::create([
            'name' => ' Raisya lutfiah',
            'email' => 'raisay@gmail.com',
            'password' => bcrypt('12345')
        ]);

        Category::create([
            'name' => ' Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => ' Personal',
            'slug' => 'personal'
        ]);

        Post::create([
            'title' => 'Judul Pertama',
            'slug' => 'judul-pertama',
            'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolores obcaecati repudiandae reiciendis quia dolor consequuntur error doloribus assumenda nihil quas rem', 
            'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolores obcaecati repudiandae reiciendis quia dolor consequuntur error doloribus assumenda nihil quas rem, nemo optio, vitae officiis? Corrupti excepturi nemo inventore facilis ipsam optio necessitatibus, modi quas illum! Voluptate sint explicabo illo porro, corrupti nihil consequuntur et animi beatae voluptatem. Molestias consectetur provident tenetur molestiae, quasi id dignissimos quos. Exercitationem perferendis nobis qui obcaecati explicabo saepe hic quis animi impedit facilis labore, earum consequatur fugiat eveniet, similique adipisci, nesciunt voluptate numquam amet a officiis eaque quam autem eius! Ut, molestiae dolore at qui id, iusto laboriosam cum vero nobis repellat quod amet?',
            'category_id' => 1,
            'user_id' => 1

        ]);

        Post::create([
            'title' => 'Judul Ke Dua',
            'slug' => 'judul-ke-dua',
            'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolores obcaecati repudiandae reiciendis quia dolor consequuntur error doloribus assumenda nihil quas rem', 
            'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolores obcaecati repudiandae reiciendis quia dolor consequuntur error doloribus assumenda nihil quas rem, nemo optio, vitae officiis? Corrupti excepturi nemo inventore facilis ipsam optio necessitatibus, modi quas illum! Voluptate sint explicabo illo porro, corrupti nihil consequuntur et animi beatae voluptatem. Molestias consectetur provident tenetur molestiae, quasi id dignissimos quos. Exercitationem perferendis nobis qui obcaecati explicabo saepe hic quis animi impedit facilis labore, earum consequatur fugiat eveniet, similique adipisci, nesciunt voluptate numquam amet a officiis eaque quam autem eius! Ut, molestiae dolore at qui id, iusto laboriosam cum vero nobis repellat quod amet?',
            'category_id' => 1,
            'user_id' => 1

        ]);

        Post::create([
            'title' => 'Judul Ke Tiga',
            'slug' => 'judul-ke-tiga',
            'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolores obcaecati repudiandae reiciendis quia dolor consequuntur error doloribus assumenda nihil quas rem', 
            'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolores obcaecati repudiandae reiciendis quia dolor consequuntur error doloribus assumenda nihil quas rem, nemo optio, vitae officiis? Corrupti excepturi nemo inventore facilis ipsam optio necessitatibus, modi quas illum! Voluptate sint explicabo illo porro, corrupti nihil consequuntur et animi beatae voluptatem. Molestias consectetur provident tenetur molestiae, quasi id dignissimos quos. Exercitationem perferendis nobis qui obcaecati explicabo saepe hic quis animi impedit facilis labore, earum consequatur fugiat eveniet, similique adipisci, nesciunt voluptate numquam amet a officiis eaque quam autem eius! Ut, molestiae dolore at qui id, iusto laboriosam cum vero nobis repellat quod amet?',
            'category_id' => 2,
            'user_id' => 1

        ]);

        Post::create([
            'title' => 'Judul Ke Empat',
            'slug' => 'judul-ke-empat',
            'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolores obcaecati repudiandae reiciendis quia dolor consequuntur error doloribus assumenda nihil quas rem', 
            'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolores obcaecati repudiandae reiciendis quia dolor consequuntur error doloribus assumenda nihil quas rem, nemo optio, vitae officiis? Corrupti excepturi nemo inventore facilis ipsam optio necessitatibus, modi quas illum! Voluptate sint explicabo illo porro, corrupti nihil consequuntur et animi beatae voluptatem. Molestias consectetur provident tenetur molestiae, quasi id dignissimos quos. Exercitationem perferendis nobis qui obcaecati explicabo saepe hic quis animi impedit facilis labore, earum consequatur fugiat eveniet, similique adipisci, nesciunt voluptate numquam amet a officiis eaque quam autem eius! Ut, molestiae dolore at qui id, iusto laboriosam cum vero nobis repellat quod amet?',
            'category_id' => 2,
            'user_id' => 2

        ]);
    }
}
