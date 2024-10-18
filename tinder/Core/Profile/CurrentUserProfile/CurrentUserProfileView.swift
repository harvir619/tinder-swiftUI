//
//  CurrentUserProfileView.swift
//  tinder
//
//  Created by Harvir Brar on 17/10/2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    @State private var showEdit = false
    let user: User
    var body: some View {
        NavigationStack
        {
            List{
                //header view
                CurrentUserProfileHeaderView(user: user)
                    .onTapGesture {showEdit.toggle()}
                //account info
                Section("Account Information"){
                    HStack{
                        Text("Name")
                        Spacer()
                        
                        Text("\(user.fullname)")
                    }
                    HStack{
                        Text("Email")
                        Spacer()
                        
                        Text("chowchow@hotmail.com")
                    }
                }
                // legal
                Section("Legal"){
                    Text("Terms of Service")
                    
                }
                //logout/delete
                Section{
                    Button("Logout"){
                    }
                }.foregroundStyle(.red)
                Section{
                    Button("Delete Account"){
                    }
                }.foregroundStyle(.red)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .fullScreenCover(isPresented: $showEdit){
                EditProfileView(user: user)
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user : MockData.users[0])
}
