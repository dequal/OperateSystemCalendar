//
//  ViewController.m
//  OperateSystemCalendar
//
//  Created by harrisdeng on 2019/4/10.
//  Copyright © 2019 邓昊. All rights reserved.
//

#import "ViewController.h"
#import "EKEventTool.h"


@interface ViewController ()

@property (nonatomic, strong) UIButton *addBtn;//增加日历事件
@property (nonatomic, strong) UIButton *deleteBtn;//删除日历事件
@property (nonatomic, strong) UIButton *modifyBtn;//修改日历事件
@property (nonatomic, strong) UIButton *checkBtn;//查看日历事件

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.addBtn];
    [self.view addSubview:self.deleteBtn];
    [self.view addSubview:self.modifyBtn];
    [self.view addSubview:self.checkBtn];
}

#pragma mark - addAction
- (void)addAction {
    EKEventModel *eventModel = [[EKEventModel alloc] init];
    eventModel.title = @"OperateSystemCalendar";
    eventModel.location = @"NewYork";
    eventModel.startDate = [[NSDate new] dateByAddingTimeInterval:3600];
    eventModel.endDate = [[NSDate new] dateByAddingTimeInterval:3600*2];
    eventModel.allDay = NO;
    eventModel.notes = @"OperateSystemCalendar://xxxxx😄";
    eventModel.alarmStr = @"30分钟前";
    [[EKEventTool sharedEventTool] createEventWithEventModel:eventModel];
}
#pragma mark - deleAction
- (void)deleAction {
    EKEventModel *eventModel = [[EKEventModel alloc] init];
    eventModel.title = @"OperateSystemCalendar";
    eventModel.location = @"NewYork";
    eventModel.startDate = [[NSDate new] dateByAddingTimeInterval:3600];
    eventModel.endDate = [[NSDate new] dateByAddingTimeInterval:3600*2];
    eventModel.allDay = NO;
    eventModel.notes = @"OperateSystemCalendar://xxxxx😄";
    eventModel.alarmStr = @"30分钟前";
    [[EKEventTool sharedEventTool] deleteAllCreatedEvent];
}
#pragma mark - modifyAction
- (void)modifyAction {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"taobao://youtube.com//google.com"] options:@{} completionHandler:^(BOOL success) {
        
    }];
}
#pragma mark - checkAction
- (void)checkAction {
    [[EKEventTool sharedEventTool] getSystemCalendarEvents];
}









#pragma mark - GET
- (UIButton *)addBtn {
    if (!_addBtn) {
        _addBtn = [[UIButton alloc] initWithFrame:CGRectMake(30, 40, 200, 50)];
        [_addBtn setTitle:@"增加日历事件" forState:UIControlStateNormal];
        _addBtn.backgroundColor = [UIColor lightGrayColor];
        [_addBtn addTarget:self action:@selector(addAction) forControlEvents:UIControlEventTouchUpInside];
        //        [self.view addSubview:_addBtn];
    }
    return _addBtn;
}
- (UIButton *)deleteBtn {
    if (!_deleteBtn) {
        _deleteBtn = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, 200, 50)];
        [_deleteBtn setTitle:@"删除日历事件" forState:UIControlStateNormal];
        _deleteBtn.backgroundColor = [UIColor lightGrayColor];
        [_deleteBtn addTarget:self action:@selector(deleAction) forControlEvents:UIControlEventTouchUpInside];
        //        [self.view addSubview:_deleteBtn];
    }
    return _deleteBtn;
}
- (UIButton *)modifyBtn {
    if (!_modifyBtn) {
        _modifyBtn = [[UIButton alloc] initWithFrame:CGRectMake(30, 160, 200, 50)];
        [_modifyBtn setTitle:@"修改日历事件" forState:UIControlStateNormal];
        _modifyBtn.backgroundColor = [UIColor lightGrayColor];
        [_modifyBtn addTarget:self action:@selector(modifyAction) forControlEvents:UIControlEventTouchUpInside];
        //        [self.view addSubview:_modifyBtn];
    }
    return _modifyBtn;
}
- (UIButton *)checkBtn {
    if (!_checkBtn) {
        _checkBtn = [[UIButton alloc] initWithFrame:CGRectMake(30, 220, 200, 50)];
        [_checkBtn setTitle:@"查看日历事件" forState:UIControlStateNormal];
        _checkBtn.backgroundColor = [UIColor lightGrayColor];
        [_checkBtn addTarget:self action:@selector(checkAction) forControlEvents:UIControlEventTouchUpInside];
        //        [self.view addSubview:_checkBtn];
    }
    return _checkBtn;
}


@end
