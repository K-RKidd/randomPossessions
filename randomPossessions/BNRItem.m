//
//  BNRItem.m
//  randomPossessions
//
//  Created by Mac User on 1/23/14.
//  Copyright (c) 2014 Krystle Kidd. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

-(id) initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    //Call the superclass's designated initializer
    self = [super init];
    
    
    // Did the superclass's designated initalizer succedd?
    if (self) {
    //Give te instance variables inital values
    [self setItemName:name];
    [self setSerialNumber:sNumber];
    [self setValueInDollars:value];
    dateCreated = [[NSDate alloc] init];
    }
    //Return the address of the newly initalized object
    return self;
    }
-(id)init
{
    return [self initWithItemName:@ "Item"
                   valueInDollars: 0
                     serialNumber:@ " "];
}

+(id) randomItem
{
    //Create an array of three adjectives
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@ "Fluffy", @ "Rusty", @ "Shiny", nil];
    
    //Create an array of three nouns
    NSArray *randomNounList = [NSArray arrayWithObjects:@ "Bear", @ "Spork", @ "Mac", nil];
    
    //Get the indext of a random adjective/noun from the lists
    NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];
    NSInteger nounIndex = rand() % [randomNounList count];
    
    NSString *randomName= [NSString stringWithFormat:@ "%@ %@", [randomAdjectiveList objectAtIndex:adjectiveIndex],
                           [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@ "%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName
                                       valueInDollars:randomValue
                                         serialNumber:randomSerialNumber];
    return newItem;
    
}
-(NSString *) getItemName {
    return itemName;
}
-(void) setItemName: (NSString *) str {
    itemName = str;
}
-(NSString *) getSerialNumber {
    return serialNumber;
}
-(void) setSerialNumber:(NSString *) str{
    serialNumber = str;
}
-(int) getValueInDollars {
    return valueInDollars;
}
-(void) setValueInDollars:(int)v{
    valueInDollars = v;
}
-(NSDate *) getDateCreated {
    return dateCreated;
}
-(void) setDateCreated:(NSDate *)d {
    dateCreated = d;
}

-(NSString *) description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@ "%@ (%@): Worth $%d, recorded on %@", itemName, serialNumber, valueInDollars, dateCreated];
                                   return descriptionString;
                                   }
@end
