//
//  ViewController.swift
//  Fortuna
//
//  Created by Cheng Yang on 2014-10-16.
//  Copyright (c) 2014 Cheng Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quotationTextView: UITextView!
    @IBAction func rootViewTapped(sender: UITapGestureRecognizer) {
        displayRandomQuote()
    }
    
    override func awakeFromNib() {
        //The super method doesn't do anything, but we call it anyway.
        super.awakeFromNib()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        println("Hacking in Swift, since iOS 8")
        println("controller: \(self)")
        
        quotationTextView.editable = false
        quotationTextView.selectable = false
        
        displayRandomQuote()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayRandomQuote(){
        
        let delegate = UIApplication.sharedApplication().delegate as AppDelegate
        let quotes = delegate.negativeQuotes + delegate.positiveQuotes
        let quote = quotes[Int(arc4random_uniform(UInt32(quotes.count)))]

        quotationTextView.text = quote
    
    }


}

