//
//  cellTableViewCell.swift
//  ToDoApp
//
//  Created by Kan Nakamura on 2019/01/16.
//  Copyright © 2019年 Kan Nakamura. All rights reserved.
//

import UIKit

var count = 0
let image0:UIImage = UIImage(named:"Done")!
let image1:UIImage = UIImage(named:"NotDone")!

class cellTableViewCell: UITableViewCell {

    @IBAction func button(_ sender: UIButton) {
        count += 1
        
        if(count%2 == 1){
            sender.setImage(image0, for: .normal)
        }
        else {
            sender.setImage(image1, for: .normal)
        }
    }
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
