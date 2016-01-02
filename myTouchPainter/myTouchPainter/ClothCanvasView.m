//
//  ClothCanvasView.m
//  myTouchPainter
//
//  Created by liushu on 16/1/1.
//  Copyright © 2016年 liushu. All rights reserved.
//

#import "ClothCanvasView.h"

@implementation ClothCanvasView

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
    {
        // Add a cloth image view on top
        // as the canvas background
        UIImage *backgroundImage = [UIImage imageNamed:@"cloth"];
        UIImageView *backgroundView = [[UIImageView alloc]
                                        initWithImage:backgroundImage];
        [self addSubview:backgroundView];
    }
    
    return self;
}

@end
