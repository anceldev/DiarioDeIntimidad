//
//  BooksList.swift
//  DiarioDeIntimidad
//
//  Created by Ancel Dev account on 26/4/24.
//

import Foundation

import Foundation

enum BooksList: String, CaseIterable, Identifiable {
    case genesis
    case exodo
    case levitico
    case numeros
    case deuteronomio = "Deuteronomio"
    case josue
    case jueces = "Jueces"
    case rut = "Rut"
    case samuel1 = "1-samuel"
    case samuel2 = "2-samuel"
    case reyes1 = "1-reyes"
    case reyes2 = "2-reyes"
    case cronicas = "1-cronicas"
    case cronicas2 = "2-cronicas"
    case esdras
    case nehemias = "Nehemias"
    case ester = "Esther"
    case job = "Job"
    case salmos = "Salmos"
    case proverbios = "Proverbios"
    case eclesiastes = "Eclesiastes"
    case cantares = "Cantares"
    case isaias
    case jeremias
    case lamentaciones = "Lamentaciones"
    case ezequiel = "Ezequiel"
    case daniel = "Daniel"
    case oseas = "Oseas"
    case joel = "Joel"
    case amos
    case abdias
    case jonas
    case miqueas = "Miqueas"
    case nahum
    case habacuc = "Habacuc"
    case sofonias
    case hageo = "Hageo"
    case zacarias
    case malaquias
    case mateo = "Mateo"
    case marcos = "Marcos"
    case lucas = "Lucas"
    case juan = "Juan"
    case hechos
    case romanos = "Romanos"
    case corintios = "1-corintios"
    case corintios2 = "2-corintios"
    case galatas
    case efesios = "Efesios"
    case filipenses = "Filipenses"
    case colosenses = "Colosenses"
    case tesaloniscenses = "1-tesalonicenses"
    case tesaloniscenses2 = "2-tesalonicenses"
    case timoteo = "1-timoteo"
    case timoteo2 = "2-timoteo"
    case tito = "Tito"
    case filemon
    case hebreos = "Hebreos"
    case santiago = "Santiago"
    case pedro1 = "1-pedro"
    case pedro2 = "2-pedro"
    case juan1 = "1-juan"
    case juan2 = "2-juan"
    case juan3 = "3-juan"
    case judas = "Judas"
    case apocalipsis = "Apocalipsis"
    
    var spanish: String {
        switch self {
        case .genesis: "Génesis"
        case .exodo: "Éxodo"
        case .levitico: "Levítico"
        case .numeros: "Números"
        case .josue: "Josué"
        case .samuel1: "1 Samuel"
        case .samuel2: "2 Samuel"
        case .reyes1: "1 Reyes"
        case .reyes2: "2 Reyes"
        case .cronicas: "1 Crónicas"
        case .cronicas2: "2 Crónicas"
        case .nehemias: "Nehemías"
        case .eclesiastes: "Eclesiastés"
        case .cantares: "Cantar de los Cantares"
        case .isaias: "Isaías"
        case .jeremias: "Jeremías"
        case .amos: "Amós"
        case .abdias: "Abdías"
        case .jonas: "Jonás"
        case .nahum: "Nahúm"
        case .sofonias: "Sofonías"
        case .zacarias: "Zacarías"
        case .malaquias: "Malaquías"
        case .hechos: "Hechos de los Apóstoles"
        case .corintios: "1 Corintios"
        case .corintios2: "2 Corintios"
        case .galatas: "Gálatas"
        case .tesaloniscenses: "1 Tesaloniscenses"
        case .tesaloniscenses2: "2 Tesaloniscenses"
        case .timoteo: "1 Timoteo"
        case .timoteo2: "2 Timoteo"
        case .filemon: "Filemón"
        case .pedro1: "1 Pedro"
        case .pedro2: "2 Pedro"
        case .juan1: "1 Juan"
        case .juan2: "2 Juan"
        case .juan3: "3 Juan"
        default: self.rawValue
        }
    }
    
    var id: String {
        return self.rawValue
    }
    
}
