//
//  main.m
//  Boxes
//
//  Created by Jun Oh on 2019-01-08.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Box* initialBox = [[Box alloc] initWithHeight:1.0 width:1.0 length:1.0];
        
        NSLog(@"The volume of initialBox is : %f", [initialBox volume]);
    }
    return 0;
}
