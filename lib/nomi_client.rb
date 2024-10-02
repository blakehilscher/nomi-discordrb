class NomiClient
  attr_accessor :nomi_id, :other_bots

  def initialize(api_key:)
    @api_key = api_key
    @sending_message = false
    @other_bots = {}
  end

  def bot_count
    other_bots.count
  end

  def nomi
    nomis.find { |n| n['uuid'] == nomi_id }
  end

  def nomis
    @nomis ||= fetch_nomis
  end

  def select_nomi(message)
    nomi = nomis.find { |n| n['name'].to_s.strip.downcase == message.to_s.strip.downcase }
    nomi = nomis.find { |n| n['name'] =~ /#{message.to_s.gsub(' ', '|')}/i } if nomi.nil?
    self.nomi_id = nomi['uuid'] if nomi
    nomi
  end

  def chat(message)
    return nil if @sending_message
    begin
      @sending_message = true
      url = "https://api.nomi.ai/v1/nomis/#{nomi_id}/chat"
      uri = URI(url)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      request = Net::HTTP::Post.new(uri)
      request["Authorization"] = @api_key
      request["Content-Type"] = "application/json"
      request.body = { messageText: message }.to_json
      response = http.request(request)

      if response.is_a?(Net::HTTPSuccess)
        output = JSON.parse(response.body)
      else
        puts "Authorization #{@api_key} Error: #{response.code} #{response.body}"
      end
    ensure
      @sending_message = false
    end
    output['replyMessage']['text'] if output['replyMessage']
  end

  private

  def fetch_nomis
    url = "https://api.nomi.ai/v1/nomis"
    uri = URI(url)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    request = Net::HTTP::Get.new(uri)
    request["Authorization"] = @api_key
    response = http.request(request)

    if response.is_a?(Net::HTTPSuccess)
      JSON.parse(response.body)['nomis']
    else
      puts "Authorization #{@api_key} Error: #{response.code} #{response.body}"
    end
  end

end
