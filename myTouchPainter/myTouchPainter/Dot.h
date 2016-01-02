//
//  Dot.h
//  myTouchPainter
//
//  Created by liushu on 16/1/1.
//  Copyright © 2016年 liushu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vertex.h"

@interface Dot : Vertex
{
    @private
    UIColor *_color;
    CGFloat _size;
}

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;


// for the Prototype pattern
- (id) copyWithZone:(NSZone *)zone;


@end
