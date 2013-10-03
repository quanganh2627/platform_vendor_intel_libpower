/*
 * Copyright (C) 2013 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#ifndef ANDROID_INPUT_DEVICE_POWER_MONITOR_INFO_H
#define ANDROID_INPUT_DEVICE_POWER_MONITOR_INFO_H

class InputDevicePowerMonitorInfo {
private:
    InputDevicePowerMonitorInfo() {};
public:
    virtual ~InputDevicePowerMonitorInfo(){};
    static const unsigned int numDev = 1;
    static const char* deviceList[numDev];
};
#endif //ANDROID_INPUT_DEVICE_POWER_MONITOR_INFO
