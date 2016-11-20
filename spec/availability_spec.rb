require 'availability'

describe '#check_valid_hour' do
  msg = 'Appointments not available before 8am or after 3pm'
  it 'raises an error if time is outside available hours' do
    expect { check_valid_hour(7) }.to raise_error msg
    expect { check_valid_hour(16) }.to raise_error msg
  end
end

describe '#check_valid_minutes' do
  msg = 'Appointments are only available in 10 minute intervals'
  it 'raises an error if time is outside available hours' do
    expect { check_valid_minutes(45) }.to raise_error msg
  end
end
