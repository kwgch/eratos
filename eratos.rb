class Eratos
  def initialize(lmt)
    @prime = []
    search_list = (2..lmt).to_a
    threshold = Math.sqrt lmt
    begin
      @prime << search_list.shift
      search_list.delete_if { |e| (e % @prime.last).zero? }
    end until search_list.empty? || search_list.first > threshold
    @prime += search_list
  end
  attr_accessor :prime
end
