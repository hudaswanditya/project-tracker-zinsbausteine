module Services
  class Fetcher

    def self.api_request(url)
      Faraday.new(url: url) do |faraday|
        faraday.adapter Faraday.default_adapter # make requests with Net::HTTP
      end
    end

    def self.get_data(url)
      resp = api_request.get do |request|
        request.url(url)
        request.options[:timeout] = 8
      end
      unless resp.status == 200
        log_error(resp)
        context.fail!
      end
      context.result = JSON.parse(resp.body)
    end

  end
end
