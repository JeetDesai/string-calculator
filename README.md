# string-calculator
String calculator with max focus on TDD

# Initial setup
Go to the application folder. In our case /path/to/string-calculator

      bundle install

# Run all test cases

Execute

      rspec .

# To test all usecases manually through terminal
1. Empty string
2. Single number, ex: '3'
3. Comma separated numbers, ex: '1,2,6'
4. New line separated numbers, ex: '1\n2,6'
5. Any delimiter should also be be consider as a separator, ex: '//;\n1;2'
6. When input string has negative number, ex: '1,-2, 9, -5'

        ruby lib/string_calculator.rb
![Screenshot-from-2024-07-02-17-03-13](https://github.com/JeetDesai/string-calculator/assets/1021248/243cdd4c-c8a3-44b9-8c37-83c9334fd424)
