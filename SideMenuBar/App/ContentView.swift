//
//  ContentView.swift
//  SideMenuBar
//
//  Created by Juan Sebastian Orozco Buitrago on 2/28/22.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    
    @State private var isShowing: Bool = false
    
    //MARK: - BODY
    
    var body: some View {
        NavigationView {
            
            ZStack {
                if isShowing {
                    SideMenuView(isSHowing: $isShowing)
                }
                HomeView()
                    .cornerRadius(isShowing ? 20 : 10)
                    .offset(
                        x: isShowing ? 300 : 0,
                        y: isShowing ? 44 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button {
                                withAnimation(.spring()) {
                                    isShowing.toggle()
                                }
                            } label: {
                                Image(systemName: "list.bullet")
                                    .foregroundColor(.black)
                            }
                        }
                    } //: TOOLBAR
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
            } //: ZSTACK
            .onAppear {
                isShowing = false // When turn back dont show the SideMenu
            }
        } //: NAVIGATION
    }
}

//MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.white
            
            Text("Hello, world!")
                .padding()
        } //: ZSTACK
    }
}
