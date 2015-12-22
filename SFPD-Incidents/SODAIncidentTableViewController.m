//
//  SODAIncidentTableViewController.m
//  CodeChallenge01
//
//  Created by Eduardo Alvarado Díaz on 12/17/15.
//  Copyright © 2015 persnal. All rights reserved.
//
#import "SODAQuery.h"
#import "SODAIncidentTableViewController.h"
#import "SODAConsumer.h"
#import "SODAIncident.h"

@implementation SODAIncidentTableViewController{

}

- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self) {
        self.navigationItem.title = @"SFPD Incidents";

        self.consumer = [SODAConsumer consumerWithDomain:@"data.sfgov.org" token:@"wW2T4K4lmmbXxTCaFUI5WWE0k"];
        self.paginationEnabled = YES;
        self.recordsPerPage = 10;
    }
    
    return self;
}

- (SODAQuery *)queryForTable {
    SODAQuery *query = [SODAQuery queryWithDataset:@"ritf-b9ki" mapping:[SODAIncident class]];
//    [query where:@"category" equals:@"ASSAULT"];
    return query;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(SODAIncident *)incident{
    static NSString *cellIdent = @"IncidentCell";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdent];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdent];
    }

    cell.textLabel.text = incident.descript;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Resolution: %@, Address: %@", incident.resolution, incident.address];
    
    return cell;
}


@end
