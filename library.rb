class Library

  def initialize(books)
    @books = books
  end

  def books()
    return @books
  end

  def book_all_info(title)
    for book in @books
      return book if book[:title] == title
    end
    return "book not found"
  end

  def book_rental_details(title)
    for book in @books
      return book[:rental_details] if book[:title] == title
    end
    return "book not found"
  end

  def add_book(new_book)
    @books.push(new_book)
  end

  def update_rental_details(title, student_name, date)
    for book in @books
      if book[:title] == title
        book[:rental_details][:student_name] = student_name
        book[:rental_details][:date] = date
      end
      return "book not found"
    end
  end

end
