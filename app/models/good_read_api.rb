require 'json'
require 'httparty'

class GoodReadApi
  include HTTParty

  def initialize (book)
    @@url = 'https://www.goodreads.com/book/review_counts.json'
    @key = ENV['GOODREADS_TOKEN']
    @isbn = book.isbn
    @response = get_review
    @book_info = parsed_review
  end

  def average_rating
    if @response == "N/A"
      @response
    else
      @book_info[:books][0][:average_rating]
    end
  end

  private

  def get_review

    HTTParty.get("#{@@url}?isbns=#{@isbn}&key=#{@key}").body
  end

  def parsed_review
    if @response == "No books match those ISBNs." || @response == "No ISBNs specified."
      @response = "N/A"
    else
      JSON.parse @response, symbolize_names: true
    end
  end

end
