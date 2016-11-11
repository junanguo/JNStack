//
//  JNStack.h
//  Logic
//
//  Created by Junan Guo on 10/9/16.
//  Copyright © 2016 Junan Guo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JNStack : NSObject
@property(nonatomic, retain)NSMutableArray *objects;
@property(nonatomic,assign) NSUInteger count;
-(instancetype) init;
-(void)Push:(NSObject*)obj;
-(void)PushObjects:(NSArray*) objs;
-(NSObject*)Pop;
-(NSObject*)Peek;
-(NSUInteger)count;
@end
