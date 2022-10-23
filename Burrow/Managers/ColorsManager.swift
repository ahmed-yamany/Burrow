//
//  ColorsManagers.swift
//  Burrow
//
//  Created by Ahmed Yamany on 16/10/2022.
//

import UIKit

final class ColorsManager{
    static let shared = ColorsManager()
    let viewBackgroudColor = UIColor(named: "viewBackgroudColor") ?? .systemBackground
    let primaryFontColor = UIColor(named: "primaryFontColor")
    let secencoryFontColor = UIColor(named: "secencoryFontColor")
    
    private init(){}
}
