//
//  MovieDetailViewController.swift
//  Movies
//
//  Created by LIU SHANG WEI on 2021/4/14.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var introductionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    let movie: Movie
    init?(coder: NSCoder, movie: Movie) {
        self.movie = movie
        super.init(coder: coder)!
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage.init(named: movie.imageName)
        introductionLabel.text = movie.introduction
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
