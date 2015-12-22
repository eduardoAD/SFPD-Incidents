//
//  SODAIncidentMapViewController.m
//  CodeChallenge01
//
//  Created by Eduardo Alvarado Díaz on 12/18/15.
//  Copyright © 2015 persnal. All rights reserved.
//

#import "SODAIncidentMapViewController.h"
#import "SODAQuery.h"
#import "SODAMapAnnotation.h"
#import "SODAIncident.h"
#import "SODAConsumer.h"

@interface SODAIncidentMapViewController ()

@end

@implementation SODAIncidentMapViewController

- (id)init {
    self = [super init];
    if (self) {
        self.navigationItem.title = @"SFPD Incidents";

        self.consumer = [SODAConsumer consumerWithDomain:@"data.sfgov.org" token:@"wW2T4K4lmmbXxTCaFUI5WWE0k"];
    }
    return self;
}

- (SODAQuery *)queryForMapWithGeoBox:(SODAGeoBox *)geoBox{

    SODAQuery *query = [SODAQuery queryWithDataset:@"ritf-b9ki" mapping:[SODAIncident class]];
//    [query where:@"location" withinBox:geoBox];

    return query;
}

- (SODAMapAnnotation *)annotationForObject:(SODAIncident *) incident {

    SODAMapAnnotation *annotation = [SODAMapAnnotation annotationWithObject:incident atLocation:incident.location];
    annotation.title = incident.descript;
    annotation.subtitle = [NSString stringWithFormat:@"Resolution: %@, Address: %@", incident.resolution, incident.address];
    
    return annotation;
}

@end
