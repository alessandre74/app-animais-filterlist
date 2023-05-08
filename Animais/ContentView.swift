//
//  ContentView.swift
//  Animais
//
//  Created by Alessandre Livramento on 08/05/23.
//

import SwiftUI

enum Animais: String, CaseIterable {
  case gato
  case cao
}

struct ContentView: View {
  @State private var data: [Animal] = []
  @State private var type: Animais = .cao

  var body: some View {
    VStack {
      // Botões customizados
      HStack {
        HStack {
          Button("Cão") {
            type = .cao
          }
        }
        .modifier(buttonAnimais(colorButton: .blue, colorStroke: .red))

        HStack {
          Button("Gato") {
            type = .gato
          }
        }
        .modifier(buttonAnimais(colorButton: .red, colorStroke: .blue))
      }
      .foregroundColor(.white)

      // Lista animais filtradas conform a variavel de estado type
      VStack {
        ForEach(ArrayAnimais().filterAnimais(type: type)) { iten in
          Text(iten.name)
        }
      }
    }
  }
}

// Customiza os botões com modifier pois possuem as mesmas propriedades
struct buttonAnimais: ViewModifier {
  let colorButton: Color
  let colorStroke: Color

  func body(content: Content) -> some View {
    content
      .frame(width: 80, height: 80)
      .background(Circle().fill(colorButton))
      .shadow(radius: 5)
      .background(Circle().stroke(colorStroke, lineWidth: 2))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
