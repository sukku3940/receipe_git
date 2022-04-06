//
//  Receipe.swift
//  ReceipeApp
//
//  Created by apple on 02/04/22.
//

import Foundation


class Receipe:Identifiable,Decodable{
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var highlights:[String]
    var servings:Int
    var ingredients:[ingredients]
    var directions:[String]
    
    
    
    
}

class ingredients:Identifiable,Decodable {
    
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var  unit:String?
    }


