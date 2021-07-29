require 'docking_station'

describe DockingStation do
    # it 'responds to release_bike' do
    # expect(subject).to respond_to :release_bike
    docking_station = DockingStation.new
    bike1 = docking_station.release_bike
    it 'checks docking station is functional' do
      expect(docking_station).to respond_to(:release_bike)
      expect(docking_station).to respond_to(:dock)
    end
    it 'checks the bike works' do
      expect(bike1.working?).to eq true
    end
    it 'check if station has bikes' do 
      expect(docking_station.has_bikes?).to eq false
      docking_station.dock(bike1)
      expect(docking_station.has_bikes?).to eq true
    end
end
