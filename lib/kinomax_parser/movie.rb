module KinomaxParser
  class Movie
    attr_accessor :title

    def initialize(doc)
      @doc = doc
    end

    def id
      @id ||= @doc.attribute('id').text.to_i
    end

    def title
      @title ||= @doc.at_css('name').text
    end

    def length
      @doc.at_css('length').text.to_i
    end

    def description
      @doc.at_css('description').text
    end

    def genres
      @doc.at_css('genres').text
    end

    def rating
      @doc.at_css('rating').text.to_f
    end

    def rating_count
      @doc.at_css('rating').attribute('votes').text.to_i
    end

    def poster
      @doc.at_css('frameUrl').text
    end

    def trailer
      @doc.at_css('trailer').text
    end

    def director
      @doc.at_css('director').text
    end

    def cast
      @doc.at_css('cast').text
    end

    def schedules
    end
  end
end
