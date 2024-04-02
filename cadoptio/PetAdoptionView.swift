//
//  PetAdoptionView.swift
//  cadoptio
// tes
//  Created by David Gunawan on 22/03/24.
//

import SwiftUI


struct PetAdoptionView: View {
    
    @State private var isFilterViewPresented = false
    
    let leppyData = PetModel.generateLeppyData()
    let butetData = PetModel.generateButetData()
    let skyData = PetModel.generateSkyData()
    let kentangData = PetModel.generateKentangData()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 16) {
                PetCard(petModel: leppyData)
                    .shadow(radius: 10)
                PetCard(petModel: butetData)
                    .shadow(radius: 10)
                PetCard(petModel: skyData)
                    .shadow(radius: 10)
                PetCard(petModel: kentangData)
                    .shadow(radius: 10)
                Spacer()
            }
            .padding(16)
            .navigationBarTitle("Discover")
            .toolbar {
                Button(action: {
                    isFilterViewPresented = true
                }) {
                    Image(systemName: "line.3.horizontal.decrease.circle.fill")
                        .foregroundColor(.orange)
                }
            }
            .sheet(isPresented: $isFilterViewPresented) {
                FilterView()
            }
        }
    }
}

struct PetCard: View {
    var petModel: PetModel = PetModel(name: "Leppy", type: "Domestic", distance: 1.0, weight: 1.0, gender: "Male")
    
    var body: some View {
        HStack {
            ImageView(imageName: "placeholder")
                .background(Color(.white))
            PetInfo(name: petModel.name, type: petModel.type, distance: petModel.distance, weight: petModel.weight, gender: petModel.gender)
                .padding(.horizontal, 10.0)
        }
        .frame(height: 120)
        .background(Color(.white))
        .cornerRadius(8)
    }
}

struct PetInfo: View {
    let name: String
    let type: String
    let distance: Double
    let weight: Double
    let gender: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(name)
                    .font(.headline)
                Spacer()
                Button(action: {}) {
                    Image(systemName: "heart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                        .foregroundColor(.pink)
                        .font(.title)
                }
            }.padding(.trailing, 16)
            Text(type)
                .font(.system(size: 12, weight: .regular))
                .foregroundColor(.gray)
            Spacer()
            HStack {
                HStack {
                    Image(systemName: "location.fill")
                        .resizable()
                        .foregroundColor(.orange)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 14, height: 14)
                    Text("\(distance, specifier: "%.1f") km")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(.gray)
                    Spacer()
                }
                HStack {
                    Image(systemName: "scalemass.fill")
                        .resizable()
                        .foregroundColor(.orange)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 14, height: 14)
                    Text("\(weight, specifier: "%.1f") kg")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(.gray)
                    Spacer()
                }
                HStack {
                    Image(systemName: "pawprint.fill")
                        .resizable()
                        .foregroundColor(.orange)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 14, height: 14)
                    Text(gender)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(.gray)
                    Spacer()
                }
            }
        }.padding(.vertical, 16.0)
    }
}

struct ImageView: View {
    let imageName: String
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 120, height: 120) // Set the frame here
            .overlay(
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            )
    }
}

struct PetAdoptionView_Previews: PreviewProvider {
    static var previews: some View {
        PetAdoptionView()
    }
}
