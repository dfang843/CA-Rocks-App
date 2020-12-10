//
//  ViewController.swift
//  Map
//
//  Created by D.F. on 7/24/20.
//  Copyright © 2020 D.F. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate{
    let logo = UIImageView(image: UIImage(named: "App Logo 2"))
    let splashView = UIView()
    @IBOutlet weak var Map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        splashView.backgroundColor = UIColor(red: 0/255, green: 128/255, blue: 0/255, alpha: 1.0)
        view.addSubview(splashView)
        splashView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        
        logo.contentMode = .scaleAspectFit
        splashView.addSubview(logo)
        logo.frame = CGRect(x: splashView.frame.midX - 50, y: splashView.frame.midY - 50, width: 100, height: 100)
        
        //Sets location and span of map
        let location = CLLocationCoordinate2DMake(37.879809, -121.914158)
        let region = MKCoordinateRegion(center: location, latitudinalMeters: 500000, longitudinalMeters: 500000)
        self.Map.setRegion(region, animated: true)
        
        //Adds annotations to the map
        
        let MtDiablo = NationalPark(title: "Mount Diablo State Park", details: "Mount Diablo has a particularly rich geological history. Its primary rock formations were formed through the subduction of the (no longer existing) Farallon Plate with the North American Plate, causing portions of the Farallon Plate to be scraped onto the North American Plate, creating Mount Diablo's jagged and diverse rock-scape. The mountain contains a large assortment of sedimentary and igneous rocks, including deposits of grey sandstone (greywacke), chert and oceanic volcanic basalts. The western portion of the mountain contains younger sandstones which are rich in microscopic fossils.", link: "https://www.mdia.org/guide-to-mount-diablo-geology#:~:text=On%20Mount%20Diablo%2C%20Eocene%20deposits,Knobcone%20Point%2C%20and%20Cave%20Point.", coordinate: CLLocationCoordinate2DMake(37.879809, -121.914158))
        let Sierra = NationalPark(title: "Sierra National Forest", details: "This rock formation is located in the Muir Wilderness of Sierra National Forest. This section of the park is located within a large granite pluton (an intrusive igneous body of rock), so these formations are made entirely of granite.", link: "https://www.fs.usda.gov/detailfull/sierra/learning/nature-science/?cid=stelprdb5309377&width=full#:~:text=Geology,cirque%20basins%2C%20and%20glaciated%20valleys." ,coordinate: CLLocationCoordinate2DMake(37.342817, -119.224409))
        let SonomaCoast = NationalPark(title: "Sonoma Coast State Park", details: "Sea stacks like the ones in the picture shown are very commonly found in this park. These stacks are the remains of weathered sandstone that were brought to the surface through a process of tectonic uplifting.",link: "https://en.wikipedia.org/wiki/Sonoma_Coast_State_Park#:~:text=Geology,-This%20strip%20of&text=Vertical%20rock%20formations%20are%20a,placed%20decoratively%20along%20the%20shoreline.", coordinate: CLLocationCoordinate2DMake(38.422467, -123.100744))
        let Shasta = NationalPark(title: "Shasta-Trinity Ntl. Forest", details: "This rock formation, known as Castle Crags, is located at the edge of this National Forest, are the remains of a granite pluton eroded significantly by glacier erosion during the recent Ice Ages.", link: "https://www.parks.ca.gov/pages/734/files/GeoGem%20Note%2023%20Castle%20Crags%20State%20Park.pdf", coordinate: CLLocationCoordinate2DMake(40.916375, -122.243012))
        let Plumas = NationalPark(title: "Plumas National Forest", details: "The geology of Plumas National Forest is often described as a 'fruitcake' of rock formations, where most of the formations were jumbled after their formation and uplift. This specific rock structure, taken along State Route 70, is made of granite.", link: "https://www.fs.usda.gov/detail/plumas/home/?cid=fseprd525848",coordinate: CLLocationCoordinate2DMake(39.928537, -120.819385))
        let Pinnacles = NationalPark(title: "Pinnacles National Park", details: "The pinnacles in this national park mostly consist of rhyolite, an extrusive igneous rock. These rocks were brought about by a period of volcanic eruptions 23 million years ago, near what is now Lancaster in Southern California. The San Andreas Fault then carried these rock formations to their present location and eroded them to their present state.",link: "https://www.nps.gov/pinn/learn/nature/geologicformations.htm", coordinate: CLLocationCoordinate2DMake(36.4906, -121.1825))
        let Bigsur = NationalPark(title: "Big Sur", details: "This area of the California Coast contains many geological wonders. This example, the well-known Keyhole Rock, located on Pfeiffer Beach, is made out of sandstone and is a very popular photography spot.", link: "https://www.bigsur-coastline.com/geology.html", coordinate: CLLocationCoordinate2DMake(36.238210, -121.817350))
        let Joshuatree = NationalPark(title: "Joshua Tree National Park", details: "The rocks located in this national park are mostly metamorphic come from a variety of different time periods. This one, formed 100 million years ago and eroded to its present shape, is made of monzogranite and gneiss and is popular amongst rock climbers.", link: "https://www.nps.gov/jotr/learn/nature/geologicformations.htm", coordinate: CLLocationCoordinate2DMake(33.867743,-115.911529))
        let Lassen = NationalPark(title: "Lassen National Park", details: "Lassen National Park contains a wide assortment of volcanoes, many of which are still active. Many of the active formations have not yet undergone compaction into igneous rock. However, many of the rocks in the Park that have already undergone compaction have igneous origins, such as andesite, dacite, and rhyodacite.", link: "https://pubs.usgs.gov/sir/2015/5067/pdf/sir20155067.pdf", coordinate: CLLocationCoordinate2DMake(41.559295, -120.901109))
        let Catalina = NationalPark(title: "Catalina Island", details: "This island mainly contains three different types of rock formations: Catalina Schist, quartz diorite, and andesite. The formation shown in the above photo is Catalina Schist.", link: "https://www.catalinaconservancy.org/index.php?s=news&p=article_322&b" , coordinate: CLLocationCoordinate2DMake(33.387819,-118.415463))
        let Yosemite = NationalPark(title: "Yosemite National Park", details: "This national park has a multitude of interesting geological formations, many of which originate from water cutting into solid granite over eons. This formation, known as the Cathedral Rocks, is known as the park's most beautiful rock formation.", link: "https://www.nps.gov/yose/planyourvisit/formations.htm", coordinate: CLLocationCoordinate2DMake(37.7157,-119.6375))
        let KingsCanyon = NationalPark(title: "Kings Canyon National Park", details: "Most of the rocks in this park are made up of granitic rocks formed 100 million years ago, which are mostly granite, with specks of other minerals. This formation shown is made of gneiss, which is a metamorphic version of granite.",link: "https://www.nps.gov/seki/learn/nature/geology_overview.htm", coordinate: CLLocationCoordinate2DMake(36.8879,-118.5551))
        let Sequoia = NationalPark(title: "Sequoia National Park", details: "Sequoia National Park, like Yosemite National Park, Kings Canyon National Park, and Sierra National Park, are situated on one giant granite batholith (large rock structure) that encompasses the southern Sierra Nevada range. This granitic structure in the picture above is known as Moro Rock, and is one of the most popular hiking and rock climbing spots in the park.", link: "https://en.wikipedia.org/wiki/Moro_Rock", coordinate: CLLocationCoordinate2DMake(36.4864,-118.5658))
        let DeathValley = NationalPark(title: "Death Valley National Park", details: "Death Valley's geological formations date from alluvial deposits in the relatively present day to 1.8 billion year old metamorphic rocks in the Black Mountains. This picture was taken in the Artist's Drive formation, which consists of cemented gravel, playa deposits, and volcanic debris. The vibrant colors have differing origins: oxidation of iron compounds produce reds, yellows, and pinks, decomposition of tuff-derived mica produces greens, and oxidation of manganese produces purples.", link: "https://mishmoments.com/2018/04/16/death-valley-artists-palette/", coordinate: CLLocationCoordinate2DMake(36.5323,-116.9325))
        let Mojave = NationalPark(title: "Mojave National Preserve", details: "The geographic history of Nojave National Preserve is very diverse, with many of the older deposits dating as far back as 2.5 billion years ago. This formation, known as the 'Hole-in-the-Wall', was formed when a volcano erupted nearby and blasted superheated gas and ash into the area. The holes were created when the ash solidified, leaving the bubbles of gas intact.", link: "http://digital-desert.com/mojave-preserve-geology/hole-in-the-wall/", coordinate: CLLocationCoordinate2DMake(35.044482,-115.399968))
        let FossilFalls = NationalPark(title: "Fossil Falls", details: "This particularly interesting formation has no actual fossils in it, but it contains an ancient lava flow made of basalt. The smoothness of the rocks was caused by glacial melting during the Last Ice Ages, where melting ice caps created a torrent that smoothed out much of the flow into this formation, shown above.", link: "https://www.kcet.org/shows/socal-wanderer/five-geological-wonders-to-see-in-socal#fossil", coordinate: CLLocationCoordinate2DMake(35.970049, -117.909007))
        let SutterButte = NationalPark(title: "Sutter Buttes", details: "Sutter Buttes are a complex of eroded lava domes jutting out of the Central Valley. This formation consists of two types of igneous rock deposits, andesite and dacite, which were formed by the remnants of a volcano which last erupted 1.4 million years ago.", link: "https://en.wikipedia.org/wiki/Sutter_Buttes", coordinate: CLLocationCoordinate2DMake(39.226389,-121.810556))
        let AlabamaHills = NationalPark(title: "Alabama Hills", details: "The Alabama Hills consist of many granite formations which have been weathered over millions of years by water and wind, shaping the formations into a variety of shapes, including the most well-known, the Mobius Arch shown above.", link: "https://epod.usra.edu/blog/2014/08/weathered-granites-of-the-alabama-hills.html", coordinate: CLLocationCoordinate2DMake(36.610068, -118.099871))
        let TronaPinnacles = NationalPark(title: "Trona Pinnacles", details: "The Trona Pinnacles, located west of Death Valley, are immediately recognizable by the towers of tufa (calcium carbonate) which jut out of dry land.", link: "https://www.kcet.org/shows/socal-wanderer/five-geological-wonders-to-see-in-socal#trona", coordinate: CLLocationCoordinate2DMake(35.617770, -117.368067))
        let FontsPoint = NationalPark(title: "Font's Point", details: "Font's Point provides a stellar view into what is unofficially known as 'California's Grand Canyon'. Much of the area around the viewpoint consists of igneous and metamorphic rocks produced through the convergence of the Pacific and North American plates millions of years ago, overlaid by alluvium from the Colorado River.", link: "https://www.abdnha.org/anza-borrego-desert-geology.htm", coordinate: CLLocationCoordinate2DMake(33.257051, -116.232970))
        
        Map.addAnnotation(MtDiablo)
        Map.addAnnotation(Sierra)
        Map.addAnnotation(SonomaCoast)
        Map.addAnnotation(Shasta)
        Map.addAnnotation(Plumas)
        Map.addAnnotation(Pinnacles)
        Map.addAnnotation(Bigsur)
        Map.addAnnotation(Joshuatree)
        Map.addAnnotation(Lassen)
        Map.addAnnotation(Catalina)
        Map.addAnnotation(Yosemite)
        Map.addAnnotation(KingsCanyon)
        Map.addAnnotation(Sequoia)
        Map.addAnnotation(DeathValley)
        Map.addAnnotation(Mojave)
        Map.addAnnotation(FossilFalls)
        Map.addAnnotation(SutterButte)
        Map.addAnnotation(AlabamaHills)
        Map.addAnnotation(TronaPinnacles)
        Map.addAnnotation(FontsPoint)
        
        Map.showsUserLocation = true;
    }
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard annotation is NationalPark else { return nil }
        let identifier = "National Park"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
        if annotationView == nil {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView?.canShowCallout = true
            //Create new button through code
            let button1 = UIButton(type: .detailDisclosure)
            //Add button to the annotationview
            annotationView?.rightCalloutAccessoryView = button1
        } else {
            annotationView?.annotation = annotation
        }
        return annotationView
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        let myAnnotation = view.annotation
        _ = myAnnotation?.title
        
        if let parkPin = view.annotation as? NationalPark{
            performSegue(withIdentifier: "segue", sender: parkPin)
        }
        
        //User taps pin on screen
        //Generic variable that changes everytime that contains all the relevent data based on the pin selected
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
        if let identifier = segue.identifier{
            if identifier == "segue" {
                if let parkPin = sender as? NationalPark{
                    let detailView = segue.destination as! DetailViewController
                    detailView.titleText = parkPin.title!
                    detailView.detailsText = parkPin.details!
                    detailView.hyperLink = parkPin.link!
                }
            }
        }
        //Take that generic variable and set the UI variables  on the Detail screen to equal the relevent data from the generic variable
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return UIStatusBarStyle.default
    }
    override func viewDidAppear(_ animated: Bool) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2){
            self.scaleDownAnimation()
        }
    }
    func scaleDownAnimation(){
        UIView.animate(withDuration: 0.5, animations: {
            self.logo.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        }) { (success) in
            self.scaleUpAnimation()
        }
    }
    func scaleUpAnimation(){
        UIView.animate(withDuration: 0.35, delay: 0.1, options: .curveEaseIn, animations: {
            self.logo.transform = CGAffineTransform(scaleX: 5, y: 5)
        }) {(success) in
            self.removeSplashScreen()
        }
    }
    func removeSplashScreen(){
        splashView.removeFromSuperview()
    }
}

class NationalPark: NSObject, MKAnnotation{ //Needs to turn into a struct
    var title: String?
    var details: String?
    var link: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, details: String, link: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.details = details
        self.link = link
        self.coordinate = coordinate
    }
}
