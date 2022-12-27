//
//  BookModel.swift
//  Booki
//
//  Created by Muharrem Köroğlu on 27.12.2022.
//

import Foundation

struct BookModel : Identifiable {
    var id = UUID()
    var bookName : String
    var bookDetail : [BookDetail]
}


struct BookDetail : Identifiable{
    var id = UUID()
    var bookTitle : String
    var bookAuthor : String
    var bookImageName : String
    
}

var best1 = BookDetail(bookTitle: "Atomic Habits", bookAuthor: "James Clear", bookImageName: "best1")
var best2 = BookDetail(bookTitle: "Lighter", bookAuthor: "Yung Pueblo", bookImageName: "best2")
var best3 = BookDetail(bookTitle: "Verity", bookAuthor: "Colleen Hoover", bookImageName: "best3")

var bestSeller = BookModel(bookName: "Best Sellers", bookDetail: [best1, best2, best3])

var history1 = BookDetail(bookTitle: "What is History?", bookAuthor: "Edward Hallett Carr", bookImageName: "history1")
var history2 = BookDetail(bookTitle: "1491", bookAuthor: "Charles C. Mann", bookImageName: "history2")
var history3 = BookDetail(bookTitle: "The Guns of August", bookAuthor: "Barbara Tuchman", bookImageName: "history3")

var history = BookModel(bookName: "History", bookDetail: [history1, history2, history3])

var science1 = BookDetail(bookTitle: "An Immense World", bookAuthor: "Ed Yong", bookImageName: "science1")
var science2 = BookDetail(bookTitle: "Origin", bookAuthor: "Jennifer Raff", bookImageName: "science2")
var science3 = BookDetail(bookTitle: "Starry Messenger", bookAuthor: "Neil deGrasse Tyson", bookImageName: "science3")

var science = BookModel(bookName: "Science", bookDetail: [science1, science2, science3])

var books = [bestSeller, history, science]
