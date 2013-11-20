require 'spec_helper'

describe "Scraper" do

  before(:each) do
    @url = "http://nytimes.com"
    @scraper = Scraper.new(@url)
  end

  describe ".new" do
    it "initializes with a url" do
      expect(Scraper.new("http://www.nytimes.com")).to be
    end
    it "errors without a url" do
      expect { Scraper.new }.to raise_error(ArgumentError)
    end
  end

  describe "#get_href" do

    it "returns an array filled with hrefs from a page" do
      expect(@scraper.get_href.class).to eq(Array)
    end

    it "returns an array of links" do
      something = @scraper.get_href.last
      binding.pry

    end
  end
end
