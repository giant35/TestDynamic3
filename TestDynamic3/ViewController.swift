//
//  ViewController.swift
//  TestDyname3
//
//  Created by 唐芳华 on 15/8/11.
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var floorView: UIView!
    @IBOutlet weak var redView: UIView!
    var animator:UIDynamicAnimator!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        animator = UIDynamicAnimator(referenceView: self.view );
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onStartButtonTap(sender: AnyObject) {
        var g = UIGravityBehavior( items:[redView] );
        animator.addBehavior(g);
        
        var c = UICollisionBehavior(items:[redView,floorView]);
        
        animator.addBehavior(c);
    }

}

