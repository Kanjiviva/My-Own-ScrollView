//
//  ViewController.m
//  MyScrollView
//
//  Created by Steve on 2015-09-07.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MyScrollView *backUIView;
@property (weak, nonatomic) IBOutlet UIView *redView;
@property (weak, nonatomic) IBOutlet UIView *greenView;
@property (weak, nonatomic) IBOutlet UIView *blueView;
@property (weak, nonatomic) IBOutlet UIView *yellowView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.backUIView.contentSize = CGSizeMake(self.view.bounds.size.width, 1000);
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
//    [self.backUIView setBounds:CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height)];
    
    
}

@end
