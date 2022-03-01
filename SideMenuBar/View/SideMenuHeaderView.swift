//
//  SideMenuHeaderView.swift
//  SideMenuBar
//
//  Created by Juan Sebastian Orozco Buitrago on 2/28/22.
//

import SwiftUI

struct SideMenuHeaderView: View {
    
    //MARK: - PROPERTIES
    
    @Binding var isShowing: Bool
    
    //MARK: - BODY
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Button {
                withAnimation(.spring()) {
                    isShowing.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            }

            
            VStack(alignment: .leading) {
                Image("halloween")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                
                Text("Juan S Orozco")
                    .font(.system(size: 24, weight: .semibold))
                
                Text("@Sebasorozco1015")
                    .font(.system(size: 14))
                    .padding(.bottom, 24)
                
                HStack(spacing: 12) {
                    HStack(spacing: 4) {
                        Text("344")
                            .bold()
                        Text("Following")
                    } //: HSTACK
                    
                    HStack(spacing: 4) {
                        Text("1.344")
                            .bold()
                        Text("Followers")
                    } //: HSTACK
                    Spacer()
                } //: HSTACK
                
                Spacer()
            } //: VSTACK
            .padding()
        } //: ZSTACK
    }
}

//MARK: - PREVIEW

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
