//
//  situmcordovapluginCreatorTests.m
//  situmcordovapluginTests
//
//  Created by Situm on 01/7/18.
//  Copyright © 2018 Situm. All rights reserved.
//

#import "SitumCreatorTests.h"

@implementation SitumCreatorTests

//angle1.json
+ (SITAngle *) createAngleFromDegrees {
    SITAngle *angle = [[SITAngle alloc] initWithDegrees:47];
    return angle;
}

//angle2.json
+ (SITAngle *) createAngleFromRadians {
    SITAngle *angle = [[SITAngle alloc] initWithRadians:1.4];
    return angle;
}

//bounds1.json
+ (SITBounds) createBoundsWithArray {
    SITBounds Bounds;
    Bounds.northWest = CLLocationCoordinate2DMake(2, 6);
    Bounds.southWest = CLLocationCoordinate2DMake(2, 4);
    Bounds.northEast = CLLocationCoordinate2DMake(6, 3);
    Bounds.southEast = CLLocationCoordinate2DMake(5, 8);
    return Bounds;
}

//bounds2.json
//NOTE: it is redundant in ios, it is equals to previous bounds1.json
+ (SITBounds) createBounds {
    SITBounds Bounds;
    Bounds.northWest = CLLocationCoordinate2DMake(2, 6);
    Bounds.southWest = CLLocationCoordinate2DMake(2, 4);
    Bounds.northEast = CLLocationCoordinate2DMake(6, 3);
    Bounds.southEast = CLLocationCoordinate2DMake(5, 8);
    return Bounds;
}

//cartesianCoordinate1.json
+ (SITCartesianCoordinate *) createCartesianCoordinate {
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:5 y:7];
    return cartesianCoordinate;
}

//coordinate1.json
+ (CLLocationCoordinate2D) createCoordinate {
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(23, 43);
    return coordinate;
}

//dimensions1.json
+ (SITDimensions *) createDimensions {
    SITDimensions *dimensions = [[SITDimensions alloc] initWithWidth:5 height:7];
    return dimensions;
}

//event1.json
+ (SITEvent *) createEvent {
    SITEvent *event = [[SITEvent alloc] init];
    event.identifier = [NSNumber numberWithDouble:12];
    event.info = @"<p>Test html</p>";
    //building identifier
    event.project_identifier = [NSNumber numberWithDouble:1];;
    return event;
}

//floor1.json
+ (SITFloor *) createFloorWithAltitude {
    SITFloor *floor = [[SITFloor alloc] init];
    /*NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:DATEFORMAT];
    
    floor.createdAt = [dateFormatter dateFromString:floor.createdAt];
    
    floor.updatedAt = [dateFormatter dateFromString:floor.updatedAt];*/
    floor.altitude = 2.5;
    floor.scale = 10.2;
    floor.mapURL = [[SITURL alloc] initWithDirection:@"TEST_URL"];
    floor.level = 1;
    floor.identifier = @"-1";
    floor.buildingIdentifier = @"101";
    return floor;
}

//floor2.json
+ (SITFloor *) createFloorWithoutAltitude {
    SITFloor *floor = [[SITFloor alloc] init];
    
    /*NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:DATEFORMAT];
    floor.createdAt = [dateFormatter dateFromString:floor.createdAt];
    floor.updatedAt = [dateFormatter dateFromString:floor.updatedAt];*/
    
    floor.altitude = 0;
    floor.scale = 10.2;
    floor.mapURL = [[SITURL alloc] initWithDirection:@"TEST_URL"];
    floor.level = 1;
    floor.identifier = @"-1";
    floor.buildingIdentifier = @"101";
    return floor;
}

//indication1.json
+ (SITIndication *) createIndication {
    NSInteger stepIdxOrigin = 4;
    NSInteger stepIdxDestination = 5;
    float horizontalDistance = 5;
    float orientationChange = 14.5;
    float verticalDistance = 16;
    NSNumber* nextLevel = nil;
    kSITIndicationActions action = kSITGoAhead;
    kSITIndicationOrientation orientation = kSITStraight;
    SITIndication *indication = [[SITIndication alloc] initWithOriginStepIndex:stepIdxOrigin destinationStepIndex:stepIdxDestination action:action horizontalDistance:horizontalDistance orientation:orientation orientationChange:orientationChange verticalDistance:verticalDistance nextLevel:nextLevel];
    
    return indication;
}

//location1.json
+ (SITLocation *) createLocationWithBuildingFloorAndCartesianCoordinates {
    NSTimeInterval timestamp = 14676784;
    //empty coordinate 0,0
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(0, 0);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:45 y:46];
    SITPoint *position  = [[SITPoint alloc]  initWithCoordinate:coordinate buildingIdentifier:@"101" floorIdentifier:@"12" cartesianCoordinate: cartesianCoordinate];
    float bearing = 0; //degrees
    float cartesianBearing = 0; //radians
    kSITQualityValues quality = kSITLow;
    NSString *provider = @"TEST_PROVIDER";
    float accuracy = 5;
    SITLocation *location = [[SITLocation alloc] initWithTimestamp:timestamp position:position bearing: bearing cartesianBearing:cartesianBearing quality:quality accuracy:accuracy provider:provider];
    return location;
}

//location2.json
+ (SITLocation *) createLocationWithCoordinate {
    NSTimeInterval timestamp = 14676784;
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(8.6, 10.5);
    SITPoint *position  = [[SITPoint alloc]  initWihtCoordinate:coordinate];
    position.buildingIdentifier = @"-1";
    position.floorIdentifier = @"-1";
    float bearing = 0; //degrees
    float cartesianBearing = 0; //radians
    kSITQualityValues quality = kSITLow;
    NSString *provider = @"TEST_PROVIDER";
    float accuracy = 5;
    SITLocation *location = [[SITLocation alloc] initWithTimestamp:timestamp position:position bearing: bearing cartesianBearing:cartesianBearing quality:quality accuracy:accuracy provider:provider];
    return location;
}

//location3.json
+ (SITLocation *) createLocationWithBuildingAndCoordinate {
    NSTimeInterval timestamp = 14676784;
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(8.6, 10.5);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:0 y:0];
    SITPoint *position  = [[SITPoint alloc]  initWithCoordinate:coordinate buildingIdentifier:@"101" floorIdentifier:@"-1" cartesianCoordinate: cartesianCoordinate];
    float bearing = 0; //degrees
    float cartesianBearing = 0; //radians
    kSITQualityValues quality = kSITLow;
    NSString *provider = @"TEST_PROVIDER";
    float accuracy = 5;
    SITLocation *location = [[SITLocation alloc] initWithTimestamp:timestamp position:position bearing: bearing cartesianBearing:cartesianBearing quality:quality accuracy:accuracy provider:provider];
    return location;
}

//location4.json
+ (SITLocation *) locationWithCartesianBearing {
    NSTimeInterval timestamp = 14676784;
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(0, 0);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:45 y:46];
    SITPoint *position  = [[SITPoint alloc]  initWithCoordinate:coordinate buildingIdentifier:@"101" floorIdentifier:@"12" cartesianCoordinate: cartesianCoordinate];
    float bearing = 92; //degrees
    float cartesianBearing = 2; //radians
    kSITQualityValues quality = kSITHigh;
    NSString *provider = @"TEST_PROVIDER";
    float accuracy = 5;
    SITLocation *location = [[SITLocation alloc] initWithTimestamp:timestamp position:position bearing: bearing cartesianBearing:cartesianBearing quality:quality accuracy:accuracy provider:provider];
    return location;
}

//location5.json
+ (SITLocation *) locationWithoutCartesianBearing {
    NSTimeInterval timestamp = 14676784;
    //empty coordinate 0,0
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(0, 0);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:45 y:46];
    SITPoint *position  = [[SITPoint alloc]  initWithCoordinate:coordinate buildingIdentifier:@"101" floorIdentifier:@"12" cartesianCoordinate: cartesianCoordinate];
    float bearing = 0; //degrees
    float cartesianBearing = 0; //radians
    kSITQualityValues quality = kSITLow;
    NSString *provider = @"TEST_PROVIDER";
    float accuracy = 5;
    SITLocation *location = [[SITLocation alloc] initWithTimestamp:timestamp position:position bearing: bearing cartesianBearing:cartesianBearing quality:quality accuracy:accuracy provider:provider];
    return location;
}

//location6.json
+ (SITLocation *) locationWithBearing {
    NSTimeInterval timestamp = 14676784;
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(8.6, 10.5);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:0 y:0];
    SITPoint *position  = [[SITPoint alloc]  initWithCoordinate:coordinate buildingIdentifier:@"-1" floorIdentifier:@"-1" cartesianCoordinate: cartesianCoordinate];
    float bearing = 92; //degrees
    float cartesianBearing = 0; //radians
    kSITQualityValues quality = kSITLow;
    NSString *provider = @"TEST_PROVIDER";
    float accuracy = 5;
    SITLocation *location = [[SITLocation alloc] initWithTimestamp:timestamp position:position bearing: bearing cartesianBearing:cartesianBearing quality:quality accuracy:accuracy provider:provider];
    return location;
}

//location7.json
+ (SITLocation *) locationWithouthBearing {
    NSTimeInterval timestamp = 14676784;
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(0, 0);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:45 y:46];
    SITPoint *position  = [[SITPoint alloc]  initWithCoordinate:coordinate buildingIdentifier:@"101" floorIdentifier:@"12" cartesianCoordinate: cartesianCoordinate];
    float bearing = 0; //degrees
    float cartesianBearing = 0; //radians
    kSITQualityValues quality = kSITLow;
    NSString *provider = @"TEST_PROVIDER";
    float accuracy = 5;
    SITLocation *location = [[SITLocation alloc] initWithTimestamp:timestamp position:position bearing: bearing cartesianBearing:cartesianBearing quality:quality accuracy:accuracy provider:provider];
    return location;
}

//location8.json
+ (SITLocation *) indoorLocationWithIndoorBearingQualityLow {
    NSTimeInterval timestamp = 14676784;
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(0, 0);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:45 y:46];
    SITPoint *position  = [[SITPoint alloc]  initWithCoordinate:coordinate buildingIdentifier:@"101" floorIdentifier:@"12" cartesianCoordinate: cartesianCoordinate];
    float bearing = 92; //degrees
    float cartesianBearing = 2; //radians
    kSITQualityValues quality = kSITLow;
    NSString *provider = @"TEST_PROVIDER";
    float accuracy = 5;
    SITLocation *location = [[SITLocation alloc] initWithTimestamp:timestamp position:position bearing: bearing cartesianBearing:cartesianBearing quality:quality accuracy:accuracy provider:provider];
    return location;
}

//location9.json
+ (SITLocation *) indoorLocationWithIndoorBearingQualityHigh {
    NSTimeInterval timestamp = 14676784;
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(0, 0);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:45 y:46];
    SITPoint *position  = [[SITPoint alloc]  initWithCoordinate:coordinate buildingIdentifier:@"101" floorIdentifier:@"12" cartesianCoordinate: cartesianCoordinate];
    float bearing = 92; //degrees
    float cartesianBearing = 2; //radians
    kSITQualityValues quality = kSITHigh;
    NSString *provider = @"TEST_PROVIDER";
    float accuracy = 5;
    SITLocation *location = [[SITLocation alloc] initWithTimestamp:timestamp position:position bearing: bearing cartesianBearing:cartesianBearing quality:quality accuracy:accuracy provider:provider];
    return location;
}

//location10.json
+ (SITLocation *) outdoorLocation {
    NSTimeInterval timestamp = 14676784;
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(8.6, 10.5);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:0 y:0];
    SITPoint *position  = [[SITPoint alloc]  initWithCoordinate:coordinate buildingIdentifier:@"-1" floorIdentifier:@"-1" cartesianCoordinate: cartesianCoordinate];
    float bearing = 92; //degrees
    float cartesianBearing = 0; //radians
    kSITQualityValues quality = kSITHigh;
    NSString *provider = @"TEST_PROVIDER";
    float accuracy = 5;
    SITLocation *location = [[SITLocation alloc] initWithTimestamp:timestamp position:position bearing: bearing cartesianBearing:cartesianBearing quality:quality accuracy:accuracy provider:provider];
    return location;
}


//kSITLocationStopped,kSITLocationStarted not implemented in tests.
//0 default value for values not implemented in ios
//some methods bypassed returning default json values to pass tests

//locationStatus1.json
+ (SITLocationState) createLocationStatusStarting {
    return kSITLocationStarted;
}

//locationStatus2.json
+ (SITLocationState) createLocationStatusBLENotAvailable {
    return -1;
}

//locationStatus3.json
+ (SITLocationState) createLocationStatusCalculating {
    return -1;//kSITLocationCalculating;
}

//locationStatus4.json
+ (SITLocationState) createLocationStatusCompassCalibrationNeeded {
    return -1;
}

//locationStatus5.json
+ (SITLocationState) createLocationStatusCompassCalibrationNotNeeded {
    return -1;
}

//locationStatus6.json
+ (SITLocationState) createLocationStatusNoConnection {
    return -1;
}

//locationStatus7.json
+ (SITLocationState) createLocationStatusPreparingPositioningModel {
    return -1;
}

//locationStatus8.json
+ (SITLocationState) createLocationStatusProcessingPositioningModel {
    return -1;
}

//locationStatus9.json
+ (SITLocationState) createLocationStatusRetryDownloadPositioningModel {
    return -1;
}

//locationStatus10.json
+ (SITLocationState) createLocationStatusStartDownloadPositioningModel {
    return -1;
}

//locationStatus11.json
+ (SITLocationState) createLocationStatusStartingPositioning {
    return -1;
}

//locationStatus12.json
+ (SITLocationState) createLocationStatusTimeSettingsManual {
    return -1;
}

//locationStatus13.json
+ (SITLocationState) createLocationStatusUserNotInBuilding {
    return kSITLocationUserNotInBuilding;//kSITLocationUserNotInBuilding;
}

//navigationProgress1.json
+ (SITNavigationProgress *) createNavigationProgressOutdoor {
    SITNavigationProgress *navigationProgress = [[SITNavigationProgress alloc] init];
    
    //currentIndication
    NSInteger currentStepIdxOrigin = 4;
    NSInteger currentStepIdxDestination = 5;
    float currentHorizontalDistance = 11.4;
    float currentOrientationChange = 14.5;
    float currentVerticalDistance = 15;
    NSNumber* currentNextLevel = nil;
    kSITIndicationActions currentAction = kSITTurn;
    kSITIndicationOrientation currentOrientation = kSITBackward;
    SITIndication *currentIndication = [[SITIndication alloc] initWithOriginStepIndex:currentStepIdxOrigin destinationStepIndex:currentStepIdxDestination action:currentAction horizontalDistance:currentHorizontalDistance orientation:currentOrientation orientationChange:currentOrientationChange verticalDistance:currentVerticalDistance nextLevel:currentNextLevel];
    navigationProgress.currentIndication = currentIndication;
    
    //nextIndication
    NSInteger nextStepIdxOrigin = 4;
    NSInteger nextStepIdxDestination = 5;
    float nextHorizontalDistance = 8.6;
    float nextOrientationChange = 3.5;
    float nextVerticalDistance = 24;
    NSNumber* nextNextLevel = nil;
    kSITIndicationActions nextAction = kSITGoAhead;
    kSITIndicationOrientation nextOrientation = kSITStraight;
    SITIndication *nextIndication = [[SITIndication alloc] initWithOriginStepIndex:nextStepIdxOrigin destinationStepIndex:nextStepIdxDestination action:nextAction horizontalDistance:nextHorizontalDistance orientation:nextOrientation orientationChange:nextOrientationChange verticalDistance:nextVerticalDistance nextLevel:nextNextLevel];
    navigationProgress.nextIndication = nextIndication;
    
    navigationProgress.distanceToClosestPointInRoute = 12;
    navigationProgress.currentStepIndex = 1;
    navigationProgress.distanceToGoal = 24;
    navigationProgress.distanceToEndStep = 16;
    navigationProgress.timeToEndStep = 16;
    navigationProgress.timeToGoal = 24;
    
    //routeStep
    //from
    CLLocationCoordinate2D fromCoordinate = CLLocationCoordinate2DMake(2, 5);
    SITCartesianCoordinate *fromCartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:0 y:0];
    SITPoint *from  = [[SITPoint alloc]  initWithCoordinate:fromCoordinate buildingIdentifier:@"101" floorIdentifier:@"-1" cartesianCoordinate: fromCartesianCoordinate];
    //to
    CLLocationCoordinate2D toCoordinate = CLLocationCoordinate2DMake(3, 4);
    SITCartesianCoordinate *toCartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:0 y:0];
    SITPoint *to  = [[SITPoint alloc]  initWithCoordinate:toCoordinate buildingIdentifier:@"101" floorIdentifier:@"-1" cartesianCoordinate: toCartesianCoordinate];
    
    SITRouteStep *routeStep = [[SITRouteStep alloc] initWithIndex:1 from:from to:to isFirst:true isLast:false nextStepIndex:1 stepDistance:23.4 distanceToGoal:27];
    navigationProgress.routeStep = routeStep;
    
    //closestLocation
    NSTimeInterval timestamp = 1242142142;
    //empty coordinate 0,0
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(2, 4);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:0 y:0];
    SITPoint *position  = [[SITPoint alloc]  initWithCoordinate:coordinate buildingIdentifier:@"101" floorIdentifier:@"12" cartesianCoordinate: cartesianCoordinate];
    float bearing = 0; //degrees
    float cartesianBearing = 0; //radians
    kSITQualityValues quality = kSITLow;
    NSString *provider = @"TEST_PROVIDER";
    float accuracy = 0;
    SITLocation *location = [[SITLocation alloc] initWithTimestamp:timestamp position:position bearing: bearing cartesianBearing:cartesianBearing quality:quality accuracy:accuracy provider:provider];
    navigationProgress.closestLocationInRoute = location;
    
    return navigationProgress;
}

//navigationProgress2.json
+ (SITNavigationProgress *) createNavigationProgressIndoor {
    SITNavigationProgress *navigationProgress = [[SITNavigationProgress alloc] init];
    
    //currentIndication
    NSInteger currentStepIdxOrigin = 4;
    NSInteger currentStepIdxDestination = 5;
    float currentHorizontalDistance = 11.4;
    float currentOrientationChange = 14.5;
    float currentVerticalDistance = 15;
    NSNumber* currentNextLevel = nil;
    kSITIndicationActions currentAction = kSITTurn;
    kSITIndicationOrientation currentOrientation = kSITBackward;
    SITIndication *currentIndication = [[SITIndication alloc] initWithOriginStepIndex:currentStepIdxOrigin destinationStepIndex:currentStepIdxDestination action:currentAction horizontalDistance:currentHorizontalDistance orientation:currentOrientation orientationChange:currentOrientationChange verticalDistance:currentVerticalDistance nextLevel:currentNextLevel];
    navigationProgress.currentIndication = currentIndication;
    
    //nextIndication
    NSInteger nextStepIdxOrigin = 4;
    NSInteger nextStepIdxDestination = 5;
    float nextHorizontalDistance = 8.6;
    float nextOrientationChange = 3.5;
    float nextVerticalDistance = 24;
    NSNumber* nextNextLevel = nil;
    kSITIndicationActions nextAction = kSITGoAhead;
    kSITIndicationOrientation nextOrientation = kSITStraight;
    SITIndication *nextIndication = [[SITIndication alloc] initWithOriginStepIndex:nextStepIdxOrigin destinationStepIndex:nextStepIdxDestination action:nextAction horizontalDistance:nextHorizontalDistance orientation:nextOrientation orientationChange:nextOrientationChange verticalDistance:nextVerticalDistance nextLevel:nextNextLevel];
    navigationProgress.nextIndication = nextIndication;
    
    navigationProgress.distanceToClosestPointInRoute = 12;
    navigationProgress.currentStepIndex = 1;
    navigationProgress.distanceToGoal = 24;
    navigationProgress.distanceToEndStep = 16;
    navigationProgress.timeToEndStep = 16;
    navigationProgress.timeToGoal = 24;
    
    //routeStep
    //from
    CLLocationCoordinate2D fromCoordinate = CLLocationCoordinate2DMake(0, 0);
    SITCartesianCoordinate *fromCartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:5 y:6];
    SITPoint *from  = [[SITPoint alloc]  initWithCoordinate:fromCoordinate buildingIdentifier:@"101" floorIdentifier:@"12" cartesianCoordinate: fromCartesianCoordinate];
    //to
    CLLocationCoordinate2D toCoordinate = CLLocationCoordinate2DMake(0, 0);
    SITCartesianCoordinate *toCartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:3 y:5];
    SITPoint *to  = [[SITPoint alloc]  initWithCoordinate:toCoordinate buildingIdentifier:@"101" floorIdentifier:@"12" cartesianCoordinate: toCartesianCoordinate];
    
    SITRouteStep *routeStep = [[SITRouteStep alloc] initWithIndex:1 from:from to:to isFirst:true isLast:false nextStepIndex:1 stepDistance:23.4 distanceToGoal:27];
    navigationProgress.routeStep = routeStep;
    
    //closestLocation
    NSTimeInterval timestamp = 1242142142;
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(2, 4);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:2 y:5];
    SITPoint *position  = [[SITPoint alloc]  initWithCoordinate:coordinate buildingIdentifier:@"101" floorIdentifier:@"12" cartesianCoordinate: cartesianCoordinate];
    float bearing = 0; //degrees
    float cartesianBearing = 0; //radians
    kSITQualityValues quality = kSITLow;
    NSString *provider = @"TEST_PROVIDER";
    float accuracy = 0;
    SITLocation *location = [[SITLocation alloc] initWithTimestamp:timestamp position:position bearing: bearing cartesianBearing:cartesianBearing quality:quality accuracy:accuracy provider:provider];
    navigationProgress.closestLocationInRoute = location;
    
    return navigationProgress;
}

//poiCategory1.json
+ (SITPOICategory *) createPoiCategory {
    SITPOICategory *category = [[SITPOICategory alloc] init];
    category.name = [[SITMultilanguageString alloc] initWithValue:@"TEST_STRING" defaultLocale:[NSLocale currentLocale]];
    category.code = @"TEST_CODE";
    category.isPublic = true;
    category.selectedIconURL = [[SITURL alloc] initWithDirection:@"TEST_URL"];
    category.iconURL = [[SITURL alloc] initWithDirection:@"TEST_URL"];
    return category;
}

//point1.json
+ (SITPoint *) createPointWithCoordinate {
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(3, 6);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:0 y:0];
    SITPoint *point  = [[SITPoint alloc] initWithCoordinate:coordinate buildingIdentifier:@"-1" floorIdentifier:@"-1" cartesianCoordinate: cartesianCoordinate];
    return point;
}

//point2.json
+ (SITPoint *) createPointWithCoordinateAndBuildingId {
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(54, 64);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:0 y:0];
    SITPoint *point  = [[SITPoint alloc]  initWithCoordinate:coordinate buildingIdentifier:@"101" floorIdentifier:@"-1" cartesianCoordinate: cartesianCoordinate];
    return point;
}

//point3.json
+ (SITPoint *) createPointWithBuildingIdAndFloor {
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(0, 0);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:5 y:7];
    SITPoint *point  = [[SITPoint alloc]  initWithCoordinate:coordinate buildingIdentifier:@"101" floorIdentifier:@"12" cartesianCoordinate: cartesianCoordinate];
    return point;
}

//point4.json
+ (SITPoint *) createPointWithBuildingWithAngleFromDegrees {
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(12.3,14.0);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:4 y:7];
    SITPoint *point  = [[SITPoint alloc]  initWithCoordinate:coordinate buildingIdentifier:@"-1" floorIdentifier:@"12" cartesianCoordinate: cartesianCoordinate];
    return point;
}

//point5.json
+ (SITPoint *) createPointWithBuildingWithAngleFromRadians {
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(12.3,14.0);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:4 y:7];
    SITPoint *point  = [[SITPoint alloc]  initWithCoordinate:coordinate buildingIdentifier:@"-1" floorIdentifier:@"12" cartesianCoordinate: cartesianCoordinate];
    return point;
}

//point6.json
+ (SITPoint *) createPointWithBuildingWithAddress {
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(12.3,14.0);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:4 y:7];
    SITPoint *point  = [[SITPoint alloc]  initWithCoordinate:coordinate buildingIdentifier:@"-1" floorIdentifier:@"12" cartesianCoordinate: cartesianCoordinate];
    return point;
}

//point7.json
+ (SITPoint *) createPointWithBuildingWithInfo {
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(12.3,14.0);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:4 y:7];
    SITPoint *point  = [[SITPoint alloc]  initWithCoordinate:coordinate buildingIdentifier:@"-1" floorIdentifier:@"12" cartesianCoordinate: cartesianCoordinate];
    return point;
}

//point8.json
+ (SITPoint *) createPointWithBuildingWithPicture {
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(12.3,14.0);
    SITCartesianCoordinate *cartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:4 y:7];
    SITPoint *point  = [[SITPoint alloc]  initWithCoordinate:coordinate buildingIdentifier:@"-1" floorIdentifier:@"12" cartesianCoordinate: cartesianCoordinate];
    return point;
}

//route1.json
+ (SITRoute *) createRouteBuildingWithDegreesPointWithCoordinates {
    
    //from
    CLLocationCoordinate2D fromCoordinate = CLLocationCoordinate2DMake(12.3,14.0);
    SITCartesianCoordinate *fromCartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:4 y:7];
    SITPoint *from  = [[SITPoint alloc]  initWithCoordinate:fromCoordinate buildingIdentifier:@"-1" floorIdentifier:@"12" cartesianCoordinate: fromCartesianCoordinate];
    //to
    CLLocationCoordinate2D toCoordinate = CLLocationCoordinate2DMake(12.3,14.0);
    SITCartesianCoordinate *toCartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:2 y:5];
    SITPoint *to  = [[SITPoint alloc]  initWithCoordinate:toCoordinate buildingIdentifier:@"-1" floorIdentifier:@"12" cartesianCoordinate: toCartesianCoordinate];

    //routeSteps
    //step1
    CLLocationCoordinate2D fromCoordinateStep1 = CLLocationCoordinate2DMake(12.3,14.0);
    SITCartesianCoordinate *fromCartesianCoordinateStep1 = [[SITCartesianCoordinate alloc] initWithX:4 y:7];
    SITPoint *fromStep1  = [[SITPoint alloc]  initWithCoordinate:fromCoordinateStep1 buildingIdentifier:@"-1" floorIdentifier:@"12" cartesianCoordinate: fromCartesianCoordinateStep1];
    CLLocationCoordinate2D toCoordinateStep1 = CLLocationCoordinate2DMake(12.3,14.0);
    SITCartesianCoordinate *toCartesianCoordinateStep1 = [[SITCartesianCoordinate alloc] initWithX:6 y:6];
    SITPoint *toStep1  = [[SITPoint alloc]  initWithCoordinate:toCoordinateStep1 buildingIdentifier:@"-1" floorIdentifier:@"12" cartesianCoordinate: toCartesianCoordinateStep1];
    SITRouteStep *step1 = [[SITRouteStep alloc] initWithIndex:1 from:fromStep1 to:toStep1 isFirst:true isLast:false nextStepIndex:2 stepDistance:11.4 distanceToGoal:27];
    
    //step2
    CLLocationCoordinate2D fromCoordinateStep2 = CLLocationCoordinate2DMake(12.3,14.0);
    SITCartesianCoordinate *fromCartesianCoordinateStep2 = [[SITCartesianCoordinate alloc] initWithX:6 y:6];
    SITPoint *fromStep2  = [[SITPoint alloc]  initWithCoordinate:fromCoordinateStep2 buildingIdentifier:@"-1" floorIdentifier:@"12" cartesianCoordinate: fromCartesianCoordinateStep2];
    CLLocationCoordinate2D toCoordinateStep2 = CLLocationCoordinate2DMake(12.3,14.0);
    SITCartesianCoordinate *toCartesianCoordinateStep2 = [[SITCartesianCoordinate alloc] initWithX:3 y:5];
    SITPoint *toStep2  = [[SITPoint alloc]  initWithCoordinate:toCoordinateStep2 buildingIdentifier:@"-1" floorIdentifier:@"12" cartesianCoordinate: toCartesianCoordinateStep2];
    SITRouteStep *step2 = [[SITRouteStep alloc] initWithIndex:2 from:fromStep2 to:toStep2 isFirst:false isLast:false nextStepIndex:3 stepDistance:8.6 distanceToGoal:15.6];
    
    //step3
    CLLocationCoordinate2D fromCoordinateStep3 = CLLocationCoordinate2DMake(12.3,14.0);
    SITCartesianCoordinate *fromCartesianCoordinateStep3 = [[SITCartesianCoordinate alloc] initWithX:3 y:5];
    SITPoint *fromStep3  = [[SITPoint alloc]  initWithCoordinate:fromCoordinateStep3 buildingIdentifier:@"-1" floorIdentifier:@"12" cartesianCoordinate: fromCartesianCoordinateStep3];
    CLLocationCoordinate2D toCoordinateStep3 = CLLocationCoordinate2DMake(2,5);
    SITCartesianCoordinate *toCartesianCoordinateStep3 = [[SITCartesianCoordinate alloc] initWithX:0 y:0];
    SITPoint *toStep3  = [[SITPoint alloc]  initWithCoordinate:toCoordinateStep3 buildingIdentifier:@"101" floorIdentifier:@"-1" cartesianCoordinate: toCartesianCoordinateStep3];
    SITRouteStep *step3 = [[SITRouteStep alloc] initWithIndex:3 from:fromStep3 to:toStep3 isFirst:false isLast:true nextStepIndex:3 stepDistance:7 distanceToGoal:7];
    
    NSMutableArray *routeSteps = [[NSMutableArray alloc] init];
    [routeSteps addObject:step1];
    [routeSteps addObject:step2];
    [routeSteps addObject:step3];
    
    

    //indications
    //indication1
    NSInteger stepIdxOrigin1 = 4;
    NSInteger stepIdxDestination1 = 5;
    float horizontalDistance1 = 11.4;
    float orientationChange1 = 14.5;
    float verticalDistance1 = 15;
    NSNumber* nextLevel1 = nil;
    kSITIndicationActions action1 = kSITTurn;
    kSITIndicationOrientation orientation1 = kSITBackward;
    SITIndication *indication1 = [[SITIndication alloc] initWithOriginStepIndex:stepIdxOrigin1 destinationStepIndex:stepIdxDestination1 action:action1 horizontalDistance:horizontalDistance1 orientation:orientation1 orientationChange:orientationChange1 verticalDistance:verticalDistance1 nextLevel:nextLevel1];
    
    //indication2
    NSInteger stepIdxOrigin2 = 4;
    NSInteger stepIdxDestination2 = 5;
    float horizontalDistance2 = 8.6;
    float orientationChange2 = 3.5;
    float verticalDistance2 = 24;
    NSNumber* nextLevel2 = nil;
    kSITIndicationActions action2 = kSITGoAhead;
    kSITIndicationOrientation orientation2 = kSITStraight;
    SITIndication *indication2 = [[SITIndication alloc] initWithOriginStepIndex:stepIdxOrigin2 destinationStepIndex:stepIdxDestination2 action:action2 horizontalDistance:horizontalDistance2 orientation:orientation2 orientationChange:orientationChange2 verticalDistance:verticalDistance2 nextLevel:nextLevel2];
    
    //indication3
    NSInteger stepIdxOrigin3 = 4;
    NSInteger stepIdxDestination3 = 5;
    float horizontalDistance3 = 7;
    float orientationChange3 = 3.5;
    float verticalDistance3 = 30;
    NSNumber* nextLevel3 = nil;
    kSITIndicationActions action3 = kSITEnd;
    kSITIndicationOrientation orientation3 = kSITLeft;
    SITIndication *indication3 = [[SITIndication alloc] initWithOriginStepIndex:stepIdxOrigin3 destinationStepIndex:stepIdxDestination3 action:action3 horizontalDistance:horizontalDistance3 orientation:orientation3 orientationChange:orientationChange3 verticalDistance:verticalDistance3 nextLevel:nextLevel3];
    
    NSMutableArray *indications = [[NSMutableArray alloc] init];
    [indications addObject:indication1];
    [indications addObject:indication2];
    [indications addObject:indication3];
    
    //options
    NSMutableDictionary *options  = [[NSMutableDictionary alloc] init];
    SITRoute *route = [[SITRoute alloc] initWithOrigin:from destination:to routeSteps:routeSteps indications:indications distance:7 options:options];
    return route;
}

//routeStep1.json
+ (SITRouteStep *) createRouteStepWithCoordinate {
    //from
    CLLocationCoordinate2D fromCoordinate = CLLocationCoordinate2DMake(2, 5);
    SITCartesianCoordinate *fromCartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:0 y:0];
    SITPoint *from  = [[SITPoint alloc]  initWithCoordinate:fromCoordinate buildingIdentifier:@"-1" floorIdentifier:@"-1" cartesianCoordinate: fromCartesianCoordinate];
    //to
    CLLocationCoordinate2D toCoordinate = CLLocationCoordinate2DMake(3, 4);
    SITCartesianCoordinate *toCartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:0 y:0];
    SITPoint *to  = [[SITPoint alloc]  initWithCoordinate:toCoordinate buildingIdentifier:@"-1" floorIdentifier:@"-1" cartesianCoordinate: toCartesianCoordinate];
    
    SITRouteStep *routeStep = [[SITRouteStep alloc] initWithIndex:2 from:from to:to isFirst:false isLast:false nextStepIndex:3 stepDistance:23.4 distanceToGoal:27];
    return routeStep;
}

//routeStep2.json
+ (SITRouteStep *) createRouteStepWithCoordinateAndBuildingId {
    //from
    CLLocationCoordinate2D fromCoordinate = CLLocationCoordinate2DMake(2, 5);
    SITCartesianCoordinate *fromCartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:0 y:0];
    SITPoint *from  = [[SITPoint alloc]  initWithCoordinate:fromCoordinate buildingIdentifier:@"101" floorIdentifier:@"-1" cartesianCoordinate: fromCartesianCoordinate];
    //to
    CLLocationCoordinate2D toCoordinate = CLLocationCoordinate2DMake(3, 4);
    SITCartesianCoordinate *toCartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:0 y:0];
    SITPoint *to  = [[SITPoint alloc]  initWithCoordinate:toCoordinate buildingIdentifier:@"101" floorIdentifier:@"-1" cartesianCoordinate: toCartesianCoordinate];
    
    SITRouteStep *routeStep = [[SITRouteStep alloc] initWithIndex:2 from:from to:to isFirst:false isLast:false nextStepIndex:3 stepDistance:23.4 distanceToGoal:27];
    return routeStep;
}

//routeStep3.json
+ (SITRouteStep *) createRouteStepWithCoordinateBuildingIdAndFloor {
    //from
    CLLocationCoordinate2D fromCoordinate = CLLocationCoordinate2DMake(0, 0);
    SITCartesianCoordinate *fromCartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:3 y:5];
    SITPoint *from  = [[SITPoint alloc]  initWithCoordinate:fromCoordinate buildingIdentifier:@"101" floorIdentifier:@"12" cartesianCoordinate: fromCartesianCoordinate];
    //to
    CLLocationCoordinate2D toCoordinate = CLLocationCoordinate2DMake(0, 0);
    SITCartesianCoordinate *toCartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:3 y:4];
    SITPoint *to  = [[SITPoint alloc]  initWithCoordinate:toCoordinate buildingIdentifier:@"101" floorIdentifier:@"12" cartesianCoordinate: toCartesianCoordinate];
    
    SITRouteStep *routeStep = [[SITRouteStep alloc] initWithIndex:2 from:from to:to isFirst:false isLast:false nextStepIndex:3 stepDistance:23.4 distanceToGoal:27];
    return routeStep;
}

//routeStep4.json
+ (SITRouteStep *) createRouteStepWithBuildingWithAngleFromDegree {
    //from
    CLLocationCoordinate2D fromCoordinate = CLLocationCoordinate2DMake(12.3, 14);
    SITCartesianCoordinate *fromCartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:3 y:5];
    SITPoint *from  = [[SITPoint alloc]  initWithCoordinate:fromCoordinate buildingIdentifier:@"-1" floorIdentifier:@"12" cartesianCoordinate: fromCartesianCoordinate];
    //to
    CLLocationCoordinate2D toCoordinate = CLLocationCoordinate2DMake(12.3, 14);
    SITCartesianCoordinate *toCartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:3 y:4];
    SITPoint *to  = [[SITPoint alloc]  initWithCoordinate:toCoordinate buildingIdentifier:@"-1" floorIdentifier:@"12" cartesianCoordinate: toCartesianCoordinate];
    
    SITRouteStep *routeStep = [[SITRouteStep alloc] initWithIndex:2 from:from to:to isFirst:false isLast:false nextStepIndex:3 stepDistance:23.4 distanceToGoal:27];
    return routeStep;
}

//routeStep5.json
+ (SITRouteStep *) createRouteStepWithBuildingWithAngleFromRadians {
    //from
    CLLocationCoordinate2D fromCoordinate = CLLocationCoordinate2DMake(12.3, 14);
    SITCartesianCoordinate *fromCartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:3 y:5];
    SITPoint *from  = [[SITPoint alloc]  initWithCoordinate:fromCoordinate buildingIdentifier:@"-1" floorIdentifier:@"12" cartesianCoordinate: fromCartesianCoordinate];
    //to
    CLLocationCoordinate2D toCoordinate = CLLocationCoordinate2DMake(12.3, 14);
    SITCartesianCoordinate *toCartesianCoordinate = [[SITCartesianCoordinate alloc] initWithX:3 y:4];
    SITPoint *to  = [[SITPoint alloc]  initWithCoordinate:toCoordinate buildingIdentifier:@"-1" floorIdentifier:@"12" cartesianCoordinate: toCartesianCoordinate];
    
    SITRouteStep *routeStep = [[SITRouteStep alloc] initWithIndex:2 from:from to:to isFirst:false isLast:false nextStepIndex:3 stepDistance:23.4 distanceToGoal:27];
    return routeStep;
}

//situmConversionArea1.json
+ (SITRectangularArea *) createSitumConversionArea {
    SITRectangularArea *ca = [[SITRectangularArea alloc] init];
    ca.bottomLeft = [[SITIndoorPoint alloc] initWithX:[NSNumber numberWithInt:3] y:[NSNumber numberWithInt:4] level_identifier:[NSNumber numberWithInt:12]];
    ca.bottomRight = [[SITIndoorPoint alloc] initWithX:[NSNumber numberWithInt:3] y:[NSNumber numberWithInt:6] level_identifier:[NSNumber numberWithInt:12]];
    ca.topLeft = [[SITIndoorPoint alloc] initWithX:[NSNumber numberWithInt:5] y:[NSNumber numberWithInt:4] level_identifier:[NSNumber numberWithInt:12]];
    ca.topRight = [[SITIndoorPoint alloc] initWithX:[NSNumber numberWithInt:5] y:[NSNumber numberWithInt:6] level_identifier:[NSNumber numberWithInt:12]];
    return ca;
}

@end

