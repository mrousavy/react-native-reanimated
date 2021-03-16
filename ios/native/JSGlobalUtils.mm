//
//  JSConsole.m
//  RNReanimated
//
//  Created by Marc Rousavy on 16.03.21.
//  Copyright © 2021 Facebook. All rights reserved.
//

#import "JSGlobalUtils.h"
#import <Foundation/Foundation.h>
#import <React/RCTLog.h>
#import <React-jsiexecutor/jsireact/JSIExecutor.h>

namespace reanimated {
  
using namespace facebook::react;
  
void bindConsole(jsi::Runtime& runtime) {
  Logger logger = [](const std::string &message, unsigned int logLevel) {
    _RCTLogJavaScriptInternal(static_cast<RCTLogLevel>(logLevel), [NSString stringWithUTF8String:message.c_str()]);
  };
  bindNativeLogger(runtime, logger);
}

void bindPerformance(jsi::Runtime& runtime) {
  PerformanceNow iosPerformanceNowBinder = []() {
    // CACurrentMediaTime() returns the current absolute time, in seconds
    return CACurrentMediaTime() * 1000;
  };
  bindNativePerformanceNow(runtime, iosPerformanceNowBinder);
}
  
}
