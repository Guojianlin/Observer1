//
//  Observer.h
//  ObserverPrttern
//
//  Created by guojianlin on 15/11/27.
//  Copyright (c) 2015年 guojianlin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Passive.h"

@interface Observer : NSObject

@property(nonatomic,retain)Passive *passive;

-(id)initWithPassive:(Passive*)passive;

@end
