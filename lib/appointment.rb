#understands booking slot

class Appointment

#check available slot
  def check_available_slot(time, slots)
    if slots.any? {|x| x[slots]["availability_slots"]["time"] == time}
      book_slot
    else
      fail 'Appointment time not available'
    end
  end

#remove slot from array and convert hash back to JSON
  def book_slot(time, slots)
  end

#prints booking time and doctor
  def print_slot(time)
  end

end
