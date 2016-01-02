//
//  Stroke.h
//  myTouchPainter
//
//  Created by liushu on 16/1/1.
//  Copyright © 2016年 liushu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

@interface Stroke : NSObject <Mark, NSCopying>
{
    @private
    UIColor *_color;
    CGFloat _size;
    NSMutableArray *_children;
}

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly) id <Mark> lastChild;

- (void) addMark:(id <Mark>) mark;
- (void) removeMark:(id <Mark>) mark;
- (id <Mark>) childMarkAtIndex:(NSUInteger) index;

// for the Prototype pattern
- (id) copyWithZone:(NSZone *)zone;

@end
