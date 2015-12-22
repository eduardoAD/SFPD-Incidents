//
//  SODAIncident.m
//  CodeChallenge01
//
//  Created by Eduardo Alvarado Díaz on 12/17/15.
//  Copyright © 2015 persnal. All rights reserved.
//

#import "SODAIncident.h"
#import "SODALocation.h"

@implementation SODAIncident{

}

#pragma mark - Properties

@synthesize incidntNum = _incidntNum;
@synthesize category = _category;
@synthesize descript = _descript;
@synthesize dayOfWeek = _dayOfWeek;
@synthesize date = _date;
@synthesize time = _time;
@synthesize pdDistrict = _pdDistrict;
@synthesize resolution = _resolution;
@synthesize address = _address;
@synthesize x = _x;
@synthesize y = _y;
@synthesize location = _location;
@synthesize pdId = _pdId;

#pragma mark - SODAPropertyMappig custom mappings impl

- (NSDictionary*)propertyMappings{
    return @{
             @"incidntnum" : @"incidntNum",
             @"category" : @"category",
             @"descript" : @"descript",
             @"dayofweek" : @"dayOfWeek",
             @"date" : @"date",
             @"time" : @"time",
             @"pddistrict" : @"pdDistrict",
             @"resolution" : @"resolution",
             @"address" : @"address",
             @"x" : @"x",
             @"y" : @"y",
             @"location" : @"location",
             @"pdid" : @"pdId"
    };
}

@end
