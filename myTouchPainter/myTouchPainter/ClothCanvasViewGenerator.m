//
//  ClothCanvasViewGenerator.m
//  myTouchPainter
//
//  Created by liushu on 16/1/1.
//  Copyright © 2016年 liushu. All rights reserved.
//

#import "ClothCanvasViewGenerator.h"

@implementation ClothCanvasViewGenerator
- (CanvasView *) canvasViewWithFrame:(CGRect) aFrame
{
    return [[ClothCanvasView alloc] initWithFrame:aFrame];
}

@end
