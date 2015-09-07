//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Steve on 2015-09-07.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView ()

@property (strong, nonatomic) UIPanGestureRecognizer *panRecognizer;


@end

@implementation MyScrollView

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
//    _contentSize = CGSizeMake(0.0f, 0.0f);
    
    _panRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
//    _panRecognizer.minimumNumberOfTouches = 1;
    [self addGestureRecognizer:self.panRecognizer];
    
    
    return self;
}

- (void)handlePan:(UIPanGestureRecognizer *)recognizer {
    
    if (recognizer.state == UIGestureRecognizerStateChanged) {
        
        CGPoint translation = [recognizer translationInView:self];

//        CGRect bounds = self.bounds;
        
        [self setBounds:CGRectMake(-translation.x, -translation.y, self.frame.size.width, self.frame.size.height)];
        
//        [self setTranslation:CGPointZero inView:self];
    }
    

}


@end
