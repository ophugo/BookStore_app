//
//  DetailViewController.swift
//  BookStore
//
//  Created by Hugo A Valencia on 3/3/20.
//  Copyright © 2020 Hugo A Valencia. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var pagesLabel: UILabel!
    @IBOutlet weak var readSwitch: UISwitch!
    
    var delegate: BookStoreDelegate? = nil
    var myBook = Book()
    
    
    @IBOutlet weak var descriptionTextView: UITextView!

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            myBook = detail
            titleLabel.text = myBook.title
            authorLabel.text = myBook.author
            pagesLabel.text = String(myBook.pages)
            descriptionTextView.text = myBook.description
            readSwitch.isEnabled = false
            if myBook.readThisBook {
                readSwitch.isOn = true
            }else {
                readSwitch.isOn = false
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: Book? {
        didSet {
            // Update the view.
        }
    }
    

    @IBAction func deleteBookAction(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Warning", message: "Delete this book?", preferredStyle: .alert)
               
               let noAction = UIAlertAction(title: "No", style: .cancel) { (action) in
                   print("Cancel")
               }
               
               alertController.addAction(noAction)
               
               let yesAction = UIAlertAction(title: "Yes", style: .destructive) { (action) in
                   self.delegate?.deleteBook(self)
               }
               
               alertController.addAction(yesAction)
               
               present(alertController, animated: true, completion: nil)
        print("calson")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editDetail" {
            if let vc = segue.destination as? AddViewControllwe {
                vc.delegate = delegate
                vc.editBook = true
                vc.book = myBook
            }
        }
    }
}

