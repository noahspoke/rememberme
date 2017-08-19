//
//  MainPageViewController.swift
//  m8
//
//  Created by Noah Spochart on 8/19/17.
//  Copyright © 2017 Noah Spochart. All rights reserved.
//

import UIKit

class MainPageViewController: UIPageViewController {
    
    func getMain() -> MainViewController {
        return storyboard!.instantiateViewController(withIdentifier: "profileViewController") as! MainViewController
    }
    
    func getTimeline() -> TimelineViewController {
        return storyboard!.instantiateViewController(withIdentifier: "timelineViewController") as! TimelineViewController
    }
    
    func getRequests() -> RequestsViewController {
        return storyboard!.instantiateViewController(withIdentifier: "requestsViewController") as! RequestsViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        
        setViewControllers([getMain()], direction: .forward, animated: true, completion: nil)
        // Do any additional setup after loading the view.
    }

}

extension MainPageViewController : UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return nil
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return 3
    }
}
