import Foundation
import UIKit


extension UITextField {
   
    func underline() {
        
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.darkGray.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: self.frame.width, height: 35.0)
        
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true

    }
}
