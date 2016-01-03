.class public Lcom/android/server/AdaptiveDisplayColorService;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;,
        Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;,
        Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;,
        Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdaptiveDisplayColorService"


# instance fields
.field private final ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

.field private final ANIMATION_DEBOUNCE_MILLIS:J

.field private final ANIMATION_MAX_COUNT:F

.field private final BROWSER_MODE_DEBOUNCE_MILLIS:J

.field private final BROWSER_NAMES:[Ljava/lang/String;

.field private final DEBUG:Z

.field private final EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

.field private final LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

.field private final LIGHT_SENSOR_READ_DELAY:I

.field private final MAX_RGB_SENSOR_COUNT:I

.field private final MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

.field private final MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

.field private final MSG_ANIMATE_SCR_RGB:I

.field private final MSG_SEND_RGB_AVERAGE:I

.field private final MSG_SET_BROWSER_MODE:I

.field private final MSG_TERMINATE_SCR_RGB:I

.field private final NUMBER_COEFFICIENT_VALUE:I

.field private final RGB_DEBOUNCE_MILLIS:J

.field private final RGB_FLOAT_MAX:F

.field private final RGB_INTEGER_MAX:I

.field private final SBROWSER_NAME:Ljava/lang/String;

.field private final SCENARIO_FILE_PATH:Ljava/lang/String;

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCR_FILE_PATH:Ljava/lang/String;

.field private final SETUP_WIZARD_NAME:Ljava/lang/String;

.field private final TEST_RGB_EXPONENTIAL:I

.field private foregroundThreadDelayMillis:J

.field private isLockScreenOn:Z

.field private mAceessibilityEnabled:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAdaptiveDisplayColorServiceEnable:Z

.field private mAutoModeEnabled:Z

.field private mAvgB:F

.field private mAvgG:F

.field private mAvgR:F

.field private mBrowserScenarioEnabled:Z

.field private mCoefficientValueArray:[F

.field private mColorBlindEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mCountAnimationValue:I

.field private mCountSensorValue:I

.field private mDefaultAdjustB:I

.field private mDefaultAdjustG:I

.field private mDefaultAdjustR:I

.field private mDefaultB:I

.field private mDefaultEbookB:I

.field private mDefaultEbookG:I

.field private mDefaultEbookR:I

.field private mDefaultG:I

.field private mDefaultR:I

.field private mEbookAdjustB:I

.field private mEbookAdjustG:I

.field private mEbookAdjustR:I

.field private mEbookScenarioEnabled:Z

.field private mEmergencyModeEnabled:Z

.field private mFinalIntAvgB:I

.field private mFinalIntAvgG:I

.field private mFinalIntAvgR:I

.field private mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

.field private mForegroundThreadWork:Z

.field private mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsFirstStart:Z

.field private mLastAvgB:F

.field private mLastAvgG:F

.field private mLastAvgR:F

.field private mLastChangedRgbTime:J

.field private mLightSensorB:I

.field private mLightSensorDelay:I

.field private mLightSensorG:I

.field private mLightSensorR:I

.field private mMultiWindowOn:Z

.field private mNegativeColorEnabled:Z

.field private mPrevContorlZone:I

.field private mPrevIntAvgB:I

.field private mPrevIntAvgG:I

.field private mPrevIntAvgR:I

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mRgbSensor:Landroid/hardware/Sensor;

.field private mRgbSensorListener:Landroid/hardware/SensorEventListener;

.field private mRgbThreshold:F

.field private mScrFileExists:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenStateOn:Z

.field private mScreenWatchingReceiver:Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;

.field private mSensorEnabled:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorValueValid:Z

.field private mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

.field private mSumLux:I

.field private mTempIntAvgB:I

.field private mTempIntAvgG:I

.field private mTempIntAvgR:I

.field private mTestScrB:I

.field private mTestScrG:I

.field private mTestScrR:I

.field private mThreadEnableCondition:Z

.field private mUseAdaptiveDisplayColorServiceConfig:Z

.field private mValidZone:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    .line 69
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->RGB_INTEGER_MAX:I

    .line 70
    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->RGB_FLOAT_MAX:F

    .line 72
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->MSG_SEND_RGB_AVERAGE:I

    .line 73
    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->MSG_ANIMATE_SCR_RGB:I

    .line 74
    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->MSG_SET_BROWSER_MODE:I

    .line 75
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->MSG_TERMINATE_SCR_RGB:I

    .line 77
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->ANIMATION_MAX_COUNT:F

    .line 78
    const v0, 0x989680

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->TEST_RGB_EXPONENTIAL:I

    .line 79
    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->LIGHT_SENSOR_READ_DELAY:I

    .line 80
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->MAX_RGB_SENSOR_COUNT:I

    .line 81
    const/16 v0, 0x24

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->NUMBER_COEFFICIENT_VALUE:I

    .line 83
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->RGB_DEBOUNCE_MILLIS:J

    .line 84
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->ANIMATION_DEBOUNCE_MILLIS:J

    .line 85
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->BROWSER_MODE_DEBOUNCE_MILLIS:J

    .line 87
    const-string v0, "screen_mode_automatic_setting"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    .line 88
    const-string v0, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

    .line 89
    const-string v0, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

    .line 90
    const-string v0, "8"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

    .line 91
    const-string v0, "9"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

    .line 93
    const-string v0, "/sys/class/mdnie/mdnie/sensorRGB"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->SCR_FILE_PATH:Ljava/lang/String;

    .line 94
    const-string v0, "/sys/class/mdnie/mdnie/scenario"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->SCENARIO_FILE_PATH:Ljava/lang/String;

    .line 95
    const-string v0, "/sys/class/sensors/light_sensor/raw_data"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

    .line 96
    const-string v0, "com.sec.android.app.SecSetupWizard"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->SETUP_WIZARD_NAME:Ljava/lang/String;

    .line 97
    const-string v0, "com.sec.android.app.sbrowser"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->SBROWSER_NAME:Ljava/lang/String;

    .line 98
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.sbrowser"

    aput-object v1, v0, v2

    const-string v1, "com.android.chrome"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    .line 105
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 106
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAdaptiveDisplayColorServiceEnable:Z

    .line 107
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 118
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAceessibilityEnabled:Z

    .line 119
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    .line 120
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorValueValid:Z

    .line 121
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mValidZone:Z

    .line 122
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z

    .line 123
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    .line 124
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForegroundThreadWork:Z

    .line 126
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEmergencyModeEnabled:Z

    .line 127
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    .line 128
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    .line 129
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    .line 130
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    .line 131
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 132
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 136
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 137
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->foregroundThreadDelayMillis:J

    .line 139
    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrR:I

    .line 140
    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrG:I

    .line 141
    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrB:I

    .line 148
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    .line 149
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    .line 150
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    .line 151
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 152
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 153
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 154
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbThreshold:F

    .line 156
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSumLux:I

    .line 158
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 159
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 160
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 162
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    .line 163
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    .line 164
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    .line 166
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgR:I

    .line 167
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgG:I

    .line 168
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgB:I

    .line 170
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    .line 171
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    .line 172
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    .line 174
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookR:I

    .line 175
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookG:I

    .line 176
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookB:I

    .line 178
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultAdjustR:I

    .line 179
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultAdjustG:I

    .line 180
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultAdjustB:I

    .line 182
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustR:I

    .line 183
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustG:I

    .line 184
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustB:I

    .line 186
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    .line 188
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    .line 339
    new-instance v0, Lcom/android/server/AdaptiveDisplayColorService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AdaptiveDisplayColorService$1;-><init>(Lcom/android/server/AdaptiveDisplayColorService;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 484
    new-instance v0, Lcom/android/server/AdaptiveDisplayColorService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AdaptiveDisplayColorService$2;-><init>(Lcom/android/server/AdaptiveDisplayColorService;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    .line 193
    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    .line 195
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AdaptiveDisplayColorServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 196
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 197
    new-instance v0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    .line 198
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/AdaptiveDisplayColorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->foregroundThreadDelayMillis:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/server/AdaptiveDisplayColorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/AdaptiveDisplayColorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/AdaptiveDisplayColorService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/AdaptiveDisplayColorService;->monitorForegroundBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/AdaptiveDisplayColorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/AdaptiveDisplayColorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return p1
.end method

.method static synthetic access$1510(Lcom/android/server/AdaptiveDisplayColorService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->getRgbFromLightSensor()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/AdaptiveDisplayColorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorValueValid:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/AdaptiveDisplayColorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorR:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/AdaptiveDisplayColorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorG:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->boot_complete()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/AdaptiveDisplayColorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorB:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/AdaptiveDisplayColorService;JIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I

    .prologue
    .line 65
    invoke-direct/range {p0 .. p6}, Lcom/android/server/AdaptiveDisplayColorService;->handleRgbSensorEvent(JIIII)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->sendRgbAverage()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->animateScrRGB()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->setBrowserMode()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->terminateScrRGB()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/AdaptiveDisplayColorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->emergency_mode_changed_intent()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/AdaptiveDisplayColorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->setting_is_changed()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/AdaptiveDisplayColorService;)Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;)Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p1, "x1"    # Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    return-object p1
.end method

.method private animateScrRGB()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/high16 v12, 0x41a00000    # 20.0f

    const/16 v11, 0xff

    .line 944
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v4

    .line 945
    .local v4, "state":I
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    .line 947
    if-lez v4, :cond_1

    .line 949
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    const/16 v10, 0x14

    if-ne v9, v10, :cond_2

    .line 951
    iget v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    .line 952
    .local v3, "r":I
    iget v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    .line 953
    .local v1, "g":I
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    .line 955
    .local v0, "b":I
    if-lez v3, :cond_1

    if-gt v3, v11, :cond_1

    if-lez v1, :cond_1

    if-gt v1, v11, :cond_1

    if-lez v0, :cond_1

    if-gt v0, v11, :cond_1

    .line 956
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v3, v9, :cond_0

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v1, v9, :cond_0

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v0, v9, :cond_1

    .line 957
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 958
    .local v6, "str":Ljava/lang/String;
    const-string v9, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v9, v6}, Lcom/android/server/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 960
    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 961
    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 996
    .end local v0    # "b":I
    .end local v1    # "g":I
    .end local v3    # "r":I
    .end local v6    # "str":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 967
    :cond_2
    const/4 v2, 0x0

    .line 968
    .local v2, "gap":I
    const/4 v5, 0x0

    .line 969
    .local v5, "step":F
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    iget v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgR:I

    sub-int v2, v9, v10

    .line 970
    int-to-float v9, v2

    div-float/2addr v9, v12

    iget v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v9, v10

    .line 971
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgR:I

    float-to-int v10, v5

    add-int v3, v9, v10

    .line 973
    .restart local v3    # "r":I
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    iget v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgG:I

    sub-int v2, v9, v10

    .line 974
    int-to-float v9, v2

    div-float/2addr v9, v12

    iget v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v9, v10

    .line 975
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgG:I

    float-to-int v10, v5

    add-int v1, v9, v10

    .line 977
    .restart local v1    # "g":I
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    iget v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgB:I

    sub-int v2, v9, v10

    .line 978
    int-to-float v9, v2

    div-float/2addr v9, v12

    iget v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v9, v10

    .line 979
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgB:I

    float-to-int v10, v5

    add-int v0, v9, v10

    .line 981
    .restart local v0    # "b":I
    if-lez v3, :cond_4

    if-gt v3, v11, :cond_4

    if-lez v1, :cond_4

    if-gt v1, v11, :cond_4

    if-lez v0, :cond_4

    if-gt v0, v11, :cond_4

    .line 982
    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v3, v9, :cond_3

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v1, v9, :cond_3

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v0, v9, :cond_4

    .line 983
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 984
    .restart local v6    # "str":Ljava/lang/String;
    const-string v9, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v9, v6}, Lcom/android/server/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 986
    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 987
    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 991
    .end local v6    # "str":Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 992
    .local v7, "time":J
    iget-object v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v9, v13}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 993
    iget-object v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v10, 0xfa

    add-long/2addr v10, v7

    invoke-virtual {v9, v13, v10, v11}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0
.end method

.method private boot_complete()V
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I

    .line 368
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustR:I

    add-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookR:I

    .line 369
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustG:I

    add-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookG:I

    .line 370
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustB:I

    add-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookB:I

    .line 372
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->setting_is_changed()V

    .line 373
    return-void
.end method

.method private emergency_mode_changed_intent()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 401
    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 402
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 403
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEmergencyModeEnabled:Z

    .line 404
    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEmergencyModeEnabled:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    if-eqz v3, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    .line 405
    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 406
    invoke-direct {p0, v2}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->interrupt()V

    .line 426
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v2

    .line 404
    goto :goto_0

    .line 414
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEmergencyModeEnabled:Z

    .line 415
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 416
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z

    .line 417
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 418
    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEmergencyModeEnabled:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    if-eqz v3, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    .line 419
    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    if-nez v1, :cond_1

    .line 421
    new-instance v1, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$1;)V

    iput-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    .line 422
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->start()V

    goto :goto_1

    :cond_4
    move v1, v2

    .line 418
    goto :goto_2
.end method

.method private enableRgbSensor(Z)V
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0xff

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 455
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 457
    .local v1, "white_scr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 458
    const-string v2, "AdaptiveDisplayColorService"

    const-string v3, "StatFs returns null."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 461
    const-string v2, "AdaptiveDisplayColorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableRgbSensor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_1
    if-eqz p1, :cond_2

    .line 464
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 465
    iput-boolean v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    .line 466
    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 467
    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 468
    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 469
    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 470
    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I

    .line 471
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 481
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    .line 482
    return-void

    .line 473
    :cond_2
    iput v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 474
    iput v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 475
    iput v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 476
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v2, v6}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 477
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v2, v8}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 478
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 479
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 1048
    const/4 v2, 0x0

    .line 1049
    .local v2, "out":Ljava/io/FileOutputStream;
    iget-boolean v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1050
    const-string v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteString : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1060
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1061
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 1070
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteString : file not found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1062
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1063
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1065
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1066
    :catch_2
    move-exception v1

    .line 1067
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1062
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

.method private getRgbFromLightSensor()V
    .locals 5

    .prologue
    .line 588
    const/4 v1, 0x0

    .line 590
    .local v1, "raw":Ljava/lang/String;
    :try_start_0
    const-string v3, "/sys/class/sensors/light_sensor/raw_data"

    invoke-direct {p0, v3}, Lcom/android/server/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 591
    if-eqz v1, :cond_0

    .line 592
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, "rawDatas":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorR:I

    .line 594
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorG:I

    .line 595
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorB:I

    .line 596
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorValueValid:Z

    .line 603
    .end local v2    # "rawDatas":[Ljava/lang/String;
    :goto_0
    return-void

    .line 599
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x80

    const/4 v10, 0x0

    .line 606
    const/4 v5, 0x0

    .line 607
    .local v5, "in":Ljava/io/InputStream;
    const/16 v0, 0x80

    .line 608
    .local v0, "MAX_BUFFER_SIZE":I
    new-array v1, v11, [B

    .line 609
    .local v1, "buffer":[B
    const/4 v8, 0x0

    .line 610
    .local v8, "value":Ljava/lang/String;
    const/4 v7, 0x0

    .line 612
    .local v7, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v11, :cond_0

    .line 613
    aput-byte v10, v1, v4

    .line 612
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 616
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    .end local v5    # "in":Ljava/io/InputStream;
    .local v6, "in":Ljava/io/InputStream;
    if-eqz v6, :cond_2

    .line 618
    :try_start_1
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 619
    if-eqz v7, :cond_1

    .line 620
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v7, -0x1

    invoke-direct {v9, v1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .end local v8    # "value":Ljava/lang/String;
    .local v9, "value":Ljava/lang/String;
    move-object v8, v9

    .line 622
    .end local v9    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 631
    :cond_2
    if-eqz v6, :cond_5

    .line 633
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 639
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    :cond_3
    :goto_1
    return-object v8

    .line 634
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 635
    .local v3, "ee":Ljava/io/IOException;
    const-string v10, "AdaptiveDisplayColorService"

    const-string v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 636
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_1

    .line 624
    .end local v3    # "ee":Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 631
    :goto_2
    if-eqz v5, :cond_3

    .line 633
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 634
    :catch_2
    move-exception v3

    .line 635
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v10, "AdaptiveDisplayColorService"

    const-string v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 627
    .end local v3    # "ee":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 628
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 629
    const-string v10, "AdaptiveDisplayColorService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 631
    if-eqz v5, :cond_3

    .line 633
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 634
    :catch_4
    move-exception v3

    .line 635
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v10, "AdaptiveDisplayColorService"

    const-string v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 631
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ee":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v5, :cond_4

    .line 633
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 636
    :cond_4
    :goto_5
    throw v10

    .line 634
    :catch_5
    move-exception v3

    .line 635
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v11, "AdaptiveDisplayColorService"

    const-string v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 631
    .end local v3    # "ee":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 627
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 624
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_7
    move-exception v10

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_2

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :cond_5
    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private handleRgbSensorEvent(JIIII)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "lux"    # I

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v0

    .line 644
    .local v0, "isInControlZone":I
    iget v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevContorlZone:I

    if-eq v1, v0, :cond_0

    .line 645
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 646
    iput-wide p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastChangedRgbTime:J

    .line 647
    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 648
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 651
    :cond_0
    if-lez v0, :cond_1

    .line 652
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/android/server/AdaptiveDisplayColorService;->setAverageValue(IIII)V

    .line 654
    :cond_1
    return-void
.end method

.method private initRgbAverage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 668
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    .line 669
    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSumLux:I

    .line 670
    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 671
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mValidZone:Z

    .line 672
    return-void
.end method

.method private isInBoundary()I
    .locals 1

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v0, :cond_0

    .line 660
    const/4 v0, 0x2

    .line 664
    :goto_0
    return v0

    .line 661
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v0, :cond_1

    .line 662
    const/4 v0, 0x1

    goto :goto_0

    .line 664
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private max_num(II)I
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 1082
    if-lt p1, p2, :cond_0

    .line 1085
    .end local p1    # "a":I
    :goto_0
    return p1

    .restart local p1    # "a":I
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private min_num(II)I
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 1074
    if-ge p1, p2, :cond_0

    .line 1077
    .end local p1    # "a":I
    :goto_0
    return p1

    .restart local p1    # "a":I
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private monitorForegroundBrowser(Ljava/lang/String;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 516
    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z

    if-eqz v7, :cond_2

    .line 517
    const-string v6, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 518
    iput-boolean v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z

    .line 519
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_1

    .line 520
    invoke-direct {p0, v5}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 585
    :cond_1
    :goto_0
    return-void

    .line 523
    :cond_2
    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    if-eqz v7, :cond_4

    .line 524
    iget-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v6, :cond_1

    .line 525
    iput-boolean v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 526
    iget-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_3

    .line 527
    invoke-direct {p0, v5}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 528
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 529
    .local v3, "time":J
    iget-object v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v5, v9}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 530
    iget-object v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v5, v9, v3, v4}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 534
    .end local v3    # "time":J
    :cond_4
    const/4 v1, 0x0

    .line 535
    .local v1, "isBrowser":Z
    const/4 v2, 0x0

    .line 536
    .local v2, "isReading":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    array-length v7, v7

    if-ge v0, v7, :cond_6

    .line 537
    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 538
    const/4 v1, 0x1

    .line 536
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 542
    :cond_6
    const-string/jumbo v7, "sys.ssrm.mdnie"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "9"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 544
    if-eqz v2, :cond_9

    .line 545
    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v7, :cond_1

    .line 546
    iput-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 547
    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v7, :cond_8

    :cond_7
    move v5, v6

    :cond_8
    iput-boolean v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAdaptiveDisplayColorServiceEnable:Z

    .line 548
    iget-boolean v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAdaptiveDisplayColorServiceEnable:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-nez v5, :cond_1

    .line 549
    invoke-direct {p0, v6}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto :goto_0

    .line 553
    :cond_9
    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v7, :cond_a

    .line 554
    iput-boolean v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 555
    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v7, :cond_a

    .line 556
    invoke-direct {p0, v5}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 560
    :cond_a
    if-eqz v1, :cond_e

    .line 561
    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-nez v7, :cond_1

    .line 562
    iput-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 563
    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    if-eqz v7, :cond_c

    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v7, :cond_b

    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v7, :cond_c

    :cond_b
    move v5, v6

    :cond_c
    iput-boolean v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAdaptiveDisplayColorServiceEnable:Z

    .line 564
    iget-boolean v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAdaptiveDisplayColorServiceEnable:Z

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-nez v5, :cond_d

    .line 565
    invoke-direct {p0, v6}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 568
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 569
    .restart local v3    # "time":J
    iget-object v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v5, v10}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 570
    iget-object v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v6, 0x1f4

    add-long/2addr v6, v3

    invoke-virtual {v5, v10, v6, v7}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 573
    .end local v3    # "time":J
    :cond_e
    iget-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v6, :cond_1

    .line 574
    iput-boolean v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 575
    iget-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_f

    .line 576
    invoke-direct {p0, v5}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 577
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 578
    .restart local v3    # "time":J
    iget-object v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v5, v9}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 579
    iget-object v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v5, v9, v3, v4}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0
.end method

.method private receive_screen_off_intent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 388
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 389
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEmergencyModeEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    .line 390
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 391
    invoke-direct {p0, v1}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v0}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v0}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->interrupt()V

    .line 398
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 389
    goto :goto_0
.end method

.method private receive_screen_on_intent()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 376
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 377
    iput-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 378
    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEmergencyModeEnabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    .line 379
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$1;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    .line 382
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v0}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->start()V

    .line 385
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 378
    goto :goto_0
.end method

.method private sendForcedRGB(IIII)V
    .locals 3
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I

    .prologue
    .line 675
    add-int v1, p1, p2

    add-int v0, v1, p3

    .line 677
    .local v0, "sumRGB":I
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    .line 678
    int-to-float v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    .line 679
    int-to-float v1, p3

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    .line 680
    iput p4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSumLux:I

    .line 681
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 683
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->sendRgbAverage()V

    .line 684
    return-void
.end method

.method private sendRgbAverage()V
    .locals 31

    .prologue
    .line 750
    const/16 v22, 0x0

    .local v22, "scrR":I
    const/16 v21, 0x0

    .local v21, "scrG":I
    const/16 v19, 0x0

    .line 751
    .local v19, "scrB":I
    const/16 v18, 0x0

    .local v18, "scr400LuxR":I
    const/16 v17, 0x0

    .local v17, "scr400LuxG":I
    const/16 v16, 0x0

    .line 753
    .local v16, "scr400LuxB":I
    const/4 v5, 0x0

    .local v5, "adjustR":I
    const/4 v4, 0x0

    .local v4, "adjustG":I
    const/4 v3, 0x0

    .line 755
    .local v3, "adjustB":I
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 756
    .local v11, "isEbookmode":Z
    const/16 v27, 0x0

    .line 758
    .local v27, "white_scr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    move/from16 v28, v0

    if-lez v28, :cond_7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 759
    .local v8, "count":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    move/from16 v28, v0

    int-to-float v0, v8

    move/from16 v29, v0

    div-float v15, v28, v29

    .line 760
    .local v15, "r":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    move/from16 v28, v0

    int-to-float v0, v8

    move/from16 v29, v0

    div-float v10, v28, v29

    .line 761
    .local v10, "g":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    move/from16 v28, v0

    int-to-float v0, v8

    move/from16 v29, v0

    div-float v7, v28, v29

    .line 762
    .local v7, "b":F
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 763
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 764
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 765
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mSumLux:I

    move/from16 v28, v0

    div-int v6, v28, v8

    .line 767
    .local v6, "avgLux":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    .line 768
    const-string v28, "AdaptiveDisplayColorService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "AvgR : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgR:F

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", AvgG : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgG:F

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", AvgB : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgB:F

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", avg lux : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 774
    :try_start_0
    const-string v28, "/sys/class/mdnie/mdnie/sensorRGB"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 775
    if-eqz v27, :cond_1

    .line 776
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 777
    .local v20, "scrDatas":[Ljava/lang/String;
    const/16 v28, 0x0

    aget-object v28, v20, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 778
    const/16 v28, 0x1

    aget-object v28, v20, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 779
    const/16 v28, 0x2

    aget-object v28, v20, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    .end local v20    # "scrDatas":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 785
    const/16 v28, 0xff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    .line 786
    const/16 v28, 0xff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    .line 787
    const/16 v28, 0xff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    .line 791
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3

    .line 792
    if-eqz v11, :cond_9

    .line 793
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 794
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 795
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 801
    :goto_2
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    .line 804
    :cond_3
    move v13, v6

    .line 805
    .local v13, "luxValue":I
    const/4 v12, -0x1

    .line 807
    .local v12, "log2Lux":I
    const/16 v28, 0x4

    move/from16 v0, v28

    if-ge v13, v0, :cond_b

    .line 808
    if-eqz v11, :cond_a

    .line 809
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v22, v0

    .line 810
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v21, v0

    .line 811
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v19, v0

    .line 923
    :goto_3
    if-eqz v22, :cond_6

    if-eqz v21, :cond_6

    if-eqz v19, :cond_6

    .line 925
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    .line 926
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    .line 927
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    .line 928
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    .line 930
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 931
    const-string v28, "AdaptiveDisplayColorService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "scrR : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", scrG : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", scrB : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v28, v0

    move/from16 v0, v22

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v28, v0

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    .line 934
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgR:I

    .line 935
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgG:I

    .line 936
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgB:I

    .line 937
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AdaptiveDisplayColorService;->animateScrRGB()V

    .line 940
    :cond_6
    return-void

    .line 758
    .end local v6    # "avgLux":I
    .end local v7    # "b":F
    .end local v8    # "count":I
    .end local v10    # "g":F
    .end local v12    # "log2Lux":I
    .end local v13    # "luxValue":I
    .end local v15    # "r":F
    :cond_7
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 781
    .restart local v6    # "avgLux":I
    .restart local v7    # "b":F
    .restart local v8    # "count":I
    .restart local v10    # "g":F
    .restart local v15    # "r":F
    :catch_0
    move-exception v9

    .line 782
    .local v9, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 784
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 785
    const/16 v28, 0xff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    .line 786
    const/16 v28, 0xff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    .line 787
    const/16 v28, 0xff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    goto/16 :goto_1

    .line 784
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    .line 785
    const/16 v29, 0xff

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    .line 786
    const/16 v29, 0xff

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    .line 787
    const/16 v29, 0xff

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    :cond_8
    throw v28

    .line 797
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    .line 798
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    .line 799
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    goto/16 :goto_2

    .line 813
    .restart local v12    # "log2Lux":I
    .restart local v13    # "luxValue":I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v22, v0

    .line 814
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v21, v0

    .line 815
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v19, v0

    goto/16 :goto_3

    .line 819
    :cond_b
    :goto_4
    if-eqz v13, :cond_c

    .line 820
    shr-int/lit8 v13, v13, 0x1

    .line 821
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 824
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    move/from16 v28, v0

    if-nez v28, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    move/from16 v28, v0

    if-eqz v28, :cond_13

    .line 825
    :cond_d
    if-eqz v11, :cond_e

    .line 826
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustR:I

    .line 827
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustG:I

    .line 828
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustB:I

    .line 835
    :goto_5
    const v28, 0x4b189680    # 1.0E7f

    mul-float v28, v28, v15

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrR:I

    move/from16 v29, v0

    div-int v26, v28, v29

    .line 836
    .local v26, "testR":I
    const v28, 0x4b189680    # 1.0E7f

    mul-float v28, v28, v10

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrG:I

    move/from16 v29, v0

    div-int v25, v28, v29

    .line 837
    .local v25, "testG":I
    const v28, 0x4b189680    # 1.0E7f

    mul-float v28, v28, v7

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrB:I

    move/from16 v29, v0

    div-int v24, v28, v29

    .line 839
    .local v24, "testB":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v14

    .line 840
    .local v14, "maxValue":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v14, v1}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v14

    .line 842
    move/from16 v0, v26

    if-ne v14, v0, :cond_f

    .line 843
    const/16 v22, 0xff

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    mul-float v28, v28, v15

    mul-float v28, v28, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    mul-float v29, v29, v10

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x2

    aget v29, v29, v30

    mul-float v29, v29, v15

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x3

    aget v29, v29, v30

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x4

    aget v29, v29, v30

    mul-float v29, v29, v15

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x5

    aget v29, v29, v30

    add-float v23, v28, v29

    .line 847
    .local v23, "temp":F
    const/high16 v28, 0x437f0000    # 255.0f

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v21, v0

    .line 848
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v21

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v28, v0

    const/16 v29, 0x6

    aget v28, v28, v29

    mul-float v28, v28, v15

    mul-float v28, v28, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x7

    aget v29, v29, v30

    mul-float v29, v29, v7

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x8

    aget v29, v29, v30

    mul-float v29, v29, v15

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x9

    aget v29, v29, v30

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0xa

    aget v29, v29, v30

    mul-float v29, v29, v15

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0xb

    aget v29, v29, v30

    add-float v23, v28, v29

    .line 852
    const/high16 v28, 0x437f0000    # 255.0f

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v19, v0

    .line 853
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v19

    .line 882
    :goto_6
    add-int v18, v22, v5

    .line 883
    add-int v17, v21, v4

    .line 884
    add-int v16, v19, v3

    .line 886
    const/16 v28, 0x190

    move/from16 v0, v28

    if-ge v6, v0, :cond_12

    .line 888
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    move/from16 v28, v0

    if-eqz v28, :cond_11

    .line 889
    rsub-int/lit8 v28, v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    mul-int v29, v12, v18

    add-int v28, v28, v29

    add-int/lit8 v28, v28, 0x4

    div-int/lit8 v22, v28, 0x8

    .line 890
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v22

    .line 892
    rsub-int/lit8 v28, v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    mul-int v29, v12, v17

    add-int v28, v28, v29

    add-int/lit8 v28, v28, 0x4

    div-int/lit8 v21, v28, 0x8

    .line 893
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v21

    .line 895
    rsub-int/lit8 v28, v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    mul-int v29, v12, v16

    add-int v28, v28, v29

    add-int/lit8 v28, v28, 0x4

    div-int/lit8 v19, v28, 0x8

    .line 896
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v19

    goto/16 :goto_3

    .line 830
    .end local v14    # "maxValue":I
    .end local v23    # "temp":F
    .end local v24    # "testB":I
    .end local v25    # "testG":I
    .end local v26    # "testR":I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v28, v0

    move/from16 v0, v28

    add-int/lit16 v5, v0, -0xff

    .line 831
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v28, v0

    move/from16 v0, v28

    add-int/lit16 v4, v0, -0xff

    .line 832
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v28, v0

    move/from16 v0, v28

    add-int/lit16 v3, v0, -0xff

    goto/16 :goto_5

    .line 855
    .restart local v14    # "maxValue":I
    .restart local v24    # "testB":I
    .restart local v25    # "testG":I
    .restart local v26    # "testR":I
    :cond_f
    move/from16 v0, v24

    if-ne v14, v0, :cond_10

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v28, v0

    const/16 v29, 0xc

    aget v28, v28, v29

    mul-float v28, v28, v15

    mul-float v28, v28, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0xd

    aget v29, v29, v30

    mul-float v29, v29, v7

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0xe

    aget v29, v29, v30

    mul-float v29, v29, v15

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0xf

    aget v29, v29, v30

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x10

    aget v29, v29, v30

    mul-float v29, v29, v15

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x11

    aget v29, v29, v30

    add-float v23, v28, v29

    .line 858
    .restart local v23    # "temp":F
    const/high16 v28, 0x437f0000    # 255.0f

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v22, v0

    .line 859
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v22

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v28, v0

    const/16 v29, 0x12

    aget v28, v28, v29

    mul-float v28, v28, v10

    mul-float v28, v28, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x13

    aget v29, v29, v30

    mul-float v29, v29, v7

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x14

    aget v29, v29, v30

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x15

    aget v29, v29, v30

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x16

    aget v29, v29, v30

    mul-float v29, v29, v10

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x17

    aget v29, v29, v30

    add-float v23, v28, v29

    .line 863
    const/high16 v28, 0x437f0000    # 255.0f

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v21, v0

    .line 864
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v21

    .line 866
    const/16 v19, 0xff

    goto/16 :goto_6

    .line 869
    .end local v23    # "temp":F
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v28, v0

    const/16 v29, 0x18

    aget v28, v28, v29

    mul-float v28, v28, v15

    mul-float v28, v28, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x19

    aget v29, v29, v30

    mul-float v29, v29, v10

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1a

    aget v29, v29, v30

    mul-float v29, v29, v15

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1b

    aget v29, v29, v30

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1c

    aget v29, v29, v30

    mul-float v29, v29, v15

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1d

    aget v29, v29, v30

    add-float v23, v28, v29

    .line 871
    .restart local v23    # "temp":F
    const/high16 v28, 0x437f0000    # 255.0f

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v22, v0

    .line 872
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v22

    .line 874
    const/16 v21, 0xff

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v28, v0

    const/16 v29, 0x1e

    aget v28, v28, v29

    mul-float v28, v28, v10

    mul-float v28, v28, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1f

    aget v29, v29, v30

    mul-float v29, v29, v7

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x20

    aget v29, v29, v30

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x21

    aget v29, v29, v30

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x22

    aget v29, v29, v30

    mul-float v29, v29, v10

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x23

    aget v29, v29, v30

    add-float v23, v28, v29

    .line 878
    const/high16 v28, 0x437f0000    # 255.0f

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v19, v0

    .line 879
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v19

    goto/16 :goto_6

    .line 898
    :cond_11
    rsub-int/lit8 v28, v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    mul-int v29, v12, v18

    add-int v28, v28, v29

    add-int/lit8 v28, v28, 0x4

    div-int/lit8 v22, v28, 0x8

    .line 899
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v22

    .line 901
    rsub-int/lit8 v28, v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    mul-int v29, v12, v17

    add-int v28, v28, v29

    add-int/lit8 v28, v28, 0x4

    div-int/lit8 v21, v28, 0x8

    .line 902
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v21

    .line 904
    rsub-int/lit8 v28, v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    mul-int v29, v12, v16

    add-int v28, v28, v29

    add-int/lit8 v28, v28, 0x4

    div-int/lit8 v19, v28, 0x8

    .line 905
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v19

    goto/16 :goto_3

    .line 910
    :cond_12
    move/from16 v22, v18

    .line 911
    move/from16 v21, v17

    .line 912
    move/from16 v19, v16

    goto/16 :goto_3

    .line 917
    .end local v14    # "maxValue":I
    .end local v23    # "temp":F
    .end local v24    # "testB":I
    .end local v25    # "testG":I
    .end local v26    # "testR":I
    :cond_13
    const/16 v22, 0x0

    .line 918
    const/16 v21, 0x0

    .line 919
    const/16 v19, 0x0

    goto/16 :goto_3
.end method

.method private setAverageValue(IIII)V
    .locals 10
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I

    .prologue
    const/4 v9, 0x0

    .line 687
    add-int v6, p1, p2

    add-int v3, v6, p3

    .line 688
    .local v3, "sumRGB":I
    const/4 v2, 0x0

    .local v2, "ratioR":F
    const/4 v1, 0x0

    .local v1, "ratioG":F
    const/4 v0, 0x0

    .line 690
    .local v0, "ratioB":F
    int-to-float v6, p1

    int-to-float v7, v3

    div-float v2, v6, v7

    .line 691
    int-to-float v6, p2

    int-to-float v7, v3

    div-float v1, v6, v7

    .line 692
    int-to-float v6, p3

    int-to-float v7, v3

    div-float v0, v6, v7

    .line 694
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgR:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgG:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgB:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 695
    :cond_0
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    add-float/2addr v6, v2

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    .line 696
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    add-float/2addr v6, v1

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    .line 697
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    add-float/2addr v6, v0

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    .line 698
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSumLux:I

    add-int/2addr v6, p4

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSumLux:I

    .line 699
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 701
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_1

    .line 702
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 703
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 704
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 706
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 709
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mValidZone:Z

    if-nez v6, :cond_2

    .line 710
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 711
    .local v4, "time":J
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mValidZone:Z

    .line 712
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v9}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 713
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v7, 0x1770

    add-long/2addr v7, v4

    invoke-virtual {v6, v9, v7, v8}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 720
    .end local v4    # "time":J
    :cond_2
    :goto_0
    return-void

    .line 717
    :cond_3
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 718
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v9}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method private setBrowserMode()V
    .locals 6

    .prologue
    .line 999
    const/4 v2, 0x0

    .line 1000
    .local v2, "scenario":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1003
    .local v1, "isEbookScenario":Z
    :try_start_0
    const-string v4, "/sys/class/mdnie/mdnie/scenario"

    invoke-direct {p0, v4}, Lcom/android/server/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1004
    if-eqz v2, :cond_0

    .line 1005
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    .line 1006
    const-string v4, "9"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1007
    const/4 v1, 0x1

    .line 1017
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1018
    const/16 v4, 0x8

    invoke-static {v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeReadingMode(I)Z

    .line 1020
    :cond_1
    return-void

    .line 1009
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1010
    .local v3, "scrDatas":[Ljava/lang/String;
    const/4 v4, 0x4

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "eBOOK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1011
    const/4 v1, 0x1

    goto :goto_0

    .line 1014
    .end local v3    # "scrDatas":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1015
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setting_is_changed()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 429
    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 432
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "lcd_curtain"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    .line 433
    const-string v1, "high_contrast"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    .line 434
    const-string v1, "color_blind"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    .line 435
    const-string v1, "screen_mode_automatic_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    .line 437
    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEmergencyModeEnabled:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    if-eqz v1, :cond_5

    :goto_4
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    .line 439
    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    if-eqz v1, :cond_6

    .line 440
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    if-nez v1, :cond_0

    .line 441
    new-instance v1, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$1;)V

    iput-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    .line 442
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->start()V

    .line 452
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_5
    return-void

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    move v1, v3

    .line 432
    goto :goto_0

    :cond_2
    move v1, v3

    .line 433
    goto :goto_1

    :cond_3
    move v1, v3

    .line 434
    goto :goto_2

    :cond_4
    move v1, v3

    .line 435
    goto :goto_3

    :cond_5
    move v2, v3

    .line 437
    goto :goto_4

    .line 445
    :cond_6
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->interrupt()V

    goto :goto_5
.end method

.method private terminateScrRGB()V
    .locals 6

    .prologue
    .line 1023
    const/4 v2, 0x0

    .line 1024
    .local v2, "scenario":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1027
    .local v1, "isUIScenario":Z
    :try_start_0
    const-string v4, "/sys/class/mdnie/mdnie/scenario"

    invoke-direct {p0, v4}, Lcom/android/server/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1028
    if-eqz v2, :cond_0

    .line 1029
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    .line 1030
    const-string v4, "8"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1031
    const/4 v1, 0x1

    .line 1042
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1043
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeReadingMode(I)Z

    .line 1045
    :cond_1
    return-void

    .line 1033
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1034
    .local v3, "scrDatas":[Ljava/lang/String;
    const/4 v4, 0x4

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BROWSER"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1035
    const/4 v1, 0x1

    goto :goto_0

    .line 1038
    .end local v3    # "scrDatas":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1039
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method systemReady()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 202
    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110081

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 205
    iget-boolean v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    if-eqz v7, :cond_1

    .line 206
    new-instance v7, Landroid/hardware/SystemSensorManager;

    iget-object v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v9}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 207
    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    .line 209
    new-instance v7, Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    iget-object v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-direct {v7, p0, v8}, Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    .line 211
    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 213
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string v7, "lcd_curtain"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v5, v7, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 215
    const-string v7, "high_contrast"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v5, v7, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 217
    const-string v7, "color_blind"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v5, v7, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 219
    const-string v7, "screen_mode_automatic_setting"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v5, v7, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 222
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v7, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v7, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$1;)V

    invoke-virtual {v7, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    iput-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    .line 233
    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0054

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 234
    .local v2, "foreground_delay_time":I
    if-eqz v2, :cond_0

    .line 235
    int-to-long v7, v2

    iput-wide v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->foregroundThreadDelayMillis:J

    .line 237
    :cond_0
    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070048

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 238
    .local v0, "adj_rgb":[I
    aget v7, v0, v10

    iput v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustR:I

    .line 239
    aget v7, v0, v11

    iput v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustG:I

    .line 240
    aget v7, v0, v12

    iput v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustB:I

    .line 242
    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070049

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 243
    .local v6, "test_rgb":[I
    aget v7, v6, v10

    iput v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrR:I

    .line 244
    aget v7, v6, v11

    iput v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrG:I

    .line 245
    aget v7, v6, v12

    iput v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrB:I

    .line 247
    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107004a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "coefficientStringArray":[Ljava/lang/String;
    const/16 v7, 0x24

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    .line 251
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_1

    .line 252
    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    aget-object v8, v1, v3

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v7, v3

    .line 251
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    .end local v0    # "adj_rgb":[I
    .end local v1    # "coefficientStringArray":[Ljava/lang/String;
    .end local v2    # "foreground_delay_time":I
    .end local v3    # "i":I
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "test_rgb":[I
    :cond_1
    return-void
.end method
