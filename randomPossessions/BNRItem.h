//
//  BNRItem.h
//  randomPossessions
//
//  Created by Mac User on 1/23/14.
//  Copyright (c) 2014 Krystle Kidd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject {
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}
-(NSString *) getItemName;
-(void) itemName:(NSString *) str;
-(NSString *) getSerialNumber;
-(void) serialNumber: (NSString *) str;
-(int) getValueInDollars;
-(void) valueInDollars: (int) v;
-(NSDate *) getDateCreated;
-(void) dateCreated: (NSDate *) d;
@end
