//
//  CanvasViewController.m
//  myTouchPainter
//
//  Created by liushu on 16/1/1.
//  Copyright © 2016年 liushu. All rights reserved.
//

#import "CanvasViewController.h"

@implementation CanvasViewController

@synthesize canvasView = _canvasView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CanvasViewGenerator *defaultGenerator = [[CanvasViewGenerator alloc] init];
    [self loadCanvasViewWithGenerator:defaultGenerator];
}

#pragma mark - Loading a CanvasView from a CanvasViewGenerator

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator
{
    [_canvasView removeFromSuperview];
    CGRect aFrame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 44);
    CanvasView *aCanvasView = [generator canvasViewWithFrame:aFrame];
    [self setCanvasView:aCanvasView];
    [self.view addSubview:_canvasView];
}

@end
