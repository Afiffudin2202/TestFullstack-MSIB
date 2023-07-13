<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Book;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        User::factory()->create([
            'name' => 'Mark',
            'email' => 'Mark@gmail.com',
            'password' => 'password',
            'password_confirmation' => 'password',
        ]);

        Book::factory()->create([
            'user_id' => 1,
            'isbn' => '9781491943533',
            'title' => 'Practical Modern JavaScript',
            'subtitle' => 'Dive into ES6 and the Future of JavaScript',
            'author' => 'Nicolás Bevacqua',
            'published' => '2017-07-16 00=>00=>00',
            'publisher' => 'O Reilly Media',
            'pages' => 334,
            'description' => 'To get the most out of modern JavaScript, you need learn the latest features of its parent specification, ECMAScript 6 (ES6). This book provides a highly practical look at ES6, without getting lost in the specification or its implementation details.',
            'website' => 'https://github.com/mjavascript/practical-modern-javascript',
        ]);
    }
}
