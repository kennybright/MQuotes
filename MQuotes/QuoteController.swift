//
//  QuoteController.swift
//  MQuotes
//
//  Created by Kenny Bright on 11/19/17.
//  Copyright © 2017 Kenny Bright. All rights reserved.
//

import Foundation
import UIKit
class QuoteController : UIViewController
{
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorImage: UIImageView!
    @IBOutlet weak var authorNameLabel: UILabel!
    var q = QuoteModel()
    override func viewDidLoad() {
        super.viewDidLoad()
       
        quoteLabel.text = q.quote[0]
        let image = UIImage(named: q.authorImage[0])
        authorImage.image = image
        authorNameLabel.text = q.authors[0]
        
        
    }
    
    override func didReceiveMemoryWarning() {
        return super.didReceiveMemoryWarning()
    }
    @IBAction func didClickInspireBtn(_ sender: Any) {
        let quote = q.getNextQuote()
        quoteLabel.text = quote
        let index = q.getCurrentIndex()
        let image = UIImage(named: q.authorImage[index])
        authorImage.image = image
        authorNameLabel.text = q.authors[index]
        
        
    }
}
