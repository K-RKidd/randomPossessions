//
//  main.m
//  randomPossessions
//
//  Created by Mac User on 1/23/14.
//  Copyright (c) 2014 Krystle Kidd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
       
        for (int i =0; i<10; i++) {
            BNRItem *p = [BNRItem randomItem];
            [items addObject:p];
        }
        
        for (int i =0; i< [items count]; i++){
            NSLog(@ "%@", [items objectAtIndex:i]);
        }
        
        items = nil;
}
        return 0;
}