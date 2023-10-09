class CatFact

  def self.fact
    response = HTTParty.get('https://cat-fact.herokuapp.com/facts')
    response.map { |fact| OpenStruct.new(text: fact['text']) }
  end

end