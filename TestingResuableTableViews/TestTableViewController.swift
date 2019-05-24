//
//  TestTableViewController.swift
//  TestingResuableTableViews
//
//  Created by Tunde on 09/05/2019.
//  Copyright © 2019 Degree 53 Limited. All rights reserved.
//

import UIKit

class TestTableViewController: UITableViewController {

    private var dataSourceItems: [FormItem] = [TestFormItemA(cellIdentifier: TestFormItemATableViewCell.cellId),
                                               TestFormItemB(cellIdentifier: TestFormItemBTableViewCell.cellId)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSourceItems.forEach { self.tableView.register($0.cellIdentifier.class, forCellReuseIdentifier: $0.cellIdentifier) }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSourceItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: dataSourceItems[indexPath.row].cellIdentifier, for: indexPath) as? BaseFormItemTableViewCell
        cell?.configure(dataSourceItems[indexPath.row])
        return cell!
    }
}

extension String {
    
    var `class`: AnyClass? {
        guard
            let dict = Bundle.main.infoDictionary,
            var appName = dict["CFBundleName"] as? String
            else { return nil }
        
        appName = appName.replacingOccurrences(of: " ", with: "_")
        let className = appName + "." + self
        return NSClassFromString(className)
    }
}
