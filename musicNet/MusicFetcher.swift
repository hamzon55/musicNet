//
//  Fetcher.swift
//  musicNet
//
//  Created by Hamza Jerbi on 16/02/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import Foundation
import RxSwift

protocol MusicFetcher{
    func fetchMusicTrack() -> Single<MusicTrack>
}

class FakeMusicFetcher: MusicFetcher {
    func fetchMusicTrack() -> Single<MusicTrack> {
        let musicTrack = MusicTrack(title: "Michael Jackson",description: "Earth Song")
        return Single.just(musicTrack)
    }
}
