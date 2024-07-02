# string-calculator
String calculator with max focus on TDD

# Initial setup
Go to the application folder. In our case /path/to/string-calculator

Use any ruby version greater then or equal to 2.5.0. 

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
7. Number bigger then 1000 should be ignored, ex: 1001, 2
8. Delimiter can be any character, ex: //[\*\*\*]\n1\*\*\*2\*\*\*3
9. Multiple delimiters, ex: //[\*][%]\n1\*2%3
10. Multiple delimiters with multiple characters, ex: //[\*\*\*][%]\n1\*\*42\*2%3

        ruby lib/string_calculator.rb
![Screenshot-from-2024-07-02-17-29-58](https://github.com/JeetDesai/string-calculator/assets/1021248/12acfaf8-8156-4526-ab09-2346eba2f044)

