//
//  ViewController.swift
//  viper
//
//  Created by belal medhat on 10/06/2022.
//

import UIKit

class CountryVC: UIViewController,CountryViewProtocol {
    
    
// MARK: - Outlets
    @IBOutlet weak var loadIndicator: UIActivityIndicatorView!
    @IBOutlet weak var pickerViewOL: UIPickerView!
    @IBOutlet weak var getCountriesBtn: UIButton!
    @IBOutlet weak var countryFlag: UIImageView!
    @IBOutlet weak var CountiresPicker: UIPickerView! {
        didSet {
            CountiresPicker.dataSource = self
            CountiresPicker.delegate = self
        }
    }
    
// MARK: - properties
    var presenter: CountryPresenterProtocol?
    private var idx:Int = 0
    private var pickerData:[CountryBaseClass] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        loadIndicator.isHidden = true
        loadIndicator.hidesWhenStopped = true
        CountiresPicker.isHidden = true
        countryFlag.roundCorners(radius: 20)
        getCountriesBtn.roundCorners(radius: 20)
        pickerViewOL.setValue(UIColor.green, forKey: "textColor")
        
        let ontapFlag = UITapGestureRecognizer(target: self, action: #selector(pressFlag))
        countryFlag.addGestureRecognizer(ontapFlag)
        self.countryFlag.isUserInteractionEnabled = true


    }
    @objc func pressFlag(){
        if countryFlag.image == nil {
            print("no interact")

        }else{
            
            let Name = pickerData[idx].name?.common ?? ""
            let capital = pickerData[idx].capital?[0] ?? ""
            let region = pickerData[idx].region ?? ""
            let population = String(pickerData[idx].population ?? 0)
            let dataArr:[String] = [Name,capital,region,population]

            self.presenter?.passRouteNavigation(nav: self.navigationController!, img: self.pickerData[idx].flags?.png ?? "", data: dataArr)
            print("pp")

        }
    }
    func updatePicker(data: [CountryBaseClass]) {
        print("picker")
        self.pickerData = data
        DispatchQueue.main.async {
            self.countryFlag.convertUrlToImg(link: self.pickerData[0].flags?.png ?? "")
            self.CountiresPicker.reloadAllComponents()
            self.CountiresPicker.isHidden = false


        }

        
    }
    func loadingIndicator(isHidden: Bool) {
        DispatchQueue.main.async {
            switch isHidden {
            case true:
                self.loadIndicator.isHidden = true
                self.loadIndicator.stopAnimating()
            case false:
                self.loadIndicator.isHidden = true
                self.loadIndicator.startAnimating()

            }
        }

    }

    @IBAction func getAllCountires(_ sender: UIButton) {
        countryFlag.image = nil
        pickerData = []
        CountiresPicker.reloadAllComponents()
        presenter?.getCountries()


    }
    

    
    
}
extension CountryVC:UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
        
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        pickerData[row].name?.common ?? ""
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(pickerData[row].name?.common ?? "")
        idx = row
        countryFlag.convertUrlToImg(link: pickerData[row].flags?.png ?? "")
    }
    
    
}
