//
//  ContentView.swift
//  ReceipeApp
//
//  Created by apple on 02/04/22.
//

import SwiftUI

struct ContentView: View {
    
    
    var array=["pizza","Biryani","somasa"]
  @ObservedObject var model = receipemodel()
    
    var body: some View {
        
        NavigationView {
            
            List(model.receipe)
            { r in
                
                NavigationLink(destination: ReceipeDetailView(receipe: r), label:{HStack(spacing: 20.0){
                    Image(r.image).resizable()
                        .aspectRatio(contentMode:.fit
                        ).frame(width: 50, height: 50, alignment:.center)


                    Text(r.name)

                }
                }
                )
                
                

                

            }.navigationBarTitle("ALL RECEIPES")
        }
        
        
       
        

        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}


