require 'singleton'

module TvMaze
  class Api
    include Singleton

    attr_reader :base_url

    def initialize
      self.base_url = "http://api.tvmaze.com/".freeze
    end

    def url_for(action, params={})
      url = URI.join(base_url, action)

      if params[:embed]
        params['embed[]'] = params.delete(:embed)
      end

      url.query = URI.encode_www_form(params) if params
      url.to_s
    end

    private
    attr_writer :base_url
  end
end
