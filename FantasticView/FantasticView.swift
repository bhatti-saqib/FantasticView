//
//  FantasticView.swift
//  FantasticView
//
//  Created by venvq5 on 20/7/22.
//

import UIKit


class FantasticView: UIView {
    
    let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var colorCounter = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in
            UIView.animate(withDuration: 2.0) {
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
                self.colorCounter += 1
            }
        }
        
        scheduledColorChanged.fire()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
