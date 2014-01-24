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
        NSMutableArray *items = [[NSMutableArray alloc]init];
        [items addObject:@"one"];
        [items addObject:@ "two"];
        [items addObject:@ "three"];
        [items insertObject:@ "zero" atIndex:0];
    // print out what the array is doing                              }
        for (int i=0; i< [items count]; i++){
        NSLog (@ "%@", [items objectAtIndex: i]);
    
    }
        BNRItem *p = [[BNRItem alloc] init];
        NSLog (@ "%@ %@ %@ %d", [p itemName], [p dateCreated], [p serialNumber], [p valueInDollars]);
                                               
        items = nil;
}
        return 0;
}