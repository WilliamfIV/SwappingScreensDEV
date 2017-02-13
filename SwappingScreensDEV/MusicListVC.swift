//
//  MusicListVC.swift
//  SwappingScreensDEV
//
//  Created by William H Fulton IV on 2/13/17.
//  Copyright © 2017 IVdevelopment. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    @IBAction func backButtonPressed(_ sender: Any) {
    dismiss(animated: true, completion: nil )}
    
    @IBAction func loadThirdScrn(_ sender: Any) {
        let songTitle = "White America"
    performSegue(withIdentifier: "PlaySongVC" , sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
    
            if let song = sender as? String {
               destination.selectedSong = song
            }
            
        }
    
    func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
        
        }
    }
}

