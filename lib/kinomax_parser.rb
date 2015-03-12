require 'nokogiri'
require 'httpclient'
require 'kinomax_parser/announce'
require 'kinomax_parser/movie'
require "kinomax_parser/version"

module KinomaxParser
  NotFound = Class.new StandardError
  Empty = Class.new StandardError

  def self.fetch(url)
    HTTPClient.new.get url, nil, { 'User-Agent'=>'a', 'Accept-Encoding'=>'a' }
  end

  def self.parse(url)
    p = fetch url
    raise(Empty) if p.http_body.content.size.zero?
    p.status == 200 ? Nokogiri::XML(p.body.encode('utf-8')) : raise(NotFound)
  end
end

class Hash
  def compact
    delete_if { |k, v| v.nil? }
  end
end
