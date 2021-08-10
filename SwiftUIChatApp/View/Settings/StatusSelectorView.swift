//
//  StatusSelectorView.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 4/8/21.
//

import SwiftUI

struct StatusSelectorView: View {
    @ObservedObject var viewModel = StatusViewModel()
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            ScrollView {
                VStack (alignment: .leading){
                    // Current state
                    Text("CURRENTLY SET STATUS")
                        .foregroundColor(.gray)
                        .padding()
                    HStack {
                        StatusCellView(status: viewModel.status)
                        Spacer()
                    }
                    .padding()
                    .background(Color.white)
                    
                    //Select your status
                    Text("SELECT YOUR STATUS")
                        .foregroundColor(.gray)
                        .padding()
                    ForEach(UserStatus.allCases.filter({ $0 != .notConfigured }), id:\.self) {status in
                        Button(action: {
                            viewModel.updateStatus(status)
                        }, label: {
                            StatusCellView(status: status)
                        })
                    }
                    
                    
                }
                
            }
        }
        
    }
}

struct StatusSelectorView_Previews: PreviewProvider {
    
    static var previews: some View {
        StatusSelectorView()
    }
}

struct StatusCellView: View {
    var status: UserStatus
    var body: some View {
        HStack {
            Text(status.title)
                .foregroundColor(.black)
                .frame(height: 56)
            Spacer()
        }
        .padding(.horizontal)
        .background(Color.white)
    }
}
