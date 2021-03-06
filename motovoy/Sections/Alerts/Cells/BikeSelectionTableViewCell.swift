//
//  BikeSelectionTableViewCell.swift
//  motovoy
//
//  Created by Jose Quintero on 5/10/18.
//  Copyright © 2018 Nextdots. All rights reserved.
//

import UIKit

protocol BikeSelectionDelegate {
    func didSelect(bike: Moto)
}

class BikeSelectionTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    var data: Moto! {
        didSet {
            label.text = data.name ?? "{{moto_name}}"
        }
    }

}
