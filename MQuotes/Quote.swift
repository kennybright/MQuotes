//
//  Quote.swift
//  MQuotes
//
//  Created by Kenny Bright on 11/19/17.
//  Copyright © 2017 Kenny Bright. All rights reserved.
//

import Foundation

class QuoteModel {
    
    
    
    var quote:[String] = [
    "If you do something and it turns out pretty good, then you should go do something else wonderful, not dwell on it for too long. Just figure out what’s next.",
    
    "No matter how small you start, start something that matters.",
    
    "The credit belongs to those who are actually in the arena, who strive valiantly; who know the great enthusiasums, the great devotions, and spend themselves in a worthy cause; who at best know the triumph of high achievement; and who, at worst, if they fail, fail while daring greatly, so that their place shall never be with those cold and timid souls who know neither victory nor defeat. "]
    
    var authors: [String] = ["Steve Jobs", "Bredon Burchard", "Theodore Roosevelt"]
    
    var authorImage:[String] = ["thumb_steve", "thumb_brendon" ,"thumb_theodore"]
    
    var currentQuoteIndex: Int = 0
    
    
    func getCurrentIndex () -> Int{
        // check boundary; count start from 0. if we are return 0 else return currentQuoteIndex
        let index = currentQuoteIndex > (quote.count - 1) ? 0 : currentQuoteIndex
        return index
    }
    func getNextQuote () -> String {
       // increment currentQupteIndex
       currentQuoteIndex += 1
        // less than boundary?
        if (currentQuoteIndex <= quote.count - 1)
        {
            return quote[currentQuoteIndex]
        }
      
        // anything else set currentQuoteIndex =0
        currentQuoteIndex = 0
        return quote[currentQuoteIndex]
       
    }
    
    func getAuthor()-> String {
        return self.quote[currentQuoteIndex]
    }
    
    func getAuthorImage() -> String {
        return self.authorImage[currentQuoteIndex]
    }
}
