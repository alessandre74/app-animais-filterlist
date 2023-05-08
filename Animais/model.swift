//
//  model.swift
//  Animais
//
//  Created by Alessandre Livramento on 08/05/23.
//

import Foundation

// Estrutura dos dados
struct Animal: Identifiable {
  let id = UUID()
  let name: String
  let type: Animais
}

struct ArrayAnimais {
  // variavel array tipo string com os dados baseados na estutura Animal
  let listaAnimais = [
    Animal(name: "Gato1", type: .gato),
    Animal(name: "Gato2", type: .gato),
    Animal(name: "Cão1", type: .cao),
    Animal(name: "Cão2", type: .cao),
  ]

  // função que filtra o qual aninal baseado no parametro tipi que é o enum de Animais
  func filterAnimais(type: Animais) -> [Animal] {
    return listaAnimais.filter { animal in animal.type == type }
  }
}
