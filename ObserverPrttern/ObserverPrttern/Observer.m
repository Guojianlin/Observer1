//
//  Observer.m
//  ObserverPrttern
//
//  Created by guojianlin on 15/11/27.
//  Copyright (c) 2015年 guojianlin. All rights reserved.
//

#import "Observer.h"

@implementation Observer

-(id)initWithPassive:(Passive*)passive
{
    self = [super init];
    if(self)
    {
        self.passive = passive;
        
        [self.passive addObserver:self forKeyPath: @"happyNum"
                        options: NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                        context: nil];
    }
    return  self;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"%@",change);
}

-(void)dealloc
{
    [self.passive removeObserver:self forKeyPath:@"happyNum" context:nil];
}

@end
