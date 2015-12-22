//
//  SODAIncident.h
//  CodeChallenge01
//
//  Created by Eduardo Alvarado Díaz on 12/17/15.
//  Copyright © 2015 persnal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SODAPropertyMapping.h"

@class SODALocation;

@interface SODAIncident : NSObject<SODAPropertyMapping>{
    NSString *_incidntNum;
    NSString *_category;
    NSString *_descript;
    NSString *_dayOfWeek;
    NSDate   *_date;
    NSString *_time;
    NSString *_pdDistrict;
    NSString *_resolution;
    NSString *_address;
    NSNumber *_x;
    NSNumber *_y;
    SODALocation *_location;
    NSNumber *_pdId;
}

#pragma mark - Properties

@property(nonatomic,copy) NSString *incidntNum;
@property(nonatomic,copy) NSString *category;
@property(nonatomic,copy) NSString *descript;
@property(nonatomic,copy) NSString *dayOfWeek;
@property(nonatomic,strong) NSDate *date;
@property(nonatomic,copy) NSString *time;
@property(nonatomic,copy) NSString *pdDistrict;
@property(nonatomic,copy) NSString *resolution;
@property(nonatomic,copy) NSString *address;
@property(nonatomic,strong) NSNumber *x;
@property(nonatomic,strong) NSNumber *y;
@property(nonatomic,strong) SODALocation *location;
@property(nonatomic,strong) NSNumber *pdId;

@end
