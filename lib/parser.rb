#understands parsing JSON file into memory

require 'json'

class Parser

  def initialize
    @available_slots = []
  end

  def load_hash
    file = File.read('./availability_slots.json')
    slots_hash = JSON.parse(file)
    store_available_slots(slots_hash)
  end

  def store_available_slots(slots_hash)
    slots_hash["availability_slots"].each do |x|
      @available_slots << x["time"]
    end
      @available_slots
  end

end
