//
//  BookStoreDelegate.swift
//  BookStore
//
//  Created by Hugo A Valencia on 4/24/20.
//  Copyright © 2020 Hugo A Valencia. All rights reserved.
//

import Foundation

protocol BookStoreDelegate {
    func newBook(_ controller: AnyObject, newBook: Book)
    func editBook(_ controller: AnyObject, editBook: Book)
    func deleteBook(_ controller: AnyObject)
}
