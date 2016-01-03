.class public final Lcom/samsung/smartbonding/SmartBondingService;
.super Lcom/samsung/smartbonding/ISmartBondingService$Stub;
.source "SmartBondingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    }
.end annotation


# static fields
.field public static final CAUSE_CONNECTION_FAILURE:I = 0x3

.field public static final CAUSE_DOWNLOAD_CANCEL:I = 0x1

.field public static final CAUSE_LTE_ABNORMAL_PERFORMANCE:I = -0x3

.field public static final CAUSE_NO_ERROR:I = 0x0

.field public static final CAUSE_SERVER_NOT_SUPPORTED:I = 0x2

.field public static final CAUSE_USE_ONLY_LTE_INTERFACE:I = -0x2

.field public static final CAUSE_USE_ONLY_WIFI_INTERFACE:I = -0x1

.field public static final CAUSE_WIFI_ABNORMAL_PERFORMANCE:I = -0x4

.field private static CscFeatureConfigSmartBonding:Ljava/lang/String; = null

.field private static DBG:Z = false

.field private static final EVENT_BOOT_COMPLETED:I = 0xc

.field private static final EVENT_CREATE_LOG_FOLDER:I = 0x6

.field private static final EVENT_CREATE_TRAFFIC_TOAST:I = 0xd

.field private static final EVENT_ENABLE_SB:I = 0x1

.field private static final EVENT_ENABLE_SB_INTERFACES:I = 0x2

.field private static final EVENT_GET_HOST_ADDRESS:I = 0x9

.field private static final EVENT_HIDE_TRAFFIC_TOAST:I = 0xe

.field private static final EVENT_MOBILE_CONNECTION_RENEW:I = 0x3

.field private static final EVENT_MOBILE_CONNECTION_TURN_OFF_WITH_DELAYED:I = 0xb

.field private static final EVENT_POLL_CURRENT_ACTIVITY:I = 0xa

.field private static final EVENT_SHOW_TOAST_MESSAGE:I = 0x4

.field private static final EVENT_UPDATE_NETWORK_ENABLED:I = 0x8

.field private static final EVENT_UPDATE_SB_STATE:I = 0x7

.field private static final EVENT_UPDATE_TRAFFIC_NOTIFICATION:I = 0x5

.field private static final INT_TOTAL:Ljava/lang/Integer;

.field private static IsDCM:Z = false

.field private static IsKOR:Z = false

.field private static final MONITOR_TYPE_BAR:I = 0x2

.field private static final MONITOR_TYPE_SPEED:I = 0x0

.field private static final MONITOR_TYPE_TIMER:I = 0x1

.field public static final NOTIFICATION_THRESHOLD_SPEED:I = 0x2710

.field private static final SB_BOTH:I = 0x2

.field public static final SB_BOTH_CONNECTED:I = 0x3

.field public static final SB_BOTH_DISCONNECTED:I = 0x0

.field public static final SB_HIDE_DIALOG:Ljava/lang/String; = "android.intent.action.SB_HIDE_DIALOG"

.field public static final SB_INTENT_START:Ljava/lang/String; = "android.intent.action.START_NETWORK_BOOSTER"

.field public static final SB_INTENT_STOP:Ljava/lang/String; = "android.intent.action.STOP_NETWORK_BOOSTER"

.field public static final SB_INVALID:I = -0x1

.field private static final SB_IPV4_TYPE:I = 0x0

.field private static final SB_IPV6_TYPE:I = 0x1

.field private static final SB_KEY_LOG_ENABLED:Ljava/lang/String; = "sb.key.log_enabled"

.field private static final SB_MOBILE:I = 0x1

.field protected static final SB_PREFERENCES_NAME:Ljava/lang/String; = "sb.preferences_name"

.field public static final SB_RADIO_CONNECTED:I = 0x2

.field public static final SB_SHOW_DIALOG:Ljava/lang/String; = "android.intent.action.SB_SHOW_DIALOG"

.field private static final SB_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_BOOSTER_STATE_CHANGED"

.field private static final SB_STATUS_DISABLED:I = 0x0

.field private static final SB_STATUS_DOWNLOAD_FINISHED:I = 0x3

.field private static final SB_STATUS_DOWNLOAD_STARTED:I = 0x2

.field private static final SB_STATUS_ENABLE:I = 0x2

.field private static final SB_STATUS_ENABLED:I = 0x1

.field private static final SB_STATUS_IDLE:I = 0x1

.field private static final SB_STATUS_NONE:I = 0x0

.field private static final SB_STATUS_WORKING:I = 0x3

.field public static final SB_USAGE_CANCEL:I = 0x3

.field public static final SB_USAGE_NO:I = 0x2

.field public static final SB_USAGE_NONE:I = 0x0

.field public static final SB_USAGE_NOT_SUPPORTED:I = 0x4

.field public static final SB_USAGE_YES:I = 0x1

.field private static final SB_WIFI:I = 0x0

.field public static final SB_WIFI_CONNECTED:I = 0x1

.field static final SHIP_BUILD:Z

.field public static final SMARTBONDING_SERVICE:Ljava/lang/String; = "sb_service"

.field private static final TAG:Ljava/lang/String; = "SmartBondingService"

.field private static TAG_CSCFEATURE_CONFIG_SMARTBONDING:Ljava/lang/String; = null

.field private static final TIME_MOBILE_CONNECTION_RENEW:I = 0x9c40

.field private static final TIME_MOBILE_CONNECTION_TURN_OFF_DELAY:I = 0xbb8

.field private static final TIME_POLL_CURRENT_ACTIVITY:I = 0x2710

.field private static final TIME_TRAFFIC_UPDATE:I = 0x3e8

.field public static final TOAST_ACTIVATE_SB:I = 0x6

.field public static final TOAST_DOWNLOAD_MOBILE_ONLY:I = 0xc

.field public static final TOAST_DOWNLOAD_WIFI_ONLY:I = 0xb

.field public static final TOAST_MOBILE_SLOW:I = 0xa

.field public static final TOAST_OVERHEAT_MOBILE_DOWNLOAD:I = 0x5

.field public static final TOAST_OVERHEAT_WIFI_DOWNLOAD:I = 0x4

.field public static final TOAST_SERVER_ERROR_MOBILE_DOWNLOAD:I = 0x3

.field public static final TOAST_SERVER_ERROR_WIFI_DOWNLOAD:I = 0x2

.field public static final TOAST_START_SB:I = 0x1

.field public static final TOAST_TURN_ON_MOBILE:I = 0x8

.field public static final TOAST_TURN_ON_WIFI:I = 0x7

.field public static final TOAST_WARNING_LTE:I = 0xd

.field public static final TOAST_WARNING_WIFI:I = 0xe

.field public static final TOAST_WIFI_SLOW:I = 0x9

.field private static VDBG:Z


# instance fields
.field private final BEBUG_LEVEL_FILE:Ljava/lang/String;

.field private final BEBUG_LEVEL_FILE2:Ljava/lang/String;

.field private final DECREASE_SPEED_MARGIN:[I

.field private final MAX_TOAST_COUNT:I

.field private final MAX_TRAFFIC_SPEED:[I

.field private final MAX_TRAFFIC_SPEED_CHECK_POINT:[I

.field private isKioskContainer:Z

.field private mBlockedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBmBar:Landroid/graphics/Bitmap;

.field private mBmBarBg:Landroid/graphics/Bitmap;

.field private mBoosterRemainedContentSize:J

.field private mCm:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurBoosterRemainTime:I

.field private mCurBoosterSpeed:I

.field private mCurMaxSpeed:I

.field private mCurMobileBytes:J

.field private mCurMobileRemainTime:I

.field private mCurMobileSpeed:I

.field private mCurSpeedBoosterImageLevel:I

.field private mCurSpeedMobileImageLevel:I

.field private mCurSpeedWifiImageLevel:I

.field private mCurTimerBoosterImageLevel:I

.field private mCurTimerMobileImageLevel:I

.field private mCurTimerWifiImageLevel:I

.field private mCurTotalBoosterBytes:J

.field private mCurTotalMobileBytes:J

.field private mCurTotalTrafficTime:J

.field private mCurTotalWifiBytes:J

.field private mCurTrafficTime:J

.field private mCurWifiBytes:J

.field private mCurWifiRemainTime:I

.field private mCurWifiSpeed:I

.field private mCurrentActivity:Ljava/lang/String;

.field private mCurrentUserId:I

.field private mCurrentWifiBSSID:Ljava/lang/String;

.field private mDisableBySIOP:Z

.field private mFasterInterface:I

.field private mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

.field private mHttpLogEnabled:Z

.field private mIsConnectMobileCalled:Z

.field private mIsNoneSettingMode:Z

.field private mMobileBarBitmap:Landroid/graphics/Bitmap;

.field private mMobileConnected:Z

.field private mMobileLp:Landroid/net/LinkProperties;

.field private mMobileRemainedContentSize:J

.field private mNeedShowTrafficToast:Z

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkEnabled:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreMobileBytes:J

.field private mPreSBSetting:Z

.field private mPreTrafficTime:J

.field private mPreWifiBytes:J

.field private mPrevSpeed:I

.field private mSBDataStatistics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[J>;"
        }
    .end annotation
.end field

.field private mSBInterfacesEnabled:Z

.field private mSBNotification:Landroid/app/Notification;

.field private mSBState:I

.field private mSBToast:Landroid/widget/Toast;

.field private mSBUrlStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mSBUsageStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartBondingAirplaneModeSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;

.field private mSmartBondingMobileSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;

.field private mSmartBondingSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;

.field private mSmartBondingToastShowSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;

.field private mSpeedRatio:D

.field private mStartTrafficMonitor:Z

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mToastClickListener:Landroid/view/View$OnClickListener;

.field private mToastLayout:Landroid/view/LayoutInflater;

.field private mTotalContentSize:J

.field private mTrafficCount:I

.field private mTrafficMonitorType:I

.field private mWhiteListPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiBarBitmap:Landroid/graphics/Bitmap;

.field private mWifiConnected:Z

.field private mWifiLp:Landroid/net/LinkProperties;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRemainedContentSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 128
    sput-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    .line 129
    sput-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    .line 176
    const/16 v0, -0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/smartbonding/SmartBondingService;->INT_TOTAL:Ljava/lang/Integer;

    .line 300
    const-string v0, "CscFeature_RIL_ConfigSmartBonding"

    sput-object v0, Lcom/samsung/smartbonding/SmartBondingService;->TAG_CSCFEATURE_CONFIG_SMARTBONDING:Ljava/lang/String;

    .line 301
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    sget-object v1, Lcom/samsung/smartbonding/SmartBondingService;->TAG_CSCFEATURE_CONFIG_SMARTBONDING:Ljava/lang/String;

    const-string v2, "NA"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/smartbonding/SmartBondingService;->CscFeatureConfigSmartBonding:Ljava/lang/String;

    .line 302
    const-string v0, "DCM"

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->IsDCM:Z

    .line 303
    const-string v0, "KOR"

    const-string v1, "CHN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->IsKOR:Z

    .line 305
    const-string/jumbo v0, "true"

    const-string v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->SHIP_BUILD:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 312
    invoke-direct {p0}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;-><init>()V

    .line 177
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    .line 178
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    .line 182
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z

    .line 183
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBInterfacesEnabled:Z

    .line 184
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;

    .line 185
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingMobileSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;

    .line 186
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingToastShowSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;

    .line 187
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingAirplaneModeSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;

    .line 188
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiConnected:Z

    .line 189
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileConnected:Z

    .line 190
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    .line 191
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z

    .line 192
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentWifiBSSID:Ljava/lang/String;

    .line 193
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;

    .line 194
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I

    .line 196
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z

    .line 197
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z

    .line 199
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    .line 200
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    .line 201
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z

    .line 206
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    .line 207
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreMobileBytes:J

    .line 208
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreWifiBytes:J

    .line 209
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreTrafficTime:J

    .line 210
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    .line 211
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    .line 212
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    .line 213
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedMobileImageLevel:I

    .line 214
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedWifiImageLevel:I

    .line 215
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedBoosterImageLevel:I

    .line 216
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerMobileImageLevel:I

    .line 217
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerWifiImageLevel:I

    .line 218
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerBoosterImageLevel:I

    .line 219
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    .line 220
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    .line 221
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    .line 223
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    .line 224
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBoosterRemainedContentSize:J

    .line 225
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiRemainedContentSize:J

    .line 226
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileRemainedContentSize:J

    .line 227
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalWifiBytes:J

    .line 228
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalMobileBytes:J

    .line 229
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalBoosterBytes:J

    .line 230
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalTrafficTime:J

    .line 232
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    .line 233
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    .line 234
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    .line 235
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    .line 238
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    .line 239
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    .line 240
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    .line 241
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    .line 243
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMaxSpeed:I

    .line 244
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPrevSpeed:I

    .line 245
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TRAFFIC_SPEED_CHECK_POINT:[I

    .line 246
    new-array v0, v6, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TRAFFIC_SPEED:[I

    .line 247
    new-array v0, v6, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->DECREASE_SPEED_MARGIN:[I

    .line 251
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TOAST_COUNT:I

    .line 253
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    .line 258
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I

    .line 306
    const-string v0, "/sys/devices/virtual/misc/level/control"

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->BEBUG_LEVEL_FILE:Ljava/lang/String;

    .line 307
    const-string v0, "/mnt/.lfs/debug_level.inf"

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->BEBUG_LEVEL_FILE2:Ljava/lang/String;

    .line 309
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->isKioskContainer:Z

    .line 2553
    new-instance v0, Lcom/samsung/smartbonding/SmartBondingService$1;

    invoke-direct {v0, p0}, Lcom/samsung/smartbonding/SmartBondingService$1;-><init>(Lcom/samsung/smartbonding/SmartBondingService;)V

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastClickListener:Landroid/view/View$OnClickListener;

    .line 3279
    new-instance v0, Lcom/samsung/smartbonding/SmartBondingService$2;

    invoke-direct {v0, p0}, Lcom/samsung/smartbonding/SmartBondingService$2;-><init>(Lcom/samsung/smartbonding/SmartBondingService;)V

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 312
    return-void

    .line 245
    :array_0
    .array-data 4
        0x96
        0x64
        0x32
        0xf
        0x0
    .end array-data

    .line 246
    :array_1
    .array-data 4
        0xc8
        0x96
        0x64
        0x32
        0xf
    .end array-data

    .line 247
    :array_2
    .array-data 4
        0x14
        0x14
        0xa
        0x5
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;Landroid/os/INetworkManagementService;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connManager"    # Landroid/net/IConnectivityManager;
    .param p3, "netManager"    # Landroid/os/INetworkManagementService;

    .prologue
    const/4 v9, 0x5

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 314
    invoke-direct {p0}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;-><init>()V

    .line 177
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    .line 178
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    .line 182
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z

    .line 183
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBInterfacesEnabled:Z

    .line 184
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;

    .line 185
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingMobileSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;

    .line 186
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingToastShowSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;

    .line 187
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingAirplaneModeSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;

    .line 188
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiConnected:Z

    .line 189
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileConnected:Z

    .line 190
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    .line 191
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z

    .line 192
    const-string v3, ""

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentWifiBSSID:Ljava/lang/String;

    .line 193
    const-string v3, ""

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;

    .line 194
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I

    .line 196
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z

    .line 197
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z

    .line 199
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    .line 200
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    .line 201
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z

    .line 206
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    .line 207
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreMobileBytes:J

    .line 208
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreWifiBytes:J

    .line 209
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreTrafficTime:J

    .line 210
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    .line 211
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    .line 212
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    .line 213
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedMobileImageLevel:I

    .line 214
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedWifiImageLevel:I

    .line 215
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedBoosterImageLevel:I

    .line 216
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerMobileImageLevel:I

    .line 217
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerWifiImageLevel:I

    .line 218
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerBoosterImageLevel:I

    .line 219
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    .line 220
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    .line 221
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    .line 223
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    .line 224
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBoosterRemainedContentSize:J

    .line 225
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiRemainedContentSize:J

    .line 226
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileRemainedContentSize:J

    .line 227
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalWifiBytes:J

    .line 228
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalMobileBytes:J

    .line 229
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalBoosterBytes:J

    .line 230
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalTrafficTime:J

    .line 232
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    .line 233
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    .line 234
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    .line 235
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    .line 236
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    .line 238
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    .line 239
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    .line 240
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    .line 241
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    .line 243
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMaxSpeed:I

    .line 244
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPrevSpeed:I

    .line 245
    new-array v3, v9, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TRAFFIC_SPEED_CHECK_POINT:[I

    .line 246
    new-array v3, v9, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TRAFFIC_SPEED:[I

    .line 247
    new-array v3, v9, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->DECREASE_SPEED_MARGIN:[I

    .line 251
    const/4 v3, 0x6

    iput v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TOAST_COUNT:I

    .line 253
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    .line 258
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I

    .line 306
    const-string v3, "/sys/devices/virtual/misc/level/control"

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->BEBUG_LEVEL_FILE:Ljava/lang/String;

    .line 307
    const-string v3, "/mnt/.lfs/debug_level.inf"

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->BEBUG_LEVEL_FILE2:Ljava/lang/String;

    .line 309
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->isKioskContainer:Z

    .line 2553
    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$1;

    invoke-direct {v3, p0}, Lcom/samsung/smartbonding/SmartBondingService$1;-><init>(Lcom/samsung/smartbonding/SmartBondingService;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastClickListener:Landroid/view/View$OnClickListener;

    .line 3279
    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$2;

    invoke-direct {v3, p0}, Lcom/samsung/smartbonding/SmartBondingService$2;-><init>(Lcom/samsung/smartbonding/SmartBondingService;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 315
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "SmartBondingService starting up"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 317
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "SmartBondingService"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 319
    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;-><init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    .line 320
    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x1030128

    invoke-direct {v3, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    .line 321
    iput-object p2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    .line 322
    iput-object p3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNetd:Landroid/os/INetworkManagementService;

    .line 324
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 325
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    .line 326
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    .line 327
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 328
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    sget-object v4, Lcom/samsung/smartbonding/SmartBondingService;->INT_TOTAL:Ljava/lang/Integer;

    const/4 v5, 0x4

    new-array v5, v5, [J

    fill-array-data v5, :array_3

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    .line 330
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 331
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    .line 332
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 333
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    .line 334
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    .line 335
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->initBlockedPackages()V

    .line 337
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 338
    .local v1, "sbFilter":Landroid/content/IntentFilter;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    const-string v3, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    const-string v3, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v3, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;

    invoke-direct {v4, p0}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;-><init>(Lcom/samsung/smartbonding/SmartBondingService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 348
    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-direct {v3, p0, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;-><init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;

    .line 349
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;

    invoke-virtual {v3, p1}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;->register(Landroid/content/Context;)V

    .line 351
    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-direct {v3, p0, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;-><init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingMobileSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;

    .line 352
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingMobileSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;

    invoke-virtual {v3, p1}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;->register(Landroid/content/Context;)V

    .line 354
    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-direct {v3, p0, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;-><init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingToastShowSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;

    .line 355
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingToastShowSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;

    invoke-virtual {v3, p1}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;->register(Landroid/content/Context;)V

    .line 357
    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-direct {v3, p0, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;-><init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingAirplaneModeSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;

    .line 358
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingAirplaneModeSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;

    invoke-virtual {v3, p1}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->register(Landroid/content/Context;)V

    .line 360
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/samsung/smartbonding/SmartBondingService;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 362
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    .line 363
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 364
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_1

    .line 365
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentWifiBSSID:Ljava/lang/String;

    .line 369
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getNetworkEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z

    .line 370
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->initSpeedRatio()V

    .line 372
    const-string v3, "sb_service"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_2

    .line 373
    const-string v3, "sb_service"

    invoke-static {v3, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 376
    :cond_2
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->loadPreference()V

    .line 378
    const-string/jumbo v3, "true"

    const-string v4, "isKioskModeEnabled"

    invoke-static {p1, v4}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "isKioskModeEnabled"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->isKioskContainer:Z

    .line 380
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->SHIP_BUILD:Z

    if-eqz v3, :cond_3

    .line 381
    sput-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    .line 383
    :cond_3
    const-string v3, "SmartBondingService: start done"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 384
    return-void

    .line 245
    :array_0
    .array-data 4
        0x96
        0x64
        0x32
        0xf
        0x0
    .end array-data

    .line 246
    :array_1
    .array-data 4
        0xc8
        0x96
        0x64
        0x32
        0xf
    .end array-data

    .line 247
    :array_2
    .array-data 4
        0x14
        0x14
        0xa
        0x5
        0x0
    .end array-data

    .line 328
    :array_3
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {p0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/smartbonding/SmartBondingService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getTrafficMonitorType()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->initSpeedBarRes()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->clearSpeedBarRes()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/smartbonding/SmartBondingService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/smartbonding/SmartBondingService;IJJ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    .line 125
    invoke-direct/range {p0 .. p5}, Lcom/samsung/smartbonding/SmartBondingService;->sendSBStatusChangedIntent(IJJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkSiopToastCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->turnOffMobileConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkRemovedProcess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->turnOnMobileConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkSBWorkingCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/smartbonding/SmartBondingService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I

    return v0
.end method

.method static synthetic access$2402(Lcom/samsung/smartbonding/SmartBondingService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkTrafficMonitorCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->startTrafficMonitor()V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->sendSBStartIntent()V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkEnableToastCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->sendSBStopIntent()V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/smartbonding/SmartBondingService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->showWarningToast(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/smartbonding/SmartBondingService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    return v0
.end method

.method static synthetic access$3400(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->showSpeedToast()V

    return-void
.end method

.method static synthetic access$3500(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->showTimerToast()V

    return-void
.end method

.method static synthetic access$3600(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->showSpeedBarToast()V

    return-void
.end method

.method static synthetic access$3700(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->hideTrafficMonitorToast()V

    return-void
.end method

.method static synthetic access$3800(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateTrafficMonitor()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiConnected:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z

    return p1
.end method

.method static synthetic access$402(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getNetworkEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getCurrentActivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->isAirPlaneMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/samsung/smartbonding/SmartBondingService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$4602(Lcom/samsung/smartbonding/SmartBondingService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$4700(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->isKioskContainer:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->isKioskContainer:Z

    return p1
.end method

.method static synthetic access$4800()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5002(Lcom/samsung/smartbonding/SmartBondingService;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/samsung/smartbonding/SmartBondingService;I)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/samsung/smartbonding/SmartBondingService;II)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceDirect(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentWifiBSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentWifiBSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->initSpeedRatio()V

    return-void
.end method

.method static synthetic access$5500(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileConnected:Z

    return v0
.end method

.method static synthetic access$5502(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileConnected:Z

    return p1
.end method

.method static synthetic access$5602(Lcom/samsung/smartbonding/SmartBondingService;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkSBEnableCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/smartbonding/SmartBondingService;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->setSBInterfacesEnabled(Z)I

    move-result v0

    return v0
.end method

.method private buildCheckSBUsageIntent(JLjava/lang/String;J)Landroid/content/Intent;
    .locals 2
    .param p1, "threadID"    # J
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "size"    # J

    .prologue
    .line 2293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SB_SHOW_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2294
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "threadID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2295
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2296
    const-string v1, "fileSize"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2297
    return-object v0
.end method

.method private buildStopSBUsageIntent(J)Landroid/content/Intent;
    .locals 2
    .param p1, "threadID"    # J

    .prologue
    .line 2301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SB_HIDE_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2302
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "threadID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2303
    return-object v0
.end method

.method private checkEnableToastCondition()Z
    .locals 7

    .prologue
    .line 1372
    const/4 v1, 0x0

    .line 1373
    .local v1, "isShowToast":Z
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1374
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBNotificationEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1375
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1377
    .local v2, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-boolean v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStartWithPopup:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1378
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_1

    const-string v3, "checkStartToastCondition : mStartWithPopup is exist"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1379
    :cond_1
    const/4 v1, 0x0

    .line 1380
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStartWithPopup:Z

    .line 1389
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_2
    return v1

    .line 1383
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_3
    iget-wide v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStartRange:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/smartbonding/SmartBondingService;->isFirstCombinedRequest(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1384
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkRemovedProcess()Z
    .locals 6

    .prologue
    .line 2136
    const/4 v2, 0x0

    .line 2138
    .local v2, "removed":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2140
    .local v1, "mRemoveSBUsageStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;>;"
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 2141
    .local v3, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget v4, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mPid:I

    invoke-direct {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->isRunningProcess(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2142
    iget-object v4, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->isYouTubeContent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "com.google.android.youtube"

    invoke-direct {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->isRunningProcess(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2143
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "checkRemovedProcess : youtube process is running so that don\'t need to remove list"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2144
    :cond_1
    const-string v4, ""

    iput-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;

    goto :goto_0

    .line 2147
    :cond_2
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkRemovedProcess : process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is stopped. add it in remove usage list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2148
    :cond_3
    const/4 v2, 0x1

    .line 2149
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2153
    .end local v3    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 2154
    .restart local v3    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2157
    .end local v3    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_5
    if-eqz v2, :cond_7

    .line 2158
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_6

    const-string v4, "checkRemovedProcess : some process are remvoed"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2162
    :cond_6
    :goto_2
    return v2

    .line 2160
    :cond_7
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_6

    const-string v4, "checkRemovedProcess : no process is remvoed"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private checkSBEnableCondition()Z
    .locals 1

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    const/4 v0, 0x1

    .line 905
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkSBWorkingCondition()Z
    .locals 2

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 910
    const/4 v0, 0x1

    .line 919
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkSiopToastCondition()Z
    .locals 7

    .prologue
    .line 1357
    const/4 v1, 0x0

    .line 1358
    .local v1, "isShowToast":Z
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1359
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z

    if-eqz v3, :cond_1

    .line 1360
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1361
    .local v2, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStartRange:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/smartbonding/SmartBondingService;->isFirstCombinedRequest(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1362
    const/4 v1, 0x1

    goto :goto_0

    .line 1367
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_1
    return v1
.end method

.method private checkTrafficMonitorCondition()Z
    .locals 3

    .prologue
    .line 2545
    const/4 v0, 0x1

    .line 2547
    .local v0, "result":Z
    const-string v1, "persist.sb.hide.trafficmonitor"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2548
    const/4 v0, 0x0

    .line 2550
    :cond_0
    return v0
.end method

.method private clearNotification()V
    .locals 3

    .prologue
    .line 3203
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "clearNotification"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3204
    :cond_0
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3206
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-eqz v1, :cond_1

    .line 3207
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    .line 3210
    :cond_1
    return-void
.end method

.method private clearSpeedBarRes()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2819
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2821
    iput-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    .line 2823
    :cond_0
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 2825
    iput-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    .line 2827
    :cond_1
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 2829
    iput-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    .line 2831
    :cond_2
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 2833
    iput-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    .line 2835
    :cond_3
    return-void
.end method

.method private clearToast()V
    .locals 1

    .prologue
    .line 2952
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "clearToast"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2953
    :cond_0
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 2954
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2956
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    .line 2957
    return-void
.end method

.method private convertCombinedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1393
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getGooglePlayContentUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1396
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private convertDetailUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1400
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getGooglePlayContentUrlWithParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1403
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private convertSBInterfaceState(ZZ)I
    .locals 1
    .param p1, "mobile"    # Z
    .param p2, "wifi"    # Z

    .prologue
    .line 1060
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1061
    const/4 v0, 0x3

    .line 1067
    :goto_0
    return v0

    .line 1062
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 1063
    const/4 v0, 0x2

    goto :goto_0

    .line 1064
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 1065
    const/4 v0, 0x1

    goto :goto_0

    .line 1067
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2257
    new-array v2, v3, [Ljava/net/InetAddress;

    .line 2259
    .local v2, "ret":[Ljava/net/InetAddress;
    :try_start_0
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllByName : start to get IP for host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2260
    :cond_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2265
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish to get IP for host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_4

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2267
    :cond_2
    if-eqz v2, :cond_5

    .line 2268
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 2269
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllByName : dst address : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2268
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2262
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 2263
    .local v0, "e":Ljava/net/UnknownHostException;
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllByName : UnknownHostException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2265
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_4
    array-length v3, v2

    goto :goto_1

    .line 2272
    :cond_5
    return-object v2
.end method

.method private getApplicationName(ILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "pid"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1904
    const-string v2, ""

    .line 1906
    .local v2, "appName":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1907
    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v9, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1908
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 1910
    .local v8, "raInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1911
    .local v7, "raInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_0

    .line 1916
    invoke-direct {p0, p2}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "com.android.vending"

    iget-object v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1918
    :try_start_0
    const-string v9, "com.android.vending"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1919
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1946
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "raInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    :goto_1
    sget-boolean v9, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationName : calling application name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for pid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1947
    :cond_2
    return-object v2

    .line 1921
    .restart local v7    # "raInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_0
    move-exception v3

    .line 1922
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v9, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationName : error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1926
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/smartbonding/SmartBondingService;->isYouTubeContent(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "com.google.android.youtube"

    iget-object v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1928
    :try_start_1
    const-string v9, "com.google.android.youtube"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1929
    .restart local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1931
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v3

    .line 1932
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v9, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationName : error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1936
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    if-eqz p1, :cond_0

    iget v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v9, p1, :cond_0

    .line 1938
    :try_start_2
    iget-object v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1939
    .restart local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2    # "appName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .restart local v2    # "appName":Ljava/lang/String;
    goto/16 :goto_0

    .line 1940
    .end local v2    # "appName":Ljava/lang/String;
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_2
    move-exception v3

    .line 1941
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v9, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationName : error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1942
    :cond_5
    const-string v2, ""

    .restart local v2    # "appName":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private getBarBitmap(II)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "speed"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v12, 0x0

    .line 2861
    const/4 v6, 0x0

    .line 2862
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 2864
    .local v7, "drawable":Landroid/graphics/drawable/GradientDrawable;
    if-nez p2, :cond_2

    .line 2865
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    .line 2866
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080158

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 2872
    .restart local v7    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :goto_0
    if-eqz v6, :cond_0

    if-nez v7, :cond_3

    .line 2873
    :cond_0
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "getBarBitmap : bitmap or drawable is null"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2874
    :cond_1
    const/4 v6, 0x0

    .line 2900
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v6

    .line 2868
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    .line 2869
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108011c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .restart local v7    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    goto :goto_0

    .line 2878
    :cond_3
    iget v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMaxSpeed:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2879
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v2, p1

    int-to-double v2, v2

    iget v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMaxSpeed:I

    int-to-double v10, v4

    div-double/2addr v2, v10

    double-to-int v9, v2

    .line 2881
    .local v9, "width":I
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2882
    .local v0, "tempCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 2883
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 2884
    .local v5, "p":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2885
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2886
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 2888
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-direct {v8, v12, v12, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2889
    .local v8, "rect":Landroid/graphics/Rect;
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2890
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 2891
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2892
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 2894
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2895
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 2896
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v12, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v3, v12, v12, v9, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2898
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1
.end method

.method private getCurrentActivity()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2081
    const-string v2, ""

    .line 2083
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2084
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_1

    .line 2085
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 2086
    .local v3, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2087
    .local v4, "topActivity":Landroid/content/ComponentName;
    if-eqz v4, :cond_1

    .line 2088
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 2089
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentActivityName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2090
    :cond_0
    if-nez v2, :cond_1

    .line 2091
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2098
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4    # "topActivity":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    return-object v2

    .line 2095
    :catch_0
    move-exception v1

    .line 2096
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception to get activity name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getGooglePlayContentUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1448
    move-object v0, p1

    .line 1449
    .local v0, "googlePlayUrl":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1450
    const-string v3, "\\?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1452
    .local v2, "urls":[Ljava/lang/String;
    aget-object v3, v2, v5

    if-eqz v3, :cond_2

    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1453
    aget-object v3, v2, v5

    const-string v4, "/o"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v2, v5

    const-string v4, "/p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1455
    :cond_0
    aget-object v3, v2, v5

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1457
    :cond_1
    aget-object v3, v2, v5

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1458
    .local v1, "posOfAppNumber":I
    aget-object v3, v2, v5

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1460
    aget-object v0, v2, v5

    .line 1464
    .end local v1    # "posOfAppNumber":I
    .end local v2    # "urls":[Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private getGooglePlayContentUrlWithParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1468
    move-object v0, p1

    .line 1469
    .local v0, "googlePlayUrl":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1470
    const-string v2, "\\?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1471
    .local v1, "urls":[Ljava/lang/String;
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "getGooglePlayContentUrlWithParam : google play store contents"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1472
    :cond_0
    aget-object v2, v1, v3

    if-eqz v2, :cond_1

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1473
    aget-object v0, v1, v3

    .line 1476
    .end local v1    # "urls":[Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 9
    .param p1, "netType"    # I

    .prologue
    const/4 v8, 0x1

    .line 1106
    const/4 v1, 0x0

    .line 1108
    .local v1, "lp":Landroid/net/LinkProperties;
    :try_start_0
    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLinkProperties "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p1, :cond_3

    const-string v6, "WIFI"

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1109
    :cond_0
    if-nez p1, :cond_5

    .line 1110
    const/4 v4, 0x0

    .line 1111
    .local v4, "wifiConnected":Z
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1112
    .local v5, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_1

    .line 1113
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    .line 1115
    :cond_1
    if-nez v4, :cond_4

    .line 1116
    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v6, :cond_2

    const-string v6, "getLinkProperties : wifi is not connected"

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .end local v4    # "wifiConnected":Z
    .end local v5    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_2
    :goto_1
    move-object v6, v1

    .line 1136
    :goto_2
    return-object v6

    .line 1108
    :cond_3
    const-string v6, "MOBILE"

    goto :goto_0

    .line 1118
    .restart local v4    # "wifiConnected":Z
    .restart local v5    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_4
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    goto :goto_1

    .line 1121
    .end local v4    # "wifiConnected":Z
    .end local v5    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_5
    if-ne p1, v8, :cond_2

    .line 1122
    const/4 v2, 0x0

    .line 1123
    .local v2, "mobileConnected":Z
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v7, 0x5

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1124
    .local v3, "mobileNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_6

    .line 1125
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 1127
    :cond_6
    if-nez v2, :cond_7

    .line 1128
    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v6, :cond_2

    const-string v6, "getLinkProperties : mobile is not connected"

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1134
    .end local v2    # "mobileConnected":Z
    .end local v3    # "mobileNetworkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 1135
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    .line 1136
    const/4 v6, 0x0

    goto :goto_2

    .line 1130
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "mobileConnected":Z
    .restart local v3    # "mobileNetworkInfo":Landroid/net/NetworkInfo;
    :cond_7
    :try_start_1
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v7, 0x5

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method private getLocalAddress(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 2
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 2338
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getLocalInetAddress(Landroid/net/LinkProperties;)Ljava/net/InetAddress;

    move-result-object v0

    .line 2339
    .local v0, "addr":Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 2340
    const/4 v1, 0x0

    .line 2342
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLocalAddress(Landroid/net/LinkProperties;I)Ljava/lang/String;
    .locals 2
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "preferIpType"    # I

    .prologue
    .line 2329
    invoke-direct {p0, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->getLocalInetAddress(Landroid/net/LinkProperties;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 2330
    .local v0, "addr":Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 2331
    const/4 v1, 0x0

    .line 2333
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLocalInetAddress(Landroid/net/LinkProperties;)Ljava/net/InetAddress;
    .locals 4
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v2, 0x0

    .line 2383
    if-nez p1, :cond_1

    .line 2384
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "getLocalAddress : link properties is null"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    move-object v0, v2

    .line 2393
    :goto_0
    return-object v0

    .line 2387
    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 2388
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_3
    move-object v0, v2

    .line 2393
    goto :goto_0
.end method

.method private getLocalInetAddress(Landroid/net/LinkProperties;I)Ljava/net/InetAddress;
    .locals 4
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "preferIpType"    # I

    .prologue
    .line 2347
    const/4 v2, 0x0

    .line 2348
    .local v2, "result":Ljava/net/InetAddress;
    if-nez p1, :cond_1

    .line 2349
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "getLocalAddress : link properties is null"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2350
    :cond_0
    const/4 v3, 0x0

    .line 2379
    :goto_0
    return-object v3

    .line 2352
    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 2353
    .local v0, "addr":Ljava/net/InetAddress;
    if-nez p2, :cond_5

    .line 2354
    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    .line 2355
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2357
    move-object v2, v0

    .line 2371
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_3
    :goto_1
    if-nez v2, :cond_6

    .line 2372
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 2373
    .restart local v0    # "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2375
    move-object v2, v0

    goto :goto_2

    .line 2362
    :cond_5
    instance-of v3, v0, Ljava/net/Inet6Address;

    if-eqz v3, :cond_2

    .line 2363
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2365
    move-object v2, v0

    .line 2366
    goto :goto_1

    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_6
    move-object v3, v2

    .line 2379
    goto/16 :goto_0
.end method

.method private getMobileBytes()J
    .locals 3

    .prologue
    .line 2659
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 2662
    :goto_0
    return-wide v1

    .line 2660
    :catch_0
    move-exception v0

    .line 2661
    .local v0, "ex":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "getMobileBytes : exception"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2662
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private getMobileDataEnabled()Z
    .locals 3

    .prologue
    .line 1082
    const/4 v1, 0x0

    .line 1083
    .local v1, "result":Z
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    if-eqz v2, :cond_0

    .line 1085
    :try_start_0
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1090
    :cond_0
    :goto_0
    return v1

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "getMobileDataEnabled : remote exception"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNetworkEnabled()Z
    .locals 4

    .prologue
    .line 1094
    const/4 v1, 0x0

    .line 1095
    .local v1, "isWifiEnabled":Z
    const/4 v0, 0x0

    .line 1096
    .local v0, "isMobileEnabled":Z
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    .line 1097
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 1099
    :cond_0
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getMobileDataEnabled()Z

    move-result v0

    .line 1101
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkEnabled : wifi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mobile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1102
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPackageName(I)Ljava/lang/String;
    .locals 8
    .param p1, "pid"    # I

    .prologue
    .line 1951
    const-string v2, ""

    .line 1953
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1954
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1955
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1957
    .local v5, "raInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1958
    .local v4, "raInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v6, v6

    if-eqz v6, :cond_0

    .line 1962
    if-eqz p1, :cond_0

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_0

    .line 1963
    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v2, v6, v7

    .line 1967
    .end local v4    # "raInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPackageName : package name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1968
    :cond_2
    return-object v2
.end method

.method private getSBInterfaceDirect(II)Ljava/lang/String;
    .locals 2
    .param p1, "netType"    # I
    .param p2, "preferIpType"    # I

    .prologue
    .line 1145
    const/4 v1, 0x0

    .line 1146
    .local v1, "lp":Landroid/net/LinkProperties;
    if-nez p1, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    .line 1151
    :goto_0
    if-eqz v1, :cond_1

    .line 1152
    invoke-direct {p0, v1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->getLocalAddress(Landroid/net/LinkProperties;I)Ljava/lang/String;

    move-result-object v0

    .line 1155
    :goto_1
    return-object v0

    .line 1149
    :cond_0
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    goto :goto_0

    .line 1155
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getSBLimitFileSize()J
    .locals 2

    .prologue
    .line 891
    const-wide/32 v0, 0x1e00000

    return-wide v0
.end method

.method private getSBUsageEnabled()Z
    .locals 5

    .prologue
    .line 1894
    const/4 v1, 0x0

    .line 1895
    .local v1, "enabled":Z
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1896
    .local v0, "UsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1897
    const/4 v1, 0x1

    goto :goto_0

    .line 1900
    .end local v0    # "UsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_1
    return v1
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 3596
    if-nez p0, :cond_0

    .line 3597
    const-string v3, ""

    .line 3613
    :goto_0
    return-object v3

    .line 3602
    :cond_0
    move-object v2, p0

    .line 3603
    .local v2, "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v2, :cond_2

    .line 3604
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_1

    .line 3605
    const-string v3, ""

    goto :goto_0

    .line 3607
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1

    .line 3610
    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 3611
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3612
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 3613
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getTotalContentSize()J
    .locals 7

    .prologue
    .line 2434
    const-wide/16 v0, 0x0

    .line 2435
    .local v0, "contentsize":J
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 2436
    .local v3, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget v4, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2437
    iget-wide v4, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mFileSize:J

    add-long/2addr v0, v4

    .line 2438
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTotalContentSize : size for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mFileSize:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2441
    .end local v3    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_1
    return-wide v0
.end method

.method private getTrafficMonitorType()I
    .locals 2

    .prologue
    .line 2667
    const-string v0, "persist.sb.monitortype"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getWifiBytes()J
    .locals 5

    .prologue
    .line 2650
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v1

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 2653
    :goto_0
    return-wide v1

    .line 2651
    :catch_0
    move-exception v0

    .line 2652
    .local v0, "ex":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "getWifiBytes : exception"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2653
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private hideTrafficMonitorToast()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 2622
    monitor-enter p0

    .line 2623
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    if-eqz v0, :cond_2

    .line 2624
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2625
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2627
    :cond_0
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    if-ge v0, v1, :cond_1

    .line 2628
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    .line 2630
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    .line 2632
    :cond_2
    monitor-exit p0

    .line 2633
    return-void

    .line 2632
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initBlockedPackages()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1973
    const-string v5, "NA"

    sget-object v6, Lcom/samsung/smartbonding/SmartBondingService;->CscFeatureConfigSmartBonding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1974
    sget-object v5, Lcom/samsung/smartbonding/SmartBondingService;->CscFeatureConfigSmartBonding:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1975
    .local v4, "listApps":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 1976
    .local v1, "curList":Ljava/lang/String;
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initBlockedPackages: Read Package Form Feature= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1977
    :cond_0
    const-string v5, "+"

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1979
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add White List Form Feature : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1980
    :cond_1
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1975
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1981
    :cond_3
    const-string v5, "-"

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1983
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1984
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add Block List Form Feature : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1989
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "curList":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "listApps":[Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    .line 1990
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->IsDCM:Z

    if-eqz v5, :cond_6

    .line 1991
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "initBlockedPackages: add DCM WhiteList Package"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1992
    :cond_5
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    const-string v6, "com.nttdocomo.android.store"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1993
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    const-string v6, "com.nttdocomo.android.schedulememo"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1994
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    const-string v6, "com.nttdocomo.android.dhome"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1998
    :cond_6
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    .line 2006
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, "initBlockedPackages: add Black List packages"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2014
    :cond_7
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "org.zwanoo.android.speedtest"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2015
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "pl.speedtest.android"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2016
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.kbudev.speedtest"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2017
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "ru.qip.speedtest"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2018
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "eu.vspeed.android"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2019
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.quickbird.speedtestmaster"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2020
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.quickbird.speedtest"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2021
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.quickbird.speed"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2022
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.krnet.LteTracker"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2023
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.sensorly.viewer"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2027
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->IsDCM:Z

    if-eqz v5, :cond_9

    .line 2028
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_8

    const-string v5, "initBlockedPackages: add DCM Black List Package"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2029
    :cond_8
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.threelm.dm.app.docomo"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2030
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.mcafee.android.scanservice"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2031
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.rsupport.rsperm.ntt"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2032
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "jp.co.omronsoft.android.decoemojimanager_docomo"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2033
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "jp.ne.docomo.smt.contents_search_widget"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2034
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "jp.id_credit_sp.android"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2035
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.felicanetworks.mfs.addon.uicc.d"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2037
    :cond_9
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->IsKOR:Z

    if-eqz v5, :cond_b

    .line 2038
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_a

    const-string v5, "initBlockedPackages: add KOR Black List Package"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2039
    :cond_a
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.uplus.onphone"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2042
    :cond_b
    return-void
.end method

.method private initSpeedBarRes()V
    .locals 3

    .prologue
    .line 2804
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 2805
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10806f6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    .line 2807
    :cond_0
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 2808
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10806f5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    .line 2810
    :cond_1
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 2811
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    .line 2813
    :cond_2
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 2814
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    .line 2816
    :cond_3
    return-void
.end method

.method private initSpeedRatio()V
    .locals 2

    .prologue
    .line 1352
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    .line 1353
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    .line 1354
    return-void
.end method

.method private initTrafficMonitor()V
    .locals 5

    .prologue
    const/16 v4, 0x3e7

    const/16 v3, 0x64

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 2397
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreMobileBytes:J

    .line 2398
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreWifiBytes:J

    .line 2399
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreTrafficTime:J

    .line 2400
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    .line 2401
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    .line 2402
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    .line 2403
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedMobileImageLevel:I

    .line 2404
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedWifiImageLevel:I

    .line 2405
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedBoosterImageLevel:I

    .line 2406
    iput v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerBoosterImageLevel:I

    .line 2407
    iput v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerMobileImageLevel:I

    .line 2408
    iput v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerWifiImageLevel:I

    .line 2409
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    .line 2410
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    .line 2411
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    .line 2413
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMaxSpeed:I

    .line 2414
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPrevSpeed:I

    .line 2416
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalWifiBytes:J

    .line 2417
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalMobileBytes:J

    .line 2418
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalBoosterBytes:J

    .line 2419
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalTrafficTime:J

    .line 2421
    iput v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    .line 2422
    iput v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    .line 2423
    iput v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    .line 2425
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getTotalContentSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    .line 2426
    iget-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBoosterRemainedContentSize:J

    .line 2427
    iget-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiRemainedContentSize:J

    .line 2428
    iget-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileRemainedContentSize:J

    .line 2430
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getTrafficMonitorType()I

    move-result v0

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    .line 2431
    return-void
.end method

.method private isAirPlaneMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1488
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1492
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isBlockedProcess(I)Z
    .locals 6
    .param p1, "pid"    # I

    .prologue
    .line 2045
    const/4 v3, 0x0

    .line 2047
    .local v3, "result":Z
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 2049
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 2050
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->IsDCM:Z

    if-eqz v4, :cond_7

    .line 2051
    const-string v4, "com.nttdocomo.android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "jp.co.nttdocomo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2052
    :cond_0
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2053
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This package is Unblocked Docomo App : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2054
    :cond_1
    const/4 v3, 0x0

    .line 2071
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2072
    .local v0, "blockedPkg":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2073
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This package is blocked list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2074
    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    .line 2056
    .end local v0    # "blockedPkg":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This package is Blocked Docomo App : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2057
    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    .line 2061
    :cond_7
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2062
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This package is included in white list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2063
    :cond_8
    const/4 v3, 0x0

    goto :goto_0

    .line 2065
    :cond_9
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This package is not included in white list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2066
    :cond_a
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2077
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_b
    return v3
.end method

.method private isFirstCombinedRequest(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1407
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1408
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayFirstContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1421
    :cond_0
    :goto_0
    return v2

    .line 1412
    :cond_1
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 1413
    .local v1, "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    iget-object v3, v1, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->convertCombinedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1414
    iget-object v3, v1, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStartUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->convertDetailUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1417
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isGooglePlayContent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1441
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "/market/GetBinary/GetBinary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1442
    const/4 v0, 0x1

    .line 1444
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGooglePlayFirstContent(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1425
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1426
    const-string v2, "\\?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1428
    .local v0, "urls":[Ljava/lang/String;
    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    aget-object v2, v0, v1

    const-string v3, "/market/GetBinary/GetBinary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1430
    aget-object v2, v0, v1

    const-string v3, "/o"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1431
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "isGooglePlayFirstContent : it\'s first content"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1432
    :cond_0
    const/4 v1, 0x1

    .line 1437
    .end local v0    # "urls":[Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 1436
    :cond_2
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "isGooglePlayFirstContent : it\'s not a first content"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isMidHighDebugLevel()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 794
    const-string v5, "ro.debug_level"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "debugLevel":Ljava/lang/String;
    const-string v5, "0x494d"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0x4948"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v3, v4

    .line 815
    :cond_1
    :goto_0
    return v3

    .line 798
    :cond_2
    const-string v5, "0x4f4c"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 801
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/devices/virtual/misc/level/control"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 802
    .local v1, "file1":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v5, "/mnt/.lfs/debug_level.inf"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 804
    .local v2, "file2":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 805
    const-string v5, "/sys/devices/virtual/misc/level/control"

    invoke-direct {p0, v5}, Lcom/samsung/smartbonding/SmartBondingService;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 806
    const-string v5, "0xB0B0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "0xC0C0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    move v3, v4

    .line 807
    goto :goto_0

    .line 809
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 810
    const-string v5, "/mnt/.lfs/debug_level.inf"

    invoke-direct {p0, v5}, Lcom/samsung/smartbonding/SmartBondingService;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    const-string v5, "DMID"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "DHIG"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_5
    move v3, v4

    .line 812
    goto :goto_0
.end method

.method private isRunningProcess(I)Z
    .locals 7
    .param p1, "pid"    # I

    .prologue
    .line 2119
    const/4 v4, 0x0

    .line 2121
    .local v4, "result":Z
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2122
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 2124
    .local v3, "raInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2125
    .local v2, "raInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 2128
    if-eqz p1, :cond_0

    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    .line 2129
    const/4 v4, 0x1

    goto :goto_0

    .line 2132
    .end local v2    # "raInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return v4
.end method

.method private isRunningProcess(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2102
    const/4 v4, 0x0

    .line 2104
    .local v4, "result":Z
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2105
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 2107
    .local v3, "raInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2108
    .local v2, "raInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 2111
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2112
    const/4 v4, 0x1

    goto :goto_0

    .line 2115
    .end local v2    # "raInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return v4
.end method

.method private isYouTubeContent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1481
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "/videoplayback?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    const/4 v0, 0x1

    .line 1484
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadPreference()V
    .locals 2

    .prologue
    .line 3547
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load Preference :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3548
    :cond_0
    const-string v0, "persist.sys.sb.log.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    .line 3549
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 3580
    const-string v0, "SmartBondingService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    return-void
.end method

.method private static log(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 3588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->loge(Ljava/lang/String;)V

    .line 3589
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 3584
    const-string v0, "SmartBondingService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    return-void
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 820
    const-string v3, ""

    .line 821
    .local v3, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 824
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1fa0

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    if-eqz v1, :cond_0

    .line 826
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 827
    if-eqz v3, :cond_0

    .line 828
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 834
    :cond_0
    if-eqz v1, :cond_1

    .line 836
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v0, v1

    .line 843
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 844
    const-string v3, ""

    .line 846
    .end local v3    # "result":Ljava/lang/String;
    :cond_3
    return-object v3

    .line 830
    .restart local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 831
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v4, "SmartBondingService"

    const-string v5, "IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 834
    if-eqz v0, :cond_2

    .line 836
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 837
    :catch_1
    move-exception v2

    .line 838
    const-string v4, "SmartBondingService"

    const-string v5, "IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 834
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v0, :cond_4

    .line 836
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 834
    :cond_4
    :goto_4
    throw v4

    .line 837
    :catch_2
    move-exception v2

    .line 838
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "SmartBondingService"

    const-string v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 837
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    .line 838
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v4, "SmartBondingService"

    const-string v5, "IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 834
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_3

    .line 830
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3291
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 3292
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    .line 3294
    :cond_0
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3295
    return-void
.end method

.method private removeSBUsage(J)V
    .locals 8
    .param p1, "threadID"    # J

    .prologue
    .line 1867
    const/4 v2, 0x0

    .line 1868
    .local v2, "removed":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1870
    .local v1, "mRemoveSBUsageStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;>;"
    const-string v3, ""

    .line 1871
    .local v3, "removedUrl":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1872
    .local v4, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v5, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_0

    .line 1873
    iget-object v3, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    .line 1874
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeSBUsage : url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is founded. add it in remove usage list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1879
    .end local v4    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_1
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1880
    .restart local v4    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-object v5, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1881
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeSBUsage : thread id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is added in remove list."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1882
    :cond_3
    const/4 v2, 0x1

    .line 1883
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1887
    .end local v4    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1888
    .restart local v4    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeSBUsage : thread id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1889
    :cond_5
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1891
    .end local v4    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_6
    return-void
.end method

.method private sendSBStartIntent()V
    .locals 2

    .prologue
    .line 2307
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2308
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2309
    return-void
.end method

.method private sendSBStatusChangedIntent(IJJ)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "wifiUsage"    # J
    .param p4, "mobileUsage"    # J

    .prologue
    .line 2317
    const-string v1, "VZW"

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_BOOSTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2319
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2320
    const-string/jumbo v1, "totalUsage"

    add-long v2, p2, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2321
    const-string/jumbo v1, "wifiUsage"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2322
    const-string v1, "mobileUsage"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2323
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2324
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify SB Status change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2326
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendSBStopIntent()V
    .locals 2

    .prologue
    .line 2312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2313
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2314
    return-void
.end method

.method private setCurMaxSpeed(I)V
    .locals 4
    .param p1, "speed"    # I

    .prologue
    .line 2838
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAvgMaxSpeed : mPrevSpeed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPrevSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", speed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2841
    :cond_0
    if-eqz p1, :cond_1

    iget v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPrevSpeed:I

    if-ne p1, v2, :cond_2

    .line 2858
    :cond_1
    :goto_0
    return-void

    .line 2845
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TRAFFIC_SPEED_CHECK_POINT:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 2847
    iget v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPrevSpeed:I

    if-le p1, v2, :cond_4

    .line 2848
    const/4 v1, 0x0

    .line 2852
    .local v1, "margin":I
    :goto_2
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TRAFFIC_SPEED_CHECK_POINT:[I

    aget v2, v2, v0

    sub-int/2addr v2, v1

    if-lt p1, v2, :cond_5

    .line 2853
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TRAFFIC_SPEED:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMaxSpeed:I

    .line 2857
    .end local v1    # "margin":I
    :cond_3
    iput p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPrevSpeed:I

    goto :goto_0

    .line 2850
    :cond_4
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->DECREASE_SPEED_MARGIN:[I

    aget v1, v2, v0

    .restart local v1    # "margin":I
    goto :goto_2

    .line 2845
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1072
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_0

    .line 1074
    :try_start_0
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1075
    :catch_0
    move-exception v0

    .line 1076
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "setMobileDataEnabled : remote exception"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSBInterfacesEnabled(Z)I
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 948
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBInterfacesEnabled:Z

    if-ne v0, p1, :cond_2

    .line 949
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to setSBInterfacesEnabled : already "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string v0, "enabled"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 950
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceState()I

    move-result v0

    .line 969
    :goto_1
    return v0

    .line 949
    :cond_1
    const-string v0, "disabled"

    goto :goto_0

    .line 953
    :cond_2
    monitor-enter p0

    .line 954
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBInterfacesEnabled:Z

    .line 955
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSBInterfacesEnabled ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBInterfacesEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 956
    :cond_3
    if-eqz p1, :cond_4

    .line 957
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 958
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->turnOnMobileConnection()Z

    .line 967
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceState()I

    move-result v0

    goto :goto_1

    .line 960
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 961
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->turnOffMobileConnection()Z

    goto :goto_2

    .line 967
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private showSpeedBarNotification(Z)V
    .locals 10
    .param p1, "isOnGoing"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 3120
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "showSpeedBarNotification"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3122
    :cond_0
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 3125
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    if-nez v8, :cond_2

    .line 3126
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "showSpeedBarNotification : notification manager is null"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3169
    :cond_1
    :goto_0
    return-void

    .line 3130
    :cond_2
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-eqz v0, :cond_3

    .line 3131
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "showSpeedBarNotification : notification already exist"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3135
    :cond_3
    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x109007d

    invoke-direct {v6, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 3137
    .local v6, "contentView":Landroid/widget/RemoteViews;
    const v0, 0x102035f

    const-string v3, "setImageBitmap"

    invoke-direct {p0, v1, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getBarBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v6, v0, v3, v4}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3138
    const v0, 0x1020361

    const-string v3, "setImageBitmap"

    invoke-direct {p0, v1, v5}, Lcom/samsung/smartbonding/SmartBondingService;->getBarBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v6, v0, v3, v4}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3140
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10407f2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3142
    .local v7, "mbps":Ljava/lang/String;
    const v0, 0x1020360

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3143
    const v0, 0x102035e

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3144
    const v0, 0x102035d

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3146
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3147
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings.smartbonding"

    const-string v3, "com.android.settings.smartbonding.SmartBondingSettings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3148
    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3150
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 3153
    .local v9, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-nez v0, :cond_4

    .line 3154
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    .line 3155
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/app/Notification;->when:J

    .line 3158
    :cond_4
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const v1, 0x10808a5

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 3159
    if-eqz p1, :cond_5

    .line 3160
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3165
    :goto_1
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 3166
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iput-object v6, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3167
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/16 v1, 0x108

    iput v1, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 3168
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    invoke-virtual {v8, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 3162
    :cond_5
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, 0x4

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_1
.end method

.method private showSpeedBarToast()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2904
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-nez v5, :cond_0

    .line 2905
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v6, "empty toast"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    .line 2908
    :cond_0
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    if-nez v5, :cond_1

    .line 2909
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    .line 2911
    :cond_1
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    const v6, 0x10900db

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 2912
    .local v3, "v":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2914
    const v5, 0x1020360

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2915
    .local v2, "mobileSpeed":Landroid/widget/TextView;
    const v5, 0x102035e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2916
    .local v4, "wifiSpeed":Landroid/widget/TextView;
    const v5, 0x102035d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2918
    .local v0, "boosterSpeed":Landroid/widget/TextView;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10407f2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2919
    .local v1, "mbps":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2920
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2921
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2923
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v5, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2924
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2925
    return-void
.end method

.method private showSpeedNotification(Z)V
    .locals 11
    .param p1, "isOnGoing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2960
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "showSpeedNotification"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2962
    :cond_0
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 2965
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    if-nez v8, :cond_2

    .line 2966
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "showSpeedNotification : notification manager is null"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3012
    :cond_1
    :goto_0
    return-void

    .line 2970
    :cond_2
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-eqz v0, :cond_3

    .line 2971
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "showSpeedNotification : notification already exist"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2975
    :cond_3
    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x109007e

    invoke-direct {v6, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2976
    .local v6, "contentView":Landroid/widget/RemoteViews;
    const v0, 0x1020361

    const-string v3, "setImageLevel"

    invoke-virtual {v6, v0, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2977
    const v0, 0x102035f

    const-string v3, "setImageLevel"

    invoke-virtual {v6, v0, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2978
    const v0, 0x1020363

    const-string v3, "setImageLevel"

    invoke-virtual {v6, v0, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2980
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10407ed

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2981
    .local v10, "title":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10407e0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2982
    .local v7, "name":Ljava/lang/String;
    const-string v0, "%s"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 2983
    const v0, 0x1020362

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2985
    const v0, 0x1020360

    const-string v3, "0"

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2986
    const v0, 0x102035e

    const-string v3, "0"

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2987
    const v0, 0x102035d

    const-string v3, "0"

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2989
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2990
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings.smartbonding"

    const-string v3, "com.android.settings.smartbonding.SmartBondingSettings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2991
    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2993
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 2996
    .local v9, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-nez v0, :cond_4

    .line 2997
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    .line 2998
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/app/Notification;->when:J

    .line 3001
    :cond_4
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const v1, 0x10808a5

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 3002
    if-eqz p1, :cond_5

    .line 3003
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3008
    :goto_1
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 3009
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iput-object v6, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3010
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/16 v1, 0x108

    iput v1, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 3011
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    invoke-virtual {v8, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 3005
    :cond_5
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, 0x4

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_1
.end method

.method private showSpeedToast()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 2671
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-nez v10, :cond_0

    .line 2672
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v11, "empty toast"

    invoke-static {v10, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    .line 2675
    :cond_0
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    if-nez v10, :cond_1

    .line 2676
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    iput-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    .line 2678
    :cond_1
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    const v11, 0x10900dc

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 2679
    .local v7, "v":Landroid/view/View;
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2681
    const v10, 0x1020361

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2682
    .local v3, "mobileView":Landroid/widget/ImageView;
    const v10, 0x102035f

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 2683
    .local v9, "wifiView":Landroid/widget/ImageView;
    const v10, 0x1020363

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2685
    .local v1, "boosterView":Landroid/widget/ImageView;
    const v10, 0x1020362

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2686
    .local v6, "titleView":Landroid/widget/TextView;
    const v10, 0x1020360

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2687
    .local v2, "mobileSpeed":Landroid/widget/TextView;
    const v10, 0x102035e

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2688
    .local v8, "wifiSpeed":Landroid/widget/TextView;
    const v10, 0x102035d

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2690
    .local v0, "boosterSpeed":Landroid/widget/TextView;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10407ed

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2691
    .local v5, "title":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10407e0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2692
    .local v4, "name":Ljava/lang/String;
    const-string v10, "%s"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<b>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</b>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2693
    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2694
    const-string v10, "0"

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2695
    const-string v10, "0"

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2696
    const-string v10, "0"

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2698
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2699
    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2700
    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2701
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v10, v7}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2702
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 2703
    return-void
.end method

.method private showTimerNotification(Z)V
    .locals 9
    .param p1, "isOnGoing"    # Z

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x64

    .line 3042
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "showTimerNotification"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3044
    :cond_0
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 3047
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    if-nez v7, :cond_2

    .line 3048
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "showTimerNotification : notification manager is null"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3089
    :cond_1
    :goto_0
    return-void

    .line 3052
    :cond_2
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-eqz v0, :cond_3

    .line 3053
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "showTimerNotification : notification already exist"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3057
    :cond_3
    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x1090087

    invoke-direct {v6, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 3058
    .local v6, "contentView":Landroid/widget/RemoteViews;
    const v0, 0x1020361

    const-string v3, "setImageLevel"

    invoke-virtual {v6, v0, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3059
    const v0, 0x102035f

    const-string v3, "setImageLevel"

    invoke-virtual {v6, v0, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3060
    const v0, 0x1020363

    const-string v3, "setImageLevel"

    invoke-virtual {v6, v0, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3062
    const v0, 0x1020360

    const-string v3, "999"

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3063
    const v0, 0x102035e

    const-string v3, "999"

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3064
    const v0, 0x102035d

    const-string v3, "999"

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3066
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3067
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings.smartbonding"

    const-string v3, "com.android.settings.smartbonding.SmartBondingSettings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3068
    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3070
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 3073
    .local v8, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-nez v0, :cond_4

    .line 3074
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    .line 3075
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/app/Notification;->when:J

    .line 3078
    :cond_4
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const v1, 0x10808a5

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 3079
    if-eqz p1, :cond_5

    .line 3080
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3085
    :goto_1
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 3086
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iput-object v6, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3087
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/16 v1, 0x108

    iput v1, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 3088
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    invoke-virtual {v7, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 3082
    :cond_5
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, 0x4

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_1
.end method

.method private showTimerToast()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x64

    .line 2741
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-nez v7, :cond_0

    .line 2742
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v8, "empty toast"

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    .line 2745
    :cond_0
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    if-nez v7, :cond_1

    .line 2746
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    iput-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    .line 2748
    :cond_1
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    const v8, 0x10900dd

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 2749
    .local v4, "v":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2751
    const v7, 0x1020361

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2752
    .local v3, "mobileView":Landroid/widget/ImageView;
    const v7, 0x102035f

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 2753
    .local v6, "wifiView":Landroid/widget/ImageView;
    const v7, 0x1020363

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2755
    .local v1, "boosterView":Landroid/widget/ImageView;
    const v7, 0x1020360

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2756
    .local v2, "mobileSpeed":Landroid/widget/TextView;
    const v7, 0x102035e

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2757
    .local v5, "wifiSpeed":Landroid/widget/TextView;
    const v7, 0x102035d

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2759
    .local v0, "boosterSpeed":Landroid/widget/TextView;
    const-string v7, "999"

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2760
    const-string v7, "999"

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2761
    const-string v7, "999"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2763
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2764
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2765
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2767
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v7, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2768
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 2769
    return-void
.end method

.method private showWarningToast(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/16 v5, 0x258

    .line 779
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 780
    .local v1, "warningToast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 781
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 782
    invoke-virtual {v0, v5}, Landroid/view/View;->setMinimumWidth(I)V

    .line 784
    const/16 v2, 0xe

    if-ne p1, v2, :cond_1

    .line 785
    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 790
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 791
    return-void

    .line 786
    :cond_1
    const/16 v2, 0xd

    if-ne p1, v2, :cond_0

    .line 787
    const v2, -0xffff01

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private startTrafficMonitor()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 2561
    monitor-enter p0

    .line 2562
    :try_start_0
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "startTrafficMonitor"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2563
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    if-nez v0, :cond_2

    .line 2564
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2565
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->initTrafficMonitor()V

    .line 2566
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    if-eqz v0, :cond_3

    .line 2567
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    .line 2568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    .line 2572
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    .line 2573
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getMobileBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    .line 2574
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getWifiBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    .line 2575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    .line 2577
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    if-nez v0, :cond_4

    .line 2578
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/smartbonding/SmartBondingService;->showSpeedNotification(Z)V

    .line 2584
    :goto_1
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    if-ge v0, v3, :cond_1

    .line 2585
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2587
    :cond_1
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2589
    :cond_2
    monitor-exit p0

    .line 2590
    return-void

    .line 2570
    :cond_3
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    goto :goto_0

    .line 2589
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2579
    :cond_4
    :try_start_1
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    if-ne v0, v2, :cond_5

    .line 2580
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/smartbonding/SmartBondingService;->showTimerNotification(Z)V

    goto :goto_1

    .line 2582
    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/smartbonding/SmartBondingService;->showSpeedBarNotification(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private stopTrafficMonitor()V
    .locals 2

    .prologue
    .line 2636
    monitor-enter p0

    .line 2637
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    if-eqz v0, :cond_0

    .line 2638
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->initTrafficMonitor()V

    .line 2639
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->clearNotification()V

    .line 2640
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->clearToast()V

    .line 2641
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    .line 2642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    .line 2643
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2645
    :cond_0
    monitor-exit p0

    .line 2646
    return-void

    .line 2645
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private turnOffMobileConnection()Z
    .locals 4

    .prologue
    .line 1003
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "turnOffMobileConnection"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1005
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v2, 0x0

    const-string v3, "enableHIPRI"

    invoke-interface {v1, v2, v3}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1006
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "turnOffMobileConnection : Call stopUsingNetworkFeature for Hipri Types "

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1007
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception turnOffMobileConnection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private turnOnMobileConnection()Z
    .locals 8

    .prologue
    .line 973
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "turnOnMobileConnection"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 974
    :cond_0
    const/4 v2, 0x3

    .line 975
    .local v2, "result":I
    const/4 v3, 0x0

    .line 977
    .local v3, "ret":Z
    :try_start_0
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v5, 0x0

    const-string v6, "enableHIPRI"

    new-instance v7, Landroid/os/Binder;

    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    invoke-interface {v4, v5, v6, v7}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v2

    .line 978
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "turnOnMobileConnection : Call startUsingNetworkFeature for Hipri Types "

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 979
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :cond_2
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 999
    :goto_1
    :pswitch_0
    return v3

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception turnOnMobileConnection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 986
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 987
    .local v1, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const-wide/32 v5, 0x9c40

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 992
    const/4 v3, 0x1

    .line 993
    goto :goto_1

    .line 983
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateSpeedBarNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3172
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 3175
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-nez v1, :cond_1

    .line 3176
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "updateSpeedNotification : notification manager is null"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3200
    :cond_0
    :goto_0
    return-void

    .line 3180
    :cond_1
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-nez v2, :cond_2

    .line 3181
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "updateSpeedNotification : no notification"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3185
    :cond_2
    iget v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    if-le v2, v3, :cond_4

    iget v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/smartbonding/SmartBondingService;->setCurMaxSpeed(I)V

    .line 3186
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSpeedBarNotification : current mCurMaxSpeed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMaxSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3188
    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10407f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3190
    .local v0, "mbps":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x1020360

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3191
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x102035e

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3192
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x102035d

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3194
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x102035f

    const-string v4, "setImageBitmap"

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    invoke-direct {p0, v5, v6}, Lcom/samsung/smartbonding/SmartBondingService;->getBarBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3195
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x1020361

    const-string v4, "setImageBitmap"

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    invoke-direct {p0, v5, v7}, Lcom/samsung/smartbonding/SmartBondingService;->getBarBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3197
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v3, -0x2

    iput v3, v2, Landroid/app/Notification;->priority:I

    .line 3198
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/16 v3, 0x108

    iput v3, v2, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 3199
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 3185
    .end local v0    # "mbps":Ljava/lang/String;
    :cond_4
    iget v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    goto/16 :goto_1
.end method

.method private updateSpeedBarToast()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2928
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-nez v5, :cond_1

    .line 2929
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "updateSpeedBarToast : toast is null"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2949
    :cond_0
    :goto_0
    return-void

    .line 2932
    :cond_1
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    .line 2933
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "updateSpeedBarToast : toast view is null"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2936
    :cond_2
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v3

    .line 2938
    .local v3, "v":Landroid/view/View;
    const v5, 0x1020360

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2939
    .local v2, "mobileSpeed":Landroid/widget/TextView;
    const v5, 0x102035e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2940
    .local v4, "wifiSpeed":Landroid/widget/TextView;
    const v5, 0x102035d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2942
    .local v0, "boosterSpeed":Landroid/widget/TextView;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10407f2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2943
    .local v1, "mbps":Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2944
    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2945
    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2947
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v5, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2948
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateSpeedNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3015
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3018
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 3019
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "updateSpeedNotification : notification manager is null"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3039
    :cond_0
    :goto_0
    return-void

    .line 3023
    :cond_1
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-nez v1, :cond_2

    .line 3024
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "updateSpeedNotification : no notification"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3028
    :cond_2
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020360

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3029
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x102035e

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3030
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x102035d

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3032
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020361

    const-string v3, "setImageLevel"

    iget v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedMobileImageLevel:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3033
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x102035f

    const-string v3, "setImageLevel"

    iget v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedWifiImageLevel:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3034
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020363

    const-string v3, "setImageLevel"

    iget v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedBoosterImageLevel:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3036
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v2, -0x2

    iput v2, v1, Landroid/app/Notification;->priority:I

    .line 3037
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/16 v2, 0x108

    iput v2, v1, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 3038
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method private updateSpeedToast()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 2706
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-nez v10, :cond_1

    .line 2707
    sget-boolean v10, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v10, :cond_0

    const-string/jumbo v10, "updateSpeedToast : toast is null"

    invoke-static {v10}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2738
    :cond_0
    :goto_0
    return-void

    .line 2710
    :cond_1
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_2

    .line 2711
    sget-boolean v10, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v10, :cond_0

    const-string/jumbo v10, "updateSpeedToast : toast view is null"

    invoke-static {v10}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2714
    :cond_2
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v7

    .line 2716
    .local v7, "v":Landroid/view/View;
    const v10, 0x1020361

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2717
    .local v3, "mobileView":Landroid/widget/ImageView;
    const v10, 0x102035f

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 2718
    .local v9, "wifiView":Landroid/widget/ImageView;
    const v10, 0x1020363

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2720
    .local v1, "boosterView":Landroid/widget/ImageView;
    const v10, 0x1020362

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2721
    .local v6, "titleView":Landroid/widget/TextView;
    const v10, 0x1020360

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2722
    .local v2, "mobileSpeed":Landroid/widget/TextView;
    const v10, 0x102035e

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2723
    .local v8, "wifiSpeed":Landroid/widget/TextView;
    const v10, 0x102035d

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2725
    .local v0, "boosterSpeed":Landroid/widget/TextView;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10407ed

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2726
    .local v5, "title":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10407e0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2727
    .local v4, "name":Ljava/lang/String;
    const-string v10, "%s"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<b>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</b>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2728
    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2729
    const-string v10, "%d"

    new-array v11, v14, [Ljava/lang/Object;

    iget v12, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2730
    const-string v10, "%d"

    new-array v11, v14, [Ljava/lang/Object;

    iget v12, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2731
    const-string v10, "%d"

    new-array v11, v14, [Ljava/lang/Object;

    iget v12, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2733
    iget v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedMobileImageLevel:I

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2734
    iget v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedWifiImageLevel:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2735
    iget v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedBoosterImageLevel:I

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2736
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v10, v7}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2737
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private updateStatisticsData(Ljava/lang/Integer;[J[J)V
    .locals 12
    .param p1, "pid"    # Ljava/lang/Integer;
    .param p2, "lens"    # [J
    .param p3, "times"    # [J

    .prologue
    .line 1319
    :try_start_0
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1320
    :try_start_1
    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateStatisticsData for pid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", WiFi len="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x0

    aget-wide v8, p2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", LTE len="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x1

    aget-wide v8, p2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", WiFi time="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x0

    aget-wide v8, p3, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", LTE time="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x1

    aget-wide v8, p3, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1321
    :cond_0
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1322
    .local v0, "data":[J
    if-eqz v0, :cond_1

    array-length v6, v0

    const/4 v8, 0x4

    if-ge v6, v8, :cond_2

    .line 1323
    :cond_1
    const/4 v6, 0x4

    new-array v0, v6, [J

    .end local v0    # "data":[J
    fill-array-data v0, :array_0

    .line 1325
    .restart local v0    # "data":[J
    :cond_2
    const/4 v6, 0x0

    aget-wide v8, v0, v6

    const/4 v10, 0x0

    aget-wide v10, p2, v10

    add-long/2addr v8, v10

    aput-wide v8, v0, v6

    .line 1326
    const/4 v6, 0x1

    aget-wide v8, v0, v6

    const/4 v10, 0x1

    aget-wide v10, p2, v10

    add-long/2addr v8, v10

    aput-wide v8, v0, v6

    .line 1327
    const/4 v6, 0x2

    aget-wide v8, v0, v6

    const/4 v10, 0x0

    aget-wide v10, p3, v10

    add-long/2addr v8, v10

    aput-wide v8, v0, v6

    .line 1328
    const/4 v6, 0x3

    aget-wide v8, v0, v6

    const/4 v10, 0x1

    aget-wide v10, p3, v10

    add-long/2addr v8, v10

    aput-wide v8, v0, v6

    .line 1329
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    sget-object v6, Lcom/samsung/smartbonding/SmartBondingService;->INT_TOTAL:Ljava/lang/Integer;

    invoke-virtual {p1, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1331
    const/4 v6, 0x0

    aget-wide v8, p3, v6

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_3

    const/4 v6, 0x1

    aget-wide v8, p3, v6

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_3

    .line 1332
    const/4 v6, 0x1

    aget-wide v8, p2, v6

    long-to-double v8, v8

    const/4 v6, 0x1

    aget-wide v10, p3, v6

    long-to-double v10, v10

    div-double v2, v8, v10

    .line 1333
    .local v2, "mobileRatio":D
    const/4 v6, 0x0

    aget-wide v8, p2, v6

    long-to-double v8, v8

    const/4 v6, 0x0

    aget-wide v10, p3, v6

    long-to-double v10, v10

    div-double v4, v8, v10

    .line 1334
    .local v4, "wifiRatio":D
    cmpl-double v6, v4, v2

    if-ltz v6, :cond_5

    .line 1335
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    .line 1336
    div-double v8, v4, v2

    iput-wide v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    .line 1343
    .end local v2    # "mobileRatio":D
    .end local v4    # "wifiRatio":D
    :cond_3
    :goto_0
    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "now faster interface is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " speed ratio is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1345
    :cond_4
    monitor-exit v7

    .line 1349
    .end local v0    # "data":[J
    :goto_1
    return-void

    .line 1339
    .restart local v0    # "data":[J
    .restart local v2    # "mobileRatio":D
    .restart local v4    # "wifiRatio":D
    :cond_5
    const/4 v6, 0x1

    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    .line 1340
    div-double v8, v2, v4

    iput-wide v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    goto :goto_0

    .line 1345
    .end local v0    # "data":[J
    .end local v2    # "mobileRatio":D
    .end local v4    # "wifiRatio":D
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1346
    :catch_0
    move-exception v1

    .line 1347
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1323
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private updateTimerNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3092
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3095
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 3096
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "updateSpeedNotification : notification manager is null"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3116
    :cond_0
    :goto_0
    return-void

    .line 3100
    :cond_1
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-nez v1, :cond_2

    .line 3101
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "updateSpeedNotification : no notification"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3105
    :cond_2
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020360

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3106
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x102035e

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3107
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x102035d

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3109
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020361

    const-string v3, "setImageLevel"

    iget v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerMobileImageLevel:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3110
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x102035f

    const-string v3, "setImageLevel"

    iget v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerWifiImageLevel:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3111
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020363

    const-string v3, "setImageLevel"

    iget v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerBoosterImageLevel:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3113
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v2, -0x2

    iput v2, v1, Landroid/app/Notification;->priority:I

    .line 3114
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/16 v2, 0x108

    iput v2, v1, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 3115
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method private updateTimerToast()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2772
    iget-object v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-nez v8, :cond_1

    .line 2773
    sget-boolean v8, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "updateTimerToast : toast is null"

    invoke-static {v8}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2801
    :cond_0
    :goto_0
    return-void

    .line 2776
    :cond_1
    iget-object v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_2

    .line 2777
    sget-boolean v8, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "updateTimerToast : toast view is null"

    invoke-static {v8}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2780
    :cond_2
    iget-object v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v5

    .line 2782
    .local v5, "v":Landroid/view/View;
    const v8, 0x1020361

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2783
    .local v3, "mobileView":Landroid/widget/ImageView;
    const v8, 0x102035f

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 2784
    .local v7, "wifiView":Landroid/widget/ImageView;
    const v8, 0x1020363

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2786
    .local v1, "boosterView":Landroid/widget/ImageView;
    const v8, 0x1020362

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2787
    .local v4, "titleView":Landroid/widget/TextView;
    const v8, 0x1020360

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2788
    .local v2, "mobileSpeed":Landroid/widget/TextView;
    const v8, 0x102035e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2789
    .local v6, "wifiSpeed":Landroid/widget/TextView;
    const v8, 0x102035d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2791
    .local v0, "boosterSpeed":Landroid/widget/TextView;
    const-string v8, "%d"

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2792
    const-string v8, "%d"

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2793
    const-string v8, "%d"

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2795
    iget v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerMobileImageLevel:I

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2796
    iget v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerWifiImageLevel:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2797
    iget v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerBoosterImageLevel:I

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2799
    iget-object v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v8, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2800
    iget-object v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private updateTraffic()V
    .locals 29

    .prologue
    .line 2445
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mPreTrafficTime:J

    .line 2446
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mPreMobileBytes:J

    .line 2447
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mPreWifiBytes:J

    .line 2449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    .line 2450
    invoke-direct/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getMobileBytes()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    .line 2451
    invoke-direct/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getWifiBytes()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    .line 2453
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mPreTrafficTime:J

    move-wide/from16 v24, v0

    sub-long v11, v22, v24

    .line 2454
    .local v11, "diffTrafficTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mPreMobileBytes:J

    move-wide/from16 v24, v0

    sub-long v9, v22, v24

    .line 2455
    .local v9, "diffMobileTrafficBytes":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mPreWifiBytes:J

    move-wide/from16 v24, v0

    sub-long v13, v22, v24

    .line 2457
    .local v13, "diffWifiTrafficBytes":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalWifiBytes:J

    move-wide/from16 v22, v0

    add-long v22, v22, v13

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalWifiBytes:J

    .line 2458
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalWifiBytes:J

    move-wide/from16 v22, v0

    add-long v22, v22, v9

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalMobileBytes:J

    .line 2459
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalWifiBytes:J

    move-wide/from16 v22, v0

    add-long v22, v22, v13

    add-long v22, v22, v9

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalBoosterBytes:J

    .line 2461
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalTrafficTime:J

    move-wide/from16 v22, v0

    add-long v22, v22, v11

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalTrafficTime:J

    .line 2463
    sget-boolean v22, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v22, :cond_0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "updateTraffic : difftime ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") mobilebytes ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") wifibytes ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2465
    :cond_0
    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v9

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    long-to-double v0, v11

    move-wide/from16 v24, v0

    div-double v16, v22, v24

    .line 2466
    .local v16, "valueMobileSpeed":D
    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v13

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    long-to-double v0, v11

    move-wide/from16 v24, v0

    div-double v20, v22, v24

    .line 2467
    .local v20, "valueWifiSpeed":D
    add-double v18, v16, v20

    .line 2469
    .local v18, "valueSBSpeed":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalMobileBytes:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalTrafficTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v5, v22, v24

    .line 2470
    .local v5, "avgMobileSpeed":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalWifiBytes:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalTrafficTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v7, v22, v24

    .line 2471
    .local v7, "avgWifiSpeed":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalBoosterBytes:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalTrafficTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v3, v22, v24

    .line 2473
    .local v3, "avgBoosterSpeed":D
    const/16 v22, 0x64

    const-wide/high16 v23, 0x4014000000000000L    # 5.0

    const-wide v25, 0x408f400000000000L    # 1000.0

    div-double v25, v16, v25

    const-wide v27, 0x408f400000000000L    # 1000.0

    div-double v25, v25, v27

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedMobileImageLevel:I

    .line 2474
    const/16 v22, 0x64

    const-wide/high16 v23, 0x4014000000000000L    # 5.0

    const-wide v25, 0x408f400000000000L    # 1000.0

    div-double v25, v20, v25

    const-wide v27, 0x408f400000000000L    # 1000.0

    div-double v25, v25, v27

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedWifiImageLevel:I

    .line 2475
    const/16 v22, 0x64

    const-wide/high16 v23, 0x4014000000000000L    # 5.0

    const-wide v25, 0x408f400000000000L    # 1000.0

    div-double v25, v18, v25

    const-wide v27, 0x408f400000000000L    # 1000.0

    div-double v25, v25, v27

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedBoosterImageLevel:I

    .line 2477
    const-wide v22, 0x40c3880000000000L    # 10000.0

    cmpl-double v22, v16, v22

    if-lez v22, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedMobileImageLevel:I

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 2478
    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedMobileImageLevel:I

    .line 2480
    :cond_1
    const-wide v22, 0x40c3880000000000L    # 10000.0

    cmpl-double v22, v20, v22

    if-lez v22, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedWifiImageLevel:I

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 2481
    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedWifiImageLevel:I

    .line 2483
    :cond_2
    const-wide v22, 0x40c3880000000000L    # 10000.0

    cmpl-double v22, v18, v22

    if-lez v22, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedBoosterImageLevel:I

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 2484
    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedBoosterImageLevel:I

    .line 2487
    :cond_3
    const-wide/high16 v22, 0x4020000000000000L    # 8.0

    mul-double v22, v22, v16

    const-wide v24, 0x408f400000000000L    # 1000.0

    div-double v22, v22, v24

    const-wide v24, 0x408f400000000000L    # 1000.0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    .line 2488
    const-wide/high16 v22, 0x4020000000000000L    # 8.0

    mul-double v22, v22, v20

    const-wide v24, 0x408f400000000000L    # 1000.0

    div-double v22, v22, v24

    const-wide v24, 0x408f400000000000L    # 1000.0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    .line 2489
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    .line 2493
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 2494
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mBoosterRemainedContentSize:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_5

    .line 2495
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerMobileImageLevel:I

    .line 2496
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerWifiImageLevel:I

    .line 2497
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerMobileImageLevel:I

    .line 2498
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    .line 2499
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    .line 2500
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    .line 2542
    :cond_4
    :goto_0
    return-void

    .line 2502
    :cond_5
    const-wide/16 v22, 0x0

    cmpl-double v22, v5, v22

    if-eqz v22, :cond_c

    .line 2503
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileRemainedContentSize:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v22, v5

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    .line 2504
    sget-boolean v22, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v22, :cond_6

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "updateTraffic : avgWifi "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2505
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v22, v5

    move-wide/from16 v0, v22

    double-to-int v15, v0

    .line 2506
    .local v15, "totaltime":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x64

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    int-to-double v0, v15

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerMobileImageLevel:I

    .line 2511
    .end local v15    # "totaltime":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    move/from16 v22, v0

    const/16 v23, 0x3e7

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_7

    .line 2512
    const/16 v22, 0x3e7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    .line 2515
    :cond_7
    const-wide/16 v22, 0x0

    cmpl-double v22, v7, v22

    if-eqz v22, :cond_d

    .line 2516
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiRemainedContentSize:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v22, v7

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    .line 2517
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v22, v7

    move-wide/from16 v0, v22

    double-to-int v15, v0

    .line 2518
    .restart local v15    # "totaltime":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x64

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    int-to-double v0, v15

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerWifiImageLevel:I

    .line 2519
    sget-boolean v22, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v22, :cond_8

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "updateTraffic : avgMobile "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2524
    .end local v15    # "totaltime":I
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    move/from16 v22, v0

    const/16 v23, 0x3e7

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_9

    .line 2525
    const/16 v22, 0x3e7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    .line 2527
    :cond_9
    const-wide/16 v22, 0x0

    cmpl-double v22, v3, v22

    if-eqz v22, :cond_e

    .line 2528
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mBoosterRemainedContentSize:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v22, v3

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    .line 2529
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v22, v3

    move-wide/from16 v0, v22

    double-to-int v15, v0

    .line 2530
    .restart local v15    # "totaltime":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x64

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    int-to-double v0, v15

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerBoosterImageLevel:I

    .line 2531
    sget-boolean v22, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v22, :cond_a

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "updateTraffic : avgBooster "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2536
    .end local v15    # "totaltime":I
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    move/from16 v22, v0

    const/16 v23, 0x3e7

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    .line 2537
    const/16 v22, 0x3e7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    .line 2539
    :cond_b
    sget-boolean v22, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v22, :cond_4

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "updateTraffic : timer ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2508
    :cond_c
    const/16 v22, 0x3e7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    .line 2509
    const/16 v22, 0x64

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerMobileImageLevel:I

    goto/16 :goto_1

    .line 2521
    :cond_d
    const/16 v22, 0x3e7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    .line 2522
    const/16 v22, 0x64

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerWifiImageLevel:I

    goto/16 :goto_2

    .line 2533
    :cond_e
    const/16 v22, 0x3e7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    .line 2534
    const/16 v22, 0x64

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerBoosterImageLevel:I

    goto/16 :goto_3
.end method

.method private updateTrafficMonitor()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2593
    monitor-enter p0

    .line 2594
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateTraffic()V

    .line 2595
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    if-nez v0, :cond_1

    .line 2596
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateSpeedNotification()V

    .line 2603
    :goto_0
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_5

    .line 2604
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    if-nez v0, :cond_3

    .line 2605
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateSpeedToast()V

    .line 2616
    :cond_0
    :goto_1
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    .line 2617
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2618
    monitor-exit p0

    .line 2619
    return-void

    .line 2597
    :cond_1
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    if-ne v0, v2, :cond_2

    .line 2598
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateTimerNotification()V

    goto :goto_0

    .line 2618
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2600
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateSpeedBarNotification()V

    goto :goto_0

    .line 2606
    :cond_3
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    if-ne v0, v2, :cond_4

    .line 2607
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateTimerToast()V

    goto :goto_1

    .line 2609
    :cond_4
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateSpeedBarToast()V

    goto :goto_1

    .line 2612
    :cond_5
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2613
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getAllSmartBondingData()[J
    .locals 1

    .prologue
    .line 1285
    sget-object v0, Lcom/samsung/smartbonding/SmartBondingService;->INT_TOTAL:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/smartbonding/SmartBondingService;->getSmartBondingData(I)[J

    move-result-object v0

    return-object v0
.end method

.method public getHttpLogEnabled()Z
    .locals 1

    .prologue
    .line 3576
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    return v0
.end method

.method public getProxyInfo(I)[Ljava/lang/String;
    .locals 8
    .param p1, "netType"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1214
    const/4 v0, 0x0

    .line 1215
    .local v0, "lp":Landroid/net/LinkProperties;
    if-nez p1, :cond_1

    .line 1216
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    .line 1220
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1221
    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1222
    .local v1, "proxyinfo":[Ljava/lang/String;
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProxyInfo : type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_2

    const-string v2, "WIFI"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] + proxt addr ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1225
    .end local v1    # "proxyinfo":[Ljava/lang/String;
    :cond_0
    :goto_2
    return-object v1

    .line 1218
    :cond_1
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    goto :goto_0

    .line 1222
    .restart local v1    # "proxyinfo":[Ljava/lang/String;
    :cond_2
    const-string v2, "MOBILE"

    goto :goto_1

    .line 1225
    .end local v1    # "proxyinfo":[Ljava/lang/String;
    :cond_3
    new-array v1, v7, [Ljava/lang/String;

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    goto :goto_2
.end method

.method public getSBEnabled()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 742
    :try_start_0
    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->isKioskContainer:Z

    if-nez v3, :cond_1

    .line 743
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "unable to get Smart Bonding enabled : disabled for sub users"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_0
    move v1, v2

    .line 755
    :goto_0
    return v1

    .line 747
    :cond_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    :try_start_1
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "smart_bonding"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 751
    .local v1, "enabled":Z
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 752
    .end local v1    # "enabled":Z
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    move v1, v2

    .line 755
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    move v1, v2

    .line 748
    goto :goto_1
.end method

.method public getSBInterface(I)Ljava/lang/String;
    .locals 3
    .param p1, "netType"    # I

    .prologue
    const/4 v0, 0x0

    .line 1193
    const/4 v1, 0x0

    .line 1194
    .local v1, "lp":Landroid/net/LinkProperties;
    if-nez p1, :cond_1

    .line 1195
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    .line 1206
    :goto_0
    if-eqz v1, :cond_0

    .line 1207
    invoke-direct {p0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getLocalAddress(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v0

    .line 1210
    :cond_0
    :goto_1
    return-object v0

    .line 1197
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z

    if-eqz v2, :cond_2

    .line 1199
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    goto :goto_0

    .line 1201
    :cond_2
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "getSBInterface : startUsingNetworkFeature is not called so it can\'t get mobile lp"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSBInterfaceEx(II)Ljava/lang/String;
    .locals 3
    .param p1, "netType"    # I
    .param p2, "preferIpType"    # I

    .prologue
    const/4 v0, 0x0

    .line 1164
    const/4 v1, 0x0

    .line 1165
    .local v1, "lp":Landroid/net/LinkProperties;
    if-nez p1, :cond_1

    .line 1166
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    .line 1177
    :goto_0
    if-eqz v1, :cond_0

    .line 1178
    invoke-direct {p0, v1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->getLocalAddress(Landroid/net/LinkProperties;I)Ljava/lang/String;

    move-result-object v0

    .line 1181
    :cond_0
    :goto_1
    return-object v0

    .line 1168
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z

    if-eqz v2, :cond_2

    .line 1170
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    goto :goto_0

    .line 1172
    :cond_2
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "getSBInterfaceEx : startUsingNetworkFeature is not called so it can\'t get mobile lp"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSBInterfaceState()I
    .locals 7

    .prologue
    .line 1029
    const/4 v1, 0x0

    .line 1031
    .local v1, "mobileConnected":Z
    :try_start_0
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1032
    .local v2, "mobileNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 1033
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 1035
    :cond_0
    iget-boolean v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z

    if-nez v5, :cond_2

    .line 1036
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_1

    const-string v5, "getSBInterfaceState : mobile is not connected because startUsingNetworkFeature is not called"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    :cond_1
    const/4 v1, 0x0

    .line 1045
    .end local v2    # "mobileNetworkInfo":Landroid/net/NetworkInfo;
    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 1047
    .local v3, "wifiConnected":Z
    :try_start_1
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 1048
    .local v4, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_3

    .line 1049
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 1055
    .end local v4    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_3
    :goto_1
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSBInterfaceState : mobile ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] wifi  ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1056
    :cond_4
    invoke-direct {p0, v1, v3}, Lcom/samsung/smartbonding/SmartBondingService;->convertSBInterfaceState(ZZ)I

    move-result v5

    return v5

    .line 1041
    .end local v3    # "wifiConnected":Z
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception getSBInterfaceState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1051
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "wifiConnected":Z
    :catch_1
    move-exception v0

    .line 1052
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception getSBInterfaceState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSBInterfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1266
    :try_start_0
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    :try_start_1
    iget v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    if-nez v1, :cond_0

    .line 1268
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    monitor-exit v2

    .line 1276
    :goto_0
    return-object v1

    .line 1271
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    monitor-exit v2

    goto :goto_0

    .line 1273
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1275
    :catch_0
    move-exception v0

    .line 1276
    .local v0, "e":Ljava/lang/Throwable;
    new-array v1, v7, [Ljava/lang/String;

    aput-object v8, v1, v5

    aput-object v8, v1, v6

    goto :goto_0
.end method

.method public getSBInterfacesEnabled()Z
    .locals 1

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBInterfacesEnabled:Z

    return v0
.end method

.method public getSBNotificationEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 874
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :try_start_1
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "smart_bonding_notification"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 877
    .local v1, "enabled":Z
    :goto_0
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSBNotificationEnabled() enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 878
    :cond_0
    monitor-exit p0

    .line 882
    .end local v1    # "enabled":Z
    :goto_1
    return v1

    :cond_1
    move v1, v2

    .line 875
    goto :goto_0

    .line 879
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    move v1, v2

    .line 882
    goto :goto_1
.end method

.method public getSBShowToastEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 855
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    :try_start_1
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "smart_bonding_notification_do_not_show_speed"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 858
    .local v1, "enabled":Z
    :goto_0
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSBShowToastEnabled() enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 859
    :cond_0
    monitor-exit p0

    .line 863
    .end local v1    # "enabled":Z
    :goto_1
    return v1

    :cond_1
    move v1, v2

    .line 856
    goto :goto_0

    .line 860
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    move v1, v2

    .line 863
    goto :goto_1
.end method

.method public getSBUsageStatus(J)I
    .locals 5
    .param p1, "threadID"    # J

    .prologue
    .line 2177
    const/4 v2, 0x0

    .line 2178
    .local v2, "status":I
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 2179
    .local v0, "UsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 2180
    iget v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    goto :goto_0

    .line 2183
    .end local v0    # "UsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_1
    return v2
.end method

.method public getSmartBondingData(I)[J
    .locals 7
    .param p1, "pid"    # I

    .prologue
    .line 1241
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    monitor-enter v1

    .line 1243
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 1244
    :try_start_0
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    invoke-virtual {p0, v0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1245
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    int-to-long v3, v3

    aput-wide v3, v0, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-long v3, v3

    aput-wide v3, v0, v2

    monitor-exit v1

    .line 1255
    :goto_0
    return-object v0

    .line 1247
    :cond_0
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1248
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    aput-wide v3, v0, v2

    const/4 v2, 0x1

    const-wide/16 v3, 0x64

    aput-wide v3, v0, v2

    monitor-exit v1

    goto :goto_0

    .line 1257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1251
    :cond_1
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    monitor-exit v1

    goto :goto_0

    .line 1255
    :cond_2
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1251
    :array_0
    .array-data 8
        -0x1
        0x1
    .end array-data
.end method

.method public getWarningToastEnabled()Z
    .locals 3

    .prologue
    .line 3570
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "getWarningToastEnabled called :"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3571
    :cond_0
    const-string v1, "persist.sys.sb.warning.show"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3572
    .local v0, "enable":Z
    return v0
.end method

.method public reportSBUsage(J[J)V
    .locals 22
    .param p1, "threadID"    # J
    .param p3, "data"    # [J

    .prologue
    .line 1821
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportSBUsage : sb usauge is reported : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1824
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1825
    move-object/from16 v0, p3

    array-length v2, v0

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 1826
    const/4 v2, 0x0

    aget-wide v9, p3, v2

    .line 1827
    .local v9, "contentTotalLength":J
    const/4 v2, 0x1

    aget-wide v14, p3, v2

    .line 1828
    .local v14, "sbReceivedLength":J
    const/4 v2, 0x2

    aget-wide v20, p3, v2

    .line 1829
    .local v20, "wifiReceivedLength":J
    sub-long v12, v14, v20

    .line 1830
    .local v12, "mobileReceivedLength":J
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    .line 1831
    sub-long v2, v9, v12

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileRemainedContentSize:J

    .line 1832
    sub-long v2, v9, v20

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiRemainedContentSize:J

    .line 1833
    sub-long v2, v9, v14

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/smartbonding/SmartBondingService;->mBoosterRemainedContentSize:J

    .line 1864
    .end local v9    # "contentTotalLength":J
    .end local v12    # "mobileReceivedLength":J
    .end local v14    # "sbReceivedLength":J
    .end local v20    # "wifiReceivedLength":J
    :goto_0
    return-void

    .line 1837
    :cond_1
    monitor-enter p0

    .line 1839
    const/16 v19, 0x0

    .line 1841
    .local v19, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1842
    .local v18, "us":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    move-object/from16 v0, v18

    iget-wide v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 1844
    move-object/from16 v19, v18

    goto :goto_1

    .line 1847
    .end local v18    # "us":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_3
    if-eqz v19, :cond_6

    .line 1848
    move-object/from16 v16, p3

    .line 1849
    .local v16, "statistic":[J
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatistics:[J

    .line 1851
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/smartbonding/SmartBondingService;->convertCombinedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1854
    .local v8, "combinedUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 1855
    .local v17, "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1856
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->getAllLinkedStatistics()[J

    move-result-object v16

    goto :goto_2

    .line 1860
    .end local v17    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    :cond_5
    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/smartbonding/SmartBondingService;->removeSBUsage(J)V

    .line 1861
    const/4 v3, 0x3

    const/4 v2, 0x0

    aget-wide v4, p3, v2

    const/4 v2, 0x2

    aget-wide v6, p3, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/smartbonding/SmartBondingService;->sendSBStatusChangedIntent(IJJ)V

    .line 1863
    .end local v8    # "combinedUrl":Ljava/lang/String;
    .end local v16    # "statistic":[J
    :cond_6
    monitor-exit p0

    goto :goto_0

    .end local v11    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public requestGetAllByName(JLjava/lang/String;)V
    .locals 6
    .param p1, "threadID"    # J
    .param p3, "host"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x9

    .line 2244
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 2245
    .local v2, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 2246
    iput-object p3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mHost:Ljava/lang/String;

    .line 2247
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mInetAddresses:[Ljava/net/InetAddress;

    .line 2248
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2249
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2250
    .local v1, "message":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2251
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2254
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_1
    return-void
.end method

.method public responseGetAllByName(J)[Ljava/lang/String;
    .locals 12
    .param p1, "threadID"    # J

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 2276
    const/4 v0, 0x0

    .line 2277
    .local v0, "addresses":[Ljava/net/InetAddress;
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 2278
    .local v4, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v5, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_0

    .line 2279
    iget-object v0, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mInetAddresses:[Ljava/net/InetAddress;

    goto :goto_0

    .line 2282
    .end local v4    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_1
    if-eqz v0, :cond_2

    .line 2283
    new-array v3, v8, [Ljava/lang/String;

    aput-object v7, v3, v9

    aput-object v7, v3, v10

    aput-object v7, v3, v11

    const/4 v5, 0x3

    aput-object v7, v3, v5

    .line 2284
    .local v3, "ret":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v0

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 2285
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 2284
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2289
    .end local v1    # "i":I
    .end local v3    # "ret":[Ljava/lang/String;
    :cond_2
    new-array v3, v8, [Ljava/lang/String;

    aput-object v7, v3, v9

    aput-object v7, v3, v10

    aput-object v7, v3, v11

    const/4 v5, 0x3

    aput-object v7, v3, v5

    :cond_3
    return-object v3
.end method

.method public setHttpLogEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 3552
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHttpLogEnabled called :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3553
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    .line 3554
    const-string v1, "persist.sys.sb.log.enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3557
    if-eqz p1, :cond_2

    .line 3558
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "start to create log folder"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3559
    :cond_1
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3560
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3562
    .end local v0    # "message":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method public setSBEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 719
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    if-ne v1, p1, :cond_2

    .line 720
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smart Bonding already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v1, "enabled"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 729
    :cond_0
    :goto_1
    return-void

    .line 720
    :cond_1
    const-string v1, "disabled"

    goto :goto_0

    .line 724
    :cond_2
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "smart_bonding"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 724
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public setSBInternalUsageStatus(IJ)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "threadID"    # J

    .prologue
    .line 2231
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSBInternalUsageStatus : status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threadID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2233
    :cond_0
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 2234
    .local v0, "UsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_1

    .line 2235
    iput p1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    goto :goto_0

    .line 2239
    .end local v0    # "UsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_2
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2240
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_3

    const-string v2, "setSBInternalUsageStatus : send SB interfaces intent"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2241
    :cond_3
    return-void
.end method

.method public setSBNotificationEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 766
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBNotificationEnabled()Z

    move-result v1

    if-ne v1, p1, :cond_2

    .line 767
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smart Bonding Notification already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v1, "enabled"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 776
    :cond_0
    :goto_1
    return-void

    .line 767
    :cond_1
    const-string v1, "disabled"

    goto :goto_0

    .line 771
    :cond_2
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "smart_bonding_notification"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 771
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public setSBUsageStatus(IJ)V
    .locals 9
    .param p1, "status"    # I
    .param p2, "threadID"    # J

    .prologue
    .line 2192
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSBUsageStatus : status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " threadID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2194
    :cond_0
    const-string v2, ""

    .line 2195
    .local v2, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 2196
    .local v4, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v5, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v5, v5, p2

    if-nez v5, :cond_1

    .line 2197
    iput p1, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    .line 2198
    iget-object v2, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    goto :goto_0

    .line 2202
    .end local v4    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_2
    invoke-direct {p0, v2}, Lcom/samsung/smartbonding/SmartBondingService;->convertCombinedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2203
    .local v0, "combinedUrl":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 2204
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 2205
    .local v3, "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    iget-object v5, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2206
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_4

    const-string v5, "setSBUsageStatus : same url is found"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2207
    :cond_4
    iput p1, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    goto :goto_1

    .line 2221
    .end local v3    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    :cond_5
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2222
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_6

    const-string v5, "setSBUsageStatus : send SB interfaces enable event"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2223
    :cond_6
    return-void
.end method

.method public setWarningToast(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 3565
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWarningToast called :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3566
    :cond_0
    const-string v0, "persist.sys.sb.warning.show"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3567
    return-void
.end method

.method public startSBUsage(JJJLjava/lang/String;)Z
    .locals 25
    .param p1, "threadID"    # J
    .param p3, "fileSize"    # J
    .param p5, "startRange"    # J
    .param p7, "url"    # Ljava/lang/String;

    .prologue
    .line 1501
    invoke-direct/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->isAirPlaneMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1502
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "startSBUsage : is airplane mode"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1503
    :cond_0
    const/4 v4, 0x0

    .line 1642
    :goto_0
    return v4

    .line 1506
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_5

    .line 1507
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_3

    .line 1508
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "startSBUsage : no sim"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1509
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1511
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1512
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "startSBUsage : roaming status"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1513
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 1517
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z

    if-nez v4, :cond_7

    .line 1518
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "startSBUsage : some interface is not enabled"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1519
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .line 1522
    :cond_7
    monitor-enter p0

    .line 1523
    :try_start_0
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "startSBUsage is called"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1525
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1526
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_9

    const-string/jumbo v4, "startSBUsage : smart bonding is not enabled"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1527
    :cond_9
    const/4 v4, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1643
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1530
    :cond_a
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1531
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1534
    .local v6, "uid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/smartbonding/SmartBondingService;->isBlockedProcess(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1535
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startSBUsage : pid : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " is blocked"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1536
    :cond_b
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1540
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1541
    .local v24, "us":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    move-object/from16 v0, v24

    iget-wide v10, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v4, v10, p1

    if-nez v4, :cond_d

    move-object/from16 v0, v24

    iget v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    if-nez v4, :cond_d

    .line 1542
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_e

    const-string/jumbo v4, "startSBUsage: sb usauge is already started"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1543
    :cond_e
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1547
    .end local v24    # "us":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->convertCombinedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1548
    .local v7, "combinedUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->convertDetailUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1550
    .local v8, "detailUrl":Ljava/lang/String;
    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;-><init>(Lcom/samsung/smartbonding/SmartBondingService;IILjava/lang/String;Ljava/lang/String;)V

    .line 1551
    .local v3, "curUrlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    new-instance v9, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    move-object/from16 v10, p0

    move v11, v5

    move v12, v6

    move-wide/from16 v13, p1

    move-wide/from16 v15, p3

    move-object/from16 v17, p7

    move-wide/from16 v18, p5

    invoke-direct/range {v9 .. v19}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;-><init>(Lcom/samsung/smartbonding/SmartBondingService;IIJJLjava/lang/String;J)V

    .line 1554
    .local v9, "curUsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_10
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 1555
    .local v23, "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1556
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_11

    const-string/jumbo v4, "startSBUsage : same url is founded"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1557
    :cond_11
    move-object/from16 v0, v23

    iget v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    const/4 v10, 0x4

    if-ne v4, v10, :cond_13

    const-wide/16 v10, 0x0

    cmp-long v4, p5, v10

    if-eqz v4, :cond_13

    .line 1558
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_12

    const-string/jumbo v4, "startSBUsage : current url is not supported"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1559
    :cond_12
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1561
    :cond_13
    const-wide/16 v10, 0x0

    cmp-long v4, p5, v10

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->isFirstCombinedRequest(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1562
    :cond_14
    move-object/from16 v0, v23

    iget v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    const/4 v10, 0x2

    if-ne v4, v10, :cond_16

    .line 1563
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_15

    const-string/jumbo v4, "startSBUsage : url is already selected as no"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1565
    :cond_15
    move-object/from16 v0, v23

    iput-object v8, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStartUrl:Ljava/lang/String;

    .line 1566
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1567
    :cond_16
    move-object/from16 v0, v23

    iget v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_10

    .line 1568
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_17

    const-string/jumbo v4, "startSBUsage : url is already selected as yes"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1570
    :cond_17
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    .line 1571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1572
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mLinkedUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/smartbonding/SmartBondingService;->setSBUsageStatus(IJ)V

    .line 1574
    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/samsung/smartbonding/SmartBondingService;->sendSBStatusChangedIntent(IJJ)V

    .line 1575
    const/4 v4, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 1582
    .end local v23    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBLimitFileSize()J

    move-result-wide v10

    cmp-long v4, p3, v10

    if-gez v4, :cond_1a

    .line 1583
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startSBUsage : smart bonding is not enabled because file size : limit "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBLimitFileSize()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " fileSize : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1584
    :cond_19
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1588
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_1c

    .line 1589
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v22

    .line 1590
    .local v22, "network_class":I
    const/4 v4, 0x3

    move/from16 v0, v22

    if-eq v0, v4, :cond_1c

    .line 1591
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_1b

    const-string/jumbo v4, "startSBUsage : network class is not 4G so that smart bonding won\'t work"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1592
    :cond_1b
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1606
    .end local v22    # "network_class":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1608
    const/16 v21, 0x0

    .line 1609
    .local v21, "isUrlExist":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1d
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 1610
    .restart local v23    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    iget-object v10, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1611
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_1e

    const-string/jumbo v4, "startSBUsage : url is updated"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1612
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->isFirstCombinedRequest(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1613
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mLinkedUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1615
    :cond_1f
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mLinkedUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStartUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->isFirstCombinedRequest(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1617
    :cond_20
    move-object/from16 v0, v23

    iput-object v8, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStartUrl:Ljava/lang/String;

    .line 1619
    :cond_21
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    .line 1620
    const/16 v21, 0x1

    goto :goto_1

    .line 1623
    .end local v23    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    :cond_22
    if-nez v21, :cond_24

    .line 1624
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_23

    const-string/jumbo v4, "startSBUsage : add url status in list"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1625
    :cond_23
    iget-object v4, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mLinkedUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1629
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBShowToastEnabled()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    .line 1631
    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/samsung/smartbonding/SmartBondingService;->sendSBStatusChangedIntent(IJJ)V

    .line 1632
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBNotificationEnabled()Z

    move-result v4

    if-nez v4, :cond_26

    .line 1633
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_25

    const-string/jumbo v4, "startSBUsage : getSBNotificationEnabled() is false, no pop-up displayed"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1634
    :cond_25
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/smartbonding/SmartBondingService;->setSBUsageStatus(IJ)V

    .line 1635
    const/4 v4, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 1638
    :cond_26
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_27

    const-string/jumbo v4, "startSBUsage : sb usauge is started, send broadcast : set a flag"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1639
    :cond_27
    const/4 v4, 0x1

    iput-boolean v4, v9, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStartWithPopup:Z

    .line 1641
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    move-object/from16 v13, p7

    move-wide/from16 v14, p3

    invoke-direct/range {v10 .. v15}, Lcom/samsung/smartbonding/SmartBondingService;->buildCheckSBUsageIntent(JLjava/lang/String;J)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1642
    const/4 v4, 0x1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public stopSBUsage(J)I
    .locals 10
    .param p1, "threadID"    # J

    .prologue
    const/4 v9, 0x0

    .line 1772
    monitor-enter p0

    .line 1773
    :try_start_0
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopSBUsage : sb usauge is stopped : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1774
    :cond_0
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->setSBInternalUsageStatus(IJ)V

    .line 1777
    const-string v2, ""

    .line 1778
    .local v2, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1779
    .local v0, "UsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v5, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    .line 1780
    iget-object v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    goto :goto_0

    .line 1784
    .end local v0    # "UsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 1785
    const-string v5, "\\?"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1786
    .local v4, "urls":[Ljava/lang/String;
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "stopSBUsage : spilt done"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1787
    :cond_3
    const/4 v5, 0x0

    aget-object v5, v4, v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "/market/GetBinary/GetBinary"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1788
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopSBUsage : it\'s google play contents (url[0] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1789
    :cond_4
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "/o"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1790
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "stopSBUsage : it\'s first contents"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1807
    .end local v4    # "urls":[Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v2}, Lcom/samsung/smartbonding/SmartBondingService;->isYouTubeContent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1808
    invoke-direct {p0, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->removeSBUsage(J)V

    .line 1811
    :cond_6
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->buildStopSBUsageIntent(J)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1812
    monitor-exit p0

    return v9

    .line 1792
    .restart local v4    # "urls":[Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "/p"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1793
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1795
    :cond_8
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_9

    const-string/jumbo v5, "stopSBUsage : it\'s second contents"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1796
    :cond_9
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 1797
    .local v3, "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    iget-object v5, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1798
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_b

    const-string/jumbo v5, "stopSBUsage : same url is found. set it as none status"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1799
    :cond_b
    const/4 v5, 0x0

    iput v5, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    goto :goto_1

    .line 1813
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    .end local v4    # "urls":[Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public stopSBUsageWithReason(JI)I
    .locals 11
    .param p1, "threadID"    # J
    .param p3, "errorNo"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 1663
    monitor-enter p0

    .line 1664
    :try_start_0
    sget-boolean v7, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopSBUsageWithReason : reason "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1666
    :cond_0
    if-ne p3, v10, :cond_3

    .line 1667
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1668
    .local v2, "message":Landroid/os/Message;
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1669
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1712
    .end local v2    # "message":Landroid/os/Message;
    :cond_1
    :goto_0
    const-string v4, ""

    .line 1713
    .local v4, "url":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1714
    .local v6, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v7, v6, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v7, v7, p1

    if-nez v7, :cond_2

    .line 1715
    iget-object v4, v6, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    goto :goto_1

    .line 1670
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "url":Ljava/lang/String;
    .end local v6    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_3
    const/4 v7, -0x1

    if-ne p3, v7, :cond_5

    .line 1676
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1677
    .local v3, "message2":Landroid/os/Message;
    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1678
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1679
    sget-boolean v7, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v7, :cond_4

    const-string/jumbo v7, "stopSBUsageWithReason : 1:4 algorithm is happened / use only wifi for downloading"

    invoke-static {v7}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1680
    :cond_4
    monitor-exit p0

    .line 1767
    .end local v3    # "message2":Landroid/os/Message;
    :goto_2
    return v9

    .line 1681
    :cond_5
    const/4 v7, -0x2

    if-ne p3, v7, :cond_7

    .line 1687
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1688
    .restart local v3    # "message2":Landroid/os/Message;
    const/16 v7, 0xc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1689
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1690
    sget-boolean v7, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "stopSBUsageWithReason : 1:4 algorithm is happened / use only lte for downloading"

    invoke-static {v7}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1691
    :cond_6
    monitor-exit p0

    goto :goto_2

    .line 1768
    .end local v3    # "message2":Landroid/os/Message;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1692
    :cond_7
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->isMidHighDebugLevel()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_9

    const-string v7, "persist.sys.sb.warning.show"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1694
    const/4 v7, -0x3

    if-ne p3, v7, :cond_8

    .line 1695
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1696
    .restart local v2    # "message":Landroid/os/Message;
    const/16 v7, 0xd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1697
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1698
    monitor-exit p0

    goto :goto_2

    .line 1701
    .end local v2    # "message":Landroid/os/Message;
    :cond_8
    const/4 v7, -0x4

    if-ne p3, v7, :cond_1

    .line 1702
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1703
    .restart local v2    # "message":Landroid/os/Message;
    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1704
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1705
    monitor-exit p0

    goto :goto_2

    .line 1708
    .end local v2    # "message":Landroid/os/Message;
    :cond_9
    sget-boolean v7, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported errorno: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1719
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_a
    invoke-direct {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->convertCombinedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1732
    .local v0, "combinedUrl":Ljava/lang/String;
    sget-boolean v7, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopSBUsageWithReason : sb usauge is stopped : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1733
    :cond_b
    const/4 v7, 0x2

    invoke-virtual {p0, v7, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->setSBInternalUsageStatus(IJ)V

    .line 1736
    invoke-direct {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->isYouTubeContent(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    if-eqz p3, :cond_10

    .line 1737
    :cond_c
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 1738
    .local v5, "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    iget-object v7, v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1739
    sget-boolean v7, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v7, :cond_e

    const-string/jumbo v7, "stopSBUsageWithReason : canceled so that list is cleared"

    invoke-static {v7}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1740
    :cond_e
    iget-object v7, v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mLinkedUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 1743
    .end local v5    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->removeSBUsage(J)V

    .line 1746
    :cond_10
    invoke-direct {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->isFirstCombinedRequest(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    const/4 v7, 0x1

    if-ne p3, v7, :cond_13

    .line 1747
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 1748
    .restart local v5    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    iget-object v7, v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1749
    sget-boolean v7, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v7, :cond_12

    const-string/jumbo v7, "stopSBUsageWithReason : download is cancelled. set it as none status"

    invoke-static {v7}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1750
    :cond_12
    const/4 v7, 0x0

    iput v7, v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    .line 1751
    const-string v7, ""

    iput-object v7, v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStartUrl:Ljava/lang/String;

    goto :goto_4

    .line 1756
    .end local v5    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    :cond_13
    if-ne p3, v10, :cond_16

    .line 1757
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 1758
    .restart local v5    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    iget-object v7, v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1759
    sget-boolean v7, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v7, :cond_15

    const-string/jumbo v7, "stopSBUsageWithReason : download is not supported. set it as not support status"

    invoke-static {v7}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1760
    :cond_15
    const/4 v7, 0x4

    iput v7, v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    goto :goto_5

    .line 1766
    .end local v5    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    :cond_16
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->buildStopSBUsageIntent(J)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1767
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method public submitMultiSocketData([J[J)V
    .locals 4
    .param p1, "lens"    # [J
    .param p2, "times"    # [J

    .prologue
    const/4 v2, 0x1

    .line 1295
    :try_start_0
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "submitMultiSocketData called"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1296
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    :try_start_1
    array-length v1, p1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1298
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive command to switch dns but its not working in this version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1304
    :cond_1
    :goto_0
    monitor-exit p0

    .line 1308
    :goto_1
    return-void

    .line 1301
    :cond_2
    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->getCallingPid()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->updateStatisticsData(Ljava/lang/Integer;[J[J)V

    .line 1302
    sget-object v1, Lcom/samsung/smartbonding/SmartBondingService;->INT_TOTAL:Ljava/lang/Integer;

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->updateStatisticsData(Ljava/lang/Integer;[J[J)V

    goto :goto_0

    .line 1304
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1305
    :catch_0
    move-exception v0

    .line 1306
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
