//
//  MosqueListStruct.swift
//  kuwaitMosque
//
//  Created by Shaimaa on 5/7/20.
//  Copyright © 2020 Shaimaa. All rights reserved.
//

import Foundation

struct mosqueListStruct : Hashable, Identifiable {
    var id = UUID()
    var mosqueName : String
    var mosqueArea : String
    var mosqueImage : String
    var shekhImage : [String]
}

var mosqueKW = [mosqueListStruct(mosqueName: "البشر", mosqueArea: "مشرف", mosqueImage: "mosque1", shekhImage: ["afasy","kanderi","nafis"]),
mosqueListStruct(mosqueName: "المشعان", mosqueArea: "مشرف", mosqueImage: "mosque2", shekhImage: ["afasy","kanderi","nafis"]),
mosqueListStruct(mosqueName: "الشمروخ", mosqueArea: "مشرف", mosqueImage: "mosque3", shekhImage: ["afasy","kanderi","nafis"])]
