//
//  Book.swift
//  BookManager
//
//  Created by JuDH on 2018. 1. 8..
//  Copyright © 2018년 JuDH. All rights reserved.
//

struct Book {
    var name:String?
    var genre:String?
    var author:String?
    
    func bookPrint() {
        print("Name : \(name!)")
        print("Genre : \(genre!)")
        print("Author : \(author!)")
        print("------------------")
    }
}
