//
//  TestFormItemATableViewCell.swift
//  TestingResuableTableViews
//
//  Created by Tunde on 09/05/2019.
//  Copyright © 2019 Degree 53 Limited. All rights reserved.
//

import UIKit

class TestFormItemATableViewCell: BaseFormItemTableViewCell {

    static let cellId = "TestFormItemATableViewCell"
    
    override func configure(_ data: Any) {
        super.configure(data)
        guard let formItem = data as? TestFormItemA else { return }
        
        print("Configuring the TestFormItem A")
    }
}

class TestFormItemBTableViewCell: BaseFormItemTableViewCell {
    
    static let cellId = "TestFormItemBTableViewCell"
    
    override func configure(_ data: Any) {
        super.configure(data)
        guard let formItem = data as? TestFormItemB else { return }

        print("Configuring the TestFormItem B")
    }
}
