//
//  Box.h
//  Boxes
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject

@property (nonatomic) float height;
@property (nonatomic) float width;
@property (nonatomic) float length;

- (instancetype) initWithHeight:(float) height
                          width:(float) width
                         length:(float) length;

- (float) volume;

- (int) numberOfBoxesThatFitInsideOtherBox:(Box *) otherBox;

@end

NS_ASSUME_NONNULL_END
