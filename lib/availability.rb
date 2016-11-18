#!/usr/bin/env ruby

require 'json'

time = ARGV[0].to_i

def load_hash
  file = File.read('./availability_slots.json')
  slots_hash = JSON.parse(file)
end

def check_valid_time(time)
  if time < 8 || time > 15
    fail "Appointments not available before 8am or after 3pm"
  end
end

load_hash
