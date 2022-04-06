//
//  receipeModel.swift
//  ReceipeApp
//
//  Created by apple on 02/04/22.
//

import Foundation


class receipemodel:ObservableObject{
    
  @Published var receipe=[Receipe]()
    
    init(){
        
        
       
        self.receipe=DataService.getlocalData()
        
        
        
        
        }
    
    
    
    
    
}
