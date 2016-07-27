require 'rest_client'

class TvMaze::Requester
  class << self

    def get(action, params={})
      url = api.url_for(action, params)
      perform_request do
        parse_response(RestClient.get(url, request_headers))
      end
    end

    private
    def api
      TvMaze::Api.instance
    end

    def perform_request(&block)
      begin
        block.call
      rescue RestClient::Exception => e
        raise TvMaze::Exception::Api.new(e.message)
      end
    end

    def request_headers
      Hash.new.tap do |headers|
        headers['Accept'] = 'application/json'
        headers['Content-Type'] = 'application/json'
      end
    end

    def parse_response(response_body)
      begin
        JSON.parse(response_body)
      rescue JSON::ParserError => e
        raise TvMaze::Exception::JsonParseError.new("Response body could not be parsed: #{e.message}")
      end
    end
  end
end
