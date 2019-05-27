//
//  Button.swift
//  Swoosh
//
//  Created by Gleb Zavizenov on 2019-05-26.
//  Copyright © 2019 Gleb Zavizenov. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
