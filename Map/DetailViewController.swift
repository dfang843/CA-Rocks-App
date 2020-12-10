//
//  DetailViewController.swift
//  Map
//
//  Created by D.F. on 8/4/20.
//  Copyright © 2020 D.F. All rights reserved.
//
import UIKit

struct RockData{
    var rockName: String
    var url: String
}



class DetailViewController:UIViewController, UITableViewDataSource, UITableViewDelegate {
    var rockDataArray = [RockData]()
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rockDataArray.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = rockDataArray[row].rockName
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let url : NSURL?
        let row = indexPath.row
        url = NSURL(string: rockDataArray[row].url)
        if url != nil{
            UIApplication.shared.openURL(url! as URL)
        }
        dump(rockDataArray[row].url)
        
    }
    
    @IBOutlet weak var Mainlabel: UILabel!
    @IBOutlet weak var Image: UIScrollView!
    @IBOutlet weak var Details: UITextView!
    @IBOutlet weak var Hyperlink: UITextView!
    @IBOutlet weak var TableView: UITableView!
    var titleText = ""
    var detailsText = ""
    var hyperLink = ""
    let textCellIdentifier = "cell"
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print("Hello, World!")
        TableView.delegate = self
        TableView.allowsSelection = true
        TableView.dataSource = self
        self.TableView.isUserInteractionEnabled = true 
        var imageThingArray = [UIImage]()
        let nationalParkNameChecker = titleText
        
        
        switch nationalParkNameChecker{
        case "Mount Diablo State Park":
            imageThingArray = [#imageLiteral(resourceName: "Mt.Diablo 1"), #imageLiteral(resourceName: "Mt.Diablo 2")]
            rockDataArray = [RockData(rockName: "Greywacke", url: "https://en.wikipedia.org/wiki/Greywacke"), RockData(rockName: "Sandstone", url: "https://geology.com/rocks/sandstone.shtml")]
        case "Sierra National Forest":
            imageThingArray = [#imageLiteral(resourceName: "Sierra 1"), #imageLiteral(resourceName: "Sierra 2")]
            rockDataArray = [RockData(rockName: "Granite", url: "https://en.wikipedia.org/wiki/Granite")]
        case "Sonoma Coast State Park":
            imageThingArray = [#imageLiteral(resourceName: "Sonoma Coast 1"), #imageLiteral(resourceName: "Sonoma Coast 2"),#imageLiteral(resourceName: "Sonoma Coast 3")]
            rockDataArray = [RockData(rockName: "Sandstone", url: "https://geology.com/rocks/sandstone.shtml")]
        case "Shasta-Trinity Ntl. Forest":
            imageThingArray = [#imageLiteral(resourceName: "Shasta 1"), #imageLiteral(resourceName: "Shasta 2")]
            rockDataArray = [RockData(rockName: "Granite", url: "https://en.wikipedia.org/wiki/Granite")]
        case "Plumas National Forest":
            imageThingArray = [#imageLiteral(resourceName: "Plumas 1")]
            rockDataArray = [RockData(rockName: "Granite", url: "https://en.wikipedia.org/wiki/Granite")]
        case "Pinnacles National Park":
            imageThingArray = [#imageLiteral(resourceName: "Pinnacles 1"),#imageLiteral(resourceName: "Pinnacles 2"), #imageLiteral(resourceName: "Pinnacles 4"), #imageLiteral(resourceName: "Pinnacles 3")]
            rockDataArray = [RockData(rockName: "Granite", url: "https://en.wikipedia.org/wiki/Granite"), RockData(rockName: "Granodiorite", url: "https://en.wikipedia.org/wiki/Granodiorite"), RockData(rockName: "Rhyolite", url: "https://en.wikipedia.org/wiki/Rhyolite"), RockData(rockName: "Breccia", url: "https://en.wikipedia.org/wiki/Breccia")]
        case "Big Sur":
            imageThingArray = [#imageLiteral(resourceName: "Big Sur 1"), #imageLiteral(resourceName: "Big Sur 2"), #imageLiteral(resourceName: "Big Sur 3")]
            rockDataArray = [RockData(rockName: "Sandstone", url: "https://geology.com/rocks/sandstone.shtml"), RockData(rockName: "Siltstone", url: "https://geologyscience.com/rocks/siltstone/"), RockData(rockName: "Granite", url: "https://en.wikipedia.org/wiki/Granite"), RockData(rockName: "Marble", url: "https://en.wikipedia.org/wiki/Marble")]
        case "Joshua Tree National Park":
            imageThingArray = [#imageLiteral(resourceName: "Joshua Tree 1"), #imageLiteral(resourceName: "Joshua Tree 2"), #imageLiteral(resourceName: "Joshua Tree 3"), #imageLiteral(resourceName: "Joshua Tree 4"), #imageLiteral(resourceName: "Joshua Tree 5")]
            rockDataArray = [RockData(rockName: "Monzogranite", url: "https://en.wikipedia.org/wiki/Monzogranite"), RockData(rockName: "Gneiss", url: "https://en.wikipedia.org/wiki/Gneiss")]
        case "Lassen National Park":
            imageThingArray = [#imageLiteral(resourceName: "Lassen 1"), #imageLiteral(resourceName: "Lassen 3"), #imageLiteral(resourceName: "Lassen 2")]
            rockDataArray = [RockData(rockName: "Basalt", url: "https://en.wikipedia.org/wiki/Basalt"), RockData(rockName: "Andesite", url: "https://flexiblelearning.auckland.ac.nz/rocks_minerals/rocks/andesite.html"), RockData(rockName: "Dacite", url: "https://flexiblelearning.auckland.ac.nz/rocks_minerals/rocks/dacite.html")]
        case "Catalina Island":
            imageThingArray = [#imageLiteral(resourceName: "Catalina 1"), #imageLiteral(resourceName: "Catalina 2"), #imageLiteral(resourceName: "Catalina 3")]
            rockDataArray = [RockData(rockName: "Catalina Schist", url: "https://en.wikipedia.org/wiki/Catalina_Schist"), RockData(rockName: "Quartz Diorite", url: "https://en.wikipedia.org/wiki/Quartz_diorite"), RockData(rockName: "Andesite", url: "https://flexiblelearning.auckland.ac.nz/rocks_minerals/rocks/andesite.html")]
        case "Yosemite National Park":
            imageThingArray = [#imageLiteral(resourceName: "Yosemite 1"), #imageLiteral(resourceName: "Yosemite 2"), #imageLiteral(resourceName: "Yosemite 3"), #imageLiteral(resourceName: "Yosemite 5"), #imageLiteral(resourceName: "Yosemite 2")]
            rockDataArray = [RockData(rockName: "Granite", url: "https://en.wikipedia.org/wiki/Granite"), RockData(rockName: "Granodiorite", url: "https://en.wikipedia.org/wiki/Granodiorite"), RockData(rockName: "Diorite", url: "https://en.wikipedia.org/wiki/Diorite")]
        case "Kings Canyon National Park":
            imageThingArray = [#imageLiteral(resourceName: "Kings Canyon 1")]
            rockDataArray = [RockData(rockName: "Granite", url: "https://en.wikipedia.org/wiki/Granite"), RockData(rockName: "Diorite", url: "https://en.wikipedia.org/wiki/Diorite"), RockData(rockName: "Monzonite", url: "https://en.wikipedia.org/wiki/Monzonite")]
        case "Sequoia National Park":
            imageThingArray = [#imageLiteral(resourceName: "Sequoia 1"), #imageLiteral(resourceName: "Sequoia 2")]
            rockDataArray = [RockData(rockName: "Granite", url: "https://en.wikipedia.org/wiki/Granite"), RockData(rockName: "Diorite", url: "https://en.wikipedia.org/wiki/Diorite"), RockData(rockName: "Monzonite", url: "https://en.wikipedia.org/wiki/Monzonite")]
        case "Death Valley National Park":
            imageThingArray = [#imageLiteral(resourceName: "Death Valley 1"), #imageLiteral(resourceName: "Death Valley 2"), #imageLiteral(resourceName: "Death Valley 3")]
            rockDataArray = [RockData(rockName: "Limestone", url: "https://en.wikipedia.org/wiki/Limestone"), RockData(rockName: "Sandstone", url: "https://geology.com/rocks/sandstone.shtml"), RockData(rockName: "Quartzite", url: "https://geology.com/rocks/quartzite.shtml"), RockData(rockName: "Dolomite", url: "https://en.wikipedia.org/wiki/Dolomite_(mineral)"), RockData(rockName: "Shale", url: "https://en.wikipedia.org/wiki/Shale"), RockData(rockName: "Siltstone", url: "https://en.wikipedia.org/wiki/Siltstone"), RockData(rockName: "Conglomerate", url: "https://geology.com/rocks/conglomerate.shtml")]
        case "Mojave National Preserve":
            imageThingArray = [#imageLiteral(resourceName: "Mojave 1"), #imageLiteral(resourceName: "Mojave 2"), #imageLiteral(resourceName: "Mojave 3")]
            rockDataArray = [RockData(rockName: "Limestone", url: "https://en.wikipedia.org/wiki/Limestone"), RockData(rockName: "Dolomite", url: "https://en.wikipedia.org/wiki/Dolomite_(mineral)"), RockData(rockName: "Rhyolite", url: "https://en.wikipedia.org/wiki/Rhyolite"), RockData(rockName: "Granite", url: "https://en.wikipedia.org/wiki/Granite")]
        case "Fossil Falls":
            imageThingArray = [#imageLiteral(resourceName: "Fossil Falls 1"), #imageLiteral(resourceName: "Fossil Falls 2"), #imageLiteral(resourceName: "Fossil Falls 3")]
            rockDataArray = [RockData(rockName: "Basalt", url: "https://en.wikipedia.org/wiki/Basalt")]
        case "Sutter Buttes":
            imageThingArray = [#imageLiteral(resourceName: "Sutter Buttes 1"), #imageLiteral(resourceName: "Sutter Buttes 2")]
            rockDataArray = [RockData(rockName: "Andesite", url: "https://flexiblelearning.auckland.ac.nz/rocks_minerals/rocks/andesite.html"), RockData(rockName: "Dacite", url: "https://flexiblelearning.auckland.ac.nz/rocks_minerals/rocks/dacite.html"), RockData(rockName: "Rhyolite", url: "https://en.wikipedia.org/wiki/Rhyolite")]
        case "Alabama Hills":
            imageThingArray = [#imageLiteral(resourceName: "Alabama Hills 1"), #imageLiteral(resourceName: "Alabama Hills 2"), #imageLiteral(resourceName: "Alabama Hills 3")]
            rockDataArray = [RockData(rockName: "Monzogranite", url: "https://en.wikipedia.org/wiki/Monzogranite")]
        case "Trona Pinnacles":
            imageThingArray = [#imageLiteral(resourceName: "Trona 1"), #imageLiteral(resourceName: "Trona 2"), #imageLiteral(resourceName: "Trona 3")]
            rockDataArray = [RockData(rockName: "Tufa(limestone)", url: "https://en.wikipedia.org/wiki/Tufa")]
        case "Font's Point":
            imageThingArray = [#imageLiteral(resourceName: "Fonts Point 1"), #imageLiteral(resourceName: "Fonts Point 2")]
            rockDataArray = [RockData(rockName: "Sandstone", url: "https://geology.com/rocks/sandstone.shtml")]
        default:
            print("Could not find a matching National Park")
        }
        Image.frame = view.frame
        
        for i in 0..<imageThingArray.count{
            let imageThing = UIImageView()
            imageThing.image = imageThingArray[i]
            imageThing.contentMode = .scaleAspectFit
            let xPos = self.view.frame.width * CGFloat(i)
            imageThing.frame = CGRect(x: xPos, y: -300, width: self.Image.frame.width, height: self.Image.frame.height)
            
            Image.contentSize.width = Image.frame.width * CGFloat(i + 1)
            Image.addSubview(imageThing)
            
        }
       
        Mainlabel.text = titleText
        Details.text = detailsText
        updateTextView()
        // Do any additional setup after loading the view.
    }
    
    func updateTextView(){
        let path = hyperLink
        let text = Hyperlink.text ?? ""
        let attributedString = NSAttributedString.makeHyperLink(for: path, in: text, as: "Park Information Page")
        let font = Hyperlink.font
        let textColor = Hyperlink.textColor
        Hyperlink.attributedText = attributedString
        Hyperlink.font = font
        Hyperlink.textColor = textColor
        
    }
}
