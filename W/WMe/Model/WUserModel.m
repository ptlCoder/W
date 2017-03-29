//
//  WUserModel.m
//  W
//
//  Created by harry.qian on 17/3/28.
//  Copyright © 2017年 harry.qian. All rights reserved.
//

#import "WUserModel.h"

@interface WUserModel()

@property (nonatomic, strong) NSUserDefaults   *defaults;

@end

@implementation WUserModel

- (void)loadData {
    self.isLogin = [self.defaults objectForKey:@"isLogin"];
    self.name = [self.defaults objectForKey:@"userName"];
    self.sex = [self.defaults objectForKey:@"userSex"];
    self.weight = [self.defaults objectForKey:@"userWeight"];
    self.height = [self.defaults objectForKey:@"userHeight"];
    self.tag = [self.defaults objectForKey:@"userTag"];
}

- (void)saveData {
    [self.defaults setObject:self.name forKey:@"userName"];
    [self.defaults setObject:self.sex forKey:@"userSex"];
    [self.defaults setObject:self.weight forKey:@"userWeight"];
    [self.defaults setObject:self.height forKey:@"userHeight"];
    [self.defaults setObject:self.tag forKey:@"userTag"];
    [self.defaults synchronize];
}

- (void)saveLoginStatus {
    [self.defaults setObject:self.isLogin forKey:@"isLogin"];
    [self.defaults synchronize];
}

- (NSUserDefaults *)defaults {
    if (!_defaults) {
        _defaults = [NSUserDefaults standardUserDefaults];
    }
    return _defaults;
}

- (NSString *)name {
    if (!_name) {
        _name = @"W.w.w";
    }
    return _name;
}

- (NSString *)sex {
    if (!_sex) {
        _sex = @"nv";
    }
    return _sex;
}

- (NSString *)weight {
    if (!_weight) {
        _weight = @"55.0kg";
    }
    return _weight;
}

- (NSString *)height {
    if (!_height) {
        _height = @"168cm";
    }
    return _height;
}

- (NSString *)tag {
    if (!_tag) {
        _tag = @"10000";
    }
    return _tag;
}

- (NSString *)isLogin {
    if (!_isLogin) {
        _isLogin = @"Yes";
    }
    return _isLogin;
}

@end
