.class public Lcom/android/server/WifiOffloadService;
.super Landroid/net/wifi/IWifiOffloadManager$Stub;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_REQUEST:Ljava/lang/String; = "com.android.server.wifi_offload.ACTION_DELETE_REQUEST"

.field private static final BACK_KEY_TIMER:J = 0x668a0L

.field private static final DATA_ACTIVITY_CHECK_INTERVAL:J = 0xdbba0L

.field private static final DATA_ACTIVITY_CHECK_START_DELAY:J = 0xdbba0L

.field private static final DATA_USAGE_THRESHOLD:I = 0x1

.field private static DBG:Z = false

.field private static final DBG_ERR:Z = true

.field private static final DONT_USE_WIFI_PRESS_TIMER:I = 0x2d0

.field private static final EXTRA_SSID:Ljava/lang/String; = "delete_ssid"

.field private static final MAX_SHOW_DIALOG_CNT:I = 0x3

.field static final PROPERTY_DATA_USAGE_THREHOLD:Ljava/lang/String; = "persist.offload.datausage.limit"

.field static final PROPERTY_DONT_USE_WIFI_TIME:Ljava/lang/String; = "persist.offload.dontuse.time"

.field private static final START_WIFIOFFLOAD_DIALOG_DELAYED_MSG:I = 0x64

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiOffloadService"

.field public static USER_PRESSED_BACK_KEY:I = 0x0

.field public static USER_PRESSED_NEVER_TURN_ON_WIFI:I = 0x0

.field public static USER_PRESSED_OK:I = 0x0

.field public static USER_PRESSED_TURN_OFF_WIFI:I = 0x0

.field private static final WIFIOFFLOAD_APDIALOG_LAUNCH_DELAYTIME:I = 0x3e8

.field public static dialogCreatedObj:Ljava/lang/Object;

.field static isRunning:Z

.field private static mTempPopupBlocked:Z

.field private static mWifiOffloadTempCnt:I

.field private static mWifiOffloadTempStationId:I

.field static obj:Ljava/lang/Object;


# instance fields
.field WiFiDataReceiver:Landroid/content/BroadcastReceiver;

.field public appRunOverWiFiResult:I

.field applistDB:Landroid/database/sqlite/SQLiteDatabase;

.field private blacklistedApps:[Ljava/lang/String;

.field private bootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

.field private checkBackKeyTimer:Ljava/util/Timer;

.field private checkDataActivityTimer:Ljava/util/Timer;

.field dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

.field private deleteRequestReceiver:Landroid/content/BroadcastReceiver;

.field private dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private funcCallTimer:I

.field private gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

.field private isBootCompleted:Z

.field private isDontUsewifiPressed:Z

.field private isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isUserPressedNeverTurnOnWifi:Z

.field public isWiFiConnected:Z

.field private lastWifiScanTime:J

.field private mContext:Landroid/content/Context;

.field private mDataUsageLimitCrossed:Z

.field private mDeviceType:Ljava/lang/String;

.field private mDoNotShowOffloadDialogsDelay:J

.field private mDontUseWifiTimerIsRunning:Z

.field public mIsBatteryCharging:Z

.field public mIsServiceReadyForIntelScanMode:Z

.field private mIsTablet:Z

.field private mIsWifiOffloadDialogIntentSent:Z

.field private mNewSupplicantState:Landroid/net/wifi/SupplicantState;

.field public mNoWifiTimerStartTime:J

.field public mPackageName:Ljava/lang/String;

.field private mSeamlessConnectWhileConnecting:Z

.field private mStartDialogIntent:Landroid/content/Intent;

.field private mWaitForScanResults:Z

.field private mWifiNative:Landroid/net/wifi/WifiNative;

.field private mWifiOffloadLog:Ljava/lang/StringBuilder;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private messageHandler:Landroid/os/Handler;

.field private noKnownNetwork:Z

.field public offloadObj:Ljava/lang/Object;

.field private pm:Landroid/content/pm/PackageManager;

.field private prevWiFiState:Z

.field public previousBaseStation:I

.field private scanCallTimer:I

.field private scanResultAvailable:Landroid/content/BroadcastReceiver;

.field private scanResults:Landroid/content/BroadcastReceiver;

.field private stationID:I

.field private testStationID:I

.field private tm:Landroid/telephony/TelephonyManager;

.field private wifiAuth:Ljava/lang/String;

.field private wifiBSSID:Ljava/lang/String;

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field private wifiSSID:Ljava/lang/String;

.field wifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    .line 130
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    .line 131
    sput v1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    .line 133
    sput v1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    .line 170
    sput v1, Lcom/android/server/WifiOffloadService;->USER_PRESSED_OK:I

    .line 171
    const/4 v0, 0x1

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_TURN_OFF_WIFI:I

    .line 172
    const/4 v0, 0x2

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_NEVER_TURN_ON_WIFI:I

    .line 173
    const/4 v0, 0x3

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_BACK_KEY:I

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    .line 913
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    .line 914
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->isRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 233
    invoke-direct {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;-><init>()V

    .line 125
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 126
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 127
    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 128
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    .line 142
    iput v6, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    .line 143
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    .line 144
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    .line 145
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    .line 147
    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 148
    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    .line 151
    iput v4, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    .line 152
    iput v4, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    .line 155
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    .line 157
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    .line 162
    const-string v2, "persist.offload.dontuse.time"

    const/16 v3, 0x2d0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    .line 165
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    .line 169
    iput v6, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    .line 175
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    .line 177
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mIsServiceReadyForIntelScanMode:Z

    .line 182
    iput v6, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    .line 185
    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    .line 187
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    .line 192
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 194
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    .line 196
    iput-wide v7, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    .line 199
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mDataUsageLimitCrossed:Z

    .line 202
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    .line 204
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    .line 206
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    .line 215
    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    .line 219
    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    .line 220
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    .line 503
    new-instance v2, Lcom/android/server/WifiOffloadService$1;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$1;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    .line 541
    new-instance v2, Lcom/android/server/WifiOffloadService$2;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$2;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 569
    new-instance v2, Lcom/android/server/WifiOffloadService$3;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$3;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->deleteRequestReceiver:Landroid/content/BroadcastReceiver;

    .line 676
    iput-wide v7, p0, Lcom/android/server/WifiOffloadService;->mNoWifiTimerStartTime:J

    .line 1133
    new-instance v2, Lcom/android/server/WifiOffloadService$5;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$5;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->scanResultAvailable:Landroid/content/BroadcastReceiver;

    .line 1149
    new-instance v2, Lcom/android/server/WifiOffloadService$6;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$6;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->scanResults:Landroid/content/BroadcastReceiver;

    .line 1288
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1352
    new-instance v2, Lcom/android/server/WifiOffloadService$7;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$7;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1395
    new-instance v2, Lcom/android/server/WifiOffloadService$8;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$8;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    .line 2251
    iput v6, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 234
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    .line 236
    const-string v2, "WifiOffloadService is started . . ."

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->createWiFiOffloadDB()V

    .line 241
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 242
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v2, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->deleteRequestReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.wifi_offload.ACTION_DELETE_REQUEST"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->wifiStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->scanResults:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    const-string/jumbo v2, "wifi.interface"

    const-string/jumbo v3, "wlan0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "mInterfaceName":Ljava/lang/String;
    new-instance v2, Landroid/net/wifi/WifiNative;

    invoke-direct {v2, v1}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 267
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 269
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    .line 270
    const-string v2, "WifiOffloadService"

    const-string v3, "WifiManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    .line 275
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isTablet()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->mIsTablet:Z

    .line 278
    invoke-static {}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->initStats()V

    .line 279
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/WifiOffloadService;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/WifiOffloadService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/WifiOffloadService;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;
    .param p1, "x1"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p1
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 96
    sput-boolean p0, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    return p0
.end method

.method static synthetic access$1402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 96
    sput p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    return p0
.end method

.method static synthetic access$1502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 96
    sput p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/WifiOffloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/WifiOffloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->startWifiOffloadAPDialog()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/WifiOffloadService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/WifiOffloadService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->scanResultAvailable:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/WifiOffloadService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/server/WifiOffloadService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;
    .param p1, "x1"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/server/WifiOffloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/WifiOffloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->hasNetworkInRange()V

    return-void
.end method

.method private addDumpLogs(Ljava/lang/String;)V
    .locals 3
    .param p1, "logs"    # Ljava/lang/String;

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2137
    return-void
.end method

.method private calculateDataUsageforInterface(ILandroid/net/NetworkTemplate;)J
    .locals 10
    .param p1, "uid"    # I
    .param p2, "interfaceTemplate"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1899
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiOffloadService;->getDataUsageForUid(ILandroid/net/NetworkTemplate;)J

    move-result-wide v2

    .line 1901
    .local v2, "dataUsage":J
    iget-object v7, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/wifi_offload/ExceptionalAppList;->getListOfDependentPackageNamesForDataUsage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1903
    .local v6, "listOfPackagesForDataUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1908
    .local v0, "currentPackage":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    const/16 v8, 0x80

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v1, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1910
    .local v1, "currentPackageUid":I
    invoke-direct {p0, v1, p2}, Lcom/android/server/WifiOffloadService;->getDataUsageForUid(ILandroid/net/NetworkTemplate;)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    add-long/2addr v2, v7

    goto :goto_0

    .line 1912
    .end local v1    # "currentPackageUid":I
    :catch_0
    move-exception v4

    .line 1914
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "WifiOffloadService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Tried to check data usage for dependencies but failed to find package. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1922
    .end local v0    # "currentPackage":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-wide v2
.end method

.method private checkInExceptionalAppList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1830
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1831
    iget-boolean v2, p0, Lcom/android/server/WifiOffloadService;->mIsTablet:Z

    if-eqz v2, :cond_2

    .line 1832
    const-string v2, "TABLET blacklistedApps"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1833
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList_Tablet:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    .line 1840
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_3

    .line 1849
    :cond_1
    :goto_1
    return v1

    .line 1835
    :cond_2
    const-string v2, "Smartphone blacklistedApps"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1836
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    goto :goto_0

    .line 1842
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comparing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1844
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1845
    const/4 v1, 0x1

    goto :goto_1

    .line 1842
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private checkInWifiOnlyAppList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1869
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 1877
    :cond_0
    :goto_0
    return v1

    .line 1871
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comparing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1873
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1874
    const/4 v1, 0x1

    goto :goto_0

    .line 1871
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private checkInternetPermission(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2114
    const/4 v0, -0x1

    .line 2117
    .local v0, "perm":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2122
    :goto_0
    if-nez v0, :cond_0

    .line 2123
    const/4 v2, 0x1

    .line 2125
    :goto_1
    return v2

    .line 2118
    :catch_0
    move-exception v1

    .line 2120
    .local v1, "re":Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in checkInternetPermission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2125
    .end local v1    # "re":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkSignalStrength(Ljava/lang/String;)Z
    .locals 7
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 480
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 481
    .local v2, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 482
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_1

    .line 483
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 484
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 485
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 486
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    const/16 v6, -0xc8

    if-ne v5, v6, :cond_2

    .line 495
    .end local v0    # "iterator":Ljava/util/Iterator;
    .end local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_1
    :goto_0
    return v4

    .line 491
    .restart local v0    # "iterator":Ljava/util/Iterator;
    .restart local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    .line 1591
    if-nez p0, :cond_1

    .line 1592
    const-string p0, ""

    .line 1603
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "lastPos":I
    :cond_0
    :goto_0
    return-object p0

    .line 1594
    .end local v0    # "lastPos":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1595
    const-string p0, ""

    goto :goto_0

    .line 1598
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1599
    .restart local v0    # "lastPos":I
    if-ltz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1600
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private dumpAllStoredWifidata(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 2159
    const-string v0, "DUMP ALL THE STORED WIFI NETWORKS"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2160
    const/4 v7, 0x0

    .line 2162
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "stationid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "wifissid"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2169
    :goto_0
    if-nez v7, :cond_0

    .line 2170
    const-string v0, "WIFI_OFFLOAD_TABLE : wifi_data is NULL"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2184
    :goto_1
    return-void

    .line 2165
    :catch_0
    move-exception v8

    .line 2166
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in requestWifiListForStationID for dbHelper.query "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2172
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2174
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nBase station : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stationid"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Network Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wifissid"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2180
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2182
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private dumpAppDataUsage(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 2187
    const-string v0, "DUMP ALL THE STORED WIFI NETWORKS"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2188
    const/4 v7, 0x0

    .line 2190
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkgname"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "datausage"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "launchcount"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "data_usage"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2197
    :goto_0
    if-nez v7, :cond_0

    .line 2198
    const-string v0, "DATA_USAGE_TABLE : data_usage is NULL"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2216
    :goto_1
    return-void

    .line 2193
    :catch_0
    move-exception v8

    .line 2194
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in requestWifiListForStationID for dbHelper.query "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2200
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2202
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nApp package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pkgname"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Data Usage   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "datausage"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Launch count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "launchcount"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2212
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2214
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2094
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2096
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 2097
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 2099
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDataUsageForUid(ILandroid/net/NetworkTemplate;)J
    .locals 11
    .param p1, "appUid"    # I
    .param p2, "statsTemplate"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1934
    const/4 v9, 0x0

    .line 1935
    .local v9, "history":Landroid/net/NetworkStatsHistory;
    const/4 v0, 0x0

    .line 1940
    .local v0, "statsSession":Landroid/net/INetworkStatsSession;
    :try_start_0
    const-string v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v10

    .line 1942
    .local v10, "statsService":Landroid/net/INetworkStatsService;
    if-eqz v10, :cond_0

    .line 1943
    invoke-interface {v10}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    .line 1945
    :cond_0
    if-eqz v0, :cond_2

    .line 1946
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v1, p2

    move v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1960
    .end local v9    # "history":Landroid/net/NetworkStatsHistory;
    .end local v10    # "statsService":Landroid/net/INetworkStatsService;
    .local v1, "history":Landroid/net/NetworkStatsHistory;
    :goto_0
    if-eqz v0, :cond_1

    .line 1961
    :try_start_1
    invoke-interface {v0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1969
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 1970
    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 1972
    .local v8, "entry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v8, :cond_3

    .line 1973
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataUsage for app with uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v5, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1975
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v4, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v2, v4

    .line 1978
    .end local v8    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :goto_2
    return-wide v2

    .line 1949
    .end local v1    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v9    # "history":Landroid/net/NetworkStatsHistory;
    :catch_0
    move-exception v7

    .line 1951
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError in getting UID history "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v9

    .line 1957
    .end local v9    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v1    # "history":Landroid/net/NetworkStatsHistory;
    goto :goto_0

    .line 1953
    .end local v1    # "history":Landroid/net/NetworkStatsHistory;
    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v9    # "history":Landroid/net/NetworkStatsHistory;
    :catch_1
    move-exception v7

    .line 1955
    .local v7, "e":Landroid/os/RemoteException;
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get history for uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_2
    move-object v1, v9

    .end local v9    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v1    # "history":Landroid/net/NetworkStatsHistory;
    goto :goto_0

    .line 1963
    :catch_2
    move-exception v7

    .line 1965
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ex in closing statsSession "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1978
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method private getDialogShown()Z
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 1507
    const/4 v0, 0x0

    return-object v0
.end method

.method private getWifiState()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private hasNetworkInRange()V
    .locals 7

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->requestWifiListForStationID(I)[Ljava/lang/String;

    move-result-object v4

    .line 1173
    .local v4, "wifiLocationNetworks":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    .line 1174
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 1175
    .local v3, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v3, :cond_1

    .line 1193
    .end local v3    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    :goto_0
    return-void

    .line 1177
    .restart local v3    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 1180
    .local v2, "scanResult":Landroid/net/wifi/ScanResult;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 1183
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    sget-object v6, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v5, v6, :cond_0

    .line 1185
    aget-object v5, v4, v0

    iget-object v6, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1186
    const-string v5, "Wifi was OFF so if ssid is available in SCAN Results turning ON Wi-Fi will connect to AP"

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1180
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1191
    .end local v0    # "i":I
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    goto :goto_0
.end method

.method private insertDataUsage(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertDataUsage for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2105
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2106
    .local v0, "cvalues":Landroid/content/ContentValues;
    const-string/jumbo v1, "userid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2107
    const-string v1, "pkgname"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    const-string v1, "launchcount"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2109
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "data_usage"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2111
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 775
    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 776
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 778
    .local v2, "isAirPlaneModeOn":Z
    :try_start_0
    const-string v4, "airplane_mode_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 785
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "airplaneMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 786
    return v2

    .line 778
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 779
    :catch_0
    move-exception v1

    .line 781
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings AIRPLANE_MODE_ON not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isAnyDataActivity()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 815
    const/4 v0, 0x0

    .line 817
    .local v0, "counter":I
    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_2

    .line 818
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isMobileDataActive()I

    move-result v1

    .line 820
    .local v1, "dataActivity":I
    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 834
    .end local v1    # "dataActivity":I
    :cond_0
    :goto_1
    return v3

    .line 826
    .restart local v1    # "dataActivity":I
    :cond_1
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 827
    :catch_0
    move-exception v2

    .line 829
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "WifiOffloadService"

    const-string v5, "Unable to put worker thread to sleep"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 834
    .end local v1    # "dataActivity":I
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isAppDataUsageLimitExceeded(Ljava/lang/String;)Z
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1982
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 1984
    .local v17, "originalId":J
    const/4 v11, 0x0

    .line 1985
    .local v11, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v21, -0x1

    .line 1986
    .local v21, "uid":I
    const/4 v13, 0x0

    .line 1987
    .local v13, "dataUsageThreshold":I
    const/4 v10, 0x0

    .line 1988
    .local v10, "appLaunchCount":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/WifiOffloadService;->mDataUsageLimitCrossed:Z

    .line 1992
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 1993
    iget v0, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v21, v0

    .line 1994
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APP UID == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2004
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2007
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "userid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "data_usage"

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2009
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_0

    .line 2010
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2011
    const-string v3, "launchcount"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launch count in DB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 2015
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2025
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2036
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v16, 0x1

    .line 2037
    .local v16, "isWifiOn":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WifiOffloadService;->checkIsWifiConnected()Z

    move-result v15

    .line 2038
    .local v15, "isWifiConnected":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n     wifi: on="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " connected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " autoconnect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WifiOffloadService;->isWifiSeamlessConnect()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 2040
    if-nez v16, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WifiOffloadService;->isWifiSeamlessConnect()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v15, :cond_5

    .line 2044
    :cond_2
    const-string v3, "WiFi is OFF or already connected; dont offload but increase app launch count"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2045
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v10}, Lcom/android/server/WifiOffloadService;->updateAppLaunchCount(II)V

    .line 2046
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2047
    const/4 v3, 0x0

    .line 2089
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v15    # "isWifiConnected":Z
    .end local v16    # "isWifiOn":Z
    :goto_1
    return v3

    .line 1996
    :catch_0
    move-exception v14

    .line 1998
    .local v14, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in getting uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2002
    const/4 v3, 0x0

    .line 2004
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v14    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v3

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2017
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiOffloadService;->insertDataUsage(ILjava/lang/String;)V

    .line 2018
    const-string v3, "App lauched for the first time, so dont offload but insert the UID to DB"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2019
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 2020
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2021
    const/4 v3, 0x0

    goto :goto_1

    .line 2036
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2050
    .restart local v15    # "isWifiConnected":Z
    .restart local v16    # "isWifiOn":Z
    :cond_5
    const/high16 v3, 0x100000

    const-string v4, "persist.offload.datausage.limit"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    mul-int v13, v3, v4

    .line 2052
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DATA_USAGE_THRESHOLD = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2055
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/android/server/WifiOffloadService;->calculateDataUsageforInterface(ILandroid/net/NetworkTemplate;)J

    move-result-wide v19

    .line 2057
    .local v19, "totalDataUsage":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Usage for Wi-fi Interface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2058
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n     wifiUsage: total="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " perLaunch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v10

    div-long v4, v19, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 2060
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Usage per launch count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v10

    div-long v4, v19, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2062
    int-to-long v3, v10

    div-long v3, v19, v3

    int-to-long v5, v13

    cmp-long v3, v3, v5

    if-ltz v3, :cond_7

    .line 2063
    const-string v3, "App\'s datausage exceeds the threshold so Offload"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2064
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/WifiOffloadService;->mDataUsageLimitCrossed:Z

    .line 2065
    const-string v3, "\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 2083
    :cond_6
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    dataUsageExceeded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/WifiOffloadService;->mDataUsageLimitCrossed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 2085
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v10}, Lcom/android/server/WifiOffloadService;->updateAppLaunchCount(II)V

    .line 2087
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2088
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDataUsageLimitCrossed ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/WifiOffloadService;->mDataUsageLimitCrossed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2089
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/WifiOffloadService;->mDataUsageLimitCrossed:Z

    goto/16 :goto_1

    .line 2067
    :cond_7
    const-string v3, "Data Usage does not reach threshold yet"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2069
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/WifiOffloadService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/android/server/WifiOffloadService;->calculateDataUsageforInterface(ILandroid/net/NetworkTemplate;)J

    move-result-wide v3

    add-long v19, v19, v3

    .line 2072
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifiAndMobileUsage: total="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " perLaunch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v10

    div-long v4, v19, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 2074
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Usage for Wi-Fi + Mobile Interface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2075
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Usage per launch count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v10

    div-long v4, v19, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2077
    int-to-long v3, v10

    div-long v3, v19, v3

    int-to-long v5, v13

    cmp-long v3, v3, v5

    if-ltz v3, :cond_6

    .line 2078
    const-string v3, "DataUsage exceeds the threshold"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2079
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/WifiOffloadService;->mDataUsageLimitCrossed:Z

    goto/16 :goto_2
.end method

.method private isCurrentProcessRunning(Ljava/lang/String;)Z
    .locals 10
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1004
    const-string v8, "isCurrentProcessRunning without thread"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1006
    if-nez p1, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return v7

    .line 1009
    :cond_1
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1012
    .local v2, "manager":Landroid/app/ActivityManager;
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1013
    .local v3, "originalId":J
    const-string v8, "clearCallingIdentity()"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1014
    const/16 v8, 0x1f4

    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 1015
    .local v6, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v8, "restoreCallingIdentity()"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1016
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1017
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1018
    .local v5, "process":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v5, :cond_2

    .line 1019
    iget-object v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    .line 1020
    const/4 v7, 0x1

    goto :goto_0

    .line 1024
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "originalId":J
    .end local v5    # "process":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v0

    .line 1025
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while checking isCurrentProcessRunning "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isDontUseWifiTimerRunning(I)Z
    .locals 4
    .param p1, "stationID"    # I

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    if-eqz v0, :cond_0

    .line 696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    .line 697
    iget v0, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    if-ne v0, p1, :cond_0

    .line 698
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer is running. Same location. TIMER_DELAY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService;->mNoWifiTimerStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 701
    const-string v0, "12 hrs timer is running. *****"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    .line 707
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "12hrsTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 709
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    return v0
.end method

.method private isHotspotOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 795
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 796
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 798
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 799
    const-string v1, "No wifiManager."

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 805
    :goto_0
    return v0

    .line 802
    :cond_1
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 803
    .local v0, "isMobileHotSpotOn":Z
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobileHotspot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    goto :goto_0

    .line 802
    .end local v0    # "isMobileHotSpotOn":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isLastScanFoundNetworks()Z
    .locals 2

    .prologue
    .line 499
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 500
    .local v0, "lastScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 860
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->mDeviceType:Ljava/lang/String;

    .line 861
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mDeviceType:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setWaitForDialogShown()V
    .locals 2

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1269
    return-void
.end method

.method private setWifiState(I)V
    .locals 1
    .param p1, "wifiState"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 231
    return-void
.end method

.method private startWifiOffloadAPDialog()V
    .locals 5

    .prologue
    .line 1235
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1236
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->setWaitForDialogShown()V

    .line 1237
    const/4 v0, 0x0

    .line 1238
    .local v0, "counter":I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->getDialogShown()Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "counter":I
    .local v1, "counter":I
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 1239
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1240
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity for showAppRunningOverWifiDialog Called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->waitTillDialogDisplayed(I)V

    move v0, v1

    .end local v1    # "counter":I
    .restart local v0    # "counter":I
    goto :goto_0

    .end local v0    # "counter":I
    .restart local v1    # "counter":I
    :cond_0
    move v0, v1

    .line 1244
    .end local v1    # "counter":I
    .restart local v0    # "counter":I
    :cond_1
    return-void
.end method

.method private updateAppLaunchCount(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "currentLaunchCount"    # I

    .prologue
    .line 1926
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1927
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v0, "launchcount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1928
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "data_usage"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    return-void
.end method

.method public static waitTillDialogDisplayed(I)V
    .locals 5
    .param p0, "n"    # I

    .prologue
    .line 1248
    sget-object v2, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    monitor-enter v2

    .line 1250
    :try_start_0
    sget-object v1, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1255
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 1256
    return-void

    .line 1251
    :catch_0
    move-exception v0

    .line 1253
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<<<<<<<<<<<<<<< Waitinption while waiting >>>>>>>>>>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1255
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1
    .param p0, "wifiState"    # I

    .prologue
    .line 1328
    packed-switch p0, :pswitch_data_0

    .line 1338
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 1330
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1332
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1334
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1336
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1328
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blockWifiPopup(IZ)Z
    .locals 3
    .param p1, "mStationId"    # I
    .param p2, "isBlock"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1668
    sget v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    if-ne p1, v0, :cond_1

    .line 1669
    sget v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1670
    const-string/jumbo v0, "wifi offload : Okay, we can show pop up next time"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1684
    :goto_0
    return v2

    .line 1672
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Temporary pop up blocked is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for location = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1673
    sput-boolean p2, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    .line 1674
    sput p1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    .line 1675
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->startBackKeyTimer()V

    goto :goto_0

    .line 1678
    :cond_1
    const-string/jumbo v0, "wifi offload : different station id so reset value"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1679
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    .line 1680
    sput v2, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    .line 1681
    sput p1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    goto :goto_0
.end method

.method public checkAppForWiFiOffloading(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 918
    iput-boolean v10, p0, Lcom/android/server/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    .line 919
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_1

    .line 920
    :cond_0
    const-string v7, "WifiOffloadService"

    const-string v8, "Intent or intent component is NULL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :goto_0
    return-void

    .line 924
    :cond_1
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 925
    const-string v7, "WifiOffloadService"

    const-string v8, "intent action is not ACTION_MAIN"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 930
    :cond_2
    :try_start_0
    const-string v7, "checkAppForWiFiOffloading()"

    invoke-virtual {p0, v7}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 931
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v6

    .line 932
    .local v6, "wifiIntelligentMode":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wifiIntelligentMode value for intelligent mode :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 934
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 935
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 936
    .local v0, "cal":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 937
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 938
    .local v5, "time":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 941
    .local v1, "currentPackageName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 942
    if-nez v1, :cond_3

    .line 943
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialogInvoked="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 966
    iget-object v7, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->logStats(Ljava/lang/String;)V

    .line 967
    iget-object v7, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "currentPackageName":Ljava/lang/String;
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v5    # "time":Ljava/lang/String;
    .end local v6    # "wifiIntelligentMode":Z
    :goto_1
    invoke-virtual {v7, v10, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 946
    .restart local v0    # "cal":Ljava/util/Calendar;
    .restart local v1    # "currentPackageName":Ljava/lang/String;
    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v5    # "time":Ljava/lang/String;
    .restart local v6    # "wifiIntelligentMode":Z
    :cond_3
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process package name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 948
    if-eqz v6, :cond_5

    .line 949
    invoke-direct {p0, v1}, Lcom/android/server/WifiOffloadService;->isCurrentProcessRunning(Ljava/lang/String;)Z

    move-result v3

    .line 950
    .local v3, "isAppinBackground":Z
    if-eqz v3, :cond_4

    .line 951
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " already running in background"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 953
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appInBg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 965
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialogInvoked="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 966
    iget-object v7, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->logStats(Ljava/lang/String;)V

    .line 967
    iget-object v7, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    goto/16 :goto_1

    .line 957
    :cond_4
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->checkForWifiOffload(Ljava/lang/String;)V

    .line 959
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/server/WifiOffloadService;->setDontuseWifiPressed(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 965
    .end local v3    # "isAppinBackground":Z
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialogInvoked="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 966
    iget-object v7, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->logStats(Ljava/lang/String;)V

    .line 967
    iget-object v7, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    goto/16 :goto_1

    .line 961
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "currentPackageName":Ljava/lang/String;
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v5    # "time":Ljava/lang/String;
    .end local v6    # "wifiIntelligentMode":Z
    :catch_0
    move-exception v2

    .line 962
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "WifiOffloadService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkAppForWiFiOffloading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 965
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialogInvoked="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 966
    iget-object v7, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->logStats(Ljava/lang/String;)V

    .line 967
    iget-object v7, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    goto/16 :goto_1

    .line 965
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dialogInvoked="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 966
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->logStats(Ljava/lang/String;)V

    .line 967
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v10, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 965
    throw v7
.end method

.method public checkAppNeedsMoveToFront(I)V
    .locals 5
    .param p1, "taskID"    # I

    .prologue
    .line 1278
    const-string v2, "Move task to front..!!"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1279
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1281
    .local v1, "manager":Landroid/app/IActivityManager;
    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, p1, v2, v3}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1286
    :goto_0
    return-void

    .line 1282
    :catch_0
    move-exception v0

    .line 1284
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception move task to front "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkForWifiOffload(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 973
    const-string/jumbo v3, "test 1 passed for starting"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 975
    const/4 v1, -0x1

    .line 977
    .local v1, "perm":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v4, "android.permission.INTERNET"

    invoke-interface {v3, v4, p1}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 983
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doing test 2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 985
    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->isAppinWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 986
    invoke-virtual {p0, p1, v5}, Lcom/android/server/WifiOffloadService;->tryToTurnOnWifi(Ljava/lang/String;Z)Z

    .line 995
    :cond_0
    :goto_1
    return-void

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    .line 981
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while checking permission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_0

    .line 989
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->isAppInWiFiBlackList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 990
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->isAppDataUsageLimitExceeded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 991
    invoke-virtual {p0, p1, v5}, Lcom/android/server/WifiOffloadService;->tryToTurnOnWifi(Ljava/lang/String;Z)Z

    move-result v2

    .line 992
    .local v2, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now turning ON wifi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public checkIsWifiConnected()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1291
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 1292
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1294
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    move v1, v2

    .line 1318
    :goto_0
    return v1

    .line 1297
    :cond_1
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1299
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    .line 1300
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1301
    const-string v1, "isWifiEnabledAndConnected, Wifi is Not Enabled"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v1, v2

    .line 1302
    goto :goto_0

    .line 1305
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    .line 1307
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1308
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_3

    move v1, v2

    .line 1309
    goto :goto_0

    .line 1311
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1312
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1313
    const-string v1, "isWifiEnabledAndConnected Wifi is Connected"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v1, v3

    .line 1314
    goto :goto_0

    .line 1316
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1317
    const-string v1, "isWifiEnabledAndConnected Wifi is Enabled, but not connected"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v1, v2

    .line 1318
    goto :goto_0
.end method

.method public checkNetworksAndShowAPDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1203
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isLastScanFoundNetworks()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1205
    const-string v0, "No networks. Start scanning."

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1209
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    const-string v0, "Going to show AP dialog now"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_OFFLOAD_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    .line 1214
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1215
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    const-string v1, "WIFI_OFFLOAD_DO_NOT_DISTURB"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1224
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.REQUEST_WINDOW_MODE"

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1229
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    goto :goto_0
.end method

.method public checkisScreenOn()Z
    .locals 5

    .prologue
    .line 1612
    const-string v2, "checkisScreenOn()"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1614
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1615
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1619
    .end local v1    # "pm":Landroid/os/PowerManager;
    :goto_0
    return v2

    .line 1616
    :catch_0
    move-exception v0

    .line 1618
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when checking is screen on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearAllAccessPoints()V
    .locals 6

    .prologue
    .line 2310
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "wifi_data"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->deleteWifiDetail(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2314
    :goto_0
    return-void

    .line 2311
    :catch_0
    move-exception v0

    .line 2312
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in test api clearAllAccessPoints "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public collectWiFiDetails()V
    .locals 3

    .prologue
    .line 1486
    const-string v1, "getWiFiDetails()"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1488
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 1489
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1491
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_2

    .line 1500
    :cond_1
    :goto_0
    return-void

    .line 1494
    :cond_2
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1495
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_1

    .line 1496
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->setWifiBSSID(Ljava/lang/String;)V

    .line 1497
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/WifiOffloadService;->convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->setWifiSSID(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createWiFiOffloadDB()V
    .locals 4

    .prologue
    .line 1344
    :try_start_0
    new-instance v1, Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi_offload/WifiOffloadDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    .line 1345
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    :goto_0
    return-void

    .line 1346
    :catch_0
    move-exception v0

    .line 1348
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in create WifiOffloadDB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteNetwork(Ljava/lang/String;)I
    .locals 7
    .param p1, "networkName"    # Ljava/lang/String;

    .prologue
    .line 1882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1883
    const/4 v1, 0x0

    .line 1885
    .local v1, "rows":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifissid = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "wifi_data"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->deleteWifiDetail(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1891
    :goto_0
    if-lez v1, :cond_0

    .line 1892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rows"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1894
    :cond_0
    return v1

    .line 1887
    :catch_0
    move-exception v0

    .line 1889
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in delete network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2143
    const-string v0, "WifiOffloadService"

    const-string v1, "dump started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    const-string v0, "WifiOffloadService"

    const-string v1, "check if the caller has DUMP permission"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiOffloadService from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2156
    :goto_0
    return-void

    .line 2150
    :cond_0
    const-string v0, "WifiOffloadService"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2153
    invoke-static {p2}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->dumpStats(Ljava/io/PrintWriter;)V

    .line 2155
    const-string v0, "WifiOffloadService"

    const-string v1, "dump finished"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getActualState()I
    .locals 4

    .prologue
    const/4 v0, 0x4

    .line 1036
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1039
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.Manifest.permission.ACCESS_WIFI_STATE not granted for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_0
    :goto_0
    return v0

    .line 1043
    :cond_1
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->wifiStateToFiveState(I)I

    move-result v0

    goto :goto_0
.end method

.method public getAvailableSSIDNames()[Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 2258
    const/4 v10, 0x0

    .line 2259
    .local v10, "ssIDs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 2261
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "wifissid"

    aput-object v4, v2, v3

    const-string/jumbo v3, "wifissid <> 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 2270
    if-eqz v8, :cond_2

    .line 2271
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    .line 2272
    const/4 v7, 0x0

    .line 2273
    .local v7, "count":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2275
    :cond_0
    const-string/jumbo v0, "wifissid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v7

    .line 2277
    add-int/lit8 v7, v7, 0x1

    .line 2278
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2280
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v10

    .line 2283
    .end local v7    # "count":I
    :goto_0
    return-object v0

    .line 2264
    :catch_0
    move-exception v9

    .line 2266
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getAvailableSSIDNames for dbHelper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v11

    .line 2267
    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v0, v11

    .line 2283
    goto :goto_0
.end method

.method public getCDMABaseStationID()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 1517
    const/4 v0, -0x1

    .line 1518
    .local v0, "baseStation":I
    iget v3, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    if-eq v3, v4, :cond_0

    .line 1519
    iget v3, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 1586
    :goto_0
    return v3

    .line 1521
    :cond_0
    const/4 v2, -0x1

    .line 1523
    .local v2, "phoneType":I
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    .line 1524
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_1

    move v3, v4

    .line 1525
    goto :goto_0

    .line 1547
    :cond_1
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    .line 1548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone type is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1550
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 1552
    .local v1, "cellLocation":Landroid/telephony/CellLocation;
    if-nez v1, :cond_2

    .line 1553
    const-string v3, "CellLocation is NULL, return -1"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v3, v4

    .line 1554
    goto :goto_0

    .line 1557
    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 1558
    instance-of v3, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_4

    .line 1559
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v1    # "cellLocation":Landroid/telephony/CellLocation;
    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    .line 1560
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    if-nez v3, :cond_3

    .line 1561
    const-string v3, "CDMA location is null"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v3, v4

    .line 1562
    goto :goto_0

    .line 1564
    :cond_3
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 1583
    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BaseStation ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    move v3, v0

    .line 1586
    goto :goto_0

    .line 1566
    .restart local v1    # "cellLocation":Landroid/telephony/CellLocation;
    :cond_5
    if-ne v2, v6, :cond_4

    .line 1572
    instance-of v3, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_4

    .line 1573
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .end local v1    # "cellLocation":Landroid/telephony/CellLocation;
    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

    .line 1574
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v6, :cond_7

    .line 1576
    :cond_6
    const-string v3, "GSM location is null"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v3, v4

    .line 1577
    goto/16 :goto_0

    .line 1579
    :cond_7
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    goto :goto_1
.end method

.method public getIntelligentWifiEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 741
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 743
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "wifi_offload_monitoring"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    .line 744
    const-string/jumbo v1, "wifi_use_intelligent_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 743
    goto :goto_0

    :cond_1
    move v2, v3

    .line 744
    goto :goto_1
.end method

.method public getLastPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastWifiScannedTime()J
    .locals 3

    .prologue
    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returning the last scanned time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1198
    iget-wide v0, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide v0
.end method

.method public getNeverTurnonWiFiValue()I
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 1767
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    if-eqz v0, :cond_0

    .line 1788
    :goto_0
    return v7

    .line 1771
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dialogstatus"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1774
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 1775
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1776
    const-string v0, "dialogstatus"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1778
    .local v7, "count":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1783
    .end local v7    # "count":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 1785
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getNeverTurnonWiFiValue for Cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 1786
    goto :goto_0

    .line 1781
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    move v7, v10

    .line 1788
    goto :goto_0
.end method

.method public getStationID()I
    .locals 1

    .prologue
    .line 2351
    iget v0, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    return v0
.end method

.method public getWifiAuth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2335
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method public isAppInWiFiBlackList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1806
    const/4 v0, 0x0

    .line 1807
    .local v0, "isAppBlackListed":Z
    if-nez p1, :cond_0

    .line 1808
    const/4 v1, 0x0

    .line 1812
    :goto_0
    return v1

    .line 1809
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->checkInExceptionalAppList(Ljava/lang/String;)Z

    move-result v0

    .line 1811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blackListed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    move v1, v0

    .line 1812
    goto :goto_0
.end method

.method public isAppinWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1865
    const/4 v0, 0x0

    return v0
.end method

.method public isDontUseWifiPressed()Z
    .locals 1

    .prologue
    .line 876
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    return v0
.end method

.method public isMobileDataActive()I
    .locals 4

    .prologue
    .line 843
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 845
    .local v1, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_0

    .line 846
    const-string v2, "No Telephony manager"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 847
    const/4 v0, 0x2

    .line 851
    :goto_0
    return v0

    .line 849
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    .line 851
    .local v0, "activity":I
    goto :goto_0
.end method

.method public isNotifyMeChecked()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 753
    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 754
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 756
    .local v2, "isNotifyMeChecked":Z
    :try_start_0
    const-string/jumbo v4, "wifi_offload_network_notify"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 764
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notify me = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 765
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMe="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 766
    return v2

    .line 756
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 758
    :catch_0
    move-exception v1

    .line 760
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception happened while checking NotifyMe "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isWifiConnected()Z
    .locals 1

    .prologue
    .line 1816
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    return v0
.end method

.method public isWifiOnlyApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1820
    if-nez p1, :cond_1

    .line 1826
    :cond_0
    :goto_0
    return v0

    .line 1823
    :cond_1
    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 1826
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->checkInWifiOnlyAppList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isWifiSeamlessConnect()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 891
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 892
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v3, "wifi_connect_seamlessly"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public notifyDialogDisplayed(I)V
    .locals 3
    .param p1, "dialogNum"    # I

    .prologue
    .line 1259
    sget-object v1, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1260
    :try_start_0
    const-string v0, "<<<<<<<<<<<<<<<< Wait Completed. Dialog created OR error returned >>>>>>>>>>>"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1261
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1262
    sget-object v0, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1263
    monitor-exit v1

    .line 1264
    return-void

    .line 1263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public printLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 2130
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    .line 2131
    const-string v0, "WifiOffloadService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    :cond_0
    return-void
.end method

.method protected requestStateChange()V
    .locals 3

    .prologue
    .line 1108
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 1109
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1111
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_2

    .line 1112
    const-string v1, "No wifiManager."

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1128
    :cond_1
    :goto_0
    return-void

    .line 1117
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getActualState()I

    move-result v0

    .line 1118
    .local v0, "wifi_state":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wifi state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1119
    const-string v1, "Calling setWifiEnabledDialog() from requestStateChange"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1124
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1125
    const-string v1, "WifiOffloadService"

    const-string v2, "Wifi state is enabled but not connected so calling our API"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->checkNetworksAndShowAPDialog()V

    goto :goto_0
.end method

.method protected requestStateChange(Ljava/lang/String;)Z
    .locals 10
    .param p1, "networkName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1051
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_0

    .line 1052
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "wifi"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1054
    :cond_0
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_1

    .line 1055
    const-string v5, "No wifiManager."

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v5, v6

    .line 1089
    :goto_0
    return v5

    .line 1060
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ok, wifi is not connected, try to enable network : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1061
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1062
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_5

    .line 1063
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1065
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Configuration is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1066
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/WifiOffloadService;->convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1067
    .local v4, "ssid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSID is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1070
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1071
    .local v3, "netId":I
    const-string v5, "WifiOffloadService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Enable network for SSID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1073
    const-string v5, "WifiOffloadService"

    const-string v8, "enableNetwork passed"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1079
    const-string v5, "WifiOffloadService"

    const-string v6, "Connected "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 1080
    goto/16 :goto_0

    .line 1075
    :cond_3
    const-string v5, "WifiOffloadService"

    const-string v7, "failed enableNetwork"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1076
    goto/16 :goto_0

    .line 1082
    :cond_4
    const-string v5, "WifiOffloadService"

    const-string v7, "failed to connect"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1083
    goto/16 :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "netId":I
    .end local v4    # "ssid":Ljava/lang/String;
    :cond_5
    move v5, v6

    .line 1089
    goto/16 :goto_0
.end method

.method protected requestStateChange(Z)Z
    .locals 3
    .param p1, "desiredState"    # Z

    .prologue
    .line 1094
    const/4 v0, 0x1

    .line 1096
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 1097
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1099
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 1100
    const-string v1, "No wifiManager."

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1101
    const/4 v1, 0x0

    .line 1104
    :goto_0
    return v1

    .line 1103
    :cond_1
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    move v1, v0

    .line 1104
    goto :goto_0
.end method

.method public requestWifiListForStationID(I)[Ljava/lang/String;
    .locals 11
    .param p1, "stationID"    # I

    .prologue
    .line 1629
    const-string v0, "requestWifiListForStationID()"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scanning performed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1631
    iget v0, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    .line 1633
    const/4 v7, 0x0

    .line 1634
    .local v7, "availableWiFi":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1636
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "wifissid"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stationid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1644
    :goto_0
    if-eqz v9, :cond_2

    .line 1645
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1646
    const/4 v8, 0x0

    .line 1647
    .local v8, "count":I
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v7, v0, [Ljava/lang/String;

    .line 1649
    :cond_0
    const-string/jumbo v0, "wifissid"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    .line 1651
    add-int/lit8 v8, v8, 0x1

    .line 1652
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1654
    .end local v8    # "count":I
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1656
    :cond_2
    return-object v7

    .line 1639
    :catch_0
    move-exception v10

    .line 1641
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in requestWifiListForStationID for dbHelper.query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetCurrentTestBaseStationID()V
    .locals 1

    .prologue
    .line 2293
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 2294
    iget v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    .line 2295
    return-void
.end method

.method public resetNeverTurnOnWifi()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetNeverTurnOnWifi() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1793
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    .line 1794
    const-string v0, "Timer is reset"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1795
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    .line 1796
    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->updateNeverTurnOnWiFi(I)V

    .line 1797
    return-void
.end method

.method public setAppRunOverWiFiResult(IZ)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "isDontShowChecked"    # Z

    .prologue
    .line 529
    iput p1, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    .line 530
    const-string v0, "notification came"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 533
    monitor-exit v1

    .line 534
    return-void

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentTestBaseStationID(I)V
    .locals 1
    .param p1, "stationID"    # I

    .prologue
    .line 2287
    iput p1, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 2288
    iget v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    .line 2290
    return-void
.end method

.method public setDontuseWifiPressed(Z)V
    .locals 0
    .param p1, "isPressed"    # Z

    .prologue
    .line 880
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    .line 881
    return-void
.end method

.method public setNeverTurnOnWifi()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1800
    const-string v0, "setNeverTurnOnWifi()"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1801
    iput-boolean v1, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    .line 1802
    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->updateNeverTurnOnWiFi(I)V

    .line 1803
    return-void
.end method

.method public setStationID(I)V
    .locals 0
    .param p1, "stationID"    # I

    .prologue
    .line 2347
    iput p1, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    .line 2348
    return-void
.end method

.method public setWifiAuth(Ljava/lang/String;)V
    .locals 0
    .param p1, "wifiAuth"    # Ljava/lang/String;

    .prologue
    .line 2339
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    .line 2340
    return-void
.end method

.method public setWifiBSSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "wifiBSSID"    # Ljava/lang/String;

    .prologue
    .line 2331
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    .line 2332
    return-void
.end method

.method public setWifiSSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "wifiSSID"    # Ljava/lang/String;

    .prologue
    .line 2323
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    .line 2324
    return-void
.end method

.method public startBackKeyTimer()V
    .locals 4

    .prologue
    .line 1688
    const-string v0, "Inside startDataActivityTimerOnce(final String packageName, final boolean isWaitrequired)"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1689
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkBackKeyTimer:Ljava/util/Timer;

    .line 1690
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkBackKeyTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$9;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$9;-><init>(Lcom/android/server/WifiOffloadService;)V

    const-wide/32 v2, 0x668a0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1701
    return-void
.end method

.method public startDataActivityTimer()V
    .locals 6

    .prologue
    const-wide/32 v2, 0xdbba0

    .line 605
    const-string v0, "WifiOffloadService"

    const-string v1, "Inside startDataActivityTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    :goto_0
    return-void

    .line 610
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    .line 611
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$4;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$4;-><init>(Lcom/android/server/WifiOffloadService;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public startDataActivityTimerOnce(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isWaitrequired"    # Z

    .prologue
    .line 648
    const-string v2, "Inside startDataActivityTimerOnce(final String packageName, final boolean isWaitrequired)"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 650
    const-string v2, "checkDataActivityTimer excecuted"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 655
    iget-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    if-nez v2, :cond_0

    .line 674
    :goto_0
    return-void

    .line 657
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 658
    const-string v2, "Intel mode is ON"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check before offload , mSeamlessConnectWhileConnecting ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 663
    iget-boolean v2, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    if-eqz v2, :cond_1

    .line 664
    const-string v2, "Its already trying to auto-connect to a known network in a loop, so dont offload now"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 665
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seamlessConn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 669
    .local v0, "originalId":J
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WifiOffloadService;->wifiOffloadFlow(Ljava/lang/String;Z)Z

    .line 670
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 672
    .end local v0    # "originalId":J
    :cond_2
    const-string v2, "Intel mode is OFF"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startDontUseWiFiPressedTimer()V
    .locals 4

    .prologue
    .line 679
    const-string v0, "Started timer when user pressed Don\'t use WiFi."

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    .line 682
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v0

    iput v0, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    .line 683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/WifiOffloadService;->mNoWifiTimerStartTime:J

    .line 686
    const-string v0, "persist.offload.dontuse.time"

    const/16 v1, 0x2d0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    .line 688
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer delay -- >>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    return-void
.end method

.method public stopDataActivityTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 631
    const-string v0, "WifiOffloadService"

    const-string v1, "Inside stopDataActivityTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    :goto_0
    return-void

    .line 636
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    .line 637
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method

.method public storeWiFiDetails()V
    .locals 5

    .prologue
    .line 1466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "storeWiFiDetails"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getWifiBSSID() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1469
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1470
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1471
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "stationid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getStationID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1472
    const-string/jumbo v2, "wifissid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    const-string/jumbo v2, "wifibssid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    const-string v2, "lastuseddate"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1475
    const-string v2, "dialogstatus"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1476
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "wifi_data"

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1483
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 1479
    :catch_0
    move-exception v1

    .line 1481
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in StoreWiFiDetais() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public tryToTurnOnWifi(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isWaitrequired"    # Z

    .prologue
    const/4 v0, 0x1

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for data activity is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 725
    if-eqz p2, :cond_1

    .line 726
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAnyDataActivity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 727
    const/4 v0, 0x0

    .line 732
    :cond_0
    :goto_0
    return v0

    .line 729
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WifiOffloadService;->startDataActivityTimerOnce(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateBaseStationIDs(Ljava/lang/String;I)V
    .locals 7
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "stationID"    # I

    .prologue
    .line 2298
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2299
    .local v2, "cvalues":Landroid/content/ContentValues;
    const-string/jumbo v0, "stationid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2301
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifissid = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2306
    :goto_0
    return-void

    .line 2303
    :catch_0
    move-exception v6

    .line 2304
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in test api updateBaseStationIDs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateDialogStatus(I)V
    .locals 10
    .param p1, "stationID"    # I

    .prologue
    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDialogStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1710
    const/4 v8, 0x1

    .line 1712
    .local v8, "resetDialogCount":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1713
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v0, "dialogstatus"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1714
    const-string v0, "lastuseddate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1718
    const/4 v9, 0x0

    .line 1720
    .local v9, "rows":I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stationid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1722
    if-lez v9, :cond_0

    .line 1723
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :goto_0
    return-void

    .line 1725
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1726
    .local v6, "cvalues":Landroid/content/ContentValues;
    const-string/jumbo v0, "stationid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1727
    const-string/jumbo v0, "wifissid"

    const-string v1, "0"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    const-string/jumbo v0, "wifibssid"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    const-string v0, "lastuseddate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1730
    const-string v0, "dialogstatus"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1731
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "wifi_data"

    invoke-virtual {v0, v1, v6, v3}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1733
    .end local v6    # "cvalues":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 1735
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in updateDialogStatus for dbHelper "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateNeverTurnOnWiFi(I)V
    .locals 9
    .param p1, "value"    # I

    .prologue
    .line 1740
    const-string/jumbo v0, "updateNeverTurnOnWiFi to 1"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1741
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1742
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v0, "dialogstatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1744
    const/4 v8, 0x0

    .line 1746
    .local v8, "rows":I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1748
    if-lez v8, :cond_0

    .line 1749
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :goto_0
    return-void

    .line 1751
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1752
    .local v6, "cvalues":Landroid/content/ContentValues;
    const-string/jumbo v0, "stationid"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1753
    const-string/jumbo v0, "wifissid"

    const-string v1, "0"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    const-string/jumbo v0, "wifibssid"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    const-string v0, "lastuseddate"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1756
    const-string v0, "dialogstatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1757
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "wifi_data"

    invoke-virtual {v0, v1, v6, v3}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1759
    .end local v6    # "cvalues":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 1761
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in updateNeverTurnOnWiFi "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public wasWiFiReallyOn()Z
    .locals 1

    .prologue
    .line 866
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    return v0
.end method

.method public declared-synchronized wifiOffloadFlow(Ljava/lang/String;Z)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isWaitrequired"    # Z

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Main function called "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Times"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 298
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    .line 299
    iget v9, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    .line 301
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v6

    .line 303
    .local v6, "intel":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Intel mode is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 305
    if-nez v6, :cond_0

    .line 306
    const-string v9, "Wi-Fi intelligent mode is not set to ON; return false"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    const/4 v9, 0x0

    .line 473
    :goto_0
    monitor-exit p0

    return v9

    .line 311
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->checkIsWifiConnected()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 312
    const-string v9, "WiFi is already connected; return false"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 313
    const/4 v9, 0x0

    goto :goto_0

    .line 315
    :cond_1
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAirplaneModeOn()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isHotspotOn()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 316
    :cond_2
    const-string v9, "Airplane plane OR hotspot return false"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 317
    const/4 v9, 0x0

    goto :goto_0

    .line 322
    :cond_3
    const/4 v2, 0x0

    .line 323
    .local v2, "data_counter":I
    if-eqz p2, :cond_6

    move v3, v2

    .line 324
    .end local v2    # "data_counter":I
    .local v3, "data_counter":I
    :goto_1
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAnyDataActivity()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 328
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "data_counter":I
    .restart local v2    # "data_counter":I
    const/16 v9, 0x32

    if-le v3, v9, :cond_4

    .line 329
    const-string v9, "returning since data activity is going on for more than 10 Secs"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    const/4 v9, 0x0

    goto :goto_0

    .line 334
    :cond_4
    const-wide/16 v9, 0xc8

    :try_start_2
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v2

    .line 338
    .end local v2    # "data_counter":I
    .restart local v3    # "data_counter":I
    goto :goto_1

    .line 335
    .end local v3    # "data_counter":I
    .restart local v2    # "data_counter":I
    :catch_0
    move-exception v4

    .line 337
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v9, "WifiOffloadService"

    const-string v10, "Unable to put worker thread to sleep"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 338
    .end local v2    # "data_counter":I
    .restart local v3    # "data_counter":I
    goto :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    move v2, v3

    .line 342
    .end local v3    # "data_counter":I
    .restart local v2    # "data_counter":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v0

    .line 345
    .local v0, "baseStation":I
    invoke-direct {p0, v0}, Lcom/android/server/WifiOffloadService;->isDontUseWifiTimerRunning(I)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 346
    const-string v9, "mDontUseWifiTimerIsRunning is true dont offload"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 347
    const/4 v9, 0x0

    goto :goto_0

    .line 350
    :cond_7
    const/4 v8, 0x0

    .line 351
    .local v8, "nowWaitForConnection":Z
    const/4 v9, -0x1

    if-eq v0, v9, :cond_8

    if-nez v0, :cond_a

    .line 352
    :cond_8
    const-string v9, "WifiOffloadService"

    const-string v10, "Base station ID returned -1 or 0"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez p2, :cond_9

    .line 355
    const-string v9, "Base Station is -1 but wifi is ON show the dialog"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->checkNetworksAndShowAPDialog()V

    .line 358
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 360
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->requestWifiListForStationID(I)[Ljava/lang/String;

    move-result-object v7

    .line 361
    .local v7, "networkList":[Ljava/lang/String;
    if-eqz v7, :cond_b

    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    array-length v9, v7

    const/4 v10, 0x1

    if-gt v9, v10, :cond_d

    .line 364
    :cond_b
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    .line 366
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-nez v9, :cond_c

    .line 367
    const-string v9, "No networks and wifi is off so don\'t offload"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 368
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 382
    :cond_c
    if-eqz p2, :cond_12

    .line 384
    const-string v9, "if there is no network in wifi offload DB dont turn on wifi just return false"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 385
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 388
    :cond_d
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 390
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v9, v7

    if-ge v5, v9, :cond_12

    .line 391
    const-string v9, "requestStateChange : status true"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 392
    if-eqz p2, :cond_e

    .line 395
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 398
    :cond_e
    aget-object v9, v7, v5

    invoke-direct {p0, v9}, Lcom/android/server/WifiOffloadService;->checkSignalStrength(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 399
    aget-object v9, v7, v5

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->requestStateChange(Ljava/lang/String;)Z

    move-result v8

    .line 390
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 401
    :cond_f
    const/4 v8, 0x0

    goto :goto_3

    .line 406
    .end local v5    # "i":I
    :cond_10
    if-eqz p2, :cond_11

    .line 410
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 412
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isWifiSeamlessConnect()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 413
    const-string v9, "WifiOffloadService"

    const-string v10, "Connect WiFi seamlessly"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    .line 415
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    .line 416
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->requestStateChange(Z)Z

    move-result v8

    .line 431
    :cond_12
    const/4 v1, 0x0

    .line 432
    .local v1, "counter":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestStateChange returned nowWaitForConnection"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 435
    :cond_13
    :goto_4
    if-eqz v8, :cond_16

    const/4 v9, 0x3

    if-ge v1, v9, :cond_16

    .line 436
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    sget-object v10, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v9, v10, :cond_15

    .line 437
    const-string v9, "Association completed"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 438
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 424
    .end local v1    # "counter":I
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 439
    .restart local v1    # "counter":I
    :cond_15
    iget-boolean v9, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    if-eqz v9, :cond_18

    .line 440
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    .line 441
    iget-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    if-nez v9, :cond_13

    .line 442
    const-string v9, "Unable to connect to known network since not in range, show AP list dialog"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 456
    :cond_16
    iget-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    if-eqz v9, :cond_19

    .line 457
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AutoConnect: mSeamlessConnectWhileConnecting  is true "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 459
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_17

    .line 460
    const-string v9, "AutoConnect unable to CONNNECT : sendEmptyMessageDelayed after 5 min to check Wifi status"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 461
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 462
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    const-wide/32 v11, 0x493e0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 464
    :cond_17
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 447
    :cond_18
    const-wide/16 v9, 0xc8

    :try_start_4
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 452
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 448
    :catch_1
    move-exception v4

    .line 450
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v9, "WifiOffloadService"

    const-string v10, "Unable to put worker thread to sleep"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 297
    .end local v0    # "baseStation":I
    .end local v1    # "counter":I
    .end local v2    # "data_counter":I
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "intel":Z
    .end local v7    # "networkList":[Ljava/lang/String;
    .end local v8    # "nowWaitForConnection":Z
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 467
    .restart local v0    # "baseStation":I
    .restart local v1    # "counter":I
    .restart local v2    # "data_counter":I
    .restart local v6    # "intel":Z
    .restart local v7    # "networkList":[Ljava/lang/String;
    .restart local v8    # "nowWaitForConnection":Z
    :cond_19
    :try_start_6
    const-string v9, "enableNetwork API failed based on location, try to call standard API"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 469
    if-nez p2, :cond_1a

    .line 470
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isWaitrequired "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->requestStateChange()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 473
    :cond_1a
    const/4 v9, 0x1

    goto/16 :goto_0
.end method
