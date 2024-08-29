<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Employee>
 */
class EmployeeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            //
        'cedula' => $this->faker->regexify('[0-9]{3}-[0-9]{6}-[0-9]{4}[A-Z]'),
        'first_name' => $this->faker->name,
        'last_name' => $this->faker->lastName,
        'phone' => $this->faker->unique()->phoneNumber,
        'address' => $this->faker->address,
        'salary' => $this->faker->randomFloat(2, 10000, 50000),  
        'start_date' => $this->faker->date('Y-m-d'),
        'end_date' => $this->faker->optional()->date('Y-m-d'),
        'status' => $this->faker->randomElement(['active', 'inactive']),
        'shift' => $this->faker->randomElement(['morning', 'night']), 
        ];
    }
}
