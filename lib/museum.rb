class Museum
    attr_reader :name, :exhibits, :patrons
 
    def initialize(name)
        @name = name
        @exhibits = []
        @patrons = []
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

    def admit(patron)
        @patrons << patron
    end


    def patrons_by_exhibit_interest

        exhibit_names = []
        @exhibits.each do |exhibit|
            exhibit_names << exhibit.name
        end

        patron_interest_summary = exhibit_names.group_by { |exhibit_name| exhibit_name}

        patrons.each do |patron|
            if patron.interests.include?("Gems and Minersals")
            patron_interest_summary[:"Gems and Minersals"] = patron.name
            if patron.interests.include?("Dead Sea Scrolls")
                patron_interest_summary[:"Dead Sea Scrolls"] = patron.nam
            if patron.interests.include?("imax")
            patron_interest_summary[:"imax"] = patron
            end
            end
            end
        end
    

       
    end

end