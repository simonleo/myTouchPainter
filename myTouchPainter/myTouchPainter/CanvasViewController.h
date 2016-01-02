//
//  CanvasViewController.h
//  myTouchPainter
//
//  Created by liushu on 16/1/1.
//  Copyright © 2016年 liushu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CanvasView.h"
#import "CanvasViewGenerator.h"

@interface CanvasViewController : UIViewController
{
    @private
    CanvasView  *canvasView;
}

@property (nonatomic, strong) CanvasView  *canvasView;

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator;

@end
