require 'availability'

describe '#load_hash' do
  it 'parses JSON file into Ruby hash' do
    expect(load_hash).to have_key('availability_slots')
  end
end

describe '#check_valid_time' do
  msg = 'Appointments not available before 8am or after 3pm'
  it 'raises an error if time is outside available hours' do
    expect { check_valid_time(7) }.to raise_error msg
    expect { check_valid_time(16) }.to raise_error msg
  end
end
