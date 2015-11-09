User.delete_all
Profile.delete_all
Rating.delete_all
BorrowRequest.delete_all
Book.delete_all


User.create!([
  {email: "lindsey@lindsey.com", password: "lindsey"},
  {email: "chris@chris.com", password: "chris"},
  {email: "david@david.com", password: "david"},
  {email: "ruth@ruth.com", password: "ruth"}
])

Profile.create!([
  {user_id: 1, first_name: "Lindsey", last_name: "Edinger", address_street: "2003 Beacon St", city: "Brookline", state: "MA", zip: 2445, phone:"467-987-0900"},
  {user_id: 2, first_name: "Chris", last_name: "Crane", address_street: "1803 Beacon st", city: "Brookline", state: "MA", zip: 2445, phone:"123-321-4567"},
  {user_id: 3, first_name: "David", last_name: "Crane", address_street: "241 North Mtn Road", city: "Dalton", state: "MA", zip: 1226, phone:"122-223-3456"},
  {user_id: 4, first_name: "Ruth", last_name: "Blodgett", address_street: "148 Beach Bluff Ave", city: "Swampscott", state: "MA", zip: 1907, phone: "456-654-7890"}
])

Book.create!([
  {title: "Good to Great", isbn: 9789749535172, author: "Jim Collins", user_id: 1},
  {title: "The Catcher in the Rye", isbn: 9780316769310, author: "J.D. Salinger", user_id: 1},
  {title: "Ancillary Justice", isbn: 9781306759434, author: "Ann Leckie", user_id: 1},
  {title: "Let My People Go Surfing", isbn: 9781429537124, author: "Yvon Chouinard", user_id: 1},
  {title: "Pnin", isbn: 9788421742648, author: "Vladimir Nabokov", user_id: 2},
  {title: "The Hard Thing About Hard Things", isbn: 9780062273208, author: "Ben Horowitz", user_id: 2},
  {title: "Black Swan Green", isbn: 9781471224348, author: "David Mitchell", user_id: 2},
  {title: "Zero To One", isbn: 9783593501604, author: "Peter Thiel", user_id: 2},
  {title: "Manufacturing Consent", isbn: 9781407054056, author: "Noam Chomsky", user_id: 2},
  {title: "Fight Club", isbn: 393039765, author: "Chuck Palahniuk", user_id: 3},
  {title: "The Stranger", isbn: 9788845277634, author: "Albert Camus", user_id: 3},
  {title: "The Short and Tragic Life of Robert Peace", isbn: 9781476731926, author: "Jeff Hobbs", user_id: 3},
  {title: "Tinkers", isbn: 9781934137192, author: "Paul Harding", user_id: 3},
  {title: "Poor Charlie's Almanack", isbn: 9781578645015, author: "Charles Munger", user_id: 3},
  {title: "Poor Charlie's Almanack", isbn: 9781578645015, author: "Charles Munger", user_id: 4},
  {title: "The Great Gatsby", isbn: 9781597226769, author: "F. Scott Fitzgerald", user_id: 4},
  {title: "The Death of Ivan Ilyich", isbn: 9789629545703, author: "Leo Tolstoy", user_id: 4},
  {title: "Life of Pi", isbn: 9780756933937, author: "Yann Martel", user_id: 4},
  {title: "Harry Potter and The Chamber of Secrets", isbn: 9780747560722, author: "J.K. Rowling", user_id: 4}
])

BorrowRequest.create!([
  {book_id: 3, user_id: 4, request_date: "2015-09-13", response_date: "2015-09-14", response: "yes", due_back:"2015-10-13"},
  {book_id: 4, user_id: 3, request_date: "2015-09-15", response_date: "2015-09-17", response: "yes", due_back:"2015-10-16"},
  {book_id: 1, user_id: 3, request_date: "2015-10-30"},
  {book_id: 10, user_id: 1, request_date: "2015-11-2"}
  ])

Rating.create!([
  {book_id: 1, rating: 3, review: "Good points, but too long", date: "2015-06-28"},
  {book_id: 2, rating: 5, review: "A classic bildungsroman", date:"2015-07-30"},
  {book_id: 3, rating: 4, review: "Next best thing to Ursula Leguin", date:"2015-08-05"},
  {book_id: 4, rating: 4, review: "Interesting book by the founder of Patagonia", date:"2015-08-23"},
  {book_id: 5, rating: 5, review: "Beautifully written", date:"2015-09-01"},
  {book_id: 6, rating: 5, review: "Start up advice for anyone trying to start a business. Lots of practical advice", date:"2015-10-21"}
])
