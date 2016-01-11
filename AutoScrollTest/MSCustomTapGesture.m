//
//  MSCustomTapGesture.m
//  AutoScrollTest
//
//  Created by Semen on 11.01.16.
//  Copyright © 2016 Semen. All rights reserved.
//

#import "MSCustomTapGesture.h"

@implementation MSCustomTapGesture 

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    self.state = UIGestureRecognizerStateBegan;
}

-(void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    self.state = UIGestureRecognizerStateEnded;
}
@end
