//
//  HomeView.swift
//  iOS ecommerce api
//
//  Created by 沈若葉 on 2024-11-20.
//

import SwiftUI

enum Tabs: String{
    case products
    case address
}

struct HomeView: View {
    @Binding var isLoggedIn: Bool
    @State private var selectedTab: Tabs = .products // Track the selected tab
    var body: some View {
            TabView(selection: $selectedTab) {
                ProductsView()
                    .tabItem{
                        Image(systemName: "bag.badge.plus.fill")
                    }
                    .tag(Tabs.products)
                
                AddressView()
                    .tabItem{
                        Image(systemName: "map.fill")
                    }
                    .tag(Tabs.address)
            }
        .navigationTitle(selectedTab.rawValue.capitalized)
        
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: logout){
                    Image(systemName: "power")
                        .foregroundStyle(.red)
                }
            }
        }
        .toolbar{
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink(destination: CartView()) {
                    Image(systemName: "cart.fill")
                        .foregroundStyle(.black)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    private func logout() {
        NetworkManager.shared.clearToken()
        isLoggedIn = false
    }
}

#Preview {
    HomeView(isLoggedIn: .constant(true))
}
