//
//  ViewController.swift
//  Asynchronous​Demo
//
//  Created by James Hung on 2021/3/20.
//

import UIKit

struct JsonData: Codable {
  let stationID: String
  let stationName: String
  let stationAddress: String
}

class ViewController: UIViewController {
  
  @IBOutlet var sationIdLabel: UILabel!
  @IBOutlet var stationNameLabel: UILabel!
  @IBOutlet var addressLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    loadUrlResponse()
    
  }
  
  func loadUrlResponse() {
    
    // Create a configuration
    let configuration = URLSessionConfiguration.ephemeral
    // Create a session
    let session = URLSession(configuration: configuration)
    // Setup the url
    let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json")
    guard let requestUrl = url else { fatalError() }
    // Setup request
    var request = URLRequest(url: requestUrl)
    // Specify HTTP Method to use
    request.httpMethod = "GET"
    // Create the task
    let task = session.dataTask(with: request) {
      
      (data, response, error) in
      
      // Read HTTP Response Status code
      guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let data = data else {
        return
      }
      
      //轉譯JSON至Struct
      let jsonData = self.parseJSON(data: data)
      guard let jsonDataModel = jsonData else { return }
      
      //將任務加入至主線程運行
      let queue = OperationQueue.main
      queue.addOperation {
        self.sationIdLabel.text = jsonDataModel.stationID
        self.stationNameLabel.text = jsonDataModel.stationName
        self.addressLabel.text = jsonDataModel.stationAddress
      }
      
    }
    //運行任務
    task.resume()
  }
  
  func parseJSON(data: Data) -> JsonData? {
    
    var returnValue: JsonData?
    do {
      returnValue = try JSONDecoder().decode(JsonData.self, from: data)
    } catch {
      print("Error took place\(error.localizedDescription).")
    }
    
    return returnValue
  }
  
}




