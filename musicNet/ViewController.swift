//
//  ViewController.swift
//  musicNet
//
//  Created by Hamza Jerbi on 16/02/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit
import RxSwift
class ViewController: UIViewController {
    
    let musicFetcher: MusicFetcher
    @IBOutlet weak var titleTxt: UILabel!
    let disposeBag = DisposeBag()
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.musicFetcher = FakeMusicFetcher() 
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.musicFetcher = FakeMusicFetcher()
        super.init(coder: aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        musicFetcher.fetchMusicTrack()
            .subscribe(onSuccess: { musicTrack in
                self.titleTxt.text = musicTrack.title
            })
            .disposed(by: disposeBag)
    }
}
