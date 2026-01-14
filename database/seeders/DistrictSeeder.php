<?php

namespace Database\Seeders;

use App\Models\District;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\File;

class DistrictSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
   public function run(): void
{
    $json = File::get(database_path('data/districts.json'));
    $decoded = json_decode($json, true);

    $districts = $decoded[2]['data'] ?? [];

    foreach ($districts as $district) {
      District::updateOrCreate(
            ['id' => $district['id']], // Unique identifier
            [
                'division_id' => $district['division_id'],
                'name'        => $district['name'],
                'bn_name'     => $district['bn_name'],
                'lat'         => $district['lat'],
                'lon'         => $district['lon'],
                'url'         => $district['url'],
            ]
        );
    }
}
}
