<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Product;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

//         User::factory()->create([
//             'name' => 'Test User',
//             'email' => 'asd@asd.com',
//             'password' => Hash::make('admin123'),
//         ]);
         for ($i = 1; $i < 40; $i++) {
             Product::create([
                 'title' => 'asd'.$i,
             ]);
         }
    }
}
