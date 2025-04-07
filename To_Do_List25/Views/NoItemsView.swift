//
//  NoItemsView.swift
//  To_Do_List25
//
//  Created by Aleksandr Zhazhoyan on 07.04.2025.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    let secondAccentColor = Color("SecondAccentColor")
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("Список пуст 😢")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Вы продуктивный человек? Тогда вам точно нужно воспользоваться приложением и добавить первый элемент в свой список!")
                    .padding(.bottom, 20)
                
                NavigationLink(
                    destination: AddView(),
                    label: {
                        Text("Добавить элемент! 😉")
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(animate ? secondAccentColor : Color.accentColor)
                            .cornerRadius(10)
                    })
                .padding(.horizontal, animate ? 30 : 50)
                .shadow(
                    color: animate ? secondAccentColor.opacity(0.7) : Color.accentColor.opacity(0.7),
                    radius: animate ? 30 : 10,
                    x: 0,
                    y: animate ? 50 : 30)
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y: animate ? -10 : 0)
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
                
            ) {
                animate.toggle()
            }
        }
    }
    
}

#Preview {
    NavigationView{
        NoItemsView()
            .navigationTitle(Text("No items"))
    }
}
