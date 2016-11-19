require 'availability'

describe '#check_valid_time' do
  msg = 'Appointments not available before 8am or after 3pm'
  it 'raises an error if time is outside available hours' do
    expect { check_valid_time(7) }.to raise_error msg
    expect { check_valid_time(16) }.to raise_error msg
  end
end
