//
//  EditProfileView.swift
//  tinder
//
//  Created by Harvir Brar on 17/10/2024.
//

import SwiftUI

struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var bio = "Actress/Singer"
    @State private var occupation = "Actress"
    let user: User
    var body: some View {
        NavigationStack{
            ScrollView(){
                ProfileImageGridView(user: user)
                    .padding()
                
                VStack(spacing:24){
                    VStack(alignment: .leading){
                        Text("ABOUT ME")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        TextField("Add your bio",text:$bio,axis: .vertical)
                            .padding()
                            .frame(height:64,alignment:.top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                    }
                    VStack(alignment: .leading){
                        Text("OCCUPATION")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        HStack{
                            Image(systemName: "book")
                            Text("Occupation")
                            
                            Spacer()
                            
                            Text(occupation)
                                .font(.subheadline)
                        }
                        .padding()
                        .background(Color(.secondarySystemBackground))
                    }
                    
                    VStack(alignment: .leading){
                        Text("Gender")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        HStack{
                            Text("GENDER")
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .imageScale(.small)
                        }
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .font(.subheadline)
                    }
                    
                    VStack(alignment: .leading){
                        Text("Sexual Orientation")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        HStack{
                            Text("Straight")
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .imageScale(.small)
                        }
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .font(.subheadline)
                    }
                    
                    
                }
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button("Cancel"){
                        dismiss()
                    }
                }
                ToolbarItem(placement: .topBarTrailing){
                    Button("Done"){
                        dismiss()
                    }
                    .fontWeight(.semibold)
                }
            }
        }
    }
}

#Preview {
    EditProfileView(user: MockData.users[0])
}
