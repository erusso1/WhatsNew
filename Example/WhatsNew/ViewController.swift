//
//  ViewController.swift
//  WhatsNew
//
//  Created by BalestraPatrick on 10/16/2017.
//  Copyright (c) 2017 BalestraPatrick. All rights reserved.
//

import UIKit
import WhatsNew

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        if WhatsNew.shouldPresent() {
            let whatsNew = WhatsNewViewController(items: [
                WhatsNewItem.image(title: "Nice Icons", subtitle: "Completely customize colors, texts and icons.", image: #imageLiteral(resourceName: "love")),
                WhatsNewItem.image(title: "Such Easy", subtitle: "Setting this up only takes 2 lines of code, impressive you say?", image: #imageLiteral(resourceName: "threed")),
                WhatsNewItem.image(title: "Very Sleep", subtitle: "It helps you get more sleep by writing less code.", image: #imageLiteral(resourceName: "night")),
                WhatsNewItem.text(title: "Text Only", subtitle: "No icons? Just go with plain text."),
                WhatsNewItem.imageUrl(title: "Image URL", subtitle: "Image hosted on web? Use image ULR. Powered by Nuke.", imageUrl: URL(string: "https://openclipart.org/image/800px/svg_to_png/26519/JoelM-biodegradable.png")!)
                ])
            whatsNew.titleText = "What's New"
            whatsNew.itemSubtitleColor = .darkGray
            whatsNew.buttonText = "Continue"
            present(whatsNew, animated: true, completion: nil)
        }
    }

    @IBAction func clear(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "LatestAppVersionPresented")
        UserDefaults.standard.synchronize()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            exit(0)
        }
    }
}
