require 'appointment'

describe Appointment do

  subject(:appointment) { described_class.new }

  describe '#check_available_slot' do
    msg = 'Appointment time not available'
    xit 'should raise error if slot not available' do
      expect { appointment.check_available_slot("8:00", ["12:00:00", "13:40:00"]) }.to raise_error msg
    end
  end

  describe '#book_slot' do
    xit 'should remove booked slot from the array' do
      appointment.book_slot("8:10")
      expect(slots).not_to include("08:10:00")
    end
  end

end
