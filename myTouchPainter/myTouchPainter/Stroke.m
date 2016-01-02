//
//  Stroke.m
//  myTouchPainter
//
//  Created by liushu on 16/1/1.
//  Copyright © 2016年 liushu. All rights reserved.
//

#import "Stroke.h"
#import "Vertex.h"

@implementation Stroke

@synthesize color = _color, size = _size;
@dynamic location;

- (id)init
{
    if (self = [super init])
    {
        _children = [[NSMutableArray alloc] initWithCapacity:5];
    }
    
    return self;
}

- (void)setLocation:(CGPoint)location
{
    // it doesn't set any arbitrary location
}

- (CGPoint)location
{
    if ([_children count] > 0) {
        if ([[_children objectAtIndex:0] isKindOfClass:[Vertex class]]) {
            return ((Vertex *)[_children objectAtIndex:0]).location;
        }
    }
    
    return CGPointZero;
}

- (void)addMark:(id<Mark>)mark
{
    [_children addObject:mark];
}

- (void)removeMark:(id<Mark>)mark
{
    // if mark is at this level then
    // remove it and return
    // otherwise, let every child
    // search for it
    if ([_children containsObject:mark])
    {
        [_children removeObject:mark];
    }
    else
    {
        [_children makeObjectsPerformSelector:@selector(removeMark:)
                                   withObject:mark];
    }
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index
{
    if (index >= [_children count]) return nil;
    
    return [_children objectAtIndex:index];
}

// a convenience method to return the last child
- (id <Mark>) lastChild
{
    return [_children lastObject];
}

// returns number of children
- (NSUInteger) count
{
    return [_children count];
}

- (void)dealloc
{
    _color = nil;
    _children = nil;
}

#pragma mark - NSCopying method

- (id)copyWithZone:(NSZone *)zone
{
    Stroke *strokeCopy = [[[self class] allocWithZone:zone] init];
    
    // copy the color
    [strokeCopy setColor:[UIColor colorWithCGColor:[_color CGColor]]];
    
    // copy the size
    [strokeCopy setSize:_size];
    
    // copy the children
    for (id <Mark> child in _children)
    {
        [strokeCopy addMark:child];
    }
    
    return strokeCopy;
}

@end
