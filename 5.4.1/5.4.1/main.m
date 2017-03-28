//
//  main.m
//  5.4.1
//
//  Created by 李维佳 on 2017/3/28.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc] init];
        Dog *dog = [[Dog alloc] init];
        //使用KVC设值
        [dog setValue:@"tom" forKey:@"dogName"];
        [person setValue:@"shixin" forKey:@"personName"];
        [person setValue:dog forKey:@"dog"];
        [person setValue:@2 forKeyPath:@"dog.dogAge"];
        //使用KVC取值
        NSString *personName = [person valueForKey:@"personName"];
        NSString *dogName = [person valueForKeyPath:@"dog.dogName"];
        NSNumber *dogAge = [person valueForKeyPath:@"dog.dogAge"];
        NSLog(@"<%@>的宠物狗名叫<%@>， 它<%@>岁了.",personName,dogName,dogAge);
    }
    return 0;
}
