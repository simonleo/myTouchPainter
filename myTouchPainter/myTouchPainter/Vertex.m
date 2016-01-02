//
//  Vertex.m
//  myTouchPainter
//
//  Created by liushu on 16/1/1.
//  Copyright © 2016年 liushu. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex
@synthesize location = _location;
@dynamic color, size;

- (id) initWithLocation:(CGPoint)aLocation
{
    if (self = [super init])
    {
        [self setLocation:aLocation];
    }
    
    return self;
}

// default properties do nothing
- (void) setColor:(UIColor *)color {}
- (UIColor *) color { return nil; }
- (void) setSize:(CGFloat)size {}
- (CGFloat) size { return 0.0; }

// Mark operations do nothing
- (void) addMark:(id <Mark>) mark {}
- (void) removeMark:(id <Mark>) mark {}
- (id <Mark>) childMarkAtIndex:(NSUInteger) index { return nil; }
- (id <Mark>) lastChild { return nil; }
- (NSUInteger) count { return 0; }
- (NSEnumerator *) enumerator { return nil; }

#pragma mark - NSCopying method

// it needs to be implemented for memento
- (id)copyWithZone:(NSZone *)zone
{
    Vertex *vertexCopy = [[[self class] allocWithZone:zone] initWithLocation:_location];
    return vertexCopy;
}

@end
