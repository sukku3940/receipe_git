//
//  ReceipeDetailView.swift
//  ReceipeApp
//
//  Created by apple on 02/04/22.
//

import SwiftUI

struct ReceipeDetailView: View {
    
    var receipe:Receipe
    var body: some View {
        
            
        ScrollView{
            VStack(alignment:.leading){
                
            
            //MARK:IMAGE
            Image(receipe.image).resizable().scaledToFill()
            //MARK:INGREIENTS
            VStack(alignment:.leading){
                Text("Ingredients").font(.headline).bold()
                
                ForEach(receipe.ingredients,id: \.self){ item in
                    
                    Text("."+item).bold()
                    
                    
                    
                    
                    
                    
                    
                    
                }
                .padding(.bottom, 5.0)
                
                
            }.padding(.horizontal)
                
                Divider()
            
            VStack(alignment:.leading){
                
                Text("Directions").font(.headline).bold()
                ForEach(receipe.directions,id:\.self){ item in
                    
                    Text(item).bold()
                    
                }
                .padding([.leading, .bottom], 5.0)
                
                
                
                
                
            }.padding(.horizontal)
        
                
            
            
            
        }
        }
        
        
        
    }
}

struct ReceipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model=receipemodel()
        ReceipeDetailView(receipe: model.receipe[0])
    }
}
