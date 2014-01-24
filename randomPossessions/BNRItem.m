//
//  BNRItem.m
//  randomPossessions
//
//  Created by Mac User on 1/23/14.
//  Copyright (c) 2014 Krystle Kidd. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

-(NSString *) getItemName {
    return itemName;
}
-(void) itemName: (NSString *) str {
    itemName = str;
}
-(NSString *) getserialNumber {
    return serialNumber;
}
-(void) serialNumber:(NSString *) str{
    serialNumber = str;
}
-(int) getValueIndollars {
    return valueInDollars;
}
-(void) valueInDollars:(int)v{
    valueInDollars = v;
}
-(NSDate *) getDateCreated {
    return dateCreated;
}
-(void) dateCreated:(NSDate *)d {
    dateCreated = d;
}
-(id) initWithItemName:(NSString *) name
        valueInDollars: (int) value;
serialNumber: (NSString *) sNumber
{
    self = [super init];
    if (self) {
        [self setItemName:name];
        [self setSerialNumber: sNumber];
        [self setValueInDollars: value];
        dateCreated = [[NSDate alloc] init];
        
}
    return self;
}
@end
