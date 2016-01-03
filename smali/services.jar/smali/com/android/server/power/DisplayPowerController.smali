.class final Lcom/android/server/power/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/power/DisplayPowerController$Callbacks;
    }
.end annotation


# static fields
.field private static final BRIGHTENING_LIGHT_DEBOUNCE:J = 0x7d0L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final BRIGHTNESS_RAMP_RATE_FAST:I = 0x7d0

.field private static final BRIGHTNESS_RAMP_RATE_SLOW:I = 0x1f4

.field private static final DARKENING_LIGHT_DEBOUNCE:J = 0xbb8L

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static DEBUG:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final ELECTRON_BEAM_OFF_ANIMATION_DURATION_MILLIS:I = 0xc8

.field private static final ELECTRON_BEAM_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0xc8

.field private static final LONG_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x1388L

.field private static final MSG_LIGHT_SENSOR_DEBOUNCED:I = 0x3

.field private static final MSG_PRINT_LAST_LIGHT_SENSOR_EVENT:I = 0x4

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field static final POWERSAVEMODE_BRIGHTNESS_OFFSET:I = 0x14

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x32

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 3.0f

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SHORT_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x3e8L

.field private static final SYNTHETIC_LIGHT_SENSOR_RATE_MILLIS:I = 0x190

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_ELECTRON_BEAM_ON_ANIMATION:Z

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field private static final USE_TWILIGHT_ADJUSTMENT:Z


# instance fields
.field private final AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

.field private final COMMON_LUX_FILE:Ljava/lang/String;

.field private final COMMON_LUX_PATH:Ljava/lang/String;

.field private final MDNIE_AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

.field private final TAG_DAB:Ljava/lang/String;

.field private final TAG_SENSOR:Ljava/lang/String;

.field private final TCON_BRIGHTNESS_MODE_PATH:Ljava/lang/String;

.field private final TCON_LUX_PATH:Ljava/lang/String;

.field private lastLightSensorEventTime:J

.field private lastLightSensorValue:F

.field private lastRawBrightnessValue:F

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAutoBrightnessEnabled:Z

.field private mBrighteningLuxThreshold:F

.field private mBrightnessLevels:[I

.field private mBrightnessLevelsForEbookOnly:[I

.field private mBrightnessValueSlope:[D

.field private mBrightnessValueSlopeForEbookOnly:[D

.field private mBrightnessValues:[I

.field private mBrightnessValuesForEbookOnly:[I

.field private mCablRequest:Lcom/android/server/power/CABLControl;

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private mDarkeningLuxThreshold:F

.field private mDebounceLuxDirection:I

.field private mDebounceLuxTime:J

.field private final mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

.field private final mDisplayManager:Lcom/android/server/display/DisplayManagerService;

.field private mDisplayReadyLocked:Z

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mDynamicAutoBrightnessEnabled:Z

.field private mElectronBeamFadesConfig:Z

.field private mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

.field private mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mEnablePrintDynamicAutoBrightnessSpecTable:Z

.field private mExistAutoBrightnessLevelPath:Z

.field private mExistCommonLuxPath:Z

.field private mExistMdnieAutoBrightnessLevelPath:Z

.field private mExistTconBrightnessModePath:Z

.field private mExistTconLuxPath:Z

.field private final mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

.field private mHasRetailModeApp:Z

.field private mHighHysteresis:F

.field private mHighHysteresisLevels:[I

.field private mHighHysteresisLevelsForEbookOnly:[I

.field private mHighHysteresisSlope:[D

.field private mHighHysteresisSlopeForEbookOnly:[D

.field private mHighHysteresisValues:[I

.field private mHighHysteresisValuesForEbookOnly:[I

.field private mIsLockZone:Z

.field private mIsPrintedDynamicAutoBrightnessSpecTable:Z

.field private mIsTablet:Z

.field private mLastHBM:Z

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private final mLights:Lcom/android/server/LightsService;

.field private final mLock:Ljava/lang/Object;

.field private mLowHysteresis:F

.field private mLowHysteresisLevels:[I

.field private mLowHysteresisLevelsForEbookOnly:[I

.field private mLowHysteresisSlope:[D

.field private mLowHysteresisSlopeForEbookOnly:[D

.field private mLowHysteresisValues:[I

.field private mLowHysteresisValuesForEbookOnly:[I

.field private mLowLimitAtHighestAutoBrightnessLevel:I

.field private mMinimumBrightnessStepValue:I

.field private mMinimumExpressiveBrightnessValues:[I

.field private final mNotifier:Lcom/android/server/power/Notifier;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

.field private mPendingScreenOnEvenThoughProximityPositiveLocked:Z

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/power/DisplayPowerState;

.field private mPrevLux:I

.field private mPrevLuxLevel:I

.field private mPrevLuxRange:I

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private mRecentLightSamples:I

.field private mRecentLongTermAverageLux:F

.field private mRecentShortTermAverageLux:F

.field private mSECAverageLux:F

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private final mScreenBrightnessDimConfig:I

.field private mScreenBrightnessOnCover:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/power/RampAnimator",
            "<",
            "Lcom/android/server/power/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOnBlockStartRealTime:J

.field private mScreenOnEvenThoughProximityPositive:Z

.field private mScreenOnWasBlocked:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTiltAngle:F

.field private final mTiltListener:Landroid/hardware/SensorEventListener;

.field private mTiltSensor:Landroid/hardware/Sensor;

.field private mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

.field private final mTwilight:Lcom/android/server/TwilightService;

.field private mTwilightChanged:Z

.field private final mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

.field private final mUseDefaultResources:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mUsingScreenAutoBrightness:Z

.field private mValueOfVirtualZeroCandela:I

.field private mWaitProximityToggled:Z

.field private mWaitingForNegativeProximity:Z

.field private mWasTconMaxLevel:Z

.field private prevIsAutoBrightnessEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    .line 91
    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    .line 106
    invoke-static {}, Landroid/os/PowerManager;->useTwilightAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/power/Notifier;Lcom/android/server/LightsService;Lcom/android/server/TwilightService;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/power/DisplayPowerController$Callbacks;Landroid/os/Handler;)V
    .locals 10
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "notifier"    # Lcom/android/server/power/Notifier;
    .param p4, "lights"    # Lcom/android/server/LightsService;
    .param p5, "twilight"    # Lcom/android/server/TwilightService;
    .param p6, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p7, "displayManager"    # Lcom/android/server/display/DisplayManagerService;
    .param p8, "displaySuspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p9, "displayBlanker"    # Lcom/android/server/power/DisplayBlanker;
    .param p10, "callbacks"    # Lcom/android/server/power/DisplayPowerController$Callbacks;
    .param p11, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 290
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 293
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 294
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 350
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 353
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 375
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mWaitProximityToggled:Z

    .line 379
    const-string v7, "[DAB] "

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->TAG_DAB:Ljava/lang/String;

    .line 380
    const-string v7, "[sensor] "

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->TAG_SENSOR:Ljava/lang/String;

    .line 383
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mCablRequest:Lcom/android/server/power/CABLControl;

    .line 386
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessOnCover:I

    .line 393
    const-string v7, "/sys/class/backlight/panel/auto_brightness"

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

    .line 394
    const-string v7, "/sys/class/tcon/tcon/auto_br"

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->TCON_BRIGHTNESS_MODE_PATH:Ljava/lang/String;

    .line 395
    const-string v7, "/sys/class/tcon/tcon/lux"

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->TCON_LUX_PATH:Ljava/lang/String;

    .line 396
    const-string v7, "/sys/class/lcd/panel/lux"

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->COMMON_LUX_PATH:Ljava/lang/String;

    .line 397
    const-string v7, "/sys/class/mdnie/mdnie/auto_brightness"

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->MDNIE_AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

    .line 398
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mExistAutoBrightnessLevelPath:Z

    .line 399
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mExistTconBrightnessModePath:Z

    .line 400
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mExistTconLuxPath:Z

    .line 401
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mExistCommonLuxPath:Z

    .line 402
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mExistMdnieAutoBrightnessLevelPath:Z

    .line 406
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mHasRetailModeApp:Z

    .line 718
    new-instance v7, Lcom/android/server/power/DisplayPowerController$1;

    invoke-direct {v7, p0}, Lcom/android/server/power/DisplayPowerController$1;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1171
    new-instance v7, Lcom/android/server/power/DisplayPowerController$2;

    invoke-direct {v7, p0}, Lcom/android/server/power/DisplayPowerController$2;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1401
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresis:F

    .line 1402
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresis:F

    .line 1664
    const/high16 v7, 0x437f0000    # 255.0f

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->lastRawBrightnessValue:F

    .line 1665
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mLastHBM:Z

    .line 1666
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mWasTconMaxLevel:Z

    .line 1848
    new-instance v7, Lcom/android/server/power/DisplayPowerController$3;

    invoke-direct {v7, p0}, Lcom/android/server/power/DisplayPowerController$3;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 1861
    new-instance v7, Lcom/android/server/power/DisplayPowerController$4;

    invoke-direct {v7, p0}, Lcom/android/server/power/DisplayPowerController$4;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 1874
    new-instance v7, Lcom/android/server/power/DisplayPowerController$5;

    invoke-direct {v7, p0}, Lcom/android/server/power/DisplayPowerController$5;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 2030
    new-instance v7, Lcom/android/server/power/DisplayPowerController$7;

    invoke-direct {v7, p0}, Lcom/android/server/power/DisplayPowerController$7;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 2059
    new-instance v7, Lcom/android/server/power/DisplayPowerController$8;

    invoke-direct {v7, p0}, Lcom/android/server/power/DisplayPowerController$8;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 2086
    new-instance v7, Lcom/android/server/power/DisplayPowerController$9;

    invoke-direct {v7, p0}, Lcom/android/server/power/DisplayPowerController$9;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    .line 2098
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mTiltAngle:F

    .line 2099
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    .line 2101
    new-instance v7, Lcom/android/server/power/DisplayPowerController$10;

    invoke-direct {v7, p0}, Lcom/android/server/power/DisplayPowerController$10;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mTiltListener:Landroid/hardware/SensorEventListener;

    .line 2175
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mIsTablet:Z

    .line 2181
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    .line 2182
    const/16 v7, 0xfa

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowLimitAtHighestAutoBrightnessLevel:I

    .line 2447
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLuxLevel:I

    .line 2448
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->prevIsAutoBrightnessEnabled:Z

    .line 2488
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLuxRange:I

    .line 2489
    const-string v7, "/sys/class/lcd/panel/lux"

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->COMMON_LUX_FILE:Ljava/lang/String;

    .line 2490
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLux:I

    .line 2595
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mEnablePrintDynamicAutoBrightnessSpecTable:Z

    .line 2596
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mUseDefaultResources:Z

    .line 417
    new-instance v7, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v7, p0, p1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    .line 418
    iput-object p3, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    .line 419
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 420
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    .line 421
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    .line 422
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    .line 424
    iput-object p4, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    .line 425
    iput-object p5, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    .line 426
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 427
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    .line 429
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 431
    .local v4, "resources":Landroid/content/res/Resources;
    const v7, 0x10e002f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 434
    const v7, 0x10e002c

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 438
    .local v6, "screenBrightnessMinimum":I
    const v7, 0x111001c

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 442
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->isTablet()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mIsTablet:Z

    .line 444
    invoke-static {p2}, Lcom/android/server/power/CABLControl;->getInstance(Landroid/content/Context;)Lcom/android/server/power/CABLControl;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mCablRequest:Lcom/android/server/power/CABLControl;

    .line 447
    new-instance v7, Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-direct {v7}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;-><init>()V

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    .line 449
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v7, :cond_2

    .line 450
    const v7, 0x111007e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    .line 452
    const-string v7, "off"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_ConfigAutomaticBrightnessDetail"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 454
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    .line 456
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v7, :cond_b

    .line 457
    const-string v7, "DisplayPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DAB] Dynamic AutoBrightness is Enabled. mDynamicAutoBrightnessEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const v7, 0x10e0052

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowLimitAtHighestAutoBrightnessLevel:I

    .line 461
    const v7, 0x10e0053

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mValueOfVirtualZeroCandela:I

    .line 464
    const v7, 0x107003b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    .line 466
    const v7, 0x107003c

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    .line 468
    const v7, 0x107003d

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    .line 470
    const v7, 0x107003e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    .line 472
    const v7, 0x107003f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    .line 474
    const v7, 0x1070040

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    .line 478
    const v7, 0x1070041

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    .line 480
    const v7, 0x1070042

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    .line 482
    const v7, 0x1070043

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    .line 484
    const v7, 0x1070044

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    .line 486
    const v7, 0x1070045

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    .line 488
    const v7, 0x1070046

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    .line 492
    const v7, 0x107003a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    .line 494
    const v7, 0x10e0051

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumBrightnessStepValue:I

    .line 496
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->initDynamicAutoBrightnessSlopeTables()V

    .line 498
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 501
    .local v3, "minAutoBrightness":I
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 504
    if-ge v3, v6, :cond_1

    .line 505
    move v6, v3

    .line 531
    .end local v3    # "minAutoBrightness":I
    :cond_1
    :goto_0
    const v7, 0x10e0030

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    .line 535
    :cond_2
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 536
    const/16 v7, 0xff

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 544
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z

    .line 548
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 549
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v7, :cond_3

    .line 550
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v7

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    .line 555
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v7, :cond_4

    .line 557
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 559
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mTiltSensor:Landroid/hardware/Sensor;

    .line 563
    :cond_4
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v7, :cond_5

    sget-boolean v7, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v7, :cond_5

    .line 564
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/TwilightService;->registerListener(Lcom/android/server/TwilightService$TwilightListener;Landroid/os/Handler;)V

    .line 568
    :cond_5
    new-instance v1, Ljava/io/File;

    const-string v7, "/sys/class/backlight/panel/auto_brightness"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    .local v1, "fileCheck":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    .line 570
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mExistAutoBrightnessLevelPath:Z

    .line 572
    :cond_6
    new-instance v1, Ljava/io/File;

    .end local v1    # "fileCheck":Ljava/io/File;
    const-string v7, "/sys/class/tcon/tcon/auto_br"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    .restart local v1    # "fileCheck":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_7

    .line 574
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mExistTconBrightnessModePath:Z

    .line 576
    :cond_7
    new-instance v1, Ljava/io/File;

    .end local v1    # "fileCheck":Ljava/io/File;
    const-string v7, "/sys/class/tcon/tcon/lux"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 577
    .restart local v1    # "fileCheck":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_8

    .line 578
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mExistTconLuxPath:Z

    .line 580
    :cond_8
    new-instance v1, Ljava/io/File;

    .end local v1    # "fileCheck":Ljava/io/File;
    const-string v7, "/sys/class/lcd/panel/lux"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 581
    .restart local v1    # "fileCheck":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_9

    .line 582
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mExistCommonLuxPath:Z

    .line 584
    :cond_9
    new-instance v1, Ljava/io/File;

    .end local v1    # "fileCheck":Ljava/io/File;
    const-string v7, "/sys/class/mdnie/mdnie/auto_brightness"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    .restart local v1    # "fileCheck":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_a

    .line 586
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mExistMdnieAutoBrightnessLevelPath:Z

    .line 589
    :cond_a
    return-void

    .line 510
    .end local v1    # "fileCheck":Ljava/io/File;
    :cond_b
    const v7, 0x1070023

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 512
    .local v2, "lux":[I
    const v7, 0x1070025

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 515
    .local v5, "screenBrightness":[I
    invoke-static {v2, v5}, Lcom/android/server/power/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 516
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    if-nez v7, :cond_c

    .line 517
    const-string v7, "DisplayPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error in config.xml.  config_autoBrightnessLcdBacklightValues (size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "must be monotic and have exactly one more entry than "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "config_autoBrightnessLevels (size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "which must be strictly increasing.  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Auto-brightness will be disabled."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    goto/16 :goto_0

    .line 525
    :cond_c
    const/4 v7, 0x0

    aget v7, v5, v7

    if-ge v7, v6, :cond_1

    .line 526
    const/4 v7, 0x0

    aget v6, v5, v7

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/DisplayPowerController;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/DisplayPowerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/power/DisplayPowerController;JF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/power/DisplayPowerController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->lastLightSensorEventTime:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/android/server/power/DisplayPowerController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/android/server/power/DisplayPowerController;->lastLightSensorValue:F

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/power/DisplayPowerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/power/DisplayPowerController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mTiltAngle:F

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/power/DisplayPowerController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/android/server/power/DisplayPowerController;->mTiltAngle:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/SuspendBlocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceLightSensor()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->printLastLightSensorEvent()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/power/DisplayPowerController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method private animateScreenBrightness(II)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v0, v0, Lcom/android/server/power/DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    if-eqz v0, :cond_0

    .line 1150
    const-string v0, "DisplayPowerController"

    const-string v1, "forceLcdBacklightOff!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const/4 p1, 0x0

    .line 1154
    :cond_0
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animation target = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (PSM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v2, v2, Lcom/android/server/power/DisplayPowerRequest;->useSystemPowerSaveMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", AB limit:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") MB Limit:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") MAdj:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/RampAnimator;->animateTo(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1167
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1}, Lcom/android/server/power/Notifier;->onScreenBrightness(I)V

    .line 1169
    :cond_1
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 6
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 1377
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 1378
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1379
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    .line 1380
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    .line 1390
    :goto_0
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    .line 1391
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    .line 1392
    return-void

    .line 1382
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v0, p1, v2

    .line 1383
    .local v0, "timeDelta":J
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    .line 1385
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x1388

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    goto :goto_0
.end method

.method private applyLightSensorMeasurementSEC(JF)V
    .locals 7
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1343
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 1344
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    if-ne v3, v6, :cond_0

    .line 1345
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    .line 1370
    :goto_0
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    .line 1371
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    .line 1372
    return-void

    .line 1348
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    .line 1349
    .local v0, "prevLockZone":Z
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mTiltAngle:F

    const/high16 v4, 0x428c0000    # 70.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 1350
    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    .line 1354
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mLastHBM:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresis:F

    cmpg-float v3, p3, v3

    if-gez v3, :cond_1

    .line 1355
    iput-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    .line 1356
    iget p3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresis:F

    .line 1358
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    cmpg-float v3, p3, v3

    if-gez v3, :cond_2

    .line 1359
    iget p3, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1361
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    if-eq v0, v3, :cond_3

    .line 1362
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyLightSensorMeasurementSEC : mIsLockZone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_3
    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v1, p1, v3

    .line 1366
    .local v1, "timeDelta":J
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    add-float/2addr v3, p3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    goto :goto_0

    .line 1352
    .end local v1    # "timeDelta":J
    :cond_4
    iput-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    goto :goto_1
.end method

.method private blockScreenOn()V
    .locals 2

    .prologue
    .line 1079
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v0, :cond_0

    .line 1080
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    .line 1081
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 1082
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1083
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocked screen on."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_0
    return-void
.end method

.method private static clamp(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 1134
    if-gt p0, p1, :cond_0

    .line 1140
    .end local p1    # "min":I
    :goto_0
    return p1

    .line 1137
    .restart local p1    # "min":I
    :cond_0
    if-lt p0, p2, :cond_1

    move p1, p2

    .line 1138
    goto :goto_0

    :cond_1
    move p1, p0

    .line 1140
    goto :goto_0
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1130
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1126
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    .prologue
    .line 1259
    iget-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1260
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1261
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 1263
    :cond_0
    return-void
.end method

.method private static createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 13
    .param p0, "lux"    # [I
    .param p1, "brightness"    # [I

    .prologue
    const/high16 v12, 0x3fa00000    # 1.25f

    .line 593
    :try_start_0
    array-length v2, p1

    .line 594
    .local v2, "n":I
    new-array v5, v2, [F

    .line 595
    .local v5, "x":[F
    new-array v6, v2, [F

    .line 596
    .local v6, "y":[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, p1, v8

    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v8

    aput v8, v6, v7

    .line 597
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 598
    add-int/lit8 v7, v1, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    aput v7, v5, v1

    .line 599
    aget v7, p1, v1

    invoke-static {v7}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v7

    aput v7, v6, v1

    .line 597
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    :cond_0
    invoke-static {v5, v6}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 603
    .local v3, "spline":Landroid/util/Spline;
    sget-boolean v7, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 604
    const-string v7, "DisplayPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto-brightness spline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "v":F
    :goto_1
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    .line 606
    const-string v7, "DisplayPowerController"

    const-string v8, "  %7.1f: %7.1f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    mul-float/2addr v4, v12

    goto :goto_1

    .line 610
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "spline":Landroid/util/Spline;
    .end local v4    # "v":F
    .end local v5    # "x":[F
    .end local v6    # "y":[F
    :catch_0
    move-exception v0

    .line 611
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v7, "DisplayPowerController"

    const-string v8, "Could not create auto-brightness spline."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    const/4 v3, 0x0

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    return-object v3
.end method

.method private debounceLightSensor()V
    .locals 6

    .prologue
    .line 1581
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_2

    .line 1582
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1583
    .local v0, "time":J
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    const-wide/16 v4, 0x190

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 1584
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1585
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debounceLightSensor: Synthesizing light sensor measurement after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v2, :cond_3

    .line 1589
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurementSEC(JF)V

    .line 1594
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v2, :cond_4

    .line 1595
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLuxSEC(J)V

    .line 1600
    .end local v0    # "time":J
    :cond_2
    :goto_1
    return-void

    .line 1591
    .restart local v0    # "time":J
    :cond_3
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    goto :goto_0

    .line 1597
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    goto :goto_1
.end method

.method private debounceProximitySensor()V
    .locals 7

    .prologue
    .line 1239
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 1242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1243
    .local v1, "now":J
    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_1

    .line 1245
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 1246
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->updatePowerState()V

    .line 1247
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 1256
    .end local v1    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 1251
    .restart local v1    # "now":J
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1252
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1253
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private dumpAutoBrightnessTables(Ljava/io/PrintWriter;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2538
    :try_start_0
    iget-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v9, :cond_7

    .line 2539
    const-string v6, ""

    .line 2540
    .local v6, "mStrLowHysteresisPoints":Ljava/lang/String;
    const-string v2, ""

    .line 2541
    .local v2, "mStrBrightnessValuePoints":Ljava/lang/String;
    const-string v4, ""

    .line 2542
    .local v4, "mStrHighHysteresisPoints":Ljava/lang/String;
    const-string v8, ""

    .line 2544
    .local v8, "mStrMinimumExpressiveBrightnessValues":Ljava/lang/String;
    const-string v9, "[DAB] Dynamic Auto Brightness Tables :"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2545
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mValueOfVirtualZeroCandela = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mValueOfVirtualZeroCandela:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2546
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mLowLimitAtHighestAutoBrightnessLevel = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mLowLimitAtHighestAutoBrightnessLevel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2547
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mMinimumBrightnessStepValue = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumBrightnessStepValue:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2548
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_0

    .line 2549
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2548
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2551
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrLowHysteresisPoints = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2552
    const/4 v1, 0x0

    :goto_1
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_1

    .line 2553
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2552
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2555
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrBrightnessValuePoints = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2556
    const/4 v1, 0x0

    :goto_2
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_2

    .line 2557
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2556
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2559
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrHighHysteresisPoints = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2560
    const/4 v1, 0x0

    :goto_3
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    array-length v9, v9

    if-ge v1, v9, :cond_3

    .line 2561
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2560
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2563
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrMinimumExpressiveBrightnessValues = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2566
    const-string v7, ""

    .line 2567
    .local v7, "mStrLowHysteresisPointsForEbookOnly":Ljava/lang/String;
    const-string v3, ""

    .line 2568
    .local v3, "mStrBrightnessValuePointsForEbookOnly":Ljava/lang/String;
    const-string v5, ""

    .line 2570
    .local v5, "mStrHighHysteresisPointsForEbookOnly":Ljava/lang/String;
    const-string v9, "[DAB] "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2571
    const/4 v1, 0x0

    :goto_4
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    array-length v9, v9

    if-ge v1, v9, :cond_4

    .line 2572
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2571
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2574
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrLowHysteresisPointsForEbookOnly = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2575
    const/4 v1, 0x0

    :goto_5
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    array-length v9, v9

    if-ge v1, v9, :cond_5

    .line 2576
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2575
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2578
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrBrightnessValuePointsForEbookOnly = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2579
    const/4 v1, 0x0

    :goto_6
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    array-length v9, v9

    if-ge v1, v9, :cond_6

    .line 2580
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2579
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2582
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrHighHysteresisPointsForEbookOnly = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2588
    .end local v1    # "i":I
    .end local v2    # "mStrBrightnessValuePoints":Ljava/lang/String;
    .end local v3    # "mStrBrightnessValuePointsForEbookOnly":Ljava/lang/String;
    .end local v4    # "mStrHighHysteresisPoints":Ljava/lang/String;
    .end local v5    # "mStrHighHysteresisPointsForEbookOnly":Ljava/lang/String;
    .end local v6    # "mStrLowHysteresisPoints":Ljava/lang/String;
    .end local v7    # "mStrLowHysteresisPointsForEbookOnly":Ljava/lang/String;
    .end local v8    # "mStrMinimumExpressiveBrightnessValues":Ljava/lang/String;
    :cond_7
    :goto_7
    return-void

    .line 2585
    :catch_0
    move-exception v0

    .line 2586
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "DisplayPowerController"

    const-string v10, "[DAB] dumpAutoBrightnessTables"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1921
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1922
    const-string v0, "Display Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLuxValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentShortTermAverageLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLongTermAverageLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebounceLuxDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebounceLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUsingScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTwilight.getCurrentState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v1}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1953
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1957
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1961
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    if-eqz v0, :cond_2

    .line 1962
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 1965
    :cond_2
    const-string v0, "SEC concepts:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1966
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->dumpAutoBrightnessTables(Ljava/io/PrintWriter;)V

    .line 1967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTiltSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTiltSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHasRetailModeApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mHasRetailModeApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1969
    return-void
.end method

.method private fileWriteInt(Ljava/lang/String;I)V
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 2512
    const/4 v2, 0x0

    .line 2513
    .local v2, "out":Ljava/io/FileOutputStream;
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DAB] fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2521
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 2522
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 2531
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 2517
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 2523
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 2524
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2526
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 2527
    :catch_2
    move-exception v1

    .line 2528
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2523
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private getDynamicAutoBrightnessHighHysteresis(F)F
    .locals 11
    .param p1, "cd"    # F

    .prologue
    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    const-wide/16 v5, 0x0

    .line 2334
    const/4 v2, 0x0

    .line 2335
    .local v2, "lux":F
    const/4 v1, 0x0

    .line 2337
    .local v1, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v3, v3, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v3, :cond_4

    .line 2338
    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 2339
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 2341
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 2342
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 2343
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    aget v3, v3, v1

    int-to-float v2, v3

    .line 2373
    .end local v2    # "lux":F
    :goto_1
    return v2

    .line 2338
    .restart local v2    # "lux":F
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2345
    :cond_2
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlope:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    .line 2346
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlope:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-float v7, v7

    sub-float v7, p1, v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v2, v3

    goto :goto_1

    .line 2348
    :cond_3
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    int-to-float v2, v3

    goto :goto_1

    .line 2354
    :cond_4
    const/4 v1, 0x1

    :goto_2
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 2355
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_6

    .line 2357
    :cond_5
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    array-length v3, v3

    if-lt v1, v3, :cond_7

    .line 2358
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 2359
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    aget v3, v3, v1

    int-to-float v2, v3

    goto :goto_1

    .line 2354
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2361
    :cond_7
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlopeForEbookOnly:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_8

    .line 2362
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlopeForEbookOnly:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-float v7, v7

    sub-float v7, p1, v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v2, v3

    goto/16 :goto_1

    .line 2364
    :cond_8
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v2, v3

    goto/16 :goto_1

    .line 2370
    :catch_0
    move-exception v0

    .line 2372
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DisplayPowerController"

    const-string v4, "[DAB] getDynamicAutoBrightnessHighHysteresis"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2373
    const v2, 0x459c4000    # 5000.0f

    goto/16 :goto_1
.end method

.method private getDynamicAutoBrightnessLowHysteresis(F)F
    .locals 11
    .param p1, "cd"    # F

    .prologue
    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    const-wide/16 v5, 0x0

    .line 2283
    const/4 v2, 0x0

    .line 2284
    .local v2, "lux":F
    const/4 v1, 0x0

    .line 2286
    .local v1, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v3, v3, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v3, :cond_4

    .line 2287
    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 2288
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    .line 2293
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 2294
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v2, v3

    .line 2327
    .end local v2    # "lux":F
    :goto_1
    return v2

    .line 2287
    .restart local v2    # "lux":F
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2296
    :cond_2
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlope:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    .line 2297
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlope:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-float v7, v7

    sub-float v7, p1, v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v2, v3

    goto :goto_1

    .line 2300
    :cond_3
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    int-to-float v2, v3

    goto :goto_1

    .line 2306
    :cond_4
    const/4 v1, 0x1

    :goto_2
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 2307
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_6

    .line 2311
    :cond_5
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    array-length v3, v3

    if-lt v1, v3, :cond_7

    .line 2312
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v2, v3

    goto :goto_1

    .line 2306
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2314
    :cond_7
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlopeForEbookOnly:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_8

    .line 2315
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlopeForEbookOnly:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-float v7, v7

    sub-float v7, p1, v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v2, v3

    goto/16 :goto_1

    .line 2318
    :cond_8
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v2, v3

    goto/16 :goto_1

    .line 2324
    :catch_0
    move-exception v0

    .line 2326
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DisplayPowerController"

    const-string v4, "[DAB] getDynamicAutoBrightnessLowHysteresis"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2327
    const v2, 0x459c4000    # 5000.0f

    goto/16 :goto_1
.end method

.method private getDynamicAutoBrightnessValue(F)F
    .locals 11
    .param p1, "lux"    # F

    .prologue
    const-wide/16 v5, 0x0

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    .line 2234
    const/4 v0, 0x0

    .line 2235
    .local v0, "cd":F
    const/4 v2, 0x0

    .line 2236
    .local v2, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v3, v3, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v3, :cond_4

    .line 2237
    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 2238
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    aget v3, v3, v2

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    .line 2242
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 2243
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v0, v3

    .line 2276
    .end local v0    # "cd":F
    :goto_1
    return v0

    .line 2237
    .restart local v0    # "cd":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2245
    :cond_2
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlope:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    .line 2246
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlope:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v3, v3, v4

    float-to-double v5, p1

    add-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    int-to-double v5, v5

    add-double/2addr v3, v5

    double-to-int v3, v3

    int-to-float v0, v3

    goto :goto_1

    .line 2249
    :cond_3
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    int-to-float v0, v3

    goto :goto_1

    .line 2255
    :cond_4
    const/4 v2, 0x1

    :goto_2
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 2256
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    aget v3, v3, v2

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_6

    .line 2260
    :cond_5
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    array-length v3, v3

    if-lt v2, v3, :cond_7

    .line 2261
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v0, v3

    goto :goto_1

    .line 2255
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2263
    :cond_7
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlopeForEbookOnly:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_8

    .line 2264
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlopeForEbookOnly:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v3, v3, v4

    float-to-double v5, p1

    add-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    int-to-double v5, v5

    add-double/2addr v3, v5

    double-to-int v3, v3

    int-to-float v0, v3

    goto/16 :goto_1

    .line 2267
    :cond_8
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v0, v3

    goto/16 :goto_1

    .line 2273
    :catch_0
    move-exception v1

    .line 2275
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "DisplayPowerController"

    const-string v4, "[DAB] getDynamicAutoBrightnessValue"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2276
    const/high16 v0, 0x437f0000    # 255.0f

    goto/16 :goto_1
.end method

.method private getFinalBrightness(I)I
    .locals 4
    .param p1, "origTarget"    # I

    .prologue
    .line 1604
    move v0, p1

    .line 1607
    .local v0, "modiTarget":I
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v2, v2, Lcom/android/server/power/DisplayPowerRequest;->useSystemPowerSaveMode:Z

    if-eqz v2, :cond_0

    .line 1608
    add-int/lit8 v1, p1, -0x14

    .line 1609
    .local v1, "powerSaveModeBrightness":I
    if-lez p1, :cond_0

    .line 1610
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1615
    .end local v1    # "powerSaveModeBrightness":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    if-gez v2, :cond_7

    .line 1616
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMin:I

    if-le v0, v2, :cond_1

    .line 1617
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v3, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMin:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1630
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    if-eqz v2, :cond_3

    .line 1631
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    if-ltz v2, :cond_2

    .line 1632
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    if-le v0, v2, :cond_2

    .line 1633
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    .line 1636
    :cond_2
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    if-ltz v2, :cond_3

    .line 1637
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    if-ge v0, v2, :cond_3

    .line 1638
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    .line 1644
    :cond_3
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    if-ge v0, v2, :cond_4

    .line 1645
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v2, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    .line 1648
    :cond_4
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    if-le v0, v2, :cond_5

    .line 1649
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v2, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    .line 1653
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mHasRetailModeApp:Z

    if-eqz v2, :cond_6

    .line 1654
    const/16 v0, 0xff

    .line 1655
    const v2, 0x471c4000    # 40000.0f

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/DisplayPowerController;->sendBrightnessLevel(FZ)V

    .line 1659
    :cond_6
    return v0

    .line 1621
    :cond_7
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    if-lez v2, :cond_1

    .line 1622
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMax:I

    if-ge v0, v2, :cond_1

    .line 1623
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v3, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMax:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private getFinalDynamicAutoBrightnessValue(FF)I
    .locals 8
    .param p1, "lux"    # F
    .param p2, "origDynamicBrightness"    # F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 2211
    float-to-int v1, p2

    .line 2212
    .local v1, "finalBrightness":I
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v2, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 2215
    .local v0, "autoBrightnessAdj":F
    const v2, 0x459c4000    # 5000.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mLowLimitAtHighestAutoBrightnessLevel:I

    if-ge v1, v2, :cond_0

    .line 2217
    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLowLimitAtHighestAutoBrightnessLevel:I

    .line 2220
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mIsTablet:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    .line 2221
    float-to-double v2, v0

    const-wide v4, -0x4026666666666666L    # -0.4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    aget v2, v2, v6

    if-le v1, v2, :cond_2

    .line 2222
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    aget v1, v2, v6

    .line 2228
    :cond_1
    :goto_0
    return v1

    .line 2223
    :cond_2
    float-to-double v2, v0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    aget v2, v2, v7

    if-ge v1, v2, :cond_1

    .line 2224
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    aget v1, v2, v7

    goto :goto_0
.end method

.method private getSlope(IIIIZ)D
    .locals 10
    .param p1, "ax"    # I
    .param p2, "ay"    # I
    .param p3, "bx"    # I
    .param p4, "by"    # I
    .param p5, "bReverse"    # Z

    .prologue
    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    .line 2429
    const-wide/16 v0, 0x0

    .line 2430
    .local v0, "slope":D
    if-eq p1, p3, :cond_0

    if-ne p2, p4, :cond_1

    .line 2431
    :cond_0
    const-wide/16 v0, 0x0

    .line 2439
    :goto_0
    return-wide v0

    .line 2433
    :cond_1
    if-eqz p5, :cond_2

    .line 2434
    int-to-double v2, p3

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    int-to-double v4, p1

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    sub-int v4, p4, p2

    int-to-double v4, v4

    div-double v0, v2, v4

    goto :goto_0

    .line 2436
    :cond_2
    sub-int v2, p4, p2

    int-to-double v2, v2

    int-to-double v4, p3

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    int-to-double v6, p1

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    div-double v0, v2, v4

    goto :goto_0
.end method

.method private static getTwilightGamma(JJJ)F
    .locals 9
    .param p0, "now"    # J
    .param p2, "lastSunset"    # J
    .param p4, "nextSunrise"    # J

    .prologue
    const-wide/32 v7, 0x6ddd00

    const-wide/16 v5, 0x0

    const v4, 0x4adbba00    # 7200000.0f

    const/high16 v0, 0x3fc00000    # 1.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1821
    cmp-long v2, p2, v5

    if-ltz v2, :cond_0

    cmp-long v2, p4, v5

    if-ltz v2, :cond_0

    cmp-long v2, p0, p2

    if-ltz v2, :cond_0

    cmp-long v2, p0, p4

    if-lez v2, :cond_2

    :cond_0
    move v0, v1

    .line 1836
    :cond_1
    :goto_0
    return v0

    .line 1826
    :cond_2
    add-long v2, p2, v7

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    .line 1827
    sub-long v2, p0, p2

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_0

    .line 1831
    :cond_3
    sub-long v2, p4, v7

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    .line 1832
    sub-long v2, p4, p0

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_0
.end method

.method private handleLightSensorEvent(JF)V
    .locals 2
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1329
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v0, :cond_0

    .line 1330
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurementSEC(JF)V

    .line 1331
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLuxSEC(J)V

    .line 1337
    :goto_0
    return-void

    .line 1334
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    .line 1335
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    goto :goto_0
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 4
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1210
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1211
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-ne v0, v2, :cond_2

    if-nez p3, :cond_0

    .line 1221
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1222
    if-eqz p3, :cond_3

    .line 1223
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 1224
    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 1232
    :goto_1
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sensor] mPendingProximity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DebounceTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    goto :goto_0

    .line 1227
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 1228
    const-wide/16 v0, 0x32

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_1
.end method

.method private initDynamicAutoBrightnessSlopeTables()V
    .locals 15

    .prologue
    .line 2380
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v12, v0, -0x1

    .line 2381
    .local v12, "lengthOfLowHysteresisSlope":I
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    array-length v0, v0

    add-int/lit8 v8, v0, -0x1

    .line 2382
    .local v8, "lengthOfBrightnessValueSlope":I
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v10, v0, -0x1

    .line 2384
    .local v10, "lengthOfHighHysteresisSlope":I
    new-array v0, v12, [D

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlope:[D

    .line 2385
    new-array v0, v8, [D

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlope:[D

    .line 2386
    new-array v0, v10, [D

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlope:[D

    .line 2387
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v12, :cond_0

    .line 2388
    iget-object v14, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlope:[D

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    .line 2387
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2391
    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    .line 2392
    iget-object v14, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlope:[D

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    .line 2391
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2395
    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_2

    .line 2396
    iget-object v14, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlope:[D

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    .line 2395
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2401
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    array-length v0, v0

    add-int/lit8 v13, v0, -0x1

    .line 2402
    .local v13, "lengthOfLowHysteresisSlopeForEbookOnly":I
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    array-length v0, v0

    add-int/lit8 v9, v0, -0x1

    .line 2403
    .local v9, "lengthOfBrightnessValueSlopeForEbookOnly":I
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    array-length v0, v0

    add-int/lit8 v11, v0, -0x1

    .line 2405
    .local v11, "lengthOfHighHysteresisSlopeForEbookOnly":I
    new-array v0, v13, [D

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlopeForEbookOnly:[D

    .line 2406
    new-array v0, v9, [D

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlopeForEbookOnly:[D

    .line 2407
    new-array v0, v11, [D

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlopeForEbookOnly:[D

    .line 2409
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v13, :cond_3

    .line 2410
    iget-object v14, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlopeForEbookOnly:[D

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    .line 2409
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2413
    :cond_3
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_4

    .line 2414
    iget-object v14, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlopeForEbookOnly:[D

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    .line 2413
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2417
    :cond_4
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v11, :cond_5

    .line 2418
    iget-object v14, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlopeForEbookOnly:[D

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2417
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 2423
    .end local v7    # "i":I
    .end local v8    # "lengthOfBrightnessValueSlope":I
    .end local v9    # "lengthOfBrightnessValueSlopeForEbookOnly":I
    .end local v10    # "lengthOfHighHysteresisSlope":I
    .end local v11    # "lengthOfHighHysteresisSlopeForEbookOnly":I
    .end local v12    # "lengthOfLowHysteresisSlope":I
    .end local v13    # "lengthOfLowHysteresisSlopeForEbookOnly":I
    :catch_0
    move-exception v6

    .line 2424
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "DisplayPowerController"

    const-string v1, "[DAB] initDynamicAutoBrightnessSlopeTables"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2426
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    return-void
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 700
    new-instance v0, Lcom/android/server/power/DisplayPowerState;

    new-instance v1, Lcom/android/server/power/ElectronBeam;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/power/ElectronBeam;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/DisplayPowerState;-><init>(Lcom/android/server/power/ElectronBeam;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/LightsService$Light;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    .line 704
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v1, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v5, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    .line 706
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 707
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 709
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v1, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v5, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    .line 711
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 712
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 714
    new-instance v0, Lcom/android/server/power/RampAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v2, Lcom/android/server/power/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    .line 716
    return-void

    .line 704
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 709
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 2177
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2178
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static lerp(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "alpha"    # F

    .prologue
    .line 1840
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1144
    invoke-static {p0}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private printDynamicAutoBrightnessSpecTable()V
    .locals 0

    .prologue
    .line 2600
    return-void
.end method

.method private printLastLightSensorEvent()V
    .locals 4

    .prologue
    .line 2052
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 2053
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DAB] printLastLightSensorEvent : lastLightSensorEventTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->lastLightSensorEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastLightSensorValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->lastLightSensorValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    :cond_0
    return-void
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1972
    packed-switch p0, :pswitch_data_0

    .line 1980
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1974
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 1976
    :pswitch_1
    const-string v0, "Negative"

    goto :goto_0

    .line 1978
    :pswitch_2
    const-string v0, "Positive"

    goto :goto_0

    .line 1972
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendBrightnessLevel(FZ)V
    .locals 3
    .param p1, "lux"    # F
    .param p2, "isAutoBrightnessEnabled"    # Z

    .prologue
    .line 2450
    const/4 v0, 0x0

    .line 2453
    .local v0, "luxLevel":I
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->prevIsAutoBrightnessEnabled:Z

    if-eq v1, p2, :cond_1

    .line 2454
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mExistTconBrightnessModePath:Z

    if-eqz v1, :cond_0

    .line 2455
    const-string v2, "/sys/class/tcon/tcon/auto_br"

    if-eqz p2, :cond_6

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/android/server/power/DisplayPowerController;->fileWriteInt(Ljava/lang/String;I)V

    .line 2457
    :cond_0
    iput-boolean p2, p0, Lcom/android/server/power/DisplayPowerController;->prevIsAutoBrightnessEnabled:Z

    .line 2460
    :cond_1
    if-eqz p2, :cond_c

    .line 2461
    const/high16 v1, 0x41700000    # 15.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_7

    const/4 v0, 0x1

    .line 2472
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mHasRetailModeApp:Z

    if-eqz v1, :cond_2

    .line 2473
    const/4 v0, 0x6

    .line 2477
    :cond_2
    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLuxLevel:I

    if-eq v1, v0, :cond_5

    .line 2478
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mExistAutoBrightnessLevelPath:Z

    if-eqz v1, :cond_3

    .line 2479
    const-string v1, "/sys/class/backlight/panel/auto_brightness"

    invoke-direct {p0, v1, v0}, Lcom/android/server/power/DisplayPowerController;->fileWriteInt(Ljava/lang/String;I)V

    .line 2481
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mExistMdnieAutoBrightnessLevelPath:Z

    if-eqz v1, :cond_4

    .line 2482
    const-string v1, "/sys/class/mdnie/mdnie/auto_brightness"

    invoke-direct {p0, v1, v0}, Lcom/android/server/power/DisplayPowerController;->fileWriteInt(Ljava/lang/String;I)V

    .line 2484
    :cond_4
    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLuxLevel:I

    .line 2486
    :cond_5
    return-void

    .line 2455
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 2462
    :cond_7
    const/high16 v1, 0x43160000    # 150.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_8

    const/4 v0, 0x2

    goto :goto_1

    .line 2463
    :cond_8
    const/high16 v1, 0x447a0000    # 1000.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_9

    const/4 v0, 0x3

    goto :goto_1

    .line 2464
    :cond_9
    const v1, 0x459c4000    # 5000.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_a

    const/4 v0, 0x4

    goto :goto_1

    .line 2465
    :cond_a
    const v1, 0x471c4000    # 40000.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_b

    const/4 v0, 0x5

    goto :goto_1

    .line 2466
    :cond_b
    const/4 v0, 0x6

    goto :goto_1

    .line 2468
    :cond_c
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private sendLux(F)V
    .locals 3
    .param p1, "lux"    # F

    .prologue
    .line 2492
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v1, v1, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v1, :cond_1

    .line 2493
    const/4 v0, 0x0

    .line 2495
    .local v0, "luxRange":I
    const/high16 v1, 0x43160000    # 150.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    const/4 v0, 0x0

    .line 2499
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mExistTconLuxPath:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLuxRange:I

    if-eq v1, v0, :cond_0

    .line 2500
    const-string v1, "/sys/class/tcon/tcon/lux"

    invoke-direct {p0, v1, v0}, Lcom/android/server/power/DisplayPowerController;->fileWriteInt(Ljava/lang/String;I)V

    .line 2501
    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLuxRange:I

    .line 2504
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mExistCommonLuxPath:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLux:I

    float-to-int v2, p1

    if-eq v1, v2, :cond_1

    .line 2505
    const-string v1, "/sys/class/lcd/panel/lux"

    float-to-int v2, p1

    invoke-direct {p0, v1, v2}, Lcom/android/server/power/DisplayPowerController;->fileWriteInt(Ljava/lang/String;I)V

    .line 2506
    float-to-int v1, p1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLux:I

    .line 2509
    .end local v0    # "luxRange":I
    :cond_1
    return-void

    .line 2496
    .restart local v0    # "luxRange":I
    :cond_2
    const v1, 0x469c4000    # 20000.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .line 2497
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 2

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1871
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1872
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 2

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1858
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1859
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1845
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1846
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    .prologue
    .line 685
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 686
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 687
    monitor-exit v1

    .line 688
    return-void

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 691
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v1, :cond_0

    .line 692
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 693
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 694
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 695
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 697
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setAmbientLux(F)V
    .locals 2
    .param p1, "lux"    # F

    .prologue
    .line 1395
    iput p1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1396
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    .line 1397
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    .line 1398
    return-void
.end method

.method private setLightSensorEnabled(ZZ)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "updateAutoBrightness"    # Z

    .prologue
    const-wide/16 v6, 0x64

    const v5, 0x30d40

    const/4 v4, 0x0

    .line 1273
    if-eqz p1, :cond_2

    .line 1274
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-nez v0, :cond_0

    .line 1275
    const/4 p2, 0x1

    .line 1276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    .line 1277
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    .line 1279
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 1280
    const-string v0, "DisplayPowerController"

    const-string v1, "[DAB] setLightSensorEnabled : registerListener mLightSensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1283
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    const-string v1, "setLightSensorEnabled::registerListener(LightSensor)"

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 1285
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTiltListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mTiltSensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1287
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    const-string v1, "setLightSensorEnabled::registerListener(TiltSensor)"

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 1310
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/DisplayPowerController;->sendBrightnessLevel(FZ)V

    .line 1312
    if-eqz p2, :cond_1

    .line 1314
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v0, :cond_3

    .line 1315
    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightnessSEC(Z)V

    .line 1321
    :cond_1
    :goto_1
    return-void

    .line 1291
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1292
    iput-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    .line 1293
    iput-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 1294
    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 1295
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1297
    const-string v0, "DisplayPowerController"

    const-string v1, "[DAB] setLightSensorEnabled : unregisterListener mLightSensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1300
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTiltListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1304
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1318
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto :goto_1
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 4
    .param p1, "debounceTime"    # J

    .prologue
    .line 1266
    iget-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1269
    :cond_0
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1270
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, -0x1

    .line 1179
    if-eqz p1, :cond_1

    .line 1180
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 1183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1184
    const-string v0, "DisplayPowerController"

    const-string v1, "[sensor] setProximitySensorEnabled::registerListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 1188
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1191
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    const-string v1, "setProximitySensorEnabled::registerListener"

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1195
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1199
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 1200
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 1201
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1202
    const-string v0, "DisplayPowerController"

    const-string v1, "[sensor] setProximitySensorEnabled::unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1204
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_0
.end method

.method private setScreenOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->setScreenOn(Z)V

    .line 1103
    if-eqz p1, :cond_1

    .line 1104
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOn()V

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOff()V

    goto :goto_0
.end method

.method private setScreenOnAndElectronBeamExit()V
    .locals 2

    .prologue
    .line 1113
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 1114
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1116
    const-string v0, "DisplayPowerController"

    const-string v1, "!@setScreenOnAndElectronBeamExit : ElectronBeam exit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    .line 1118
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerState;->setElectronBeamLevel(F)V

    .line 1119
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerState;->dismissElectronBeam()V

    .line 1122
    :cond_0
    return-void
.end method

.method private unblockScreenOn()V
    .locals 6

    .prologue
    .line 1090
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-eqz v2, :cond_1

    .line 1091
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    .line 1093
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long v0, v2, v4

    .line 1094
    .local v0, "delay":J
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1095
    :cond_0
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unblocked screen on after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    .end local v0    # "delay":J
    :cond_1
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 11
    .param p1, "time"    # J

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 1472
    iget-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v4, :cond_5

    .line 1473
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    add-long v2, v4, v6

    .line 1475
    .local v2, "timeWhenSensorWarmedUp":J
    cmp-long v4, p1, v2

    if-gez v4, :cond_1

    .line 1476
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v4, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1578
    .end local v2    # "timeWhenSensorWarmedUp":J
    :cond_0
    :goto_0
    return-void

    .line 1480
    .restart local v2    # "timeWhenSensorWarmedUp":J
    :cond_1
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->setAmbientLux(F)V

    .line 1481
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 1482
    iput v10, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1483
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1484
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1485
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAmbientLux: Initializing: , mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1573
    .end local v2    # "timeWhenSensorWarmedUp":J
    :cond_3
    :goto_1
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_4

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 1575
    :cond_4
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const-wide/16 v5, 0x190

    add-long/2addr v5, p1

    invoke-virtual {v4, v9, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 1491
    :cond_5
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    .line 1494
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-gtz v4, :cond_6

    .line 1495
    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1496
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1497
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 1498
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAmbientLux: Possibly brightened, waiting for 2000 ms: mBrighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_6
    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    const-wide/16 v6, 0x7d0

    add-long v0, v4, v6

    .line 1507
    .local v0, "debounceTime":J
    cmp-long v4, p1, v0

    if-gez v4, :cond_7

    .line 1508
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v4, v9, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1511
    :cond_7
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->setAmbientLux(F)V

    .line 1512
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_8

    .line 1513
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAmbientLux: Brightened: mBrighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_8
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto/16 :goto_1

    .line 1520
    .end local v0    # "debounceTime":J
    :cond_9
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_d

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_d

    .line 1523
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-ltz v4, :cond_a

    .line 1524
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1525
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1526
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_a

    .line 1527
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAmbientLux: Possibly darkened, waiting for 3000 ms: mDarkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_a
    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    const-wide/16 v6, 0xbb8

    add-long v0, v4, v6

    .line 1536
    .restart local v0    # "debounceTime":J
    cmp-long v4, p1, v0

    if-gez v4, :cond_b

    .line 1537
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v4, v9, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1542
    :cond_b
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->setAmbientLux(F)V

    .line 1543
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 1544
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAmbientLux: Darkened: mDarkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_c
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto/16 :goto_1

    .line 1551
    .end local v0    # "debounceTime":J
    :cond_d
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-eqz v4, :cond_3

    .line 1553
    iput v10, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1554
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1555
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 1556
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAmbientLux: Canceled debounce: mBrighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mDarkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateAmbientLuxSEC(J)V
    .locals 9
    .param p1, "time"    # J

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1417
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    sub-long v2, p1, v2

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 1419
    :cond_0
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1420
    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 1421
    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1422
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1423
    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightnessSEC(Z)V

    .line 1466
    :cond_1
    :goto_0
    return-void

    .line 1428
    :cond_2
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresis:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 1429
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-gtz v2, :cond_3

    .line 1430
    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1431
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1433
    :cond_3
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    const-wide/16 v4, 0x7d0

    add-long v0, v2, v4

    .line 1434
    .local v0, "debounceTime":J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    .line 1435
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1436
    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightnessSEC(Z)V

    goto :goto_0

    .line 1438
    :cond_4
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v2, v8, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 1444
    .end local v0    # "debounceTime":J
    :cond_5
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresis:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_8

    .line 1445
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-ltz v2, :cond_6

    .line 1446
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1447
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1449
    :cond_6
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    const-wide/16 v4, 0xbb8

    add-long v0, v2, v4

    .line 1450
    .restart local v0    # "debounceTime":J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_7

    .line 1453
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1454
    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightnessSEC(Z)V

    goto :goto_0

    .line 1456
    :cond_7
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v2, v8, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 1462
    .end local v0    # "debounceTime":J
    :cond_8
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-eqz v2, :cond_1

    .line 1463
    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1464
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    goto :goto_0
.end method

.method private updateAutoBrightness(Z)V
    .locals 14
    .param p1, "sendUpdate"    # Z

    .prologue
    .line 1757
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v2, :cond_1

    .line 1759
    const-string v2, "DisplayPowerController"

    const-string v3, "[DAB] mAmbientLuxValid is false!, Failed to update auto brightness."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_0
    :goto_0
    return-void

    .line 1764
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v13

    .line 1765
    .local v13, "value":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1767
    .local v8, "gamma":F
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 1769
    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v5, v5, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    neg-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Landroid/util/FloatMath;->pow(FF)F

    move-result v6

    .line 1772
    .local v6, "adjGamma":F
    mul-float/2addr v8, v6

    .line 1773
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1774
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutoBrightness: adjGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    .end local v6    # "adjGamma":F
    :cond_2
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v2, :cond_3

    .line 1779
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v2}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v12

    .line 1780
    .local v12, "state":Lcom/android/server/TwilightService$TwilightState;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->isNight()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1781
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1782
    .local v0, "now":J
    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getYesterdaySunset()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v7

    .line 1784
    .local v7, "earlyGamma":F
    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunset()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getTomorrowSunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v10

    .line 1786
    .local v10, "lateGamma":F
    mul-float v2, v7, v10

    mul-float/2addr v8, v2

    .line 1787
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1788
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutoBrightness: earlyGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lateGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    .end local v0    # "now":J
    .end local v7    # "earlyGamma":F
    .end local v10    # "lateGamma":F
    .end local v12    # "state":Lcom/android/server/TwilightService$TwilightState;
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v8, v2

    if-eqz v2, :cond_4

    .line 1795
    move v9, v13

    .line 1796
    .local v9, "in":F
    invoke-static {v13, v8}, Landroid/util/FloatMath;->pow(FF)F

    move-result v13

    .line 1797
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1798
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutoBrightness: gamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", in="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", out="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    .end local v9    # "in":F
    :cond_4
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v11

    .line 1805
    .local v11, "newScreenAutoBrightness":I
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-eq v2, v11, :cond_0

    .line 1806
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1807
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutoBrightness: mScreenAutoBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newScreenAutoBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    :cond_5
    iput v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 1813
    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 1814
    if-eqz p1, :cond_0

    .line 1815
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    goto/16 :goto_0
.end method

.method private updateAutoBrightnessSEC(Z)V
    .locals 17
    .param p1, "sendUpdate"    # Z

    .prologue
    .line 1668
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v14, :cond_0

    .line 1670
    const-string v14, "DisplayPowerController"

    const-string v15, "[DAB] no lux value from sensor manager"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    :goto_0
    return-void

    .line 1675
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/DisplayPowerController;->getDynamicAutoBrightnessValue(F)F

    move-result v11

    .line 1676
    .local v11, "value":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1678
    .local v4, "gamma":F
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/power/DisplayPowerController;->getDynamicAutoBrightnessLowHysteresis(F)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresis:F

    .line 1679
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/power/DisplayPowerController;->getDynamicAutoBrightnessHighHysteresis(F)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresis:F

    .line 1681
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v14, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 1682
    .local v3, "autoBrightnessAdj":F
    sget-boolean v14, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-nez v14, :cond_1

    const-string v14, "off"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Setting_ConfigAutomaticBrightnessDetail"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    :cond_1
    const/4 v14, 0x0

    cmpl-float v14, v3, v14

    if-nez v14, :cond_8

    .line 1705
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/android/server/power/DisplayPowerController;->getFinalDynamicAutoBrightnessValue(FF)I

    move-result v14

    int-to-float v11, v14

    .line 1707
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v10

    .line 1709
    .local v10, "newScreenAutoBrightness":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->lastRawBrightnessValue:F

    cmpl-float v14, v11, v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_4

    .line 1710
    :cond_3
    const-string v15, "DisplayPowerController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[DAB] updateAutoBrightnessSEC : "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "("

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ")    "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresis:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " < "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " < "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresis:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " ("

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v14, v14, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-eqz v14, :cond_f

    const-string v14, " (ebook)"

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v15, 0x471c4000    # 40000.0f

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_10

    const/4 v9, 0x1

    .line 1718
    .local v9, "needHBM":Z
    :goto_3
    const/4 v5, 0x0

    .line 1719
    .local v5, "isHBMChanged":Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/power/DisplayPowerController;->mLastHBM:Z

    if-eq v14, v9, :cond_5

    .line 1720
    const-string v15, "DisplayPowerController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[DAB] HBM is "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v9, :cond_11

    const-string v14, "Enabled"

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ". mScreenAutoBrightness = "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/server/power/DisplayPowerController;->mLastHBM:Z

    .line 1724
    const/4 v5, 0x1

    .line 1727
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v15, 0x469c4000    # 20000.0f

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_12

    const/4 v7, 0x1

    .line 1728
    .local v7, "isTconMaxLevel":Z
    :goto_5
    const/4 v6, 0x0

    .line 1729
    .local v6, "isTconLevelChanged":Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/power/DisplayPowerController;->mWasTconMaxLevel:Z

    if-eq v14, v7, :cond_6

    .line 1730
    const-string v14, "DisplayPowerController"

    const-string v15, "[DAB] The Ambient Lux is over than 20000."

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/server/power/DisplayPowerController;->mWasTconMaxLevel:Z

    .line 1733
    const/4 v6, 0x1

    .line 1736
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-eq v14, v10, :cond_13

    .line 1737
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 1738
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 1739
    if-eqz p1, :cond_7

    .line 1740
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    .line 1741
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v15, v15, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/DisplayPowerController;->sendBrightnessLevel(FZ)V

    .line 1742
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/DisplayPowerController;->sendLux(F)V

    .line 1752
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/power/DisplayPowerController;->lastRawBrightnessValue:F

    goto/16 :goto_0

    .line 1685
    .end local v5    # "isHBMChanged":Z
    .end local v6    # "isTconLevelChanged":Z
    .end local v7    # "isTconMaxLevel":Z
    .end local v9    # "needHBM":Z
    .end local v10    # "newScreenAutoBrightness":I
    :cond_8
    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, -0x40800000    # -1.0f

    neg-float v0, v3

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/high16 v15, -0x3f600000    # -5.0f

    mul-float v2, v14, v15

    .line 1686
    .local v2, "adjLevel":F
    const/4 v14, 0x0

    cmpl-float v14, v2, v14

    if-lez v14, :cond_c

    const v14, 0x3f8ccccd    # 1.1f

    move v15, v14

    :goto_7
    const/4 v14, 0x0

    cmpl-float v14, v2, v14

    if-lez v14, :cond_d

    move v14, v2

    :goto_8
    invoke-static {v15, v14}, Landroid/util/FloatMath;->pow(FF)F

    move-result v1

    .line 1687
    .local v1, "adjGamma":F
    mul-float/2addr v4, v1

    .line 1688
    sget-boolean v14, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v14, :cond_9

    .line 1689
    const-string v14, "DisplayPowerController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[DAB] updateAutoBrightnessSEC: adjGamma="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mValueOfVirtualZeroCandela:I

    int-to-float v14, v14

    sub-float v14, v11, v14

    mul-float/2addr v14, v4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/DisplayPowerController;->mValueOfVirtualZeroCandela:I

    int-to-float v15, v15

    add-float v12, v14, v15

    .line 1694
    .local v12, "valueFromGamma":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/power/DisplayPowerController;->mMinimumBrightnessStepValue:I

    .line 1695
    .local v8, "minBrightnessStep":I
    float-to-int v14, v2

    mul-int/2addr v14, v8

    float-to-int v15, v11

    add-int v13, v14, v15

    .line 1696
    .local v13, "valueFromOffset":I
    const/4 v14, 0x0

    cmpl-float v14, v3, v14

    if-lez v14, :cond_a

    int-to-float v14, v13

    cmpg-float v14, v12, v14

    if-ltz v14, :cond_b

    :cond_a
    const/4 v14, 0x0

    cmpg-float v14, v3, v14

    if-gez v14, :cond_e

    int-to-float v14, v13

    cmpl-float v14, v12, v14

    if-lez v14, :cond_e

    .line 1699
    :cond_b
    int-to-float v11, v13

    goto/16 :goto_1

    .line 1686
    .end local v1    # "adjGamma":F
    .end local v8    # "minBrightnessStep":I
    .end local v12    # "valueFromGamma":F
    .end local v13    # "valueFromOffset":I
    :cond_c
    const v14, 0x3f666666    # 0.9f

    move v15, v14

    goto :goto_7

    :cond_d
    neg-float v14, v2

    goto :goto_8

    .line 1702
    .restart local v1    # "adjGamma":F
    .restart local v8    # "minBrightnessStep":I
    .restart local v12    # "valueFromGamma":F
    .restart local v13    # "valueFromOffset":I
    :cond_e
    move v11, v12

    goto/16 :goto_1

    .line 1710
    .end local v1    # "adjGamma":F
    .end local v2    # "adjLevel":F
    .end local v8    # "minBrightnessStep":I
    .end local v12    # "valueFromGamma":F
    .end local v13    # "valueFromOffset":I
    .restart local v10    # "newScreenAutoBrightness":I
    :cond_f
    const-string v14, ""

    goto/16 :goto_2

    .line 1717
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1720
    .restart local v5    # "isHBMChanged":Z
    .restart local v9    # "needHBM":Z
    :cond_11
    const-string v14, "Disabled"

    goto/16 :goto_4

    .line 1727
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 1746
    .restart local v6    # "isTconLevelChanged":Z
    .restart local v7    # "isTconMaxLevel":Z
    :cond_13
    if-eqz p1, :cond_7

    if-nez v5, :cond_14

    if-eqz v6, :cond_7

    .line 1747
    :cond_14
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v15, v15, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/DisplayPowerController;->sendBrightnessLevel(FZ)V

    .line 1748
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/DisplayPowerController;->sendLux(F)V

    goto/16 :goto_6
.end method

.method private updatePowerState()V
    .locals 11

    .prologue
    .line 737
    const/4 v0, 0x0

    .line 738
    .local v0, "mustInitialize":Z
    iget-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    .line 739
    .local v5, "updateAutoBrightness":Z
    const/4 v6, 0x0

    .line 740
    .local v6, "wasDim":Z
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    .line 742
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 743
    const/4 v7, 0x0

    :try_start_0
    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 744
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v7, :cond_1

    .line 745
    monitor-exit v8

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v7, :cond_c

    .line 749
    new-instance v7, Lcom/android/server/power/DisplayPowerRequest;

    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v7, v9}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    .line 750
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 751
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 753
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 754
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    .line 756
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 757
    const/4 v0, 0x1

    .line 785
    :cond_2
    :goto_1
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    if-nez v7, :cond_10

    const/4 v1, 0x1

    .line 786
    .local v1, "mustNotify":Z
    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    if-eqz v0, :cond_3

    .line 790
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->initialize()V

    .line 825
    :cond_3
    const/4 v2, 0x0

    .line 826
    .local v2, "screenOnOffAlreadyDone":Z
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mWaitProximityToggled:Z

    if-nez v7, :cond_4

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-eqz v7, :cond_4

    .line 827
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mWaitProximityToggled:Z

    .line 829
    :cond_4
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mWaitProximityToggled:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-nez v7, :cond_5

    .line 830
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 831
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mWaitProximityToggled:Z

    .line 833
    :cond_5
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v7, :cond_19

    .line 834
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v7, v7, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v7, :cond_15

    .line 836
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v7, :cond_11

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v7, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v7}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v7, Lcom/android/server/power/DisplayPowerRequest;->lastGoToSleepReason:I

    if-nez v7, :cond_11

    .line 840
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 841
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 842
    const/4 v2, 0x0

    .line 916
    :cond_6
    :goto_3
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mTiltSensor:Landroid/hardware/Sensor;

    if-eqz v7, :cond_7

    .line 917
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v7, v7, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v7, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v7}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v7, 0x1

    :goto_4
    invoke-direct {p0, v7, v5}, Lcom/android/server/power/DisplayPowerController;->setLightSensorEnabled(ZZ)V

    .line 922
    :cond_7
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v7, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v7}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 925
    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-ltz v7, :cond_1b

    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v7, :cond_1b

    .line 927
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 928
    .local v4, "target":I
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    .line 929
    .local v3, "slow":Z
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    .line 940
    :goto_5
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v7, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 941
    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessOnCover:I

    .line 945
    :cond_8
    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->getFinalBrightness(I)I

    move-result v4

    .line 948
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v7, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1c

    .line 950
    add-int/lit8 v7, v4, -0xa

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 952
    const/4 v3, 0x0

    .line 957
    :cond_9
    :goto_6
    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v8

    if-eqz v3, :cond_1d

    const/16 v7, 0x1f4

    :goto_7
    invoke-direct {p0, v8, v7}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(II)V

    .line 965
    .end local v3    # "slow":Z
    .end local v4    # "target":I
    :goto_8
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v7, :cond_a

    if-nez v2, :cond_a

    .line 969
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v7, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v7}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 974
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v7

    if-nez v7, :cond_a

    .line 978
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 980
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v7, v7, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    if-eqz v7, :cond_1f

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v7}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1f

    .line 982
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->blockScreenOn()V

    .line 1060
    :cond_a
    :goto_9
    if-eqz v1, :cond_0

    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/android/server/power/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1065
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1066
    :try_start_1
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v7, :cond_b

    .line 1067
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1069
    sget-boolean v7, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v7, :cond_b

    .line 1070
    const-string v7, "DisplayPowerController"

    const-string v9, "Display ready!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_b
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1074
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto/16 :goto_0

    .line 758
    .end local v1    # "mustNotify":Z
    .end local v2    # "screenOnOffAlreadyDone":Z
    :cond_c
    :try_start_2
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v7, :cond_2

    .line 759
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v7, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget v9, v9, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_d

    .line 761
    const/4 v5, 0x1

    .line 764
    :cond_d
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v7, v7, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v9, v9, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-eq v7, v9, :cond_e

    .line 766
    const-string v7, "DisplayPowerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB] updatePowerState : autoBrightnessForEbookOnly : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v10, v10, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v5, 0x1

    .line 771
    :cond_e
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v7, v7, Lcom/android/server/power/DisplayPowerRequest;->hasRetailModeApp:Z

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mHasRetailModeApp:Z

    .line 773
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v7, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_f

    const/4 v6, 0x1

    .line 774
    :goto_a
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v7, v9}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 775
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v7, v9

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 776
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 778
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    iget-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    or-int/2addr v7, v9

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 779
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    .line 781
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 782
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    goto/16 :goto_1

    .line 786
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 773
    :cond_f
    const/4 v6, 0x0

    goto :goto_a

    .line 785
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 846
    .restart local v1    # "mustNotify":Z
    .restart local v2    # "screenOnOffAlreadyDone":Z
    :cond_11
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 848
    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_14

    .line 849
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-nez v7, :cond_12

    .line 850
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 851
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 852
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    .line 853
    const/4 v2, 0x1

    .line 854
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    goto/16 :goto_3

    .line 856
    :cond_12
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-eqz v7, :cond_6

    .line 857
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 858
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->setScreenOnAndElectronBeamExit()V

    .line 859
    const/4 v2, 0x1

    .line 860
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-eqz v7, :cond_13

    .line 861
    const-string v7, "DisplayPowerController"

    const-string v8, "[sensor] proximity : mScreenOnEvenThoughProximityPositive is true"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_13
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto/16 :goto_3

    .line 866
    :cond_14
    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v7, :cond_6

    .line 867
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 868
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->setScreenOnAndElectronBeamExit()V

    .line 869
    const/4 v2, 0x1

    .line 870
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto/16 :goto_3

    .line 877
    :cond_15
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v7, :cond_18

    .line 879
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 880
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v7, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v7}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 881
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 882
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 883
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->setScreenOnAndElectronBeamExit()V

    .line 884
    const/4 v2, 0x1

    .line 885
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 886
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_3

    .line 887
    :cond_16
    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    .line 888
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 889
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v7, :cond_17

    .line 890
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 891
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->setScreenOnAndElectronBeamExit()V

    .line 892
    const/4 v2, 0x1

    .line 893
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 895
    :cond_17
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_3

    .line 900
    :cond_18
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 901
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 903
    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v7, :cond_6

    .line 904
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 905
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->setScreenOnAndElectronBeamExit()V

    .line 906
    const/4 v2, 0x1

    .line 907
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto/16 :goto_3

    .line 911
    :cond_19
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_3

    .line 917
    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 935
    :cond_1b
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v4, v7, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .line 936
    .restart local v4    # "target":I
    const/4 v3, 0x0

    .line 937
    .restart local v3    # "slow":Z
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    goto/16 :goto_5

    .line 953
    :cond_1c
    if-eqz v6, :cond_9

    .line 955
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 957
    :cond_1d
    const/16 v7, 0x7d0

    goto/16 :goto_7

    .line 961
    .end local v3    # "slow":Z
    .end local v4    # "target":I
    :cond_1e
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    goto/16 :goto_8

    .line 984
    :cond_1f
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    .line 1000
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v7}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_20

    .line 1001
    const-string v7, "DisplayPowerController"

    const-string v8, "!@ElectronBeam exit"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_20
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-virtual {v7}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 1005
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/android/server/power/DisplayPowerState;->setElectronBeamLevel(F)V

    .line 1006
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v7}, Lcom/android/server/power/DisplayPowerState;->dismissElectronBeam()V

    .line 1008
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    const-string v8, "ElectronBeam exit"

    const-wide/16 v9, 0xa

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    goto/16 :goto_9

    .line 1016
    :cond_21
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v7

    if-nez v7, :cond_a

    .line 1017
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v7

    if-nez v7, :cond_a

    .line 1019
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v7, v7, Lcom/android/server/power/DisplayPowerRequest;->isAlpmMode:Z

    if-eqz v7, :cond_23

    .line 1020
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v7}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_22

    .line 1021
    const-string v7, "DisplayPowerController"

    const-string v8, "!@ALPM : ElectronBeam exit"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-virtual {v7}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 1024
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/android/server/power/DisplayPowerState;->setElectronBeamLevel(F)V

    .line 1025
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v7}, Lcom/android/server/power/DisplayPowerState;->dismissElectronBeam()V

    .line 1027
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    const-string v8, "ALPM : ElectronBeam exit"

    const-wide/16 v9, 0xa

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 1030
    :cond_22
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 1031
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    goto/16 :goto_9

    .line 1034
    :cond_23
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v7}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_24

    .line 1035
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 1036
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    goto/16 :goto_9

    .line 1037
    :cond_24
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z

    if-eqz v7, :cond_25

    const/4 v7, 0x2

    :goto_b
    invoke-virtual {v8, v7}, Lcom/android/server/power/DisplayPowerState;->prepareElectronBeam(I)Z

    move-result v7

    if-eqz v7, :cond_26

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v7}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_26

    .line 1043
    const-string v7, "DisplayPowerController"

    const-string v8, "!@ElectronBeam entry"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_9

    .line 1037
    :cond_25
    const/4 v7, 0x1

    goto :goto_b

    .line 1048
    :cond_26
    const-string v7, "DisplayPowerController"

    const-string v8, "!@ElectronBeam entry 2"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->end()V

    goto/16 :goto_9

    .line 1073
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7
.end method

.method private static wantScreenOn(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1985
    packed-switch p0, :pswitch_data_0

    .line 1990
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1988
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1985
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1883
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1884
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1885
    const-string v0, "Display Controller Locked State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingScreenOnEvenThoughProximityPositiveLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenOnEvenThoughProximityPositive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1898
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1900
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1901
    const-string v0, "Display Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessOnCover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessOnCover:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1912
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/DisplayPowerController$6;-><init>(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1918
    return-void

    .line 1898
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getScreenBrightnessOnCover()I
    .locals 1

    .prologue
    .line 2666
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessOnCover:I

    return v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPowerState(Lcom/android/server/power/DisplayPowerRequest;ZZ)Z
    .locals 5
    .param p1, "request"    # Lcom/android/server/power/DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z
    .param p3, "screenOnEvenThoughProximityPositive"    # Z

    .prologue
    .line 639
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 640
    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPowerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", waitForNegativeProximity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 645
    const/4 v0, 0x0

    .line 647
    .local v0, "changed":Z
    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v1, :cond_1

    .line 649
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 650
    const/4 v0, 0x1

    .line 654
    :cond_1
    if-eqz p3, :cond_2

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    if-nez v1, :cond_2

    .line 656
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    .line 657
    const/4 v0, 0x1

    .line 658
    const-string v1, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPendingScreenOnEvenThoughProximityPositiveLocked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v1, :cond_6

    .line 664
    new-instance v1, Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    .line 665
    const/4 v0, 0x1

    .line 671
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 672
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 675
    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v1, :cond_5

    .line 676
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 677
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 680
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v2

    return v1

    .line 666
    :cond_6
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->equals(Lcom/android/server/power/DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 667
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 668
    const/4 v0, 0x1

    goto :goto_0

    .line 681
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
