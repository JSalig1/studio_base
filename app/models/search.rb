class Search
  attr_reader :results, :status

  def initialize(search)
    @status = 'No Records Found'
    @results = search_drivess_for(search[:query])
    update_status
  end

  private

  def search_drivess_for(search_query)
    Drive.where(
      "name ILIKE :query OR project ILIKE :query OR notes ILIKE :query",
      query: "%#{search_query}%"
    )
  end

  def update_status
    if results.any?
      @status = 'Search Results'
    end
  end
end
