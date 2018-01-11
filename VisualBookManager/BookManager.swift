//
//  BookManager.swift
//  BookManager
//
//  Created by JuDH on 2018. 1. 8..
//  Copyright © 2018년 JuDH. All rights reserved.
//

import Foundation

class BookManager {
    var bookList = [Book]()
    
    func registerBook(bookObject:Book) {
        bookList.append(bookObject)
    }
    
    func showAllBooks() -> String {
        var strTmp:String = ""
        for bookTmp in bookList {
            strTmp.append("Name : \(bookTmp.name!)\n")
            strTmp.append("Genre : \(bookTmp.genre!)\n")
            strTmp.append("Author : \(bookTmp.author!)\n")
            strTmp.append("-----------------------------\n")
        }
        return strTmp
    }
    
    func countBooks() -> Int {
        return bookList.count
    }
    
    func searchBook(name:String) -> String? {
        var strTmp = ""
        for bookTmp in bookList {
            if bookTmp.name! == name {
                strTmp.append("Name : \(bookTmp.name!)\n")
                strTmp.append("Genre : \(bookTmp.genre!)\n")
                strTmp.append("Author : \(bookTmp.author!)\n")
                strTmp.append("-----------------------------\n")
                
                return strTmp
            }
        }
        return nil
    }
    
    func removeBook(name:String) {
        for (index, value) in bookList.enumerated() {
            if value.name! == name {
                bookList.remove(at: index)
            }
        }
    }
}






