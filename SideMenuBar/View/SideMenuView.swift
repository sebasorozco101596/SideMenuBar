//
//  SideMenuView.swift
//  SideMenuBar
//
//  Created by Juan Sebastian Orozco Buitrago on 2/28/22.
//

import SwiftUI

struct SideMenuView: View {
    
    //MARK: - PROPERTIES
    
    @Binding var isSHowing: Bool
    
    //MARK: - BODY
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                // HEADER
                SideMenuHeaderView(isShowing: $isSHowing)
                    .foregroundColor(.white)
                    .frame(height: 240)
                
                // CELL ITEMS
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink(destination: Text(option.title)) {
                        SideMenuOptionView(viewModel: option)
                    }

                }
                
                 Spacer()
                
            } //: VSTACK
            
        } //: ZSTACK
        .navigationBarHidden(true)
    }
}

//MARK: - PREVIEW

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isSHowing: .constant(true))
    }
}
