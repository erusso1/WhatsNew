//
//  WhatsNewItem.swift
//  WhatsNew
//
//  Created by Patrick Balestra on 10/30/17.
//

import Foundation

public enum WhatsNewItem {
    case text(title: String, subtitle: String)
    case image(title: String, subtitle: String, image: UIImage)
    case imageUrl(title: String, subtitle: String, imageUrl: URL)
}

protocol WhatsNewItemView: AnyObject {
}
