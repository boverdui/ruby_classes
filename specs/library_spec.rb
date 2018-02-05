require ('minitest/autorun')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup
    @books = [
      {
        title: "Lord of the Rings",
        rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
        }
      }
    ]
    @new_book = {
        title: "Wuthering Heights",
        rental_details: {
        student_name: "",
        date: ""
        }
    }
    @library = Library.new(@books)
  end

  def test_books
    books = @library.books()
    assert_equal(@books, books)
  end

  def test_book_all_info
    all_info = @library.book_all_info("Lord of the Rings")
    assert_equal(@books[0], all_info)
  end

  def test_book_all_info_not_found
    all_info = @library.book_all_info("Pride and Prejudice")
    assert_equal("book not found", all_info)
  end

  def test_book_rental_details
    rental_details = @library.book_rental_details("Lord of the Rings")
    assert_equal(@books[0][:rental_details], rental_details)
  end

  def test_book_rental_details_not_found
    rental_details = @library.book_rental_details("Pride and Prejudice")
    assert_equal("book not found", rental_details)
  end

  def test_add_book
    @library.add_book(@new_book)
    all_info = @library.book_all_info("Wuthering Heights")
    assert_equal(@new_book, all_info)
  end

  def test_update_rental_details
    @library.update_rental_details("Lord of the Rings", "Maria", "28/02/18")
    rental_details = @library.book_rental_details("Lord of the Rings")
    assert_equal("Maria", rental_details[:student_name])
    assert_equal("28/02/18", rental_details[:date])
  end

  def test_update_rental_details_not_found
    @library.update_rental_details("pride_and_prejudice", "Maria", "28/02/18")
    rental_details = @library.book_rental_details("pride_and_prejudice")
    assert_equal("book not found", rental_details)
  end

end
