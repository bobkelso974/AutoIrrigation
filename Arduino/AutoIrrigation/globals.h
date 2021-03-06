// globals.h

#ifndef _GLOBALS_h
#define _GLOBALS_h

#if defined(ARDUINO) && ARDUINO >= 100
#include "arduino.h"
#else
#include "WProgram.h"
#endif

const int LED_PIN = LED_BUILTIN;

#define MAX_DEEP_SLEEP 3600000000   // micro seconds
//#define MAX_KEPT_LOGLINES 5
//#define MAX_LINE_LENGTH 100
#define MAX_WAKEUPTIMES 4
#define WAKEUP_IDX_SIMPLEDELAY 3  // Used to deep sleep for a number of seconds

struct PersistentDataStruct {
	char deviceID[20];
	char macAddress[28];
	char deviceLocation[28];
	char wifiSSID[20];
	char wifiPwd[16];
	char runMode[16];
	float vccAdjustment;
	float vccMinLimit;
	char wakeupTime[MAX_WAKEUPTIMES][7];  // 4 sets of 6 chars. Format: HHMMSS
	char pauseWakeTime[7];  // Format: HHMMSS
	int totalSecondsToSleep;
	int currentSleepCycle; // counts which sleep cycle we are at right now.
	int secondsToSleep;
	int maxSleepCycles;  
	float lastVccSummarizedReading;
	int valveOpenDuration;
	int valveSoakTime;
	int humLimit;
	int mainLoopDelay;
	int debugLevel;
	boolean deepSleepEnabled;
	char cloudUserName[16];
	char cloudPwd[16];

//TODO	boolean stopInstantly;   /* if the sensor thinks something is wrong, this bit is flipped, and it will never open the valve until reset*/
//TODO	time_t lastValveopenTimeStamp;
//TODO	time_t lastValveopenDuration;
//	char logLines[MAX_KEPT_LOGLINES][MAX_LINE_LENGTH];
};

enum HTTPRequestReturnType {
	notCalledYet,
	HTTPOK,
	Auth401Error,
	Forbidden403Error,
	WifiTimeoutError
};

enum BoardType {
	NodeMCU,
	WeMos,
	SparkfunThing,
	Other
};

struct DeviceConfig {
	int WifiIndex = 0;
	unsigned long LastWifiTime = 0;
	int WiFiConnectAttempts = 0;
	int wifiPairs = 1;
	String currentSSID;
	String pwd;
//	BoardType boardType = Other;            // OperationMode enumeration: NodeMCU, WeMos, SparkfunThing, Other
//	SensorMode sensorMode = None;           // OperationMode enumeration: DemoMode (no sensors, fakes data), Bmp180Mode, Dht11Mode
//	unsigned int deepSleepSeconds = 0;      // Number of seconds for the ESP8266 chip to deepsleep for.  GPIO16 needs to be tied to RST to wake from deepSleep http://esp8266.github.io/Arduino/versions/2.0.0/doc/libraries.html
//	SensorType sensorType = SENSORTYPE;
};

enum UploadType {
	UploadTelemetry,
	UploadStateAndSettings,
	GetSettings,
	UploadLog
};

const String RUNMODE_SOIL = "soil";
const String RUNMODE_WATER = "water";
const String RUNMODE_GAS = "gas";
const String RUNMODE_SENSORTEST = "sensor";
const String RUNMODE_BATTERYTEST = "batt";
const String RUNMODE_HARDWARETEST = "testhw";

/*
Google Cloud Names

Quickstart path: https://console.cloud.google.com/home/dashboard?walkthrough_tutorial_id=iot_core_quickstart&project=autoirrigation

Project: AutoIrrigation
Topic: irrigation_topic
Device registry: my-registry (in region "europe-west1")
IOT Device: irrigation-device

*/

#endif
