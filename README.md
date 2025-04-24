# Calorie Calculator (.NET Blazor)

## Overview
A Blazor web application developed as a student project, designed to calculate daily caloric needs based on user input such as age, weight, height, gender, level of activity, and type of work. The app also includes a simple nutrition tracking system and allows users to log in and view their data.

## Features
- Calculation of daily caloric demand using the Mifflin-St Jeor equation
- Adjustment based on activity level, work type, and fitness goal (gain, lose, or maintain weight)
- Macronutrient breakdown (carbohydrates, proteins, fats in kcal and grams)
- User login system and account view
- Adding food items to a daily meal log (stored in a database)
- Admin panel for managing products and food items

## Technologies Used
- Blazor (WebAssembly)
- .NET (C#)
- HTML, CSS
- Local database (via SQL script)

## Files & Structure
- `.razor` files: views and components (e.g. `Index.razor`, `Login.razor`, `FoodSite.razor`, `MyAccount.razor`)
- `.razor.css`: styling for corresponding pages
- `.cshtml`: shared layout files (`_Host.cshtml`, `_Layout.cshtml`)
- `.sql`: script for setting up product database (`products_db.sql`)
- `Error.cshtml.cs`: backend logic for error handling

## SQL
`products_db.sql` contains the database schema and initial data for:
- `Products_tb`
- `DailyFood_tb`
- Other tables supporting user nutrition logging

## Instructions
1. Open the project in Visual Studio with Blazor WebAssembly support
2. Import `products_db.sql` into your SQL server (or local DB tool)
3. Run the application using the development server
4. Register as a user and begin logging meals and viewing caloric summaries

## Author
[Szymon Bloch](https://www.linkedin.com/in/szymon-bloch/)

## License
This project is intended for educational purposes only and is not intended for commercial use.
