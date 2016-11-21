1. Check valid hour test doesn’t work for 15:00 appointment - fix
2. Access times from parsed array (so no need to isolate times in a separate array)
3. Use map array method to iterate over parsed array, replace available times with empty string once booked and convert back to JSON
4. Make Availability a class with private methods
5. Running check_valid_hour breaks RSpec - fix
6. Set classes as instance variables for more modular injection
7. Make fully executable
