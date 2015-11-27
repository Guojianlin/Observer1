//
//  Passive.m
//  ObserverPrttern
//
//  Created by guojianlin on 15/11/27.
//  Copyright (c) 2015年 guojianlin. All rights reserved.
//

#import "Passive.h"

@implementation Passive
{
    NSTimer *_timer;
}

-(id)init
{
    self = [super init];
    if(self)
    {
        self.happyNum = 100;
        _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(decrease:) userInfo:nil repeats:YES];
    }
    return  self;
}

-(void)decrease:(NSTimer*)timer
{
     NSLog(@"the happyNum is %ld", self.happyNum);
     _happyNum --;
     [self setValue:[NSNumber numberWithInteger: _happyNum] forKey: @"happyNum"];
}

-(void)dealloc
{
    if (_timer) {
        [_timer invalidate];
    }
}

@end
