class Search
  attr_reader :results, :status

  def initialize(search)
    @status = 'No Records Found'
    @results = search_projects_for(search[:query])
    update_status
  end

  private

  def search_projects_for(search_query)
    Project.where(
      "name ILIKE :query OR job_number ILIKE :query",
      query: "%#{search_query}%"
    )
  end

  def update_status
    if results.any?
      @status = 'Search Results'
    end
  end
end
