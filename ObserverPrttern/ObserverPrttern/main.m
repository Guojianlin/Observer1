//
//  main.m
//  ObserverPrttern
//
//  Created by guojianlin on 15/11/27.
//  Copyright (c) 2015年 guojianlin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Passive.h"
#import "Observer.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        //return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        Passive *passiveObj = [[Passive alloc]init];
        Observer *observerObj = [[Observer alloc]initWithPassive:passiveObj];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
