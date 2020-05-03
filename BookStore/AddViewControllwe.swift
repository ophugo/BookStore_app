//
//  AddViewControllwe.swift
//  BookStore
//
//  Created by Hugo A Valencia on 4/21/20.
//  Copyright © 2020 Hugo A Valencia. All rights reserved.
//

import UIKit

class AddViewControllwe: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var authorText: UITextField!
    @IBOutlet weak var pagesText: UITextField!
    @IBOutlet weak var switchOutlet: UISwitch!
    @IBOutlet weak var descriptionText: UITextView!
    
    
    
    var book = Book()
    var delegate: BookStoreDelegate?
    var editBook = false
    
    @IBAction func saveBookAction(_ sender: UIButton) {
        book.title = titleText.text!
        book.author = authorText.text!
        book.description = descriptionText.text!
        
        
        if let text = pagesText.text, let pages = Int(text) {
            book.pages = pages
        }
        
        if switchOutlet.isOn {
            book.readThisBook = true
        }else {
            book.readThisBook = false
        }
        if editBook {
            delegate?.editBook(self, editBook: book)
        }else {
            delegate?.newBook(self, newBook: book)
        }
        print("entra")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleText.delegate = self
        authorText.delegate = self
        pagesText.delegate = self
        descriptionText.delegate = self
        
        if editBook {
            self.title = "Edit Book"
            titleText.text = book.title
            authorText.text = book.author
            pagesText.text = String(book.pages)
            descriptionText.text = book.description
            if book.readThisBook {
                switchOutlet.isOn = true
            }else {
                switchOutlet.isOn = false
            }
        }
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    
}
