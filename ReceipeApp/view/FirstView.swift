//
//  FirstView.swift
//  ReceipeApp
//
//  Created by apple on 05/04/22.
//

import SwiftUI

struct FirstView: View {
    @EnvironmentObject var model:receipemodel
    
   @State var Tabindex=0
    var body: some View {
        TabView(selection:$Tabindex){
            
            
            Text("this is main menu").tabItem(){
                
                Image(systemName:"star")
                Text("Features")
                
                
            }
            
            
            
            
            ContentView().tabItem(){
                
                
                
                Image(systemName:"list.dash")
                Text("list")
                
            }
            
            
        }
        ReceipeFeaturedView().tabItem(){
            Image(systemName:"pencil")
            Text("First")
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
