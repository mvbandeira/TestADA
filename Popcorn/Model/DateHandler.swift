//
//  DateHandler.swift
//  Popcorn
//
//  Created by mvbsa on 18/07/22.
//

import Foundation

//
class DateHandler {
    
    let parser: [String: String] = [
        "01": "Jan",
        "02": "Fev",
        "03": "Mar",
        "04": "Abr",
        "05": "Maio",
        "06": "Jun",
        "07": "Jul",
        "08": "Ago",
        "09": "Set",
        "10": "Out",
        "11": "Nov",
        "12": "Dez"
    ]
    
   static let shared = DateHandler()
   private init(){}
    
   func getMonth(of date: String) -> String {
       let separatedDate = date.components(separatedBy: "-")
       let month = separatedDate[1]
       
       return parser[month] ?? "undefined"
    }
    
}
