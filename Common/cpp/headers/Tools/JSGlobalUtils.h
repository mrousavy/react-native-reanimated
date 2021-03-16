//
//  JSConsole.h
//  RNReanimated
//
//  Created by Marc Rousavy on 16.03.21.
//  Copyright © 2021 Facebook. All rights reserved.
//

#pragma once

#include <jsi/jsi.h>

namespace reanimated {

using namespace facebook;

/**
 Binds the `nativeLoggingHook` (`console`) property to the runtime's global object.
 */
void bindConsole(jsi::Runtime& runtime);

/**
 Binds the `nativePerformance` property to the runtime's global object.
 */
void bindPerformance(jsi::Runtime& runtime);

}
