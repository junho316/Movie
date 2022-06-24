//
//  ViewController.swift
//  test1
//
//  Created by 소프트웨어컴퓨터 on 2022/06/24.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
        

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyTableViewCell
        cell.movieName.text = indexPath.description
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int { //section의 수 지정
        return 1
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){ //cell이 선택되었을때 반응
        print(indexPath.description)
    }
}

