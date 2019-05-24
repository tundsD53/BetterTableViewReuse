//
//  BaseFormItemTableViewCell.swift
//  TestingResuableTableViews
//
//  Created by Tunde on 09/05/2019.
//  Copyright © 2019 Degree 53 Limited. All rights reserved.
//

import UIKit

class BaseFormItemTableViewCell: UITableViewCell, ListItem {
    
    var data: Any?
    
    func configure(_ data: Any) {
        self.data = data
        
    }
}
