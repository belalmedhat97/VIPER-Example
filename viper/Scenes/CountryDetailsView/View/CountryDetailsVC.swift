//
//  CountryDetailsVC.swift
//  viper
//
//  Created by belal medhat on 15/06/2022.
//

import UIKit

class CountryDetailsVC: UIViewController,CountryDetailsViewProtocol {

    
    private var tableData:[String] = []

    
    var presenter: CountryDetailsPresenterProtocol?
    

    @IBOutlet weak var CountryDetailsTableView: UITableView! {
        didSet{
            CountryDetailsTableView.delegate = self
            CountryDetailsTableView.dataSource = self
            CountryDetailsTableView.register(UINib(nibName: "CountryDetailsTableViewCell", bundle: nil), forCellReuseIdentifier: "CountryDetailsTableViewCell")

        }
    }
    @IBOutlet weak var CountryFlag: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        CountryFlag.roundCorners(radius: 20)
        // Do any additional setup after loading the view.
        self.presenter?.onViewDidLoad()
        
    }
    
    func updateTableView(data: [String]) {
        print("data")
        tableData = data
        self.CountryDetailsTableView.reloadData()
        
    }
    func updateImageFlag(imgUrl: String) {
        CountryFlag.convertUrlToImg(link:imgUrl)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    private func assignCellTitle(idx:Int) -> String {
        switch idx {
        case 0:
            return "Name"
        case 1:
            return "Capital"
        case 2:
            return "Region"
        default:
            return "Population"
        }
    }
}
extension CountryDetailsVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryDetailsTableViewCell", for: indexPath) as! CountryDetailsTableViewCell
        
        cell.title.text = "\(assignCellTitle(idx: indexPath.row))"
        cell.data.text = tableData[indexPath.row]
        return cell
    }
    
    
}
