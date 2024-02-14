//
//  ContentView.swift
//  WalletManager
//
//  Created by Alisa Serhiienko on 05.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var viewModel = ExpensesViewModel()
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Button {
                        //
                    } label: {
                        Image(systemName: "xmark")
                            .font(.title2)
                            .foregroundStyle(.gray)
                    }
                    
                    Spacer()
                    
                    Text("Add Card")
                        .font(.title3)
                        .padding(.leading, 10)
                    
                    Spacer()

                    Button {
                        //
                    } label: {
                        Image(systemName: "arrow.counterclockwise")
                            .font(.title2)
                            .foregroundStyle(.gray)
                    }
                }
                .padding(.bottom, 10)
                
                createCardView()
                    .padding(.bottom, 10)
          
            
            ExpenseSumView(expense: viewModel.product.name, sum: viewModel.product.data.sum(\.money))
            
            ExpenseBarChart(data: viewModel.product.data, range: viewModel.expenseRange)
            
            PickerView(options: viewModel.pickerOptions, selection: $viewModel.selectedProductIndex.animation(.easeIn(duration: 0.6)))
            
        }
        .padding()
    }
}

extension ContentView {
    func createCardView() -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(.linearGradient(colors: [.gray, .indigo], startPoint: .topLeading, endPoint: .bottomTrailing))
            
            VStack(alignment: .leading) {
                HStack {
                    Text("1234 4321 1234 4321")
                        .font(.title2)
                        .foregroundStyle(.white)
                    
                    Spacer(minLength: 0)
                    
                    Image(.mastercard)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 36)
                }
                .padding(.top, 16)
                
                HStack {
                    
                    Text("11/28")
                        .font(.title3)
                        .foregroundStyle(.white.opacity(0.6))
                    
                    Text("CVV")
                        .font(.title3)
                        .foregroundStyle(.white.opacity(0.6))
                        .padding(10)
                    
                    Spacer()
                }
                .padding(.top, 16)
                                
                Text("Alisa Serhiienko")
                    .font(.title3)
                    .foregroundStyle(.white.opacity(0.3))
                    .padding(.bottom, 24)
            }
            
            .padding(.horizontal, 16)
            .tint(.white)
        }
        .frame(height: 217)
    }
}

#Preview {
    ContentView()
}
