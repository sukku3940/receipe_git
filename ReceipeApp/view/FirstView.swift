//
//  FirstView.swift
//  ReceipeApp
//
//  Created by apple on 05/04/22.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        TabView{
            
            
            Text("this is main menu").tabItem(){
                
                Image(systemName:"star")
                Text("Features")
                
                
            }
            
            
            
            
            ContentView().tabItem(){
                
                
                
                Image(systemName:"list.dash")
                Text("list")
                
            }
            
            
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
