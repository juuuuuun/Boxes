//
//  Box.m
//  Boxes
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import "Box.h"

@implementation Box

-(instancetype)init {
    return [self initWithHeight:0.0 width:0.0 length:0.0];
}

-(instancetype)initWithHeight:(float)height width:(float)width length:(float)length {
    self = [super init];
    if(self) {
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}

-(float)volume {
    return self.height * self.width * self.length;
}

-(int)numberOfBoxesThatFitInsideOtherBox:(Box *)otherBox {
    // If self volume is bigger, divide the self volume by the other box's volume
    if([self volume] > [otherBox volume]) {
        NSNumber* numberOfBoxesThatFit = [[NSNumber alloc] initWithFloat:([self volume] / [otherBox volume])];
        return [numberOfBoxesThatFit intValue];
    }
    
    // Otherwise, divide the other box volume by self volume
    else {
        NSNumber* numberOfBoxesThatFit = [[NSNumber alloc] initWithFloat:([otherBox volume] / [self volume])];
        return [numberOfBoxesThatFit intValue];
    }
}

@end
