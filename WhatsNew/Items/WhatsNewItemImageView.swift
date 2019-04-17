//
//  WhatsNewItemImageView.swift
//  WhatsNew
//
//  Created by Patrick Balestra on 10/19/17.
//

import UIKit
import Nuke

class WhatsNewItemImageView: UIView, NibLoadable, WhatsNewItemView {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    private func set(title: String, subtitle: String, titleColor: UIColor, subtitleColor: UIColor, titleFont: UIFont, subtitleFont: UIFont) {
        
        titleLabel.text = title
        titleLabel.textColor = titleColor
        titleLabel.font = titleFont
        subtitleLabel.text = subtitle
        subtitleLabel.textColor = subtitleColor
        subtitleLabel.font = subtitleFont
    }
    
    func set(imageUrl: URL, title: String, subtitle: String, titleColor: UIColor, subtitleColor: UIColor, titleFont: UIFont, subtitleFont: UIFont) {
        
        Nuke.loadImage(with: imageUrl, options: ImageLoadingOptions(transition: .fadeIn(duration: 0.3)), into: imageView)
        
        self.set(title: title, subtitle: subtitle, titleColor: titleColor, subtitleColor: subtitleColor, titleFont: titleFont, subtitleFont: subtitleFont)
    }

    func set(image: UIImage, title: String, subtitle: String, titleColor: UIColor, subtitleColor: UIColor, titleFont: UIFont, subtitleFont: UIFont) {
        imageView.image = image
        self.set(title: title, subtitle: subtitle, titleColor: titleColor, subtitleColor: subtitleColor, titleFont: titleFont, subtitleFont: subtitleFont)
    }
}
