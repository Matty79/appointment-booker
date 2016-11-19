#!/usr/bin/env ruby

require_relative 'parser'

time = ARGV[0].to_i

def check_valid_time(time)
  if time < 8 || time > 15
    fail "Appointments not available before 8am or after 3pm"
  end
else
  slots = Parser.new.load_hash
end
