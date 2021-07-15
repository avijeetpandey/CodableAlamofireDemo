//
//  ViewController.swift
//  CodableAlamofireDemo
//
//  Created by Avijeet Pandey on 16/07/21.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var punchline: UILabel!
    @IBOutlet weak var setup: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getRandomJoke()
    }
    
    func getRandomJoke(){
        AF.request(url,encoding: URLEncoding.default).responseJSON { response in
            guard let data = response.data else { return }
            do {
                let decoder = JSONDecoder()
                let jokeData = try decoder.decode(JokeData.self, from: data)
                self.setupData(data: jokeData)
            } catch let error {
                print(error)
            }
        }
    }
    
    func setupData(data: JokeData){
        id.text = String(data.id)
        punchline.text = data.punchline
        type.text = data.type
        setup.text = data.setup
    }
}

