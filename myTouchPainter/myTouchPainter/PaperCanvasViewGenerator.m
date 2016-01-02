//
//  PaperCanvasViewGenerator.m
//  myTouchPainter
//
//  Created by liushu on 16/1/1.
//  Copyright © 2016年 liushu. All rights reserved.
//

#import "PaperCanvasViewGenerator.h"

@implementation PaperCanvasViewGenerator

- (CanvasView *) canvasViewWithFrame:(CGRect) aFrame
{
    return [[PaperCanvasView alloc] initWithFrame:aFrame];
}

@end
