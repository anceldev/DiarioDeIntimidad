//
//  Version.swift
//  DiarioDeIntimidad
//
//  Created by Ancel Dev account on 26/4/24.
//

import Foundation

enum Version: String, Identifiable, CaseIterable {
    case rv1960
    case rv1995
    case nvi
    case dhh
    case pdt
    case kjv
    
    var name: String {
        switch self {
        case .rv1960:
            "Reina Valera 1960"
        case .rv1995:
            "Reina Valera 1995"
        case .nvi:
            "Nueva Versión Internacional"
        case .dhh:
            "Dios Habla Hoy"
        case .pdt:
            "Palabra de Dios para todos"
        case .kjv:
            "King James Version"
        }
    }
    var uri: String {
        switch self {
        case .rv1960:
            "/read/rv1960/"
        case .rv1995:
            "/read/rv1995/"
        case .nvi:
            "/read/nvi/"
        case .dhh:
            "/read/dhh/"
        case .pdt:
            "/read/pdt/"
        case .kjv:
            "/read/kjv/"
        }
    }
    
    var id: String {
        return self.rawValue
    }
}
