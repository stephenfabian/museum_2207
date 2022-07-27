class Museum
    attr_reader :name, :exhibits
 
    def initialize(name)
        @name = name
        @exhibits = []
    end

    def add_exhibit(exhibit)
        @exhibits << exhibit
    end

    def recommend_exhibits(patron)
        recommended_exhibits = []

        @exhibits.each do |individual_exhibit|
            recommended_exhibits << individual_exhibit.name if patron.interests.include?(individual_exhibit.name)
        end
        recommended_exhibits.sort
    end
end