//
//  UIView+CenterInSuperview.swift
//  SellFormula
//
//  Created by Stephen Radford on 03/09/2015.
//  Thank you: http://stackoverflow.com/questions/20020592/centering-view-with-visual-format-nslayoutconstraints
//

extension UIView {
    
    func centerInSuperview() {
        self.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.centerHorizontallyInSuperview()
        self.centerVerticallyInSuperview()
    }
    
    func centerHorizontallyInSuperview(){
        let c: NSLayoutConstraint = NSLayoutConstraint(item: self, attribute: .CenterX, relatedBy: .Equal, toItem: self.superview, attribute: .CenterX, multiplier: 1, constant: 0)
        self.superview?.addConstraint(c)
    }
    
    func centerVerticallyInSuperview(){
        let c: NSLayoutConstraint = NSLayoutConstraint(item: self, attribute: .CenterY, relatedBy: .Equal, toItem: self.superview, attribute: .CenterY, multiplier: 1, constant: 0)
        self.superview?.addConstraint(c)
    }
    
}