//
//  JNStack.m
//  Logic
//
//  Created by Junan Guo on 10/9/16.
//  Copyright © 2016 Junan Guo. All rights reserved.
//

#import "JNStack.h"

@implementation JNStack
@synthesize count;
-(instancetype) init{
    if (self = [super init]){
        _objects = [NSMutableArray array];
    }
    return self;
}

-(instancetype) initFromArray:(NSArray*)array{
    if (self = [super init]){
        _objects = [[NSMutableArray alloc] initWithArray:array];
    }
    return self;
}

-(void)Push:(NSObject*)obj{
    if (obj){
        [_objects addObject:obj];
    }
}
-(void)PushObjects:(NSArray*) objs{
    for (NSObject *obj in objs){
        [self Push:obj];
    }
}
-(NSObject*)Pop{
    if (_objects.count > 0){
        NSObject *obj = [_objects objectAtIndex:(_objects.count-1)];
        [_objects removeLastObject];
        return obj;
    }else{
        return nil;
    }
}
-(NSObject*)Peek{
    if (_objects.count > 0){
        return [_objects objectAtIndex:(_objects.count-1)];
    }
    return nil;
}
-(NSUInteger)count{
    return _objects.count;
}
@end
