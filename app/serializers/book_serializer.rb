#
class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :isbn, :author, :status, :rating, :borrow_requests #:good_reads_rating



  def good_reads_rating
    response = httparty "www.goodreads.com/book/review_counts.json?isbns=#{object.isbn}&key=XBQ7rB3NkWt6EvNHQ16Dsg"

  end
#access elements in the response hash (test with pry).
#return that element in the good_reads_rating serializer.
#THEN, move hhtparty to the rating model.
#write into the index method, to check if good_reads_rating has been update recently, if it has, just return value, if not query good_reads.


end
