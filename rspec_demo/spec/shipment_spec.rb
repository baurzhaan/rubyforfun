require './lib/shipment'

describe Shipment do
  it 'should work without options' do
    expect(Shipment.total_weight).to eq(29)
  end

  it 'should calculate shipment with only one item' do
    expect(Shipment.total_weight(soccer_ball_count: 1)).to eq(410 + 29)
    expect(Shipment.total_weight(tennis_ball_count: 1)).to eq(58 + 29)
    expect(Shipment.total_weight(golf_ball_count: 1)).to eq(45 + 29)
  end

  it 'Raise Division-by-zero error' do
    expect{6 / 0}.to raise_error(ZeroDivisionError)
  end
end