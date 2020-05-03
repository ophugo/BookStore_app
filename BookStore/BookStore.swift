//
//  BookStore.swift
//  BookStore
//
//  Created by Hugo A Valencia on 3/3/20.
//  Copyright © 2020 Hugo A Valencia. All rights reserved.
//

import Foundation

class BookStore {
    
    var bookList: [Book] = []
    
    
    init() {
        var newBook = Book()
        newBook.title = " A Game of Thrones"
        newBook.author = "George R.R. Martin"
        newBook.pages = 32
        newBook.description = """
        Winter is coming. Such is the sten motto of House Stark, the northernmost
        of the fiefdoms that owe allegiance to King Robert Baratheon in far-off King's Landing. There Eddard Stark of Winterfell rules in ....
        """
        
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "A Clash of Kings"
        newBook.author = "George R.R Martin"
        newBook.pages = 12
        newBook.description = """
        A Song of Ice and Fire: Book Two
        """
        
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "Tuck Everlasting"
        newBook.author = "Natalie Babbitt"
        newBook.pages = 90
        newBook.description = """
        The Tucks explain to Winnie that the spring grants eternal life to anyone who drinks its water, effects which they discovered by accident. In the process, Miles had to cope with his wife leaving him and taking their children. They have been living in seclusion outside of Treegap for years, reuniting every ten years and drinking from the spring.
        """
        
         bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "Hitlers Last Days"
        newBook.author = "Billi O'Reilly"
        newBook.pages = 01
        newBook.description = """
        By early 1945, the destruction of the German Nazi State seems certain. The Allied forces, led by American generals George S. Patton and Dwight D. Eisenhower, are gaining control of Europe, leaving German leaders scrambling. Facing defeat, Adolf Hitler flees to a secret bunker with his new wife, Eva Braun, and his beloved dog, Blondi.
        """
        
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "Le Petit Prince"
        newBook.author = "Antoine de Saint-Exupéry"
        newBook.pages = 78
        newBook.description = """
        El principito es un cuento poético que viene acompañado de ilustraciones hechas con acuarelas por el mismo Saint-Exupéry.
        """
        
        bookList.append(newBook)
        
        bookList.sort(by: { $0.title < $1.title })
        
    }
    
    
    
}
