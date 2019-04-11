//
//  EKEventModel.h
//  product1
//
//  Created by harrisdeng on 2019/4/10.
//  Copyright © 2019 邓昊. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EKEventModel : NSObject

@property (nonatomic, strong) NSString *title;                          //标题
@property (nonatomic, strong) NSString *location;                       //地点
@property (nonatomic, strong) NSDate *startDate;                        //开始时间
@property (nonatomic, strong) NSDate *endDate;                          //结束时间
@property (nonatomic, assign) BOOL allDay;                              //是否全天
@property (nonatomic, strong) NSString *notes;                          //备注
@property (nonatomic, strong) NSString *alarmStr;                       //提醒

@end
