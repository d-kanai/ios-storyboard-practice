//
//  CucumberishLoader.m
//  ios-storyboard-practiceUITests
//
//  Created by daiki kanai on 2022/05/17.
//

#import <Foundation/Foundation.h>
#import "ios_storyboard_practiceUITests-Swift.h"


void CucumberishInit(void);

__attribute__((constructor))
void CucumberishInit()
{
    [CucumberishInitializer setupCucumberish];
}
