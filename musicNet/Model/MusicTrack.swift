//
//  musicModel.swift
//  musicNet
//
//  Created by Hamza Jerbi on 16/02/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import Foundation


struct MusicTrack {
    
    let title: String
    let description:  String
    
}
struct PlayList {
    
    let tracks: [MusicTrack]
}
