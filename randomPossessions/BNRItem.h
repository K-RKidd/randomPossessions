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

+(id) randomItem;

-(id) initWithItemName: (NSString *) name
        valueInDollars: (int) value
          serialNumber: (NSString *) sNumber;

-(NSString *) getItemName;
-(void) setItemName:(NSString *) str;
-(NSString *) getSerialNumber;
-(void) setSerialNumber: (NSString *) str;
-(int) getValueInDollars;
-(void) setValueInDollars: (int) i;
-(NSDate *) getDateCreated;
-(void) setDateCreated: (NSDate *) d;
@end
