//
//  Person.h
//  5.4.1
//
//  Created by 李维佳 on 2017/3/28.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
@interface Person : NSObject
@property (nonatomic, copy) NSString *personName;
@property (nonatomic, strong) Dog *dog;
@end
