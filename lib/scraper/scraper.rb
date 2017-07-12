require 'rest-client'
require 'json'

class Scraper

  def initialize
    @base_url = 'http://partnerapi.funda.nl/feeds/Aanbod.svc/json/a001e6c3ee6e4853ab18fe44cc1494de/?'
  end

  def find_by_attrs(attrs)
    @query_string = build_query_string(attrs)
    response = get_results
    parsed_response = JSON.parse(response)
    # process_results(parsed_response)
  end

  def build_query_string(parameters)
    type = "type=#{parameters[:type]}"
    query = create_query(parameters[:query])
    page_count = "page={#{parameters[:page_count]}}"
    page_size = "pagesize=#{parameters[:page_size]}"
    query_string = [type, query, page_count, page_size].join('&')
    @base_url + query_string
  end

  def create_query(key_words)
    key_words[:basic_query] << create_price_range(key_words[:range])
    query_string = key_words[:basic_query].reject(&:blank?).join('/')
    query_string
    'zo=/' + query_string + '/'
  end

  def create_price_range(min_max)
    return nil if !min_max.present?
    min_max.values.join('-')
  end

  def get_results
    RestClient.get(@query_string)
  end

  def parse_date(time_stamp)
    time_stamp.slice!(0..5)
    time_stamp.chomp!(')/')
    Time.strptime(time_stamp, '%Q%z').to_datetime
  end

  def process_results(response)
    response.each do |item|
      item['PublicatieDatum'] = parse_date(item['PublicatieDatum'])
    end
    response.sort_by {|hash| hash['PublicatieDatum'] }
  end
end
