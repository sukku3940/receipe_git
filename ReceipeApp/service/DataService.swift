//
//  DataService.swift
//  ReceipeApp
//
//  Created by apple on 02/04/22.
//

import Foundation



class DataService{
    
    
    
static   func getlocalData()->[Receipe]{
        
    
    
    //parse local json file
     let pathString=Bundle.main.path(forResource:"data", ofType: "json")
        
        guard pathString != nil else{
            return [Receipe]()
        }
        //get a url path//// create a url object
let url=URL(fileURLWithPath:pathString!)
//data objcet
do{
let data = try Data(contentsOf:url)
            
            
            let decoder=JSONDecoder()
            do{
            
            let receipeData=try decoder.decode([Receipe].self,from:data)
                
                
                for r in receipeData{
                    
                    r.id=UUID()
                }
                
                return receipeData
            }
            catch{
               print(error)
            }
            
            
        }
        catch{
            print(error)
        }
        
            return [Receipe]()
        
    
    }
  
    
    

    
}

