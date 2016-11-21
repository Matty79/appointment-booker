#!/usr/bin/env ruby

require_relative 'parser'
require_relative 'appointment'

time = ARGV[0]
hour = (ARGV[0].to_s).partition(':')[0]
minutes = (ARGV[0].to_s).partition(':')[1]

def check_valid_hour(hour)
  if hour.to_i < 8 || hour.to_i > 15
    fail "Appointments not available before 8am or after 3pm"
  else
    check_valid_minutes
  end
end

def check_valid_minutes(minutes)
  if minutes.to_i % 10 != 0
    fail "Appointments are only available in 10 minute intervals"
  else
    slots = Parser.new.load_hash
    appointment = Appointment.new.book_slot(slots, time)
  end
end
