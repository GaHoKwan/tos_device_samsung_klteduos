.class public abstract Lcom/android/internal/telephony/ServiceStateTracker;
.super Landroid/os/Handler;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ServiceStateTracker$1;,
        Lcom/android/internal/telephony/ServiceStateTracker$USBStateReceiver;,
        Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field public static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field public static final ECM_EXIT_TIMER_WHEN_NOSVC:I = 0x38a4

.field public static final EVENT_CALL_HANGUP_BEFORE_DEACTIVEPDP:I = 0x64

.field protected static final EVENT_CALL_STATE_CHANGED:I = 0x79

.field protected static final EVENT_CDMA_PRL_VERSION_CHANGED:I = 0x28

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x27

.field protected static final EVENT_CHANGE_NETWORK_MODE:I = 0x75

.field protected static final EVENT_CHECK_MULTI_TIME_ZONE:I = 0x69

.field protected static final EVENT_CHECK_NETWORK_MODE:I = 0x76

.field protected static final EVENT_CHECK_REPORT_GPRS:I = 0x16

.field protected static final EVENT_DUALMODE_RECOVER_NETWORK:I = 0x77

.field protected static final EVENT_ERI_FILE_LOADED:I = 0x24

.field protected static final EVENT_EXIT_ECB_MODE_WHEN_NOSVC:I = 0x6a

.field protected static final EVENT_FIRST_CDMA_NET_SRCH_TIMER:I = 0x4a

.field protected static final EVENT_GET_BASEBAND_VERSION_DONE:I = 0x3c

.field protected static final EVENT_GET_CELL_INFO_LIST:I = 0x2b

.field protected static final EVENT_GET_LOC_DONE:I = 0xf

.field protected static final EVENT_GET_LOC_DONE_CDMA:I = 0x1f

.field protected static final EVENT_GET_PREFERRED_NETWORK_TYPE:I = 0x13

.field protected static final EVENT_GET_PREF_NETWORK_TYPE_DONE:I = 0x6b

.field protected static final EVENT_GET_SIGNAL_STRENGTH:I = 0x3

.field protected static final EVENT_GET_SIGNAL_STRENGTH_CDMA:I = 0x1d

.field protected static final EVENT_GLOBAL_NETWORK_SEARCH_TIMEOUT_RPT:I = 0x34

.field protected static final EVENT_GLOBAL_NOSVC_CHK_TIMEOUT_RPT:I = 0x35

.field protected static final EVENT_HOME_NETWORK_NOTI:I = 0x6d

.field public static final EVENT_ICC_CHANGED:I = 0x2a

.field protected static final EVENT_IMS_RETRYOVER:I = 0x78

.field protected static final EVENT_LOCATION_UPDATES_ENABLED:I = 0x12

.field protected static final EVENT_LU_REJECT_CAUSE:I = 0x67

.field protected static final EVENT_NETWORK_STATE_CHANGED:I = 0x2

.field protected static final EVENT_NETWORK_STATE_CHANGED_CDMA:I = 0x1e

.field protected static final EVENT_NITZ_TIME:I = 0xb

.field protected static final EVENT_NV_LOADED:I = 0x21

.field protected static final EVENT_NV_READY:I = 0x23

.field protected static final EVENT_O2_HOME_ZONE_INFO:I = 0x65

.field protected static final EVENT_OOS_TIMEOUT_RPT:I = 0x3d

.field protected static final EVENT_OTA_PROVISION_STATUS_CHANGE:I = 0x25

.field protected static final EVENT_PEND_SLEEP_WHILE_NET_SRCH_CDMA:I = 0x46

.field protected static final EVENT_PEND_SLEEP_WHILE_NET_SRCH_GSM:I = 0x47

.field protected static final EVENT_POLL_SIGNAL_STRENGTH:I = 0xa

.field protected static final EVENT_POLL_SIGNAL_STRENGTH_CDMA:I = 0x1c

.field protected static final EVENT_POLL_STATE_CDMA_SUBSCRIPTION:I = 0x22

.field protected static final EVENT_POLL_STATE_GPRS:I = 0x5

.field protected static final EVENT_POLL_STATE_NETWORK_SELECTION_MODE:I = 0xe

.field protected static final EVENT_POLL_STATE_OPERATOR:I = 0x6

.field protected static final EVENT_POLL_STATE_OPERATOR_CDMA:I = 0x19

.field protected static final EVENT_POLL_STATE_REGISTRATION:I = 0x4

.field protected static final EVENT_POLL_STATE_REGISTRATION_CDMA:I = 0x18

.field protected static final EVENT_RADIO_AVAILABLE:I = 0xd

.field protected static final EVENT_RADIO_ON:I = 0x29

.field protected static final EVENT_RADIO_STATE_CHANGED:I = 0x1

.field protected static final EVENT_REQUEST_DISCONNECT_DC:I = 0x32

.field protected static final EVENT_RESET_PREFERRED_NETWORK_TYPE:I = 0x15

.field protected static final EVENT_RESTRICTED_STATE_CHANGED:I = 0x17

.field protected static final EVENT_RETRY_GET_PREF_NETWORK_TYPE:I = 0x6c

.field protected static final EVENT_RIL_CONNECTED:I = 0x3e

.field protected static final EVENT_RTS_INDICATION:I = 0x68

.field protected static final EVENT_RUIM_READY:I = 0x1a

.field protected static final EVENT_RUIM_RECORDS_LOADED:I = 0x1b

.field public static final EVENT_SET_LTE_BAND_MODE:I = 0x2d

.field protected static final EVENT_SET_PREFERRED_NETWORK_TYPE:I = 0x14

.field protected static final EVENT_SET_PREFERRED_ROAMING_PLMN_LIST_CNF_TEMP:I = 0x49

.field protected static final EVENT_SET_PREFERRED_ROAMING_PLMN_LIST_TEMP:I = 0x48

.field protected static final EVENT_SET_RADIO_POWER_OFF:I = 0x26

.field protected static final EVENT_SIGNAL_STRENGTH_UPDATE:I = 0xc

.field protected static final EVENT_SIM_READY:I = 0x11

.field protected static final EVENT_SIM_RECORDS_LOADED:I = 0x10

.field protected static final EVENT_TDMODEM_NO_SERVICE:I = 0x73

.field protected static final EVENT_UNSOL_CELL_INFO_LIST:I = 0x2c

.field protected static final EVENT_VOICE_CALL_ENDED:I = 0x66

.field protected static final GLOBAL_NETWORK_SEARCH_TIMER:I = 0x2d

.field protected static final GLOBAL_NOSVC_CHK_TIMER:I = 0x5

.field protected static final GLOBAL_PENDING_INTENT_WAITING_TIME:I = 0xa

.field protected static final GMT_COUNTRY_CODES:[Ljava/lang/String;

.field public static IsDispdSwitchToGsm:Z = false

.field public static IsGlobalModeAvail:Z = false

.field public static IsManSelMode:Z = false

.field private static final LAST_CELL_INFO_LIST_MAX_AGE_MS:J = 0x7d0L

.field static final LOG_TAG:Ljava/lang/String; = "SST"

.field protected static final NET_SRCH_NUM_FOR_GOING_TO_PWR_SAVE_MODE:I = 0xc

.field public static final OTASP_COMPLETED:I = 0x4

.field public static final OTASP_NEEDED:I = 0x2

.field public static final OTASP_NOT_NEEDED:I = 0x3

.field public static final OTASP_UNINITIALIZED:I = 0x0

.field public static final OTASP_UNKNOWN:I = 0x1

.field protected static final POLL_PERIOD_MILLIS:I = 0x4e20

.field protected static final PROP_FORCE_ROAMING:Ljava/lang/String; = "telephony.test.forceRoaming"

.field protected static final PWR_SAVE_MODE_ENTER_TIMER:I = 0x384

.field protected static final PWR_SAVE_MODE_STAY_TIMER:I = 0x4b0

.field protected static final REGISTRATION_DENIED_AUTH:Ljava/lang/String; = "Authentication Failure"

.field protected static final REGISTRATION_DENIED_GEN:Ljava/lang/String; = "General"

.field protected static final SIMCARDMNG_LAUNCH_TIPER:I = 0x19

.field protected static final SLOT2_GSM_SERVICE_CHECK_TIMER:I = 0x46

.field protected static final SRCH_NET_CDMA:I = 0x1

.field protected static final SRCH_NET_GSM:I = 0x2

.field protected static final SRCH_NET_NO:I = 0x0

.field public static final THRESHOLD_FOR_DATA_RESUME:I = 0x3

.field public static final THRESHOLD_FOR_DATA_SUSPENDED:I = 0x1

.field protected static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field protected static final VDBG:Z

.field public static alreadyExpired:Z

.field public static currGsmMccInt:I

.field public static currGsmMccInt2:I

.field protected static isFirstCdmaSrch:Z

.field protected static mCdmaInSvc:Z

.field public static mCdmaSrchCnt:I

.field protected static mCurrentSrchNet:I

.field protected static mFirstCdmaNoSvcChkTimerStarted:Z

.field protected static mGsmInSvc:Z

.field public static mGsmSrchCnt:I

.field protected static mHasTimeDispPopupDispd:Z

.field protected static mLastSrchNet:I

.field protected static mNetSrchTimerRunning:Z

.field protected static mNoSvcChkTimerRunning:Z

.field protected static mPendingIntentTimerRunning:Z

.field public static mPrevSrchNet:I

.field protected static mPsmEnterTimerProcessed:Z

.field protected static mPsmEnterTimerRunning:Z

.field protected static mPsmStayTimerProcessed:Z

.field protected static mPsmStayTimerRunning:Z

.field public static mReduceSearchTimeShouldProceed:Z

.field protected static mRuimRecordsLoadingFinished:Z

.field protected static mScreenOn:Z

.field static mSignalBar:I

.field protected static mSimCardMngEverLaunched:Z

.field protected static mSimCardMngLnchTimerRunning:Z

.field public static mSlot1ShouldSwitchImmediately:Z

.field public static prevCdmaMcc:I

.field public static prevGsmMccInt:I


# instance fields
.field protected mAttachedRegistrants:Landroid/os/RegistrantList;

.field protected final mCellInfo:Landroid/telephony/CellInfo;

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

.field protected mDesiredPowerState:Z

.field protected mDetachedRegistrants:Landroid/os/RegistrantList;

.field protected mDontPollSignalStrength:Z

.field protected mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIsUSBChecked:Z

.field protected mLastCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastCellInfoListTime:J

.field private mLastSignalStrength:Landroid/telephony/SignalStrength;

.field protected mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

.field protected mNewRilRadioTechnology:I

.field protected mNewSS:Landroid/telephony/ServiceState;

.field private mPendingRadioPowerOff:Z

.field private mPendingRadioPowerOffAfterDataOff:Z

.field private mPendingRadioPowerOffAfterDataOffTag:I

.field protected mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

.field protected mPlmnChangeRegistrants:Landroid/os/RegistrantList;

.field protected mPollingContext:[I

.field protected mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

.field protected mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

.field public mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

.field protected mRilRadioTechnology:I

.field protected mRoamingOffRegistrants:Landroid/os/RegistrantList;

.field protected mRoamingOnRegistrants:Landroid/os/RegistrantList;

.field protected mRoutingAreaChangedRegistrants:Landroid/os/RegistrantList;

.field public mSS:Landroid/telephony/ServiceState;

.field protected mSignalStrength:Landroid/telephony/SignalStrength;

.field private mUSBStateReceiver:Landroid/content/BroadcastReceiver;

.field protected mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field protected mVoiceCapable:Z

.field private mWantContinuousLocationUpdates:Z

.field private mWantSingleLocationUpdate:Z

.field psmChkTimer:Landroid/app/PendingIntent;

.field sender_SimCardMngLaunchTimer:Landroid/app/PendingIntent;

.field private final usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 264
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->mNetSrchTimerRunning:Z

    .line 265
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->mNoSvcChkTimerRunning:Z

    .line 266
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingIntentTimerRunning:Z

    .line 267
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->mFirstCdmaNoSvcChkTimerStarted:Z

    .line 268
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->mRuimRecordsLoadingFinished:Z

    .line 269
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->mPsmEnterTimerRunning:Z

    .line 270
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->mPsmStayTimerRunning:Z

    .line 271
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->mPsmEnterTimerProcessed:Z

    .line 272
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->mPsmStayTimerProcessed:Z

    .line 273
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->mScreenOn:Z

    .line 274
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSimCardMngLnchTimerRunning:Z

    .line 275
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSimCardMngEverLaunched:Z

    .line 276
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaInSvc:Z

    .line 277
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmInSvc:Z

    .line 278
    sput-boolean v3, Lcom/android/internal/telephony/ServiceStateTracker;->isFirstCdmaSrch:Z

    .line 290
    sput v2, Lcom/android/internal/telephony/ServiceStateTracker;->currGsmMccInt:I

    .line 291
    sput v2, Lcom/android/internal/telephony/ServiceStateTracker;->currGsmMccInt2:I

    .line 292
    sput v2, Lcom/android/internal/telephony/ServiceStateTracker;->prevGsmMccInt:I

    .line 293
    sput v2, Lcom/android/internal/telephony/ServiceStateTracker;->prevCdmaMcc:I

    .line 294
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->IsDispdSwitchToGsm:Z

    .line 295
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->IsManSelMode:Z

    .line 296
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->IsGlobalModeAvail:Z

    .line 297
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->alreadyExpired:Z

    .line 298
    sput v2, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSrchCnt:I

    .line 299
    sput v2, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmSrchCnt:I

    .line 300
    sput v2, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSrchNet:I

    .line 302
    sput-boolean v3, Lcom/android/internal/telephony/ServiceStateTracker;->mReduceSearchTimeShouldProceed:Z

    .line 303
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSlot1ShouldSwitchImmediately:Z

    .line 304
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->mHasTimeDispPopupDispd:Z

    .line 352
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bf"

    aput-object v1, v0, v2

    const-string v1, "ci"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "eh"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fo"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "gb"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gh"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gn"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "gw"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ie"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lr"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ma"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ml"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mr"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sl"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "sn"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "tg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    .line 385
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalBar:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V
    .locals 5
    .param p1, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "cellInfo"    # Landroid/telephony/CellInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 390
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 92
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 93
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 94
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 100
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 101
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 105
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 111
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 114
    new-instance v1, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v1}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 138
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    .line 140
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 141
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 142
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    .line 143
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    .line 144
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    .line 145
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    .line 146
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    .line 147
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    .line 149
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoutingAreaChangedRegistrants:Landroid/os/RegistrantList;

    .line 152
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPlmnChangeRegistrants:Landroid/os/RegistrantList;

    .line 156
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 157
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 159
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOff:Z

    .line 172
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRilRadioTechnology:I

    .line 173
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRilRadioTechnology:I

    .line 176
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsUSBChecked:Z

    .line 429
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 391
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    .line 392
    iput-object p3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    .line 393
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 394
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    .line 398
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 400
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v2, 0x2a

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 401
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xc

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 402
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x2c

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 404
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.network.type"

    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    new-instance v1, Lcom/android/internal/telephony/ServiceStateTracker$USBStateReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker$USBStateReceiver;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUSBStateReceiver:Landroid/content/BroadcastReceiver;

    .line 409
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 410
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUSBStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 412
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "usb"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 414
    return-void
.end method

.method private final notifyUSB30()V
    .locals 3

    .prologue
    .line 1805
    const-string v1, "call rilErrService for notifying USB3.0"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1806
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsUSBChecked:Z

    .line 1807
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.intent.action_NOTIFY_USB30_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1808
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.app.RilErrorNotifier"

    const-string v2, "com.sec.app.RilErrorNotifier.PhoneNotiDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1809
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1810
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1811
    return-void
.end method


# virtual methods
.method public GetRuimRecordsLoadFinishFlag()Z
    .locals 1

    .prologue
    .line 1242
    sget-boolean v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRuimRecordsLoadingFinished:Z

    return v0
.end method

.method public SetRuimRecordsLoadFinishFlag(Z)V
    .locals 1
    .param p1, "loadFinished"    # Z

    .prologue
    .line 1233
    const-string v0, "[global mode]RuimRecords loading finished."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1234
    sput-boolean p1, Lcom/android/internal/telephony/ServiceStateTracker;->mRuimRecordsLoadingFinished:Z

    .line 1235
    return-void
.end method

.method public SimSlotOnOff(ILandroid/os/Message;)V
    .locals 1
    .param p1, "on"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 1167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 1168
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setSimPower(ILandroid/os/Message;)V

    .line 1169
    return-void
.end method

.method protected cancelPollState()V
    .locals 1

    .prologue
    .line 1006
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 1007
    return-void
.end method

.method protected checkCorrectThread()V
    .locals 2

    .prologue
    .line 1148
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1149
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ServiceStateTracker must be used from within one thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1152
    :cond_0
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 580
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    .line 581
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 584
    :cond_0
    return-void
.end method

.method protected disableSingleLocationUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 573
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    .line 574
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-nez v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 577
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCellInfoList(Landroid/os/Handler;)V

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUSBStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 423
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1124
    const-string v0, "ServiceStateTracker:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCellInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRestrictedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPollingContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDesiredPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDontPollSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingRadioPowerOffAfterDataOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingRadioPowerOffAfterDataOffTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1137
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 567
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    .line 569
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public enableSingleLocationUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 561
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    .line 563
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1073
    new-instance v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$1;)V

    .line 1075
    .local v2, "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v3

    .line 1076
    .local v3, "ver":I
    const/16 v4, 0x8

    if-lt v3, v4, :cond_3

    .line 1077
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isCallerOnDifferentThread()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1078
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 1080
    const/16 v4, 0x2b

    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1081
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 1082
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCellInfoList(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    :try_start_1
    iget-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1089
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1103
    .end local v1    # "msg":Landroid/os/Message;
    :goto_1
    const-string v4, "false"

    const-string v5, "ro.product_ship"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1104
    iget-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 1105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SST.getAllCellInfo(): X size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " list="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1111
    :cond_0
    :goto_2
    iget-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    return-object v4

    .line 1085
    .restart local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1087
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_0

    .line 1089
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1091
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    const-string v4, "SST.getAllCellInfo(): return last, back to back calls"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1092
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    iput-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 1095
    :cond_2
    const-string v4, "SST.getAllCellInfo(): return last, same thread can\'t block"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1096
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    iput-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 1099
    :cond_3
    const-string v4, "SST.getAllCellInfo(): not implemented"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1100
    iput-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 1108
    :cond_4
    const-string v4, "SST.getAllCellInfo(): X size=0 list=null"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public abstract getCurrentDataConnectionState()I
.end method

.method public getDesiredPowerState()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    return v0
.end method

.method protected abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public getPrevSrchNetType()I
    .locals 1

    .prologue
    .line 1296
    sget v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSrchNet:I

    return v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 2

    .prologue
    .line 1118
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v1

    .line 1119
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    monitor-exit v1

    return-object v0

    .line 1120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSlotSelectionInformation()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1458
    const-string v0, "/sys/class/sec/slot_switch/slot_sel"

    .line 1459
    .local v0, "FILE_PATH":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1460
    .local v3, "in":Ljava/io/BufferedReader;
    const-string v1, "0"

    .line 1463
    .local v1, "current_slot":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1464
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1465
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1472
    if-eqz v4, :cond_3

    .line 1474
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 1482
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1483
    const-string v1, "0"

    .line 1486
    :cond_1
    return-object v1

    .line 1476
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 1477
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "SST"

    const-string v6, "BufferedReader close error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 1478
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .line 1467
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 1468
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "SST"

    const-string v6, "File open error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    const-string v1, "0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1472
    if-eqz v3, :cond_0

    .line 1474
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1476
    :catch_2
    move-exception v2

    .line 1477
    const-string v5, "SST"

    const-string v6, "BufferedReader close error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1472
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_2

    .line 1474
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1478
    :cond_2
    :goto_3
    throw v5

    .line 1476
    :catch_3
    move-exception v2

    .line 1477
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "SST"

    const-string v7, "BufferedReader close error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1472
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1467
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :cond_3
    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method public globalNoSvcChkTimerRequired(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 15
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 1505
    sget-boolean v12, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaInSvc:Z

    if-nez v12, :cond_1

    sget-boolean v12, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmInSvc:Z

    if-nez v12, :cond_1

    const/4 v4, 0x1

    .line 1506
    .local v4, "isNoSvc":Z
    :goto_0
    const/4 v12, 0x0

    invoke-static {v12}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v11

    .line 1507
    .local v11, "tm":Landroid/telephony/MultiSimTelephonyManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "airplane_mode_on"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    const/4 v2, 0x1

    .line 1509
    .local v2, "isAirplaneMode":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v12

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1510
    const/4 v12, 0x1

    invoke-static {v12}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v11

    .line 1516
    :goto_2
    invoke-virtual {v11}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_0

    invoke-virtual {v11}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_4

    :cond_0
    const/4 v6, 0x1

    .line 1520
    .local v6, "pinEnabled":Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v12

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1521
    const-string v12, "ril.ICC_TYPE2"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1527
    .local v1, "icc1Type":I
    :goto_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isFactoryMode(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v3

    .line 1528
    .local v3, "isFactoryCard":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "CURRENT_NETWORK"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_6

    const/4 v0, 0x1

    .line 1535
    .local v0, "currentNetwork":Z
    :goto_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v12

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1536
    const-string v12, "gsm.sim.currentcardstatus2"

    const-string v13, "9"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1541
    .local v8, "slot1CardStatus":I
    :goto_6
    const/4 v12, 0x3

    if-ne v8, v12, :cond_8

    const/4 v7, 0x1

    .line 1544
    .local v7, "slot1Active":Z
    :goto_7
    const-string v12, "gsm.sim.active"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1545
    .local v9, "slotOnOffProc1":I
    const-string v12, "gsm.sim.active2"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1547
    .local v10, "slotOnOffProc2":I
    if-nez v9, :cond_9

    if-nez v10, :cond_9

    const/4 v5, 0x1

    .line 1549
    .local v5, "isSlotOnOffNotReqd":Z
    :goto_8
    const-string v12, "SST"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[Global mode] mCdmaInSvc:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaInSvc:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mGsmInSvc:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmInSvc:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ICC1_TYPE:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " RuimRecordsLoadFinished:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->GetRuimRecordsLoadFinishFlag()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " pin:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " AirPlane:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " isFactoryCard:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " currentNetwork:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " slot1Active:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " slotOnOffProc1: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " slotOnOffProc2: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    if-eqz v4, :cond_a

    const/4 v12, 0x4

    if-ne v1, v12, :cond_a

    if-nez v6, :cond_a

    if-nez v2, :cond_a

    if-nez v3, :cond_a

    if-eqz v7, :cond_a

    if-eqz v5, :cond_a

    .line 1563
    const/4 v12, 0x1

    .line 1566
    :goto_9
    return v12

    .line 1505
    .end local v0    # "currentNetwork":Z
    .end local v1    # "icc1Type":I
    .end local v2    # "isAirplaneMode":Z
    .end local v3    # "isFactoryCard":Z
    .end local v4    # "isNoSvc":Z
    .end local v5    # "isSlotOnOffNotReqd":Z
    .end local v6    # "pinEnabled":Z
    .end local v7    # "slot1Active":Z
    .end local v8    # "slot1CardStatus":I
    .end local v9    # "slotOnOffProc1":I
    .end local v10    # "slotOnOffProc2":I
    .end local v11    # "tm":Landroid/telephony/MultiSimTelephonyManager;
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1507
    .restart local v4    # "isNoSvc":Z
    .restart local v11    # "tm":Landroid/telephony/MultiSimTelephonyManager;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1513
    .restart local v2    # "isAirplaneMode":Z
    :cond_3
    const/4 v12, 0x0

    invoke-static {v12}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v11

    goto/16 :goto_2

    .line 1516
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 1524
    .restart local v6    # "pinEnabled":Z
    :cond_5
    const-string v12, "ril.ICC_TYPE"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "icc1Type":I
    goto/16 :goto_4

    .line 1528
    .restart local v3    # "isFactoryCard":Z
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 1539
    .restart local v0    # "currentNetwork":Z
    :cond_7
    const-string v12, "gsm.sim.currentcardstatus"

    const-string v13, "9"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .restart local v8    # "slot1CardStatus":I
    goto/16 :goto_6

    .line 1541
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 1547
    .restart local v7    # "slot1Active":Z
    .restart local v9    # "slotOnOffProc1":I
    .restart local v10    # "slotOnOffProc2":I
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 1566
    .restart local v5    # "isSlotOnOffNotReqd":Z
    :cond_a
    const/4 v12, 0x0

    goto :goto_9
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 588
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled message with number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 590
    :sswitch_0
    monitor-enter p0

    .line 591
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v4, :cond_1

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    if-ne v4, v5, :cond_1

    .line 593
    const-string v4, "EVENT_SET_RADIO_OFF, turn radio off now."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 595
    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 596
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 601
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 598
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SET_RADIO_OFF is stale arg1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!= tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 605
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onUpdateIccAvailability()V

    goto :goto_0

    .line 609
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 610
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;

    .line 611
    .local v3, "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    iget-object v5, v3, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 612
    :try_start_2
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 613
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_CELL_INFO_LIST: error ret null, e="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 614
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    .line 623
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    .line 624
    iget-object v4, v3, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 625
    iget-object v4, v3, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 626
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 616
    :cond_2
    :try_start_3
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iput-object v4, v3, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 631
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 632
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_UNSOL_CELL_INFO_LIST: error ignoring, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 635
    :cond_3
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 637
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_UNSOL_CELL_INFO_LIST: size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " list="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 640
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    .line 641
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 642
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V

    goto/16 :goto_0

    .line 648
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_4
    const-string v4, "EVENT_CALL_HANGUP_BEFORE_DEACTIVEPDP"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 649
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v4, :cond_0

    .line 650
    const-string v4, "pending radio power off after hangup voice call"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 651
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v4, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 652
    .local v1, "dct":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto/16 :goto_0

    .line 588
    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x2a -> :sswitch_1
        0x2b -> :sswitch_2
        0x2c -> :sswitch_3
        0x64 -> :sswitch_4
    .end sparse-switch
.end method

.method protected abstract handlePollStateResult(ILandroid/os/AsyncResult;)V
.end method

.method protected abstract hangupAndPowerOff()V
.end method

.method protected abstract hangupBeforeDeactivePDP()Z
.end method

.method public incNetSrchCnt(I)V
    .locals 3
    .param p1, "srchType"    # I

    .prologue
    .line 1326
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1327
    sget v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSrchCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSrchCnt:I

    .line 1328
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[global mode] mCdmaSrchCnt increased to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSrchCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :goto_0
    return-void

    .line 1330
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1331
    sget v0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmSrchCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmSrchCnt:I

    .line 1332
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[global mode] mGsmSrchCnt increased to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmSrchCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1334
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1335
    sget v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSrchCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSrchCnt:I

    .line 1336
    sget v0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmSrchCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmSrchCnt:I

    .line 1337
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[global mode] mCdmaSrchCnt/mGsmSrchCnt increased to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSrchCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmSrchCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1340
    :cond_2
    const-string v0, "SST"

    const-string v1, "[global mode] incNetSrchCnt no type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected isCallerOnDifferentThread()Z
    .locals 3

    .prologue
    .line 1155
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1157
    .local v0, "value":Z
    :goto_0
    return v0

    .line 1155
    .end local v0    # "value":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCdmaManSel(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1699
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CDMA_MANUAL_SELECTED"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isCdmaPrefAreas(I)Z
    .locals 1
    .param p1, "mcc"    # I

    .prologue
    .line 1589
    sparse-switch p1, :sswitch_data_0

    .line 1602
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1598
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1589
    nop

    :sswitch_data_0
    .sparse-switch
        0x12e -> :sswitch_0
        0x136 -> :sswitch_0
        0x137 -> :sswitch_0
        0x13c -> :sswitch_0
        0x1b8 -> :sswitch_0
        0x1b9 -> :sswitch_0
        0x1c2 -> :sswitch_0
        0x1d2 -> :sswitch_0
    .end sparse-switch
.end method

.method public isChinaAreas()Z
    .locals 3

    .prologue
    .line 1574
    const-string v1, "gsm.ctc.chinamainland"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1576
    .local v0, "isChinaMainland":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1577
    const/4 v1, 0x1

    .line 1580
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract isConcurrentVoiceAndDataAllowed()Z
.end method

.method public isDualSlotActive()Z
    .locals 4

    .prologue
    .line 1674
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "9"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1675
    .local v0, "slot1CardReady":Z
    const-string v2, "gsm.sim.currentcardstatus2"

    const-string v3, "9"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1677
    .local v1, "slot2CardReady":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isFactoryMode(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1710
    const/4 v2, 0x0

    .line 1711
    .local v2, "isFactoryMode":Z
    const/4 v1, 0x0

    .line 1713
    .local v1, "imeiBlocked":Ljava/lang/String;
    invoke-static {v7}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v3

    .line 1714
    .local v3, "mMultiSimTelephonyManager":Landroid/telephony/MultiSimTelephonyManager;
    invoke-static {v8}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v4

    .line 1717
    .local v4, "mMultiSimTelephonyManager2":Landroid/telephony/MultiSimTelephonyManager;
    if-nez v2, :cond_0

    .line 1718
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SHOULD_SHUT_DOWN"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 1719
    const-string v5, "SST"

    const-string v6, "Factory mode is enabled by Case #1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    const/4 v2, 0x1

    .line 1725
    :cond_0
    if-nez v2, :cond_2

    .line 1727
    const-string v5, "999999999999999"

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "999999999999999"

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1729
    :cond_1
    const-string v5, "SST"

    const-string v6, "Factory mode is enabled by Case #2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const/4 v2, 0x1

    .line 1735
    :cond_2
    if-nez v2, :cond_3

    .line 1737
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/efs/FactoryApp/factorymode"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1743
    :goto_0
    if-eqz v1, :cond_4

    const-string v5, "ON"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1744
    const-string v5, "SST"

    const-string v6, "Not factory mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :cond_3
    :goto_1
    return v2

    .line 1738
    :catch_0
    move-exception v0

    .line 1739
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "OFF"

    .line 1740
    const-string v5, "SST"

    const-string v6, "cannot open file : /efs/FactoryApp/factorymode"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1746
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    const-string v5, "SST"

    const-string v6, "Factory mode is enabled by Case #3"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public isGlobalMode(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1177
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "GLOBALONOFF"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v0, v4

    .line 1180
    .local v0, "globalMode":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1181
    const-string v6, "gsm.sim.currentcardstatus2"

    const-string v7, "9"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1187
    .local v3, "slot1CardStatus":I
    :goto_1
    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    move v2, v4

    .line 1191
    .local v2, "slot1Active":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1192
    const-string v6, "ril.ICC_TYPE2"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1198
    .local v1, "icc1Type":I
    :goto_3
    const-string v6, "CP"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1199
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v6

    if-nez v6, :cond_0

    .line 1200
    sput-boolean v4, Lcom/android/internal/telephony/ServiceStateTracker;->IsGlobalModeAvail:Z

    .line 1203
    :cond_0
    const-string v6, "SST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Global mode] isGlobalMode: globalMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " slot1Active = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IsGlobalModeAvail = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/internal/telephony/ServiceStateTracker;->IsGlobalModeAvail:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " slot1CardStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " icc1Type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    sget-boolean v6, Lcom/android/internal/telephony/ServiceStateTracker;->IsGlobalModeAvail:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x4

    if-ne v1, v6, :cond_5

    :goto_4
    return v4

    .end local v0    # "globalMode":Z
    .end local v1    # "icc1Type":I
    .end local v2    # "slot1Active":Z
    .end local v3    # "slot1CardStatus":I
    :cond_1
    move v0, v5

    .line 1177
    goto/16 :goto_0

    .line 1184
    .restart local v0    # "globalMode":Z
    :cond_2
    const-string v6, "gsm.sim.currentcardstatus"

    const-string v7, "9"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "slot1CardStatus":I
    goto/16 :goto_1

    :cond_3
    move v2, v5

    .line 1187
    goto/16 :goto_2

    .line 1195
    .restart local v2    # "slot1Active":Z
    :cond_4
    const-string v6, "ril.ICC_TYPE"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "icc1Type":I
    goto :goto_3

    :cond_5
    move v4, v5

    .line 1207
    goto :goto_4
.end method

.method public isGsmActive()Z
    .locals 5

    .prologue
    .line 1645
    const-string v2, "gsm.sim.currentcardstatus2"

    const-string v3, "9"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1649
    .local v1, "gsmCardStatus":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1651
    .local v0, "gsmActive":Z
    :goto_0
    const-string v2, "SST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[global mode] isGsmActive() gsmActive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gsmCardStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    return v0

    .line 1649
    .end local v0    # "gsmActive":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGsmDfltPhoneIdx(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 1690
    const/4 v0, 0x1

    return v0
.end method

.method public isPwrSaveModeRequired()Z
    .locals 3

    .prologue
    .line 1312
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Global mode] mCdmaSrchCnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSrchCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mGsmSrchCnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmSrchCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    sget v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSrchCnt:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmSrchCnt:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1315
    const/4 v0, 0x1

    .line 1317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPwrSaveModeTimerRunning()Z
    .locals 1

    .prologue
    .line 1304
    sget-boolean v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsmStayTimerRunning:Z

    return v0
.end method

.method public isSlot1CdmaActive(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 8
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1661
    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "9"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1662
    .local v2, "slot1CardStatus":I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    move v0, v3

    .line 1663
    .local v0, "cdmaActive":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1664
    .local v1, "isSlotSwitched":Z
    const-string v5, "SST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[global mode] cdmaActive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSlotSwitched : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " slot1CardStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    :goto_1
    return v3

    .end local v0    # "cdmaActive":Z
    .end local v1    # "isSlotSwitched":Z
    :cond_0
    move v0, v4

    .line 1662
    goto :goto_0

    .restart local v0    # "cdmaActive":Z
    .restart local v1    # "isSlotSwitched":Z
    :cond_1
    move v3, v4

    .line 1666
    goto :goto_1
.end method

.method public isSlot1DualCard()Z
    .locals 3

    .prologue
    .line 1218
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1219
    const-string v1, "ril.ICC_TYPE2"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1225
    .local v0, "icc1Type":I
    :goto_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 1222
    .end local v0    # "icc1Type":I
    :cond_0
    const-string v1, "ril.ICC_TYPE"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "icc1Type":I
    goto :goto_0

    .line 1225
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isSlot1GsmActive(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 8
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1626
    const-string v5, "gsm.sim.currentcardstatus2"

    const-string v6, "9"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1630
    .local v2, "slot1CardStatus":I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    move v0, v3

    .line 1631
    .local v0, "gsmActive":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1632
    .local v1, "isSlotSwitched":Z
    const-string v5, "SST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[global mode] gsmActive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSlotSwitched : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " slot1CardStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    const-string v5, "CP"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1634
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1636
    :goto_1
    return v3

    .end local v0    # "gsmActive":Z
    .end local v1    # "isSlotSwitched":Z
    :cond_0
    move v0, v4

    .line 1630
    goto :goto_0

    .restart local v0    # "gsmActive":Z
    .restart local v1    # "isSlotSwitched":Z
    :cond_1
    move v3, v4

    .line 1634
    goto :goto_1

    :cond_2
    move v3, v0

    .line 1636
    goto :goto_1
.end method

.method public isUsAreas(I)Z
    .locals 1
    .param p1, "mcc"    # I

    .prologue
    .line 1610
    packed-switch p1, :pswitch_data_0

    .line 1617
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1613
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1610
    nop

    :pswitch_data_0
    .packed-switch 0x136
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected notifyDataRegStateRilRadioTechnologyChanged()V
    .locals 6

    .prologue
    .line 452
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 453
    .local v1, "rat":I
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .line 454
    .local v0, "drs":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataRegStateRilRadioTechnologyChanged: drs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 455
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "gsm.network.type"

    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 458
    return-void
.end method

.method protected notifySignalStrength()Z
    .locals 5

    .prologue
    .line 431
    const/4 v1, 0x0

    .line 432
    .local v1, "notified":Z
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v3

    .line 433
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2, v4}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 435
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->notifySignalStrength()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    const/4 v1, 0x1

    .line 442
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 443
    return v1

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSignalStrength() Phone already destroyed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "SignalStrength not notified"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 442
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isGsm"    # Z

    .prologue
    const/4 v7, 0x3

    .line 900
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 902
    .local v4, "oldSignalStrength":Landroid/telephony/SignalStrength;
    sget v3, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalBar:I

    .line 907
    .local v3, "oldSignalBar":I
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_4

    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_4

    .line 908
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/SignalStrength;

    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 909
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->validateInput()V

    .line 910
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5, p2}, Landroid/telephony/SignalStrength;->setGsm(Z)V

    .line 953
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5, v4}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_EnableVoicePriority"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 955
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v5

    sput v5, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalBar:I

    .line 956
    sget v5, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalBar:I

    if-eq v5, v3, :cond_3

    sget v5, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalBar:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    sget v5, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalBar:I

    if-lt v5, v7, :cond_0

    if-lt v3, v7, :cond_1

    :cond_0
    sget v5, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalBar:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_3

    .line 959
    :cond_1
    const-string v2, "WeakSignal"

    .line 960
    .local v2, "notiName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v5, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 961
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    sget v5, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalBar:I

    if-lt v5, v7, :cond_2

    .line 962
    const-string v2, "StrongSignal"

    .line 964
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyDataConnectionForSST(Ljava/lang/String;)V

    .line 967
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v2    # "notiName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySignalStrength()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 971
    :goto_1
    return v5

    .line 912
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSignalStrengthResult() Exception from RIL : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 913
    new-instance v5, Landroid/telephony/SignalStrength;

    invoke-direct {v5, p2}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_0

    .line 968
    :catch_0
    move-exception v1

    .line 969
    .local v1, "ex":Ljava/lang/NullPointerException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSignalStrengthResult() Phone already destroyed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SignalStrength not notified"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 971
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected onSignalStrengthResult(Z)Z
    .locals 1
    .param p1, "isGsm"    # Z

    .prologue
    .line 981
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onUpdateIccAvailability()V
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 3
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 828
    monitor-enter p0

    .line 829
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v1, :cond_1

    .line 832
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupBeforeDeactivePDP()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p0

    .line 873
    :goto_0
    return-void

    .line 837
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 839
    const-string v1, "radioTurnedOff"

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 840
    const-string v1, "Data disconnected, turn off radio right away."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 872
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 843
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 844
    const-string v1, "radioTurnedOff"

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 845
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 846
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x26

    iput v1, v0, Landroid/os/Message;->what:I

    .line 847
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 848
    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 849
    const-string v1, "Wait upto 2s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 850
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_1

    .line 852
    :cond_3
    const-string v1, "Cannot send delayed Msg, turn off radio right away."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    goto :goto_1

    .line 857
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    const-string v1, "radioTurnedOff"

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 858
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 859
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v1, 0x26

    iput v1, v0, Landroid/os/Message;->what:I

    .line 860
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 862
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 863
    const-string v1, "Wait upto 10s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 865
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_1

    .line 867
    :cond_5
    const-string v1, "Cannot send delayed Msg, turn off radio right away."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public processPendingRadioPowerOffAfterDataOff()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 881
    monitor-enter p0

    .line 882
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v1, :cond_0

    .line 883
    const-string v0, "Process pending request to turn radio off."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 884
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 885
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 887
    const/4 v0, 0x1

    monitor-exit p0

    .line 889
    :goto_0
    return v0

    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 890
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "inSvc"    # Z

    .prologue
    .line 1370
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Global mode] PSM timer expd. srchType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPrevSrchNetType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inSvc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->stopPwrSaveModeTimer(Lcom/android/internal/telephony/PhoneBase;)V

    .line 1374
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->resetNetSrchCnt(I)V

    .line 1376
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isGlobalMode(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1377
    const-string v0, "SST"

    const-string v1, "[Global mode] global mode is off. process nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :cond_0
    :goto_0
    return-void

    .line 1380
    :cond_1
    if-eqz p2, :cond_2

    .line 1381
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Global mode] svc acquired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPrevSrchNetType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " process nothing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1389
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPrevSrchNetType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1391
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSecondaryPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopGlobalNoSvcChkTimer()V

    .line 1392
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSecondaryPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopGlobalNetworkSearchTimer()V

    .line 1395
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->startGlobalNetworkSearchTimer()V

    goto :goto_0

    .line 1397
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPrevSrchNetType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1399
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopGlobalNoSvcChkTimer()V

    .line 1400
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopGlobalNetworkSearchTimer()V

    .line 1403
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSecondaryPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->startGlobalNetworkSearchTimer()V

    goto :goto_0

    .line 1406
    :cond_4
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Global mode] PSM timer expd. Prev srch net is unknown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPrevSrchNetType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isSlot1CdmaActive(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1410
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSecondaryPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopGlobalNoSvcChkTimer()V

    .line 1411
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSecondaryPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopGlobalNetworkSearchTimer()V

    .line 1414
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->startGlobalNetworkSearchTimer()V

    goto/16 :goto_0

    .line 1416
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isSlot1GsmActive(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1418
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopGlobalNoSvcChkTimer()V

    .line 1419
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopGlobalNetworkSearchTimer()V

    .line 1422
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSecondaryPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->startGlobalNetworkSearchTimer()V

    goto/16 :goto_0
.end method

.method public reRegisterNetwork(Landroid/os/Message;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x13

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 538
    return-void
.end method

.method public registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 680
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 681
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 683
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 684
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 686
    :cond_0
    return-void
.end method

.method public registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 698
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 699
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 701
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 704
    :cond_0
    return-void
.end method

.method public registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 719
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 720
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 721
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 722
    return-void
.end method

.method public registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 734
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 736
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 737
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_0

    .line 738
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 740
    :cond_0
    return-void
.end method

.method public registerForPlmnChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 813
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 814
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPlmnChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 815
    return-void
.end method

.method public registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 771
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 772
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 774
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 777
    :cond_0
    return-void
.end method

.method public registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 752
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 753
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 755
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 758
    :cond_0
    return-void
.end method

.method public registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 514
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 515
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 517
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 520
    :cond_0
    return-void
.end method

.method public registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 493
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 494
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 496
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 499
    :cond_0
    return-void
.end method

.method public registerForRoutingAreaChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 792
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 793
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoutingAreaChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 795
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 796
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 798
    :cond_0
    return-void
.end method

.method public resetNetSrchCnt(I)V
    .locals 2
    .param p1, "srchType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1350
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1351
    sput v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSrchCnt:I

    .line 1363
    :goto_0
    return-void

    .line 1353
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1354
    sput v1, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmSrchCnt:I

    goto :goto_0

    .line 1356
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1357
    sput v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSrchCnt:I

    .line 1358
    sput v1, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmSrchCnt:I

    goto :goto_0

    .line 1361
    :cond_2
    const-string v0, "SST"

    const-string v1, "[global mode] resetNetSrchCnt no type."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setChinaMainlandProperty()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1788
    const-string v2, "gsm.operator.numeric"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "00000"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1790
    .local v0, "slot1OperatorNumeric":Ljava/lang/String;
    const-string v2, "gsm.operator.numeric"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "00000"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1793
    .local v1, "slot2OperatorNumeric":Ljava/lang/String;
    const-string v2, "460"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "455"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "460"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "455"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1795
    :cond_0
    const-string v2, "gsm.ctc.chinamainland"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    :goto_0
    return-void

    .line 1798
    :cond_1
    const-string v2, "gsm.ctc.chinamainland"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract setPowerStateToDesired()V
.end method

.method public setRadioPower(Z)V
    .locals 0
    .param p1, "power"    # Z

    .prologue
    .line 542
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 544
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    .line 545
    return-void
.end method

.method protected shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11
    .param p1, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "prevOperatorNumeric"    # Ljava/lang/String;
    .param p4, "needToFixTimeZone"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1028
    const/4 v9, 0x0

    const/4 v10, 0x3

    :try_start_0
    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1041
    .local v4, "mcc":I
    const/4 v9, 0x0

    const/4 v10, 0x3

    :try_start_1
    invoke-virtual {p3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 1047
    .local v5, "prevMcc":I
    :goto_0
    const/4 v3, 0x0

    .line 1048
    .local v3, "iccCardExist":Z
    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v9, :cond_0

    .line 1049
    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v9, v10, :cond_3

    move v3, v7

    .line 1053
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    if-ne v4, v5, :cond_2

    :cond_1
    if-eqz p4, :cond_4

    :cond_2
    move v6, v7

    .line 1058
    .local v6, "retVal":Z
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1059
    .local v0, "ctm":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shouldFixTimeZoneNow: retVal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " iccCardExist="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " operatorNumeric="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mcc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " prevOperatorNumeric="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " prevMcc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " needToFixTimeZone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ltod="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1066
    .end local v0    # "ctm":J
    .end local v3    # "iccCardExist":Z
    .end local v4    # "mcc":I
    .end local v5    # "prevMcc":I
    .end local v6    # "retVal":Z
    :goto_3
    return v6

    .line 1029
    :catch_0
    move-exception v2

    .line 1031
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shouldFixTimeZoneNow: no mcc, operatorNumeric="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " retVal=false"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move v6, v8

    .line 1034
    goto :goto_3

    .line 1042
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "mcc":I
    :catch_1
    move-exception v2

    .line 1043
    .restart local v2    # "e":Ljava/lang/Exception;
    add-int/lit8 v5, v4, 0x1

    .restart local v5    # "prevMcc":I
    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "iccCardExist":Z
    :cond_3
    move v3, v8

    .line 1049
    goto/16 :goto_1

    :cond_4
    move v6, v8

    .line 1053
    goto/16 :goto_2
.end method

.method public startGlobalNetworkSearchTimer()V
    .locals 2

    .prologue
    .line 1759
    const-string v0, "SST"

    const-string v1, "Need to implement in sub classs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    return-void
.end method

.method public startGlobalNoSvcChkTimer()V
    .locals 2

    .prologue
    .line 1775
    const-string v0, "SST"

    const-string v1, "Need to implement in sub classs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    return-void
.end method

.method public startPwrSaveModeTimer(Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "currSrchType"    # I

    .prologue
    .line 1276
    return-void
.end method

.method public startSimCardMngLaunchTimer(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v4, 0x0

    .line 1432
    const-string v2, "SST"

    const-string v3, "[SimCardMngLaunch] startSimCardMngLaunchTimer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1435
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SIMCARDMANAGER_LAUNCH_TIMER_EXPIRED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1437
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->sender_SimCardMngLaunchTimer:Landroid/app/PendingIntent;

    .line 1438
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x61a8

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->sender_SimCardMngLaunchTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1439
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSimCardMngLnchTimerRunning:Z

    .line 1440
    return-void
.end method

.method public stopGlobalNetworkSearchTimer()V
    .locals 2

    .prologue
    .line 1767
    const-string v0, "SST"

    const-string v1, "Need to implement in sub classs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    return-void
.end method

.method public stopGlobalNoSvcChkTimer()V
    .locals 2

    .prologue
    .line 1783
    const-string v0, "SST"

    const-string v1, "Need to implement in sub classs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    return-void
.end method

.method public stopPwrSaveModeTimer(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 1289
    return-void
.end method

.method public stopSimCardMngLaunchTimer(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 1447
    const-string v1, "SST"

    const-string v2, "[SimCardMngLaunch] stopSimCardMngLaunchTimer!!! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1449
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->sender_SimCardMngLaunchTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1450
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSimCardMngLnchTimerRunning:Z

    .line 1451
    return-void
.end method

.method public unregisterForDataConnectionAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 689
    return-void
.end method

.method public unregisterForDataConnectionDetached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 707
    return-void
.end method

.method public unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 725
    return-void
.end method

.method public unregisterForNetworkAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 743
    return-void
.end method

.method public unregisterForPlmnChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPlmnChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 819
    return-void
.end method

.method public unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 781
    return-void
.end method

.method public unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 762
    return-void
.end method

.method public unregisterForRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 524
    return-void
.end method

.method public unregisterForRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 503
    return-void
.end method

.method public unregisterForRoutingAreaChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoutingAreaChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 801
    return-void
.end method

.method protected updatePhoneObject()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->updatePhoneObject(I)V

    .line 482
    return-void
.end method

.method protected abstract updateSpnDisplay()V
.end method

.method protected useDataRegStateForDataOnlyDevices()V
    .locals 2

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useDataRegStateForDataOnlyDevice: VoiceRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DataRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 478
    :cond_0
    return-void
.end method
