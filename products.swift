import Foundation
import UIKit
struct Detalis {
    let name: String
    let price: String
    let image: UIImage
    let descriptions: String
    init(name: String, price: String, image:UIImage, description: String) {
        self.name = name
        self.image = image
        self.price = price
        self.descriptions = description
    }
}
