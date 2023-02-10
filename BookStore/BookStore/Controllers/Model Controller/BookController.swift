//
//  BookController.swift
//  BookStore
//
//  Created by Chase on 2/9/23.
//

import Foundation

class BookController {
   
    static let sharedInstance = BookController() //Singleton
    
    var books: [Book] = [] //Single Source of Truth
    
    // MARK: - CRUD Functions
    
    func createBook(title: String, author: String, rating: Double, synopsis: String) {
        let newBook = Book(author: author, title: title, rating: rating, synopsis: synopsis)
        books.append(newBook)
    }
    
    func updateBook(bookToUpdate: Book, newTitle: String, newAuthor: String, newRating: Double, newSynopsis: String) {
        bookToUpdate.title = newTitle
        bookToUpdate.author = newAuthor
        bookToUpdate.rating = newRating
        bookToUpdate.synopsis = newSynopsis
    }
    
    func deleteBook(bookToDelete: Book) {
        guard let index = books.firstIndex(of: bookToDelete) else {return}
        books.remove(at: index)
    }
    
}
