require './lib/exhibit'
require './lib/patron'

describe Exhibit do
    it 'exists and has a name, and cost which is initially 0' do
        exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
        expect(exhibit.name).to eq("Gems and Minerals")
        expect(exhibit.cost).to eq(0)

    end
end