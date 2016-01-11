//
//  ViewController.m
//  AutoScrollTest
//
//  Created by Semen on 11.01.16.
//  Copyright © 2016 Semen. All rights reserved.
//

#import "ViewController.h"
#import "MSCustomTapGesture.h"
@interface ViewController () 

@property (weak,nonatomic) UITextView* textView;

@property (weak,nonatomic) NSTimer* timer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextView* textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))];
    
    textView.text = @"10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20 10 11 12 13 14 15 16 17 18 19 20";
    
    [self.view addSubview:textView];
    
    UIFont* font = [UIFont fontWithName:@"Arial" size:20];
    textView.editable = NO;
    textView.selectable = NO;
    textView.font = font;
    
    self.textView = textView;
    self.textView.delegate = self;
    
    [self startTimer];
    
    MSCustomTapGesture* tap = [[MSCustomTapGesture alloc] initWithTarget:self action:@selector(handleTap:)];
    [self.textView addGestureRecognizer:tap];
    tap.delegate = self;

}

- (void) startTimer {
    self.timer = [NSTimer scheduledTimerWithTimeInterval:(20.0/1000.0)
                                                  target:self
                                                selector:@selector(autoscrollTimerFired:)
                                                userInfo:nil
                                                 repeats:YES];
}

- (void)autoscrollTimerFired:(NSTimer*)timer {
    
    if (self.textView.contentOffset.y > (self.textView.contentSize.height - CGRectGetHeight(self.view.frame))) {
        
        [self.timer invalidate];
        
    } else {
       
        CGPoint scrollPoint = self.textView.contentOffset;
        scrollPoint = CGPointMake(scrollPoint.x, scrollPoint.y + 1);
        [self.textView setContentOffset:scrollPoint animated:NO];
    }
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    if (self.timer.valid == NO) {

        [self startTimer];
    }
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    
    if (self.timer.valid == NO && decelerate == NO) {
        
        [self startTimer];
    }
}

-(void) handleTap:(MSCustomTapGesture*) sender {
    
    if (sender.state == UIGestureRecognizerStateBegan) {
        [self.timer invalidate];
    }
    if (sender.state == UIGestureRecognizerStateEnded) {
        [self startTimer];
    }
}

- (BOOL)gestureRecognizer:(MSCustomTapGesture *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
