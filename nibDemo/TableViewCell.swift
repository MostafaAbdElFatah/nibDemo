//
//  TableViewCell.swift
//  nibDemo
//
//  Created by Mostafa AbdEl Fatah on 10/18/18.
//  Copyright © 2018 Mostafa AbdEl Fatah. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var switchView: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        switchView.addTarget(self, action: #selector(TableViewCell.stateChanged(_:)), for: UIControlEvents.valueChanged)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @objc private func stateChanged(_ switchState: UISwitch) {
        if switchView.isOn {
            switchLabel.text = "The Switch is On"
        } else {
            switchLabel.text = "The Switch is Off"
        }
    }
    
    func isOn() -> Bool {
       return switchView.isOn
    }
    
    func setLabelText(text:String){
        switchLabel.text = text
    }
    
}
