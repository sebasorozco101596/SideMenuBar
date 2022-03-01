//
//  SideMenuOptionView.swift
//  SideMenuBar
//
//  Created by Juan Sebastian Orozco Buitrago on 2/28/22.
//

import SwiftUI

struct SideMenuOptionView: View {
    
    //MARK: - PROPERTIES
    
    let viewModel: SideMenuViewModel
    
    //MARK: - BODY
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.imageName)
                .frame(width: 24, height: 24)
            
            Text(viewModel.title)
                .font(.system(size: 15, weight: .semibold))
            
            Spacer()
        } //: HSTACK
        .foregroundColor(.white)
        .padding()
    }
}

//MARK: - PREVIEW

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(viewModel: .messages)
    }
}
