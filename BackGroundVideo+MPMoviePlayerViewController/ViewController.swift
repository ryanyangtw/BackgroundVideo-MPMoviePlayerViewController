//
//  ViewController.swift
//  BackGroundVideo+MPMoviePlayerViewController
//
//  Created by Ryan on 2015/4/29.
//  Copyright (c) 2015年 Ryan. All rights reserved.
//

import UIKit
import MediaPlayer

class ViewController: UIViewController {

  override func viewDidAppear(animated: Bool) {
    super.viewDidLoad()

    let filePath = NSBundle.mainBundle().pathForResource("backgroundVideo", ofType: "mp4")

    let fileURL = NSURL(fileURLWithPath: filePath!)

    let  moviePlayerController = MPMoviePlayerViewController(contentURL: fileURL!)


    moviePlayerController.moviePlayer.controlStyle = .None
    moviePlayerController.moviePlayer.prepareToPlay()
    moviePlayerController.moviePlayer.scalingMode = .AspectFill//.AspectFill
    //moviePlayer.shouldAutoplay = true



    //view.addSubview(moviePlayer.view)
    self.presentViewController(moviePlayerController, animated: true, completion: nil)


    moviePlayerController.moviePlayer.play()
  
    /*
    var filter = UIView()
    filter.frame = self.view.frame
    filter.backgroundColor = UIColor.blackColor()
    filter.alpha = 0.05
    self.view.addSubview(filter)
    */

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

