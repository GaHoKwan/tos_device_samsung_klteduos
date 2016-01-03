.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$13;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$ApnChangeObserver;
    }
.end annotation


# static fields
.field static final BOOT_WITH_TD:Ljava/lang/String; = "1"

.field static final BOOT_WITH_WCDMA:Ljava/lang/String; = "2"

.field static final CP_ASSERT:I = 0x3ef

.field static final CS_DISABLED:I = 0x3ec

.field static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field static final CS_ENABLED:I = 0x3eb

.field static final CS_NORMAL_ENABLED:I = 0x3ed

.field static final CS_NOTIFICATION:I = 0x3e7

.field static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field static final DTM_SUPPORT_NETWORK:I = 0x64

.field protected static final EVENT_NETWORK_STATE_CHANGED_BY_RESCAN:I = 0xfa0

.field private static final EVENT_WFC_REGISTRATION_STATUS:I = 0x1

.field static final HOMEZONE_CITY:I = 0x29a

.field static final HOMEZONE_HOME:I = 0x309

.field private static final LOG_TAG:Ljava/lang/String; = "GsmSST"

.field static final MAX_DISP_O2_HOMEZONE_TAG_LEN:I = 0xd

.field static final NETWORK_REGIST_REJECT_ACTION:Ljava/lang/String; = "com.android.server.status.regist_reject"

.field static final PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

.field public static final REGISTRATION_STATE:Ljava/lang/String; = "content://com.samsung.tmowfc.wfcprovider/registration_state_state_id"

.field public static final ROAMING_MODE_ALL_NETWORKS:I = 0x2

.field public static final ROAMING_MODE_DISABLE:I = 0x0

.field public static final ROAMING_MODE_NATIONAL_ROMING_ONLY:I = 0x1

.field static final RTS_CS:I = 0x2

.field static final RTS_IDLE:I = 0x1

.field static final RTS_PS:I = 0x3

.field static final RTS_STATUS:I = 0x0

.field static final RTS_TOKEN:Ljava/lang/String; = ";"

.field static final RTS_TOKEN_CS:Ljava/lang/String; = "CS"

.field static final RTS_TOKEN_IDLE:Ljava/lang/String; = "Idle"

.field static final RTS_TOKEN_PS:Ljava/lang/String; = "PS"

.field static final RTS_TOKEN_STATUS:Ljava/lang/String; = "Status"

.field static final RTS_VALUES_COUNT:I = 0x4

.field static final RTS_VALUE_LOC:I = 0x1

.field static final SHIP_BUILD:Z

.field static final TDSCDMA_NOT_SUPPORT:Ljava/lang/String; = "0"

.field static final TDSCDMA_ONLY_SUPPORT:Ljava/lang/String; = "2"

.field private static final UNACTIVATED_MIN2_VALUE:Ljava/lang/String; = "000000"

.field private static final UNACTIVATED_MIN_VALUE:Ljava/lang/String; = "1111110111"

.field private static final VDBG:Z = false

.field protected static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"

.field protected static deniedDialog:Landroid/app/AlertDialog;

.field private static isCmccSIM:Z

.field private static isFirstSimChange:Z

.field public static isSetNoserviceTimer:Z

.field private static mDataSuspended:Z

.field static mDsCallCnt:I

.field protected static mRescanDialog:Landroid/app/AlertDialog;

.field private static mScreenState:Z

.field static mSlot1Type:I

.field static mSlot2Type:I

.field private static mTetherState:Z

.field static final noserviceAlarmCode:I

.field public static noserviceCount:I

.field static oldDsCallStatus:I

.field private static setModeFlag:Z

.field private static useSlot2Data:Z


# instance fields
.field protected IsFlightMode:Z

.field protected IsRealBootup:Z

.field protected IsSIMLoadDone:Z

.field protected IsShow:Z

.field private MccNumChanged:Z

.field private NITZCount:I

.field protected NetworkStateChangedByRescanDialog:Z

.field private PrevMcc:Ljava/lang/String;

.field private RuimLoadedEvent:Z

.field after2min:Z

.field protected bIsSimAbsent:Z

.field protected bshowDataGuard:Z

.field protected bshowSmsGuard:Z

.field protected curNetworkReigst:Ljava/lang/String;

.field private getRejectCauseDisplay:Z

.field protected hasOperatorNotSet:Z

.field protected isBootCompleted:Z

.field protected isFirstRescanDialogCheckAfterBoot:Z

.field protected mAlarmManager:Landroid/app/AlarmManager;

.field private mApnObserver:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$ApnChangeObserver;

.field private mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field protected mCr:Landroid/content/ContentResolver;

.field protected mCurPlmn:Ljava/lang/String;

.field protected mCurShowPlmn:Z

.field protected mCurShowSpn:Z

.field protected mCurSpn:Ljava/lang/String;

.field private mCurrentOtaspMode:I

.field private mDataNationalRoamingObserver:Landroid/database/ContentObserver;

.field protected mDataRoaming:Z

.field protected mDtmSupport:I

.field protected mEmergencyOnly:Z

.field protected mGotCountryCode:Z

.field protected mGsmRoaming:Z

.field protected mHandset_Auth:Ljava/lang/String;

.field protected mHandset_Reg:Ljava/lang/String;

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsNitzReceived:Z

.field mLuRejCause:I

.field protected mMaxDataCalls:I

.field private mMdn:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field protected mNeedFixZoneAfterNitz:Z

.field mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field mNewLuRejCause:I

.field protected mNewMaxDataCalls:I

.field protected mNewReasonDataDenied:I

.field mNewRilRegState:I

.field protected mNitzUpdatedTime:Z

.field private mNotification:Landroid/app/Notification;

.field protected mPendingIntent:Landroid/app/PendingIntent;

.field private mPendingRadioPowerOffAfterHangup:I

.field protected mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mPreferredNetworkType:I

.field private mPrevApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected mReasonDataDenied:I

.field private mReceivedHomeNetowkNoti:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRegistrationState:I

.field protected mReportedGprsNoReg:Z

.field private mRetrySyncPrefMode:Z

.field mRilRegState:I

.field private mRoamingMode:I

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field protected mStartedGprsRegCheck:Z

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWfcHandler:Landroid/os/Handler;

.field private mWfcObserver:Landroid/database/ContentObserver;

.field protected mWfcRegistered:Z

.field protected mZoneDst:Z

.field protected mZoneOffset:I

.field protected mZoneTime:J

.field protected m_bActionLocaleChanged:Z

.field protected maxTimerMS:J

.field onDenidedDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field protected onOffLock:Z

.field onRescanDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field protected propertyCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    const-string v1, "content://telephony/carriers/preferapn_no_update"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    .line 182
    const-string v1, "true"

    const-string v2, "ro.product_ship"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SHIP_BUILD:Z

    .line 212
    :try_start_0
    const-string v1, "sbmcgm-jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 213
    const-string v1, "GsmSST"

    const-string v2, "sbmcgm library loaded"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    sput-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataSuspended:Z

    .line 318
    sput-boolean v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mScreenState:Z

    .line 319
    sput-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTetherState:Z

    .line 341
    sput-object v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    .line 342
    sput-object v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    .line 357
    sput-boolean v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setModeFlag:Z

    .line 358
    sput-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCmccSIM:Z

    .line 359
    sput-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->useSlot2Data:Z

    .line 383
    sput v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldDsCallStatus:I

    .line 384
    sput v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDsCallCnt:I

    .line 385
    sput v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1Type:I

    .line 386
    sput v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2Type:I

    .line 393
    sput-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isSetNoserviceTimer:Z

    .line 394
    sput v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->noserviceCount:I

    .line 420
    sput-boolean v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFirstSimChange:Z

    return-void

    .line 214
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 215
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "GsmSST"

    const-string v2, "sbmcgm library not found!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 763
    iget-object v5, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v6, Landroid/telephony/CellInfoGsm;

    invoke-direct {v6}, Landroid/telephony/CellInfoGsm;-><init>()V

    invoke-direct {p0, p1, v5, v6}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V

    .line 189
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 190
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 191
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 192
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 194
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDtmSupport:I

    .line 199
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRegistrationState:I

    .line 200
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowDataGuard:Z

    .line 201
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowSmsGuard:Z

    .line 208
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 224
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 230
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 235
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 242
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 246
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 250
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 257
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 260
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 269
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentOtaspMode:I

    .line 272
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->RuimLoadedEvent:Z

    .line 282
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 283
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 284
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    .line 285
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    .line 289
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    .line 312
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 313
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    .line 325
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->after2min:Z

    .line 328
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;

    invoke-direct {v5, p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 331
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    .line 332
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewLuRejCause:I

    .line 336
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsSIMLoadDone:Z

    .line 337
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsRealBootup:Z

    .line 343
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsShow:Z

    .line 344
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isBootCompleted:Z

    .line 345
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NetworkStateChangedByRescanDialog:Z

    .line 346
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFirstRescanDialogCheckAfterBoot:Z

    .line 348
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsFlightMode:Z

    .line 353
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curNetworkReigst:Ljava/lang/String;

    .line 354
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m_bActionLocaleChanged:Z

    .line 355
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bIsSimAbsent:Z

    .line 363
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NITZCount:I

    .line 395
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->maxTimerMS:J

    .line 397
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onOffLock:Z

    .line 400
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hasOperatorNotSet:Z

    .line 402
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getRejectCauseDisplay:Z

    .line 404
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    .line 411
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcRegistered:Z

    .line 416
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRetrySyncPrefMode:Z

    .line 417
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReceivedHomeNetowkNoti:Z

    .line 423
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsNitzReceived:Z

    .line 425
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 604
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcObserver:Landroid/database/ContentObserver;

    .line 648
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcHandler:Landroid/os/Handler;

    .line 663
    const-string v5, "0"

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Reg:Ljava/lang/String;

    .line 664
    const-string v5, "0"

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Auth:Ljava/lang/String;

    .line 722
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 732
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 747
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingMode:I

    .line 749
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$7;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$7;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataNationalRoamingObserver:Landroid/database/ContentObserver;

    .line 5209
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onDenidedDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 5252
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$9;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$9;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRescanDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 765
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 766
    new-instance v5, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v5}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 767
    new-instance v5, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v5}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 769
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 771
    .local v2, "powerManager":Landroid/os/PowerManager;
    const-string v5, "ServiceStateTracker"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 773
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xd

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 774
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 776
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x2

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 777
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xb

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 778
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x17

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 780
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v5

    const/16 v6, 0x66

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 783
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 787
    .local v0, "airplaneMode":I
    if-gtz v0, :cond_0

    move v3, v4

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 794
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 795
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v5, "auto_time"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 798
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v5, "auto_time_zone"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 803
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_RIL_ControlFakeRoamingNRP2G"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_RIL_FakeRoamingOption4"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_RIL_FakeRoamingOption4"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 806
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v5, "data_national_roaming_mode"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataNationalRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 812
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 815
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateRuimLoadedEvent()V

    .line 818
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 819
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 820
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 835
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 841
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_EnableVoicePriority"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 842
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 843
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 844
    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 845
    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 847
    :cond_3
    const-string v3, "CHN"

    const-string v4, "CHN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 848
    const-string v3, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 859
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyOtaspChanged(I)V

    .line 863
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 879
    return-void
.end method

.method private SyncPreferredNetworkType(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 5841
    const-string v2, "LGT"

    const-string v3, "CMCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5842
    const-string v2, "LTE_ROAMING : SyncPreferredNetworkType set default PREFERRED_NETWORK_MODE "

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5843
    if-nez p1, :cond_0

    .line 5844
    const-string v1, "LTE_ROAMING : SyncPreferredNetworkType nothing"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5867
    :goto_0
    return-void

    .line 5846
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 5849
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lte_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 5850
    .local v0, "isLteOn":Z
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTE_ROAMING : GetPreferredNetworkMode type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lte_mode_on is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_3

    const-string v1, " enabled "

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5851
    if-eqz v0, :cond_5

    .line 5852
    if-ne p1, v6, :cond_4

    .line 5853
    const-string v1, "LTE_ROAMING : SyncPreferredNetworkType LTE : nothing"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "isLteOn":Z
    :cond_2
    move v0, v1

    .line 5849
    goto :goto_1

    .line 5850
    .restart local v0    # "isLteOn":Z
    :cond_3
    const-string v1, " disabled "

    goto :goto_2

    .line 5855
    :cond_4
    const-string v1, "LTE_ROAMING : SyncPreferredNetworkType LTE : set to G/W/L"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5856
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 5859
    :cond_5
    if-ne p1, v5, :cond_6

    .line 5860
    const-string v1, "LTE_ROAMING : SyncPreferredNetworkType 3G : nothing"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5862
    :cond_6
    const-string v1, "LTE_ROAMING : SyncPreferredNetworkType 3G: set to G/W"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5863
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 159
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setModeFlag:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 159
    sput-boolean p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setModeFlag:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 159
    sput-boolean p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mScreenState:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 159
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCmccSIM:Z

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 159
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->useSlot2Data:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 159
    sput-boolean p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataSuspended:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 159
    sput-boolean p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTetherState:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateRegistrationStatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTime()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTimeZone()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateFakeRoamingNRP2G()V

    return-void
.end method

.method private checkIgnoreNITZ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "plmnValue"    # Ljava/lang/String;
    .param p2, "numericValue"    # Ljava/lang/String;

    .prologue
    .line 5580
    move-object v0, p1

    .line 5583
    .local v0, "mPlmn":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v2

    .line 5585
    .local v2, "ntwType":I
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-nez v3, :cond_1

    .line 5586
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v1

    .line 5587
    .local v1, "ntClass":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkIgnoreNITZ] ntClass: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5589
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 5590
    const-string v3, "72402"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "72403"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "72404"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5591
    :cond_0
    const-string v0, "TIM"

    .line 5599
    .end local v1    # "ntClass":I
    :cond_1
    :goto_0
    return-object v0

    .line 5592
    .restart local v1    # "ntClass":I
    :cond_2
    const-string v3, "72410"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "72411"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "72406"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "72423"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5593
    :cond_3
    const-string v0, "VIVO"

    goto :goto_0

    .line 5596
    :cond_4
    const-string v3, "[checkIgnoreNITZ] - no change"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkMasterSlot()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 6182
    const-string v7, "gsm.sim.operator.numeric"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6183
    .local v2, "slot1Sim":Ljava/lang/String;
    const-string v7, "gsm.sim.operator.numeric2"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6184
    .local v3, "slot2Sim":Ljava/lang/String;
    const-string v7, "persist.sys.dataprefer.simid"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6185
    .local v0, "dataPrefer":Ljava/lang/String;
    const-string v7, "gsm.sim.state2"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6186
    .local v4, "slot2StateCheck":Ljava/lang/String;
    const-string v7, "ril.MSIMM"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6189
    .local v1, "msimm":Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "ABSENT"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-boolean v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setModeFlag:Z

    if-eqz v7, :cond_1

    .line 6190
    sput-boolean v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setModeFlag:Z

    .line 6194
    :goto_0
    const-string v7, "0"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "ABSENT"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 6195
    if-eqz v2, :cond_2

    const-string v7, "46000"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "46002"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "46008"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "46008"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6196
    :cond_0
    const-string v7, "[MultiSim] CMCC model, Slot1 use CMCC SIM"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 6197
    sput-boolean v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCmccSIM:Z

    .line 6198
    const-string v6, "persist.radio.dsds.msimm"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6214
    :goto_1
    return v5

    .line 6192
    :cond_1
    sput-boolean v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setModeFlag:Z

    goto :goto_0

    .line 6200
    :cond_2
    if-eqz v3, :cond_4

    const-string v7, "46000"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "46002"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "46008"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "46008"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 6201
    :cond_3
    const-string v5, "[MultiSim] CMCC model, Slot2 use CMCC SIM"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 6202
    sput-boolean v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCmccSIM:Z

    .line 6203
    const-string v5, "persist.radio.dsds.msimm"

    const-string v7, "false"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 6204
    goto :goto_1

    .line 6207
    :cond_4
    const-string v7, "persist.radio.dsds.iscmcc"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6208
    const-string v7, "0"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "1"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "ABSENT"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 6209
    const-string v5, "[MultiSim] Insert 2 Sim using slot2 data"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 6210
    sput-boolean v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->useSlot2Data:Z

    move v5, v6

    .line 6211
    goto :goto_1

    .line 6213
    :cond_5
    const-string v6, "[MultiSim] Using default master slot"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private dismissDeniedDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5236
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 5238
    :try_start_0
    const-string v0, "dismiss deniedDialog"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5239
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsShow:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5244
    :goto_0
    sput-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    .line 5247
    :cond_0
    return-void

    .line 5244
    :catchall_0
    move-exception v0

    sput-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    throw v0

    .line 5241
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static displayNameFor(I)Ljava/lang/String;
    .locals 6
    .param p0, "off"    # I

    .prologue
    const/4 v5, 0x3

    .line 4139
    div-int/lit16 v3, p0, 0x3e8

    div-int/lit8 p0, v3, 0x3c

    .line 4141
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 4142
    .local v0, "buf":[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 4143
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 4144
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 4146
    if-gez p0, :cond_0

    .line 4147
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 4148
    neg-int p0, p0

    .line 4153
    :goto_0
    div-int/lit8 v1, p0, 0x3c

    .line 4154
    .local v1, "hours":I
    rem-int/lit8 v2, p0, 0x3c

    .line 4156
    .local v2, "minutes":I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 4157
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 4159
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 4161
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 4162
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 4164
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 4150
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 10
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 3726
    move v5, p1

    .line 3727
    .local v5, "rawOffset":I
    if-eqz p2, :cond_0

    .line 3728
    const v9, 0x36ee80

    sub-int/2addr v5, v9

    .line 3730
    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .line 3731
    .local v8, "zones":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 3732
    .local v2, "guess":Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 3733
    .local v1, "d":Ljava/util/Date;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 3734
    .local v7, "zone":Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 3735
    .local v6, "tz":Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    .line 3737
    move-object v2, v6

    .line 3742
    .end local v6    # "tz":Ljava/util/TimeZone;
    .end local v7    # "zone":Ljava/lang/String;
    :cond_1
    return-object v2

    .line 3733
    .restart local v6    # "tz":Ljava/util/TimeZone;
    .restart local v7    # "zone":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getOtasp()I
    .locals 3

    .prologue
    .line 5014
    const/4 v0, 0x3

    .line 5016
    .local v0, "provisioningState":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOtasp: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5017
    return v0
.end method

.method private notiHomePlmn()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 6036
    const-string v2, "persist.radio.rplmn"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6037
    .local v0, "checkRplmn":Ljava/lang/String;
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6038
    .local v1, "simState":Ljava/lang/String;
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReceivedHomeNetowkNoti:Z

    .line 6039
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LTE_ROAMING : notiHomePlmn, persist.radio.rplmn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), gsm.sim.state("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 6041
    const-string v2, "oversea"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6042
    const-string v2, "persist.radio.rplmn"

    const-string v3, "domestic"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6043
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6044
    const-string v2, "LTE_ROAMING : Roaming -> Home : Airplane or no service scenario from modem noti"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 6045
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyApnChangeToRIL()V

    .line 6046
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 6052
    :cond_0
    :goto_0
    return-void

    .line 6048
    :cond_1
    const-string v2, "LTE_ROAMING : Roaming -> Home : Reboot scenario, from modem noti"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 6049
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRetrySyncPrefMode:Z

    goto :goto_0
.end method

.method private notifyApnChangeToRIL()V
    .locals 7

    .prologue
    .line 5959
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5960
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5963
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v4, 0x9

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5964
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5965
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 5967
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 5968
    const-string v4, "LTE_ROAMING : notifyApnChangeToRIL"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5974
    :goto_0
    if-eqz v1, :cond_0

    .line 5975
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 5976
    :cond_0
    if-eqz v0, :cond_1

    .line 5977
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5983
    :cond_1
    :goto_1
    return-void

    .line 5969
    :catch_0
    move-exception v2

    .line 5970
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception occured during refresh Attach APN"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 5979
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 5980
    .local v3, "ex":Ljava/io/IOException;
    const-string v4, "close fail!!!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logw(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onO2HomeZoneInfo(Landroid/os/AsyncResult;)V
    .locals 16
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 5026
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5027
    .local v1, "context":Landroid/content/Context;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [I

    move-object v2, v13

    check-cast v2, [I

    .line 5028
    .local v2, "homeZoneInfo":[I
    const/4 v13, 0x0

    aget v10, v2, v13

    .line 5029
    .local v10, "zone_inid":I
    const/4 v13, 0x1

    aget v12, v2, v13

    .line 5030
    .local v12, "zone_type":I
    const/4 v13, 0x2

    aget v11, v2, v13

    .line 5031
    .local v11, "zone_tag_present":I
    const/16 v13, 0xd

    new-array v8, v13, [B

    .line 5032
    .local v8, "tempAlphaID":[B
    const-string v5, ""

    .line 5035
    .local v5, "message":Ljava/lang/CharSequence;
    const/16 v6, 0x309

    .line 5036
    .local v6, "notificationId":I
    new-instance v13, Landroid/app/Notification;

    invoke-direct {v13}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 5037
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v13, Landroid/app/Notification;->when:J

    .line 5040
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 5041
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v14, 0x0

    const/high16 v15, 0x10000000

    invoke-static {v1, v14, v4, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    iput-object v14, v13, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 5043
    const-string v13, "notification"

    invoke-virtual {v1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 5046
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    const-string v9, ""

    .line 5047
    .local v9, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v9, v13, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 5049
    packed-switch v10, :pswitch_data_0

    .line 5079
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 5053
    :pswitch_1
    if-eqz v12, :cond_0

    .line 5056
    const/4 v13, 0x1

    if-ne v11, v13, :cond_2

    .line 5057
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v13, 0xd

    if-ge v3, v13, :cond_1

    .line 5058
    add-int/lit8 v13, v3, 0x3

    aget v13, v2, v13

    int-to-byte v13, v13

    aput-byte v13, v8, v3

    .line 5057
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5060
    :cond_1
    const/4 v13, 0x0

    const/16 v14, 0xd

    invoke-static {v8, v13, v14}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v5

    .line 5062
    .end local v3    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v14, v14, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v13, v1, v9, v5, v14}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 5076
    :pswitch_2
    invoke-virtual {v7, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 5049
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v9, 0x3ed

    const/16 v8, 0x3ec

    const/16 v7, 0x3eb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3771
    new-instance v1, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v1}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    .line 3773
    .local v1, "newRs":Lcom/android/internal/telephony/RestrictedState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRestrictedStateChanged: E rs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3775
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_5

    .line 3776
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    .line 3777
    .local v0, "ints":[I
    aget v2, v0, v4

    .line 3779
    .local v2, "state":I
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_6

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 3783
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v3, v6, :cond_2

    .line 3784
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_7

    :cond_1
    move v3, v5

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 3787
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_8

    :goto_2
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    .line 3791
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestrictedStateChanged: new rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3798
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3799
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3800
    const/16 v3, 0x3e9

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 3820
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3821
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_a

    .line 3823
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 3868
    :cond_4
    :goto_4
    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 3870
    .end local v0    # "ints":[I
    .end local v2    # "state":I
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestrictedStateChanged: X rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3871
    return-void

    .restart local v0    # "ints":[I
    .restart local v2    # "state":I
    :cond_6
    move v3, v4

    .line 3779
    goto :goto_0

    :cond_7
    move v3, v4

    .line 3784
    goto :goto_1

    :cond_8
    move v5, v4

    .line 3787
    goto :goto_2

    .line 3801
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3802
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3803
    const/16 v3, 0x3ea

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_3

    .line 3824
    :cond_a
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-nez v3, :cond_b

    .line 3826
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 3827
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3829
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 3831
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-nez v3, :cond_f

    .line 3833
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_d

    .line 3835
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 3836
    :cond_d
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3838
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 3839
    :cond_e
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3841
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 3843
    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3845
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_10

    .line 3847
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 3848
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3850
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 3851
    :cond_11
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3853
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 3856
    :cond_12
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 3858
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 3859
    :cond_13
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3861
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 3862
    :cond_14
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3864
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4
.end method

.method private onRtsIndication(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x1

    .line 5322
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 5324
    .local v1, "rtsValue":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRtsIndication"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5326
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.server.status.regist_reject"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5327
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5328
    const-string v2, "CAUSE"

    aget-object v3, v1, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5329
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 5330
    return-void
.end method

.method private onSprintRoamingIndicator(Z)V
    .locals 9
    .param p1, "roaming"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 5640
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v8, "sprint_gsm_data_guard"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_2

    move v2, v5

    .line 5641
    .local v2, "gsmDataGuardEnabled":Z
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v8, "sprint_gsm_sms_guard"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_3

    move v3, v5

    .line 5642
    .local v3, "gsmSmsGuardEnabled":Z
    :goto_1
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowDataGuard:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_0

    .line 5643
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowDataGuard:Z

    .line 5645
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v8, "data_roaming"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5646
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5647
    .local v1, "dialogIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5648
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 5651
    .end local v1    # "dialogIntent":Landroid/content/Intent;
    :cond_0
    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowSmsGuard:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_1

    .line 5653
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_ROAMING_STATUS_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5654
    .local v4, "intent":Landroid/content/Intent;
    const-string v0, "roaming"

    .line 5655
    .local v0, "currentRoam":Ljava/lang/String;
    const-string v6, "status"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5656
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_ROAMING_STATUS_CHANGED : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logi(Ljava/lang/String;)V

    .line 5657
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5658
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 5659
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowSmsGuard:Z

    .line 5661
    .end local v0    # "currentRoam":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .end local v2    # "gsmDataGuardEnabled":Z
    .end local v3    # "gsmSmsGuardEnabled":Z
    :cond_2
    move v2, v6

    .line 5640
    goto/16 :goto_0

    .restart local v2    # "gsmDataGuardEnabled":Z
    :cond_3
    move v3, v6

    .line 5641
    goto :goto_1
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 3

    .prologue
    .line 3746
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    if-eqz v1, :cond_0

    .line 3761
    :goto_0
    return-void

    .line 3754
    :cond_0
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3755
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3760
    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private registerForWfcRegistrationStatus()V
    .locals 4

    .prologue
    .line 588
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 589
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "content://com.samsung.tmowfc.wfcprovider/registration_state_state_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 591
    return-void
.end method

.method private revertToNitzTime()V
    .locals 6

    .prologue
    const-wide/16 v3, 0x0

    .line 4594
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 4606
    :cond_0
    :goto_0
    return-void

    .line 4599
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ Time: mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4602
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 4603
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    goto :goto_0
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    .prologue
    .line 4609
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 4644
    :cond_0
    :goto_0
    return-void

    .line 4613
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ TimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4638
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4642
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static native sbmcgm_genId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native sbmcgm_genPasswd(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private sendCallHangupDelayed(JI)V
    .locals 3
    .param p1, "delayMillis"    # J
    .param p3, "pendingRadioOff"    # I

    .prologue
    .line 5791
    const-string v1, "sendCallHangupDelayed"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5792
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 5793
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5794
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 5795
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait upto %d s for hanging up voice call."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5801
    :goto_0
    return-void

    .line 5799
    :cond_0
    const-string v1, "sendCallHangupDelayed() Cannot send delayed Msg"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendMessageForCheckNetworkMode()V
    .locals 5

    .prologue
    .line 5744
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkDualmodeTest()Ljava/lang/String;

    move-result-object v0

    .line 5745
    .local v0, "dualmodeTest":Ljava/lang/String;
    const-string v1, ""

    .line 5746
    .local v1, "simState":Ljava/lang/String;
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5747
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5748
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x76

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 5750
    :cond_0
    return-void
.end method

.method private sendMessageForDualmodeSilentReset()V
    .locals 3

    .prologue
    .line 5726
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkDualmodeTest()Ljava/lang/String;

    move-result-object v0

    .line 5727
    .local v0, "dualmodeTest":Ljava/lang/String;
    const-string v1, ""

    .line 5728
    .local v1, "simState":Ljava/lang/String;
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5730
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5731
    const/16 v2, 0x73

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5732
    :cond_0
    return-void
.end method

.method private setForNamAccount()V
    .locals 15

    .prologue
    const/16 v14, 0xe

    const/4 v2, 0x5

    const/16 v13, 0xb

    const/16 v12, 0xf

    const/4 v1, 0x0

    .line 5871
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v9

    .line 5872
    .local v9, "imsi":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mIccId:Ljava/lang/String;

    .line 5873
    .local v7, "iccid":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v10

    .line 5874
    .local v10, "msisdn":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 5875
    .local v8, "imei":Ljava/lang/String;
    const-string v4, ""

    .line 5876
    .local v4, "aid":Ljava/lang/String;
    const-string v6, ""

    .line 5877
    .local v6, "apass":Ljava/lang/String;
    const-string v11, "99999,00101,45001"

    .line 5879
    .local v11, "testNum":Ljava/lang/String;
    const-string v0, "GsmSST"

    const-string v3, "[SBMNAM] setForNamAccount()"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5880
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v0, :cond_0

    .line 5881
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    .line 5882
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    .line 5885
    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v13, :cond_1

    .line 5886
    const-string v0, "GsmSST"

    const-string v3, "[SBMNAM] setForNamAccount() msisdn length is less than 11."

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5887
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v12, :cond_3

    .line 5888
    const/4 v0, 0x4

    invoke-virtual {v9, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 5891
    :goto_0
    const-string v0, "GsmSST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SBMNAM] setForNamAccount() msisdn is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5894
    :cond_1
    if-eqz v9, :cond_2

    if-eqz v7, :cond_2

    if-eqz v10, :cond_2

    if-eqz v8, :cond_2

    const-string v0, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5917
    :cond_2
    :goto_1
    return-void

    .line 5890
    :cond_3
    const-string v10, "01234567890"

    goto :goto_0

    .line 5898
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 5899
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v13, :cond_5

    .line 5900
    invoke-virtual {v10, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 5901
    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v14, :cond_6

    .line 5902
    invoke-virtual {v8, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 5903
    :cond_6
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v12, :cond_7

    .line 5904
    invoke-virtual {v9, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 5905
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x13

    if-le v0, v3, :cond_8

    .line 5906
    const/16 v0, 0x13

    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 5907
    :cond_8
    const-string v0, "GsmSST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SBMNAM] setForNamAccount() msisdn : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " / imei : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " / imsi : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " / iccid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5909
    invoke-static {v10, v8, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sbmcgm_genId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5910
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 5911
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sbmcgm_genPasswd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5916
    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v3, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyApnChangeToRIL(ZISLjava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_1
.end method

.method private setMobileNetworkStatus()V
    .locals 8

    .prologue
    .line 5666
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5667
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5668
    .local v1, "dos":Ljava/io/DataOutputStream;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v6, "mobile_network_status"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    int-to-byte v4, v5

    .line 5670
    .local v4, "status":B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMobileNetworkStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logi(Ljava/lang/String;)V

    .line 5672
    const/16 v5, 0x16

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5673
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5674
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 5675
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5676
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5681
    :goto_0
    if-eqz v1, :cond_0

    .line 5682
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 5683
    :cond_0
    if-eqz v0, :cond_1

    .line 5684
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5689
    :cond_1
    :goto_1
    return-void

    .line 5677
    :catch_0
    move-exception v2

    .line 5678
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception occured during refresh Attach APN"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 5686
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 5687
    .local v3, "ex":Ljava/io/IOException;
    const-string v5, "close fail!!!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logw(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setNotification(I)V
    .locals 27
    .param p1, "notifyType"    # I

    .prologue
    .line 4683
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "setNotification: create notification "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 4686
    .local v4, "context":Landroid/content/Context;
    new-instance v24, Landroid/app/Notification;

    invoke-direct/range {v24 .. v24}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 4687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v24, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 4688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v24, v0

    const/16 v25, 0x10

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 4689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v24, v0

    const v25, 0x108008a

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 4690
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 4691
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/high16 v26, 0x10000000

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v4, v0, v11, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 4694
    const-string v5, ""

    .line 4695
    .local v5, "details":Ljava/lang/CharSequence;
    const v24, 0x1040164

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    .line 4696
    .local v23, "title":Ljava/lang/CharSequence;
    const/16 v17, 0x3e7

    .line 4698
    .local v17, "notificationId":I
    packed-switch p1, :pswitch_data_0

    .line 4874
    :cond_0
    :goto_0
    :pswitch_0
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "setNotification: put notification "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " / "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 4882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v4, v1, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 4885
    const-string v24, "notification"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/NotificationManager;

    .line 4888
    .local v18, "notificationManager":Landroid/app/NotificationManager;
    const/16 v24, 0x3ea

    move/from16 v0, p1

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    const/16 v24, 0x3ec

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 4890
    :cond_1
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4895
    .end local v18    # "notificationManager":Landroid/app/NotificationManager;
    :cond_2
    :goto_1
    return-void

    .line 4700
    :pswitch_1
    const/16 v17, 0x378

    .line 4701
    const v24, 0x1040165

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 4702
    goto :goto_0

    .line 4704
    :pswitch_2
    const/16 v17, 0x378

    .line 4705
    goto/16 :goto_0

    .line 4707
    :pswitch_3
    const v24, 0x1040168

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 4708
    goto/16 :goto_0

    .line 4710
    :pswitch_4
    const v24, 0x1040167

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 4711
    goto/16 :goto_0

    .line 4713
    :pswitch_5
    const v24, 0x1040166

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 4714
    goto/16 :goto_0

    .line 4719
    :pswitch_6
    const-string v24, "Maple"

    const-string v25, "Combination"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 4720
    const-string v23, "CP ASSERT!"

    .line 4721
    const-string v24, "NVM_ROOT_DIR"

    invoke-static/range {v24 .. v24}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4722
    .local v19, "nvm_dir":Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 4725
    new-instance v16, Ljava/io/File;

    const-string v24, "EEHandlerConfig_Linux.nvm"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4726
    .local v16, "mNVMFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 4734
    :try_start_0
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/InputStreamReader;

    new-instance v25, Ljava/io/FileInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v26, "ISO-8859-1"

    invoke-direct/range {v24 .. v26}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v25, 0x400

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v15, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    .line 4757
    .local v15, "mBuf":Ljava/io/BufferedReader;
    const/16 v24, 0x108

    move/from16 v0, v24

    new-array v9, v0, [C

    .line 4758
    .local v9, "header":[C
    const/4 v3, 0x0

    .line 4763
    .local v3, "NVMstruct":[C
    const/16 v24, 0x0

    const/16 v25, 0x108

    :try_start_1
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v9, v0, v1}, Ljava/io/BufferedReader;->read([CII)I

    move-result v20

    .line 4765
    .local v20, "readlen":I
    const/16 v24, 0x108

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 4766
    const-string v24, "NVM header read error!"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4767
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 4821
    .end local v20    # "readlen":I
    :catch_0
    move-exception v7

    .line 4822
    .local v7, "ex":Ljava/io/IOException;
    const-string v24, "NVM File read error!"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4824
    :try_start_2
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 4825
    :catch_1
    move-exception v24

    goto/16 :goto_1

    .line 4736
    .end local v3    # "NVMstruct":[C
    .end local v7    # "ex":Ljava/io/IOException;
    .end local v9    # "header":[C
    .end local v15    # "mBuf":Ljava/io/BufferedReader;
    :catch_2
    move-exception v7

    .line 4738
    .local v7, "ex":Ljava/io/FileNotFoundException;
    goto/16 :goto_1

    .line 4739
    .end local v7    # "ex":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v7

    .line 4741
    .local v7, "ex":Ljava/io/UnsupportedEncodingException;
    goto/16 :goto_1

    .line 4773
    .end local v7    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "NVMstruct":[C
    .restart local v9    # "header":[C
    .restart local v15    # "mBuf":Ljava/io/BufferedReader;
    .restart local v20    # "readlen":I
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getIntFromBytes([C)I

    move-result v22

    .line 4774
    .local v22, "structSize":I
    const/16 v21, 0x1

    .line 4776
    .local v21, "structNum":I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "structSize is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4778
    if-lez v22, :cond_6

    if-lez v21, :cond_6

    .line 4779
    mul-int v24, v22, v21

    move/from16 v0, v24

    new-array v3, v0, [C

    .line 4781
    const/16 v24, 0x0

    mul-int v25, v22, v21

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v3, v0, v1}, Ljava/io/BufferedReader;->read([CII)I

    move-result v20

    .line 4782
    mul-int v24, v22, v21

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 4783
    const-string v24, "NVM Struct read error!"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4784
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_1

    .line 4799
    :cond_4
    const/16 v24, 0x6

    aget-char v8, v3, v24

    .line 4808
    .local v8, "finalAction":C
    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v8, v0, :cond_5

    .line 4810
    const-string v24, "Final action is not STALL!"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4811
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_1

    .line 4814
    :cond_5
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4830
    new-instance v14, Ljava/io/File;

    const-string v24, "CpErrorStatistic.log"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4831
    .local v14, "mAssertFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_7

    .line 4832
    const-string v5, "No details, Please dump ACAT log."

    goto/16 :goto_0

    .line 4817
    .end local v8    # "finalAction":C
    .end local v14    # "mAssertFile":Ljava/io/File;
    :cond_6
    :try_start_4
    const-string v24, "NVM Struct empty!"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4818
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 4835
    .restart local v8    # "finalAction":C
    .restart local v14    # "mAssertFile":Ljava/io/File;
    :cond_7
    :try_start_5
    new-instance v15, Ljava/io/BufferedReader;

    .end local v15    # "mBuf":Ljava/io/BufferedReader;
    new-instance v24, Ljava/io/InputStreamReader;

    new-instance v25, Ljava/io/FileInputStream;

    move-object/from16 v0, v25

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v24 .. v25}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v25, 0x400

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v15, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 4848
    .restart local v15    # "mBuf":Ljava/io/BufferedReader;
    :try_start_6
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    move-result-object v13

    .line 4854
    .local v13, "line":Ljava/lang/String;
    if-eqz v13, :cond_8

    :try_start_7
    const-string v24, "non silent CP Assert, Cause:"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .local v10, "index":I
    if-ltz v10, :cond_8

    .line 4855
    add-int/lit8 v24, v10, 0x1c

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4865
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 4867
    .end local v10    # "index":I
    .end local v13    # "line":Ljava/lang/String;
    :catch_4
    move-exception v24

    goto/16 :goto_0

    .line 4836
    .end local v15    # "mBuf":Ljava/io/BufferedReader;
    :catch_5
    move-exception v6

    .line 4837
    .local v6, "ee":Ljava/io/FileNotFoundException;
    const-string v5, "No details, Please dump ACAT log."

    .line 4838
    goto/16 :goto_0

    .line 4839
    .end local v6    # "ee":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v12

    .line 4840
    .local v12, "ioe":Ljava/io/IOException;
    const-string v5, "No details, Please dump ACAT log."

    .line 4841
    goto/16 :goto_0

    .line 4849
    .end local v12    # "ioe":Ljava/io/IOException;
    .restart local v15    # "mBuf":Ljava/io/BufferedReader;
    :catch_7
    move-exception v12

    .line 4850
    .restart local v12    # "ioe":Ljava/io/IOException;
    :try_start_8
    const-string v5, "No details, Please dump ACAT log."

    .line 4851
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_0

    .line 4857
    .end local v12    # "ioe":Ljava/io/IOException;
    .restart local v13    # "line":Ljava/lang/String;
    :cond_8
    const-string v5, "Silent reset."

    .line 4859
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_1

    .line 4893
    .end local v3    # "NVMstruct":[C
    .end local v8    # "finalAction":C
    .end local v9    # "header":[C
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "mAssertFile":Ljava/io/File;
    .end local v15    # "mBuf":Ljava/io/BufferedReader;
    .end local v16    # "mNVMFile":Ljava/io/File;
    .end local v19    # "nvm_dir":Ljava/lang/String;
    .end local v20    # "readlen":I
    .end local v21    # "structNum":I
    .end local v22    # "structSize":I
    .restart local v18    # "notificationManager":Landroid/app/NotificationManager;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 4698
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private showDeniedDialog(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 5219
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsShow:Z

    if-nez v1, :cond_0

    .line 5220
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5222
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5223
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5224
    const v1, 0x104000a

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onDenidedDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5225
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5227
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    .line 5229
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d7

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 5230
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 5231
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsShow:Z

    .line 5233
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private unregisterForWfcRegistrationStatus()V
    .locals 2

    .prologue
    .line 597
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 598
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 599
    return-void
.end method

.method private updateFakeRoamingNRP2G()V
    .locals 3

    .prologue
    .line 4664
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_national_roaming_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingMode:I

    .line 4666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFakeRoamingNRP2G, roamingMode ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4667
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 4668
    return-void
.end method

.method private updateOtaspState()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 4963
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getOtasp()I

    move-result v2

    .line 4964
    .local v2, "otaspMode":I
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentOtaspMode:I

    .line 4965
    .local v1, "oldOtaspMode":I
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentOtaspMode:I

    .line 4967
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentOtaspMode:I

    if-eq v1, v4, :cond_1

    .line 4969
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " call notifyOtaspChanged old otaspMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new otaspMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4973
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentOtaspMode:I

    if-ne v4, v6, :cond_0

    .line 4974
    const-string v4, "ril.otasp_state"

    const-string v5, "3"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4977
    :cond_0
    const-string v4, "VZW"

    const-string v5, "CMCC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4978
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 4979
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "setup_wizard_skip"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4981
    .local v0, "SetupWizardSkip":Z
    if-nez v0, :cond_2

    .line 4982
    const-string v4, "SetupWizardSkip : false , send Current OtaspMode to setup Wizard"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4983
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyOtaspChanged(I)V

    .line 4992
    .end local v0    # "SetupWizardSkip":Z
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 4985
    .restart local v0    # "SetupWizardSkip":Z
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->notifyOtaspChanged(I)V

    .line 4986
    const-string v4, "SetupWizardSkip : true , send OTASP_NOT_NEEDED to setup Wizard for skipping."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4989
    .end local v0    # "SetupWizardSkip":Z
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyOtaspChanged(I)V

    goto :goto_0
.end method

.method private updateRegistrationStatus()V
    .locals 3

    .prologue
    .line 615
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    const-string v2, "GsmServiceStateTracker.updateRegistrationStatus"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 646
    return-void
.end method

.method private updateRuimLoadedEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4937
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_1

    .line 4938
    const-string v2, "mUiccController is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4960
    :cond_0
    :goto_0
    return-void

    .line 4941
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->RuimLoadedEvent:Z

    if-ne v2, v4, :cond_2

    .line 4942
    const-string v2, "RuimLoadedEvent is already set"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4945
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 4947
    .local v1, "ruimUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v1, :cond_3

    .line 4948
    const-string v2, "ruimUiccApplication is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4951
    :cond_3
    if-eqz v1, :cond_0

    .line 4952
    const-string v2, "[Global mode] Ruim card found"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4953
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 4954
    .local v0, "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 4955
    const-string v2, "register EVENT_RUIM_RECORDS_LOADED"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4956
    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4957
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->RuimLoadedEvent:Z

    goto :goto_0
.end method

.method private updateSignalStrength()V
    .locals 2

    .prologue
    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSignalStrength mWfcRegistered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 572
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcRegistered:Z

    if-nez v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 574
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 577
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcRegistered:Z

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifySignalStrength()V

    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 582
    return-void
.end method


# virtual methods
.method protected GetTimezoneInfoUsingMcc(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "checkMccChange"    # Z

    .prologue
    const/high16 v8, 0x20000000

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 3602
    if-nez p1, :cond_1

    .line 3604
    const-string v4, "operatorNumeric is null"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logw(Ljava/lang/String;)V

    .line 3698
    :cond_0
    :goto_0
    return-void

    .line 3609
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_2

    .line 3611
    const-string v4, "operatorNumeric is Invalid"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logw(Ljava/lang/String;)V

    .line 3612
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    goto :goto_0

    .line 3623
    :cond_2
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3625
    .local v0, "NewMcc":Ljava/lang/String;
    if-eqz p2, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_3
    const-string v4, "000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "111"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "001"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "999"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 3631
    if-nez p2, :cond_5

    .line 3632
    const-string v4, "GsmSST"

    const-string v5, "Don\'t check Mcc"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    :goto_1
    const/4 v3, 0x0

    .line 3644
    .local v3, "zoneId":Ljava/lang/String;
    const-string v4, "ril.timezoneID"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3646
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZONE ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3647
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_7

    .line 3649
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 3650
    .local v2, "manualTimeZone":Ljava/util/TimeZone;
    if-nez v2, :cond_6

    .line 3653
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3655
    const-string v4, "manualTimeZone is NULL. Manual Update Send Intent Action_MCC_SET_TIME."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3656
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MCC_SET_TIME"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3657
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3658
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3660
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v4, "KOR"

    const-string v5, "CHN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3661
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneInfoShareManager:Lcom/android/internal/telephony/PhoneInfoShareManager;

    sput-boolean v6, Lcom/android/internal/telephony/PhoneInfoShareManager;->IsalreadysendNITZ:Z

    goto/16 :goto_0

    .line 3636
    .end local v2    # "manualTimeZone":Ljava/util/TimeZone;
    .end local v3    # "zoneId":Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mcc is changed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logw(Ljava/lang/String;)V

    .line 3637
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    .line 3638
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    goto/16 :goto_1

    .line 3665
    .restart local v2    # "manualTimeZone":Ljava/util/TimeZone;
    .restart local v3    # "zoneId":Ljava/lang/String;
    :cond_6
    const-string v4, "TIMEZONE Update"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3666
    const-string v4, "persist.sys.timezone"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3667
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 3695
    .end local v2    # "manualTimeZone":Ljava/util/TimeZone;
    .end local v3    # "zoneId":Ljava/lang/String;
    :goto_2
    const-string v4, "KOR"

    const-string v5, "CHN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3696
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneInfoShareManager:Lcom/android/internal/telephony/PhoneInfoShareManager;

    sput-boolean v6, Lcom/android/internal/telephony/PhoneInfoShareManager;->IsalreadysendNITZ:Z

    goto/16 :goto_0

    .line 3671
    .restart local v3    # "zoneId":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneInfoShareManager:Lcom/android/internal/telephony/PhoneInfoShareManager;

    sget-boolean v4, Lcom/android/internal/telephony/PhoneInfoShareManager;->IsalreadysendNITZ:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_9

    .line 3674
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3676
    const-string v4, "Multi Time Zone. Manual Update Send Intent Action_MCC_SET_TIME."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3677
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MCC_SET_TIME"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3678
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3679
    const-string v4, "MCC"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putExtra[mcc] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3681
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3683
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneInfoShareManager:Lcom/android/internal/telephony/PhoneInfoShareManager;

    sput-boolean v6, Lcom/android/internal/telephony/PhoneInfoShareManager;->IsalreadysendNITZ:Z

    goto/16 :goto_0

    .line 3686
    :cond_9
    const-string v4, "Do not send , already send Intent ACTION_NITZ_SET_TIME."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3692
    .end local v3    # "zoneId":Ljava/lang/String;
    :cond_a
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    goto :goto_2
.end method

.method protected appendNetworkType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "plmnValue"    # Ljava/lang/String;

    .prologue
    .line 5604
    move-object v0, p1

    .line 5605
    .local v0, "mPlmn":Ljava/lang/String;
    const-string v3, "gsm.network.type"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5607
    .local v2, "ntwType":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-nez v3, :cond_0

    .line 5608
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNetworkClassType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5610
    .local v1, "ntClass":Ljava/lang/String;
    const-string v3, "Unknown"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5615
    .end local v1    # "ntClass":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 5613
    .restart local v1    # "ntClass":Ljava/lang/String;
    :cond_1
    const-string v3, "[appendNetworkType] - no change"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkApnInfo()V
    .locals 20

    .prologue
    .line 5922
    const-string v1, "GsmSST"

    const-string v2, "Get APN setting information in checkApnInfo"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5926
    const/16 v19, 0x0

    .line 5927
    .local v19, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-string v6, "apn"

    aput-object v6, v3, v4

    const/4 v4, 0x2

    const-string v6, "user"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "password"

    aput-object v6, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "name ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 5930
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 5931
    const-string v1, "GsmSST"

    const-string v2, "cursor is not null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5932
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5933
    const-string v1, "apn"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 5934
    .local v5, "apn":Ljava/lang/String;
    const-string v1, "user"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 5935
    .local v11, "user":Ljava/lang/String;
    const-string v1, "password"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 5937
    .local v12, "password":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v1 .. v18}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 5939
    .end local v5    # "apn":Ljava/lang/String;
    .end local v11    # "user":Ljava/lang/String;
    .end local v12    # "password":Ljava/lang/String;
    :cond_0
    if-eqz v19, :cond_1

    .line 5940
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 5942
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-nez v1, :cond_3

    .line 5943
    const-string v1, "GsmSST"

    const-string v2, "SBM NAM :Send Apn info for the first time"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5944
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 5945
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setForNamAccount()V

    .line 5955
    :cond_2
    :goto_0
    return-void

    .line 5947
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5948
    :cond_4
    const-string v1, "GsmSST"

    const-string v2, "SBM NAM : Apn or username or password information changed"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5949
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 5950
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setForNamAccount()V

    goto :goto_0
.end method

.method protected checkCMCCTestPlmn()Z
    .locals 2

    .prologue
    .line 5774
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 5780
    .local v0, "operatorNumeric":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "46009"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46602"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00101"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00102"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00201"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00321"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00431"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00541"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00651"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00761"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00871"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00981"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5784
    :cond_0
    const/4 v1, 0x1

    .line 5786
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected checkDualmodeTest()Ljava/lang/String;
    .locals 6

    .prologue
    .line 5759
    const-string v0, ""

    .line 5760
    .local v0, "dualmodeTest":Ljava/lang/String;
    const-string v4, "persist.radio.dualmode.test"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5761
    const-string v4, "persist.radio.master.testmode"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5762
    .local v2, "masterDualmodeTest":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5763
    const-string v0, "true"

    .line 5765
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 5766
    .local v1, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 5767
    .local v3, "sImsi":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v4, "001"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "999"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "52036"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "45001"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5768
    :cond_1
    const-string v0, "true"

    .line 5769
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DUALMODE] check dualmode test: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5770
    return-object v0
.end method

.method protected dismissRescanDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5305
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 5307
    :try_start_0
    const-string v0, "ManualSelectionReceiver"

    const-string v1, "dismissRescanDialog"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5308
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5312
    :goto_0
    sput-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    .line 5315
    :cond_0
    return-void

    .line 5312
    :catchall_0
    move-exception v0

    sput-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    throw v0

    .line 5309
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected displayLUrejectcause()I
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const-wide/32 v6, 0x1d0d8

    const/16 v5, 0x67

    const/4 v4, 0x2

    .line 5083
    const/4 v0, 0x0

    .line 5084
    .local v0, "id":I
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5086
    .local v1, "salesCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSpnDisplay(); mEmergencyOnly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ss.getState(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRilRegState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLuRejCause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", after2min:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->after2min:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logi(Ljava/lang/String;)V

    .line 5089
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    if-eq v2, v8, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    if-ne v2, v4, :cond_5

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->after2min:Z

    if-nez v2, :cond_5

    .line 5092
    const-string v2, "TMB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5093
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-eq v2, v9, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-eq v2, v4, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 5095
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    packed-switch v2, :pswitch_data_0

    .line 5102
    :pswitch_0
    const v0, 0x10408db

    .line 5107
    :cond_2
    :goto_0
    const-string v2, "ATT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "AIO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5108
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-eq v2, v9, :cond_4

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-eq v2, v4, :cond_4

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a

    .line 5110
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    sparse-switch v2, :sswitch_data_0

    .line 5157
    const v0, 0x1040584

    .line 5195
    :cond_5
    :goto_1
    return v0

    .line 5099
    :pswitch_1
    const v0, 0x10408da

    .line 5100
    goto :goto_0

    .line 5112
    :sswitch_0
    const v0, 0x10408d6

    .line 5113
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_6

    .line 5114
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5116
    :cond_6
    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5117
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showDeniedDialog(I)V

    goto :goto_1

    .line 5122
    :sswitch_1
    const v0, 0x10408d7

    .line 5123
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_7

    .line 5124
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5126
    :cond_7
    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5127
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showDeniedDialog(I)V

    goto :goto_1

    .line 5132
    :sswitch_2
    const v0, 0x10408d8

    .line 5133
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_8

    .line 5134
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5136
    :cond_8
    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5137
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showDeniedDialog(I)V

    goto :goto_1

    .line 5142
    :sswitch_3
    const v0, 0x10408d9

    .line 5143
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_9

    .line 5144
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5146
    :cond_9
    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5147
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showDeniedDialog(I)V

    goto :goto_1

    .line 5160
    :cond_a
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-eq v2, v4, :cond_b

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-nez v2, :cond_5

    .line 5161
    :cond_b
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    .line 5164
    const v0, 0x1040584

    .line 5165
    goto :goto_1

    .line 5169
    :cond_c
    const-string v2, "BMC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "BWA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "FMC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "KDO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "MTA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "PCM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "RWC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "SOL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "SPC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "TLS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "VMC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "ESK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "GLW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "MCT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "VTR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5172
    :cond_d
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-eq v2, v9, :cond_e

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_f

    .line 5174
    :cond_e
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    packed-switch v2, :pswitch_data_1

    .line 5183
    :pswitch_2
    const v0, 0x10405a9

    .line 5184
    goto/16 :goto_1

    .line 5179
    :pswitch_3
    const v0, 0x1040950

    .line 5180
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getRejectCauseDisplay:Z

    goto/16 :goto_1

    .line 5186
    :cond_f
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getRejectCauseDisplay:Z

    if-ne v2, v8, :cond_5

    .line 5187
    const-string v2, "updateSpnDisplay() Already get reject cause so display text"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logi(Ljava/lang/String;)V

    .line 5188
    const v0, 0x1040950

    goto/16 :goto_1

    .line 5095
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 5110
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0xfe -> :sswitch_3
    .end sparse-switch

    .line 5174
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected displayTimeZoneRecommend(Ljava/lang/String;I)V
    .locals 12
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "serviceState"    # I

    .prologue
    .line 6057
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_0

    if-eqz p2, :cond_1

    .line 6118
    :cond_0
    :goto_0
    return-void

    .line 6061
    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 6062
    .local v0, "currentMcc":I
    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 6063
    .local v1, "currentMnc":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "PREV_REGD_MCC"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6064
    .local v2, "getPreviousMcc":Ljava/lang/String;
    const/4 v6, -0x1

    .line 6065
    .local v6, "previousMcc":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 6066
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 6068
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "PREV_REGD_MNC"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6069
    .local v3, "getPreviousMnc":Ljava/lang/String;
    const/4 v7, -0x1

    .line 6070
    .local v7, "previousMnc":I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 6071
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 6074
    :cond_3
    if-eqz v0, :cond_4

    .line 6075
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "PREV_REGD_MCC"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6076
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "PREV_REGD_MNC"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6079
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-eqz v9, :cond_0

    .line 6086
    :cond_5
    if-eqz v0, :cond_0

    const/16 v9, 0x1cc

    if-eq v0, v9, :cond_0

    const/16 v9, 0x1c7

    if-eq v0, v9, :cond_0

    const/16 v9, 0x1c6

    if-eq v0, v9, :cond_0

    const/16 v9, 0x1d2

    if-eq v0, v9, :cond_0

    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsNitzReceived:Z

    if-nez v9, :cond_0

    .line 6089
    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->getTimeZonesForMcc(I)[Ljava/lang/String;

    move-result-object v8

    .line 6090
    .local v8, "timeZoneList":[Ljava/lang/String;
    if-eq v0, v6, :cond_7

    .line 6091
    if-eqz v8, :cond_6

    .line 6092
    const-string v9, "GsmSST"

    const-string v10, "broadcast TZ Recommend"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6093
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.ACTION_TZ_RCMD_TIMEZONE_OF_CURR_MCC"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6094
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v9, 0x10200000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6095
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.android.phone"

    const-string v11, "com.android.phone.TimeZoneRecommend"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6096
    const-string v9, "tz_name_array"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 6097
    const-string v9, "showTimeScheme"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6098
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 6101
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v9, "GsmSST"

    const-string v10, "not broadcast TZ Recommend"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6104
    :cond_7
    if-eq v1, v7, :cond_9

    .line 6105
    if-eqz v8, :cond_8

    array-length v9, v8

    const/4 v10, 0x1

    if-le v9, v10, :cond_8

    .line 6106
    const-string v9, "GsmSST"

    const-string v10, "broadcast TZ Recommend Same Mcc"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6107
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.ACTION_TZ_RCMD_CURR_MCC_EQUAL_TO_LAST_MCC"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6108
    .local v5, "intentFwd":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 6111
    .end local v5    # "intentFwd":Landroid/content/Intent;
    :cond_8
    const-string v9, "GsmSST"

    const-string v10, "not broadcast TZ Recommend Same Mcc"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6115
    :cond_9
    const-string v9, "GsmSST"

    const-string v10, "displayTimeZoneRecommend. Do nothing."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->checkCorrectThread()V

    .line 883
    const-string v0, "ServiceStateTracker dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 895
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 900
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 901
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 906
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ControlFakeRoamingNRP2G"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_FakeRoamingOption4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_FakeRoamingOption4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 909
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataNationalRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 925
    :cond_3
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    .line 926
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 5358
    const-string v0, "GsmServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5359
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5361
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

    .line 5362
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

    .line 5364
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SHIP_BUILD:Z

    if-nez v0, :cond_0

    .line 5365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5372
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPreferredNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGsmRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEmergencyOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedFixZoneAfterNitz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGotCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNitzUpdatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mStartedGprsRegCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReportedGprsNoReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurShowSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurShowPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5397
    return-void

    .line 5368
    :cond_0
    const-string v0, " mCellLoc= xxx"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5369
    const-string v0, " mNewCellLoc= xxx"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 930
    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 931
    return-void
.end method

.method protected getAutoTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 4502
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 4505
    :goto_0
    return v1

    .line 4502
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 4504
    :catch_0
    move-exception v0

    .line 4505
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method protected getAutoTimeZone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 4511
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 4514
    :goto_0
    return v1

    .line 4511
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 4513
    :catch_0
    move-exception v0

    .line 4514
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 13

    .prologue
    const v12, 0x7fffffff

    .line 4059
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    if-ltz v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v10

    if-ltz v10, :cond_2

    .line 4061
    sget-boolean v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SHIP_BUILD:Z

    if-nez v10, :cond_1

    .line 4062
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCellLocation(): X good mCellLoc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4067
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 4129
    :cond_0
    :goto_1
    return-object v6

    .line 4064
    :cond_1
    const-string v10, "getCellLocation(): X good mCellLoc= xxx"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4069
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v9

    .line 4070
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v9, :cond_7

    .line 4083
    new-instance v6, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v6}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 4084
    .local v6, "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/CellInfo;

    .line 4085
    .local v7, "ci":Landroid/telephony/CellInfo;
    instance-of v10, v7, Landroid/telephony/CellInfoGsm;

    if-eqz v10, :cond_4

    move-object v3, v7

    .line 4086
    check-cast v3, Landroid/telephony/CellInfoGsm;

    .line 4087
    .local v3, "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    .line 4088
    .local v0, "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v10

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 4090
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getPsc()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    goto :goto_1

    .line 4093
    .end local v0    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .end local v3    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    :cond_4
    instance-of v10, v7, Landroid/telephony/CellInfoWcdma;

    if-eqz v10, :cond_5

    move-object v5, v7

    .line 4094
    check-cast v5, Landroid/telephony/CellInfoWcdma;

    .line 4095
    .local v5, "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    .line 4096
    .local v2, "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v10

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 4098
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    goto :goto_1

    .line 4101
    .end local v2    # "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    .end local v5    # "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    :cond_5
    instance-of v10, v7, Landroid/telephony/CellInfoLte;

    if-eqz v10, :cond_3

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    if-ltz v10, :cond_6

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v10

    if-gez v10, :cond_3

    :cond_6
    move-object v4, v7

    .line 4104
    check-cast v4, Landroid/telephony/CellInfoLte;

    .line 4105
    .local v4, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    .line 4106
    .local v1, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v10

    if-eq v10, v12, :cond_3

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v10

    if-eq v10, v12, :cond_3

    .line 4108
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v10

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 4110
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    goto :goto_2

    .line 4123
    .end local v1    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    .end local v4    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    .end local v6    # "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    .end local v7    # "ci":Landroid/telephony/CellInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_7
    sget-boolean v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SHIP_BUILD:Z

    if-nez v10, :cond_8

    .line 4124
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCellLocation(): X empty mCellLoc and CellInfo mCellLoc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4129
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    goto/16 :goto_1

    .line 4126
    :cond_8
    const-string v10, "getCellLocation(): X empty mCellLoc and CellInfo mCellLoc= xxx"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 4018
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 667
    const-string v0, "REG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Reg:Ljava/lang/String;

    .line 676
    :goto_0
    return-object v0

    .line 669
    :cond_0
    const-string v0, "AUTH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Auth:Ljava/lang/String;

    goto :goto_0

    .line 671
    :cond_1
    const-string v0, "PHONE_NUMBER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 673
    :cond_2
    const-string v0, "ESN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getEsn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 676
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntFromBytes([C)I
    .locals 2
    .param p1, "charArray"    # [C

    .prologue
    .line 4647
    const/4 v0, 0x0

    .line 4648
    .local v0, "ret":I
    const/4 v1, 0x3

    aget-char v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 4649
    shl-int/lit8 v0, v0, 0x8

    .line 4650
    const/4 v1, 0x2

    aget-char v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 4651
    shl-int/lit8 v0, v0, 0x8

    .line 4652
    const/4 v1, 0x1

    aget-char v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 4653
    shl-int/lit8 v0, v0, 0x8

    .line 4654
    const/4 v1, 0x0

    aget-char v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 4656
    return v0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5021
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method protected getNetworkClassType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "netType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 5619
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5622
    .local v0, "mNetworkType":[Ljava/lang/String;
    const-string v2, "GSM"

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GPRS"

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "EDGE"

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5623
    :cond_0
    const-string v1, "2G"

    .line 5632
    .local v1, "ntwClass":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 5624
    .end local v1    # "ntwClass":Ljava/lang/String;
    :cond_1
    const-string v2, "UMTS"

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "HSPA"

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "HSDPA"

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "HSUPA"

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5625
    :cond_2
    const-string v1, "3G"

    .restart local v1    # "ntwClass":Ljava/lang/String;
    goto :goto_0

    .line 5626
    .end local v1    # "ntwClass":Ljava/lang/String;
    :cond_3
    const-string v2, "LTE"

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5627
    const-string v1, "4G"

    .restart local v1    # "ntwClass":Ljava/lang/String;
    goto :goto_0

    .line 5629
    .end local v1    # "ntwClass":Ljava/lang/String;
    :cond_4
    const-string v1, "Unknown"

    .restart local v1    # "ntwClass":Ljava/lang/String;
    goto :goto_0
.end method

.method protected getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 3716
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 3717
    .local v0, "guess":Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 3719
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 3721
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3722
    return-object v0

    .line 3719
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3721
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method protected getRatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "netType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 5563
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5565
    .local v0, "mDataType":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5566
    const-string v1, ""

    .line 5574
    :goto_0
    return-object v1

    .line 5568
    :cond_0
    const-string v1, "UMTS"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HSPA"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HSDPA"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HSUPA"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HSPAP"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TD-SCDMA"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5570
    :cond_1
    const-string v1, " 3G"

    goto :goto_0

    .line 5571
    :cond_2
    const-string v1, "LTE"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5572
    const-string v1, " 4G"

    goto :goto_0

    .line 5574
    :cond_3
    const-string v1, ""

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 49
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 945
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v5, v5, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v5, :cond_1

    .line 946
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] while being destroyed. Ignoring."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1636
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 949
    :cond_1
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1633
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 976
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110044

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v42

    .line 979
    .local v42, "skipRestoringSelection":Z
    if-nez v42, :cond_2

    .line 981
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 983
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 985
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .line 995
    .end local v42    # "skipRestoringSelection":Z
    :sswitch_2
    const-string v5, "SBMNAM"

    const-string v6, "EVENT_RADIO_STATE_CHANGED, skip"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    .line 1001
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 1003
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    goto :goto_0

    .line 1008
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto :goto_0

    .line 1015
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1019
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 1023
    .local v19, "ar":Landroid/os/AsyncResult;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    .line 1025
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .line 1030
    .end local v19    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 1032
    .restart local v19    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_5

    .line 1033
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    move-object/from16 v43, v5

    check-cast v43, [Ljava/lang/String;

    .line 1034
    .local v43, "states":[Ljava/lang/String;
    const/16 v30, -0x1

    .line 1035
    .local v30, "lac":I
    const/16 v22, -0x1

    .line 1036
    .local v22, "cid":I
    move-object/from16 v0, v43

    array-length v5, v0

    const/4 v6, 0x3

    if-lt v5, v6, :cond_4

    .line 1038
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v43, v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    aget-object v5, v43, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 1039
    const/4 v5, 0x1

    aget-object v5, v43, v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v30

    .line 1041
    :cond_3
    const/4 v5, 0x2

    aget-object v5, v43, v5

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    aget-object v5, v43, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 1042
    const/4 v5, 0x2

    aget-object v5, v43, v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 1048
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 1054
    .end local v22    # "cid":I
    .end local v30    # "lac":I
    .end local v43    # "states":[Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .line 1044
    .restart local v22    # "cid":I
    .restart local v30    # "lac":I
    .restart local v43    # "states":[Ljava/lang/String;
    :catch_0
    move-exception v25

    .line 1045
    .local v25, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error parsing location: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logw(Ljava/lang/String;)V

    goto :goto_1

    .line 1061
    .end local v19    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "cid":I
    .end local v25    # "ex":Ljava/lang/NumberFormatException;
    .end local v30    # "lac":I
    .end local v43    # "states":[Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 1063
    .restart local v19    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1069
    .end local v19    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1073
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 1075
    .restart local v19    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v37, v5, v6

    check-cast v37, Ljava/lang/String;

    .line 1076
    .local v37, "nitzString":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v35

    .line 1078
    .local v35, "nitzReceiveTime":J
    const-string v5, "CTC"

    const-string v6, "CMCC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1079
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsNitzReceived:Z

    .line 1081
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1088
    .end local v19    # "ar":Landroid/os/AsyncResult;
    .end local v35    # "nitzReceiveTime":J
    .end local v37    # "nitzString":Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 1090
    .restart local v19    # "ar":Landroid/os/AsyncResult;
    const-string v5, "Maple"

    const-string v6, "Combination"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1091
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_7

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_7

    .line 1092
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/telephony/SignalStrength;

    .line 1093
    .local v46, "tmpSignal":Landroid/telephony/SignalStrength;
    invoke-virtual/range {v46 .. v46}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v5

    const/16 v6, 0x43

    if-ne v5, v6, :cond_7

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/SignalStrength;->getGsmBitErrorRate()I

    move-result v5

    const/16 v6, 0x59

    if-ne v5, v6, :cond_7

    .line 1095
    new-instance v4, Landroid/telephony/SignalStrength;

    const/16 v5, 0x63

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/SignalStrength;->getGsmBitErrorRate()I

    move-result v6

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v7

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v8

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v9

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v10

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v11

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/SignalStrength;->getLteSignalStrength()I

    move-result v12

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v13

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v14

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v15

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/SignalStrength;->getLteCqi()I

    move-result v16

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v17

    invoke-direct/range {v4 .. v17}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    .line 1105
    .local v4, "newSignalStrength":Landroid/telephony/SignalStrength;
    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1106
    const-string v5, "GsmSST"

    const-string v6, "CSQ:99, 99 is regarded as CP assert!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const/16 v5, 0x3ef

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 1114
    .end local v4    # "newSignalStrength":Landroid/telephony/SignalStrength;
    .end local v46    # "tmpSignal":Landroid/telephony/SignalStrength;
    :cond_7
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    .line 1118
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    goto/16 :goto_0

    .line 1129
    .end local v19    # "ar":Landroid/os/AsyncResult;
    :sswitch_a
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsSIMLoadDone:Z

    .line 1138
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnWithEons(Landroid/telephony/ServiceState;Landroid/telephony/gsm/GsmCellLocation;)V

    .line 1139
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 1144
    :sswitch_b
    const-string v5, "EVENT_RUIM_RECORDS_LOADED "

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v21

    .line 1146
    .local v21, "cdmaUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v21, :cond_8

    .line 1147
    const-string v5, "cdmaUiccApp is Null. "

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1150
    :cond_8
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v32

    .line 1151
    .local v32, "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v32, :cond_0

    move-object/from16 v40, v32

    .line 1152
    check-cast v40, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 1153
    .local v40, "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v40, :cond_0

    .line 1154
    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 1155
    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMin()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMin:Ljava/lang/String;

    .line 1156
    const-string v5, "3"

    const-string v6, "ril.otasp_state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1157
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateOtaspState()V

    goto/16 :goto_0

    .line 1165
    .end local v21    # "cdmaUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v32    # "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v40    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 1167
    .restart local v19    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1168
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1173
    .end local v19    # "ar":Landroid/os/AsyncResult;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 1175
    .restart local v19    # "ar":Landroid/os/AsyncResult;
    const/16 v5, 0x15

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v34

    .line 1176
    .local v34, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    move-object/from16 v0, v34

    invoke-interface {v5, v6, v0}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1180
    .end local v19    # "ar":Landroid/os/AsyncResult;
    .end local v34    # "message":Landroid/os/Message;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 1181
    .restart local v19    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 1182
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    invoke-static {v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1184
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1189
    .end local v19    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 1191
    .restart local v19    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_9

    .line 1192
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 1194
    const-string v5, "ril.dualmode.network-reset"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1268
    .local v39, "resetProp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_0

    .line 1281
    .end local v39    # "resetProp":Ljava/lang/String;
    :goto_2
    const/16 v5, 0x14

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v34

    .line 1282
    .restart local v34    # "message":Landroid/os/Message;
    const/16 v47, 0x7

    .line 1287
    .local v47, "toggledNetworkType":I
    const-string v5, "persist.radio.boot.modem"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1311
    .local v23, "currenModem":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v47

    move-object/from16 v1, v34

    invoke-interface {v5, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1275
    .end local v23    # "currenModem":Ljava/lang/String;
    .end local v34    # "message":Landroid/os/Message;
    .end local v47    # "toggledNetworkType":I
    :cond_9
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_2

    .line 1315
    .end local v19    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1320
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v31

    check-cast v31, Landroid/telephony/gsm/GsmCellLocation;

    .line 1321
    .local v31, "loc":Landroid/telephony/gsm/GsmCellLocation;
    const v6, 0xc3bb

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x1

    if-eqz v31, :cond_b

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1323
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 1325
    .end local v31    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    goto/16 :goto_0

    .line 1321
    .restart local v31    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_b
    const/4 v5, -0x1

    goto :goto_3

    .line 1332
    .end local v31    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :sswitch_11
    const-string v5, "EVENT_RESTRICTED_STATE_CHANGED"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1342
    :sswitch_12
    const-string v5, "O2 Homezone info"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1344
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 1345
    .restart local v19    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onO2HomeZoneInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1350
    .end local v19    # "ar":Landroid/os/AsyncResult;
    :sswitch_13
    const-string v5, "EVENT_LU_REJECT_CAUSE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1352
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1354
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dismissDeniedDialog()V

    .line 1355
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->after2min:Z

    .line 1356
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 1362
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Ljava/lang/String;

    .line 1363
    .local v38, "operatorNumeric":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EVENT_CHECK_MULTI_TIME_ZONE] -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1365
    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1366
    .local v18, "NewMcc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "000"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "111"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "001"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "999"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mcc is changed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logw(Ljava/lang/String;)V

    .line 1369
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    .line 1370
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 1373
    const/16 v48, 0x0

    .line 1374
    .local v48, "zoneId":Ljava/lang/String;
    const-string v5, "ril.timezoneID"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1376
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ZONE ID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1377
    if-eqz v48, :cond_e

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_e

    .line 1378
    invoke-static/range {v48 .. v48}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v33

    .line 1379
    .local v33, "manualTimeZone":Ljava/util/TimeZone;
    if-nez v33, :cond_d

    .line 1380
    const-string v5, "manualTimeZone is NULL. Manual Update Send Intent Action_MCC_SET_TIME."

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1381
    new-instance v28, Landroid/content/Intent;

    const-string v5, "android.intent.action.MCC_SET_TIME"

    move-object/from16 v0, v28

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1382
    .local v28, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1383
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneInfoShareManager:Lcom/android/internal/telephony/PhoneInfoShareManager;

    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/internal/telephony/PhoneInfoShareManager;->IsalreadysendNITZ:Z

    goto/16 :goto_0

    .line 1387
    .end local v28    # "intent":Landroid/content/Intent;
    :cond_d
    const-string v5, "TIMEZONE Update"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1388
    const-string v5, "persist.sys.timezone"

    move-object/from16 v0, v48

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    invoke-virtual/range {v33 .. v33}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1407
    .end local v33    # "manualTimeZone":Ljava/util/TimeZone;
    .end local v48    # "zoneId":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneInfoShareManager:Lcom/android/internal/telephony/PhoneInfoShareManager;

    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/internal/telephony/PhoneInfoShareManager;->IsalreadysendNITZ:Z

    goto/16 :goto_0

    .line 1391
    .restart local v48    # "zoneId":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneInfoShareManager:Lcom/android/internal/telephony/PhoneInfoShareManager;

    sget-boolean v5, Lcom/android/internal/telephony/PhoneInfoShareManager;->IsalreadysendNITZ:Z

    if-nez v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_f

    .line 1393
    const-string v5, "Multi Time Zone. Manual Update Send Intent Action_MCC_SET_TIME."

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1394
    new-instance v28, Landroid/content/Intent;

    const-string v5, "android.intent.action.MCC_SET_TIME"

    move-object/from16 v0, v28

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1395
    .restart local v28    # "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1396
    const-string v5, "MCC"

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1397
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putExtra[mcc] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1401
    .end local v28    # "intent":Landroid/content/Intent;
    :cond_f
    const-string v5, "Do not send , already send Intent ACTION_NITZ_SET_TIME."

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 1405
    .end local v48    # "zoneId":Ljava/lang/String;
    :cond_10
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    goto :goto_4

    .line 1413
    .end local v18    # "NewMcc":Ljava/lang/String;
    .end local v38    # "operatorNumeric":Ljava/lang/String;
    :sswitch_15
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NetworkStateChangedByRescanDialog:Z

    .line 1414
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsFlightMode:Z

    .line 1415
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 1421
    :sswitch_16
    const-string v5, "Rts indication Recived"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1422
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 1423
    .restart local v19    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRtsIndication(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1429
    .end local v19    # "ar":Landroid/os/AsyncResult;
    :sswitch_17
    const-string v5, "LTE_ROAMING : Received EVENT_HOME_NETWORK_NOTI"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1430
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notiHomePlmn()V

    goto/16 :goto_0

    .line 1435
    :sswitch_18
    const-string v5, "[DUALMODE] Handle Message No Service Timer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1436
    sget v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->noserviceCount:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->noserviceCount:I

    .line 1437
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isSetNoserviceTimer:Z

    .line 1439
    const-string v5, "[DUALMODE] Timeout!, Cancel timer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v5, :cond_11

    .line 1442
    const-string v5, "[DUALMODE] Alarm should be canceled."

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1449
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1450
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onOffLock:Z

    if-nez v5, :cond_0

    .line 1451
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DUALMODE] Acquire wakelock! :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onOffLock:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1452
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1453
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onOffLock:Z

    goto/16 :goto_0

    .line 1446
    :cond_11
    const-string v5, "[DUALMODE] Already canceled."

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 1466
    :sswitch_19
    const-string v5, "[DUALMODE] Handle message to recover network in dualmode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1467
    const-string v5, "ril.dualmode.network-reset"

    const-string v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1474
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 1475
    .restart local v19    # "ar":Landroid/os/AsyncResult;
    const-string v5, "persist.radio.boot.modem"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1477
    .local v20, "bootModem":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/telephony/TelephonyManager;

    .line 1478
    .local v44, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v44 .. v44}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v27

    .line 1480
    .local v27, "imsi":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_13

    .line 1481
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 1490
    :cond_12
    :goto_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    const/16 v6, 0x17

    if-ne v5, v6, :cond_16

    const-string v5, "1"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1492
    const-string v5, "[DUALMODE] Current pref mode : TDSCDMA, change to WCDMA pref"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1493
    if-eqz v27, :cond_15

    const-string v5, "46001"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1494
    const-string v5, "[DUALMODE] CU SIM -> GSM_ONLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1495
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 1499
    :goto_7
    const-string v5, "persist.radio.tdscdma_present"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1501
    const-string v5, "persist.radio.boot.modem"

    const-string v6, "2"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1483
    :cond_13
    const-string v5, "1"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1484
    const/16 v5, 0x17

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_6

    .line 1485
    :cond_14
    const-string v5, "2"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1486
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_6

    .line 1497
    :cond_15
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_7

    .line 1502
    :cond_16
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    const/16 v6, 0x17

    if-eq v5, v6, :cond_17

    const-string v5, "2"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1504
    const-string v5, "[DUALMODE] Current pref mode : Not TDSCDMA, change to TDSCDMA pref"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1505
    const/16 v5, 0x17

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 1506
    const-string v5, "persist.radio.tdscdma_present"

    const-string v6, "2"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1508
    const-string v5, "persist.radio.boot.modem"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1510
    :cond_17
    const-string v5, "[DUALMODE] Current pref mode : Not T/G, W/G so make change mode from boot modem"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1511
    const-string v5, "1"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1512
    if-eqz v27, :cond_19

    const-string v5, "46001"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1513
    const-string v5, "[DUALMODE] CU SIM -> GSM_ONLY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1514
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 1518
    :goto_8
    const-string v5, "persist.radio.tdscdma_present"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    const-string v5, "persist.radio.boot.modem"

    const-string v6, "2"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    :cond_18
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1516
    :cond_19
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_8

    .line 1520
    :cond_1a
    const-string v5, "2"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1521
    const/16 v5, 0x17

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 1522
    const-string v5, "persist.radio.tdscdma_present"

    const-string v6, "2"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    const-string v5, "persist.radio.boot.modem"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1530
    .end local v19    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "bootModem":Ljava/lang/String;
    .end local v27    # "imsi":Ljava/lang/String;
    .end local v44    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 1531
    .restart local v19    # "ar":Landroid/os/AsyncResult;
    const-string v5, "persist.radio.boot.modem"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1532
    .restart local v20    # "bootModem":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/telephony/TelephonyManager;

    .line 1533
    .local v45, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v45 .. v45}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v41

    .line 1535
    .local v41, "sImsi":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1d

    .line 1536
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 1545
    :cond_1b
    :goto_a
    if-eqz v41, :cond_1f

    const-string v5, "46001"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1546
    const-string v5, "[DUALMODE] EVENT_CHECK_NETWORK_MODE: CU SIM Case"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1547
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1c

    .line 1548
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 1549
    const-string v5, "persist.radio.tdscdma_present"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1552
    :cond_1c
    const-string v5, "persist.radio.boot.modem"

    const-string v6, "2"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1538
    :cond_1d
    const-string v5, "1"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1539
    const/16 v5, 0x17

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_a

    .line 1540
    :cond_1e
    const-string v5, "2"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1541
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_a

    .line 1556
    :cond_1f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    const/16 v6, 0x17

    if-eq v5, v6, :cond_20

    const-string v5, "1"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1558
    const-string v5, "[DUALMODE] bootModem and PreferredNetworkType is not same Set T/G"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1559
    const/16 v5, 0x17

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 1560
    const-string v5, "persist.radio.tdscdma_present"

    const-string v6, "2"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1562
    :cond_20
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    const-string v5, "2"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1564
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 1565
    const-string v5, "persist.radio.tdscdma_present"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    const-string v5, "[DUALMODE] bootModem and PreferredNetworkType is not same Set W/G"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1571
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1577
    .end local v19    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "bootModem":Ljava/lang/String;
    .end local v41    # "sImsi":Ljava/lang/String;
    .end local v45    # "tm":Landroid/telephony/TelephonyManager;
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 1578
    .restart local v19    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_21

    .line 1579
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SyncPreferredNetworkType(I)V

    goto/16 :goto_0

    .line 1581
    :cond_21
    const-string v5, "LTE_ROAMING : Failed EVENT_GET_PREF_NETWORK_TYPE_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1589
    .end local v19    # "ar":Landroid/os/AsyncResult;
    :sswitch_1d
    const-string v5, "Handle Message EVENT_VOICE_CALL_ENDED"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1590
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    if-eqz v5, :cond_0

    .line 1591
    const-string v5, "waiting before radio turn off"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1592
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    .line 1593
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v5, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v24, v0

    .line 1594
    .local v24, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto/16 :goto_0

    .line 1600
    .end local v24    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 1601
    .restart local v19    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1602
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 1604
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    .line 1607
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v29

    .line 1608
    .local v29, "isRoaming":Z
    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1609
    .local v26, "iccNumeric":Ljava/lang/String;
    const-string v5, "001"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_22

    const-string v5, "999"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_22

    const-string v5, "52036"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_22

    const-string v5, "45001"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1611
    :cond_22
    const-string v5, "Test SIM card, use FDD,TDD band"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setLteBandMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1615
    :cond_23
    if-eqz v29, :cond_24

    .line 1616
    const-string v5, "Roaming State, use FDD, TDD band"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1617
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setLteBandMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1619
    :cond_24
    const-string v5, "460"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 1620
    const-string v5, "Home network, but non China SIM card"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1621
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setLteBandMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1624
    :cond_25
    const-string v5, "set TDD LTE band only for China LTE model"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1625
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setLteBandMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 949
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_6
        0x5 -> :sswitch_6
        0x6 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xc -> :sswitch_9
        0xd -> :sswitch_0
        0xe -> :sswitch_6
        0xf -> :sswitch_5
        0x10 -> :sswitch_a
        0x11 -> :sswitch_1
        0x12 -> :sswitch_c
        0x13 -> :sswitch_f
        0x14 -> :sswitch_d
        0x15 -> :sswitch_e
        0x16 -> :sswitch_10
        0x17 -> :sswitch_11
        0x1b -> :sswitch_b
        0x2d -> :sswitch_1e
        0x65 -> :sswitch_12
        0x66 -> :sswitch_1d
        0x67 -> :sswitch_13
        0x68 -> :sswitch_16
        0x69 -> :sswitch_14
        0x6b -> :sswitch_1c
        0x6d -> :sswitch_17
        0x73 -> :sswitch_18
        0x75 -> :sswitch_1a
        0x76 -> :sswitch_1b
        0x77 -> :sswitch_19
        0xfa0 -> :sswitch_15
    .end sparse-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 32
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2212
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_1

    .line 2587
    :cond_0
    :goto_0
    return-void

    .line 2214
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    .line 2215
    const/4 v7, 0x0

    .line 2217
    .local v7, "err":Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 2218
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/CommandException;

    check-cast v28, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    .line 2221
    :cond_2
    sget-object v28, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v28

    if-ne v7, v0, :cond_3

    .line 2223
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 2227
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v28

    if-nez v28, :cond_4

    .line 2229
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 2233
    :cond_4
    sget-object v28, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v28

    if-eq v7, v0, :cond_5

    .line 2234
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "RIL implementation has returned an error where it must succeed"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2498
    .end local v7    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v30, v28, v29

    add-int/lit8 v30, v30, -0x1

    aput v30, v28, v29

    .line 2500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    if-nez v28, :cond_0

    .line 2510
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v28, v0

    if-nez v28, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move/from16 v28, v0

    if-eqz v28, :cond_26

    :cond_6
    const/16 v20, 0x1

    .line 2512
    .local v20, "roaming":Z
    :goto_2
    const-string v28, "gsm.sim.operator.numeric"

    const-string v29, ""

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2514
    .local v14, "numeric":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_29

    .line 2518
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_RIL_ControlFakeRoamingNRP2G"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_RIL_FakeRoamingOption4"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_28

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_RIL_FakeRoamingOption4"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_28

    .line 2521
    :cond_7
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "GsmServiceStateTracker, mRoamingMode = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingMode:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2523
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingMode:I

    move/from16 v28, v0

    if-eqz v28, :cond_27

    .line 2524
    const-string v28, "Data Roaming mode is not \'disable\'."

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2525
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v28

    if-nez v28, :cond_8

    .line 2526
    const/16 v20, 0x0

    .line 2539
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFakeRoamingBetweenOperators(Landroid/telephony/ServiceState;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 2540
    const/16 v20, 0x1

    .line 2568
    :cond_9
    :goto_4
    if-eqz v20, :cond_b

    .line 2569
    const-string v28, "gsm.sim.operator.numeric"

    const-string v29, ""

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2570
    .local v21, "simNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v16

    .line 2572
    .local v16, "operNumeric":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2573
    .local v6, "equalsMcc":Z
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_a

    .line 2575
    const/16 v28, 0x0

    const/16 v29, 0x3

    :try_start_0
    move-object/from16 v0, v21

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v6

    .line 2578
    :cond_a
    :goto_5
    if-nez v6, :cond_b

    const/16 v20, 0x1

    .line 2583
    .end local v6    # "equalsMcc":Z
    .end local v16    # "operNumeric":Ljava/lang/String;
    .end local v21    # "simNumeric":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 2584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 2585
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 2238
    .end local v14    # "numeric":Ljava/lang/String;
    .end local v20    # "roaming":Z
    :cond_c
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2240
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, [Ljava/lang/String;

    move-object/from16 v0, v28

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    .line 2241
    .local v26, "states":[Ljava/lang/String;
    const/4 v11, -0x1

    .line 2242
    .local v11, "lac":I
    const/4 v3, -0x1

    .line 2243
    .local v3, "cid":I
    const/16 v27, 0x0

    .line 2244
    .local v27, "type":I
    const/16 v19, 0x4

    .line 2245
    .local v19, "regState":I
    const/16 v18, -0x1

    .line 2246
    .local v18, "reasonRegStateDenied":I
    const/16 v17, -0x1

    .line 2247
    .local v17, "psc":I
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v28, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-lez v28, :cond_10

    .line 2249
    const/16 v28, 0x0

    :try_start_2
    aget-object v28, v26, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 2250
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_f

    .line 2251
    const/16 v28, 0x1

    aget-object v28, v26, v28

    if-eqz v28, :cond_d

    const/16 v28, 0x1

    aget-object v28, v26, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_d

    .line 2252
    const/16 v28, 0x1

    aget-object v28, v26, v28

    const/16 v29, 0x10

    invoke-static/range {v28 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 2254
    :cond_d
    const/16 v28, 0x2

    aget-object v28, v26, v28

    if-eqz v28, :cond_e

    const/16 v28, 0x2

    aget-object v28, v26, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_e

    .line 2255
    const/16 v28, 0x2

    aget-object v28, v26, v28

    const/16 v29, 0x10

    invoke-static/range {v28 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 2259
    :cond_e
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_f

    const/16 v28, 0x3

    aget-object v28, v26, v28

    if-eqz v28, :cond_f

    .line 2260
    const/16 v28, 0x3

    aget-object v28, v26, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 2264
    :cond_f
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0xe

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_10

    .line 2265
    const/16 v28, 0xe

    aget-object v28, v26, v28

    if-eqz v28, :cond_10

    const/16 v28, 0xe

    aget-object v28, v26, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_10

    .line 2266
    const/16 v28, 0xe

    aget-object v28, v26, v28

    const/16 v29, 0x10

    invoke-static/range {v28 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v17

    .line 2284
    :cond_10
    :goto_6
    :try_start_3
    const-string v28, "KOR"

    const-string v29, "CHN"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v28

    if-nez v28, :cond_12

    .line 2285
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 2312
    :cond_12
    const-string v28, "CTC"

    const-string v29, "CMCC"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 2313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v28

    if-nez v28, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v28

    if-nez v28, :cond_13

    .line 2315
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 2318
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/telephony/ServiceState;->setState(I)V

    .line 2319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 2340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x111003f

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 2342
    .local v10, "isVoiceCapable":Z
    const/16 v28, 0xd

    move/from16 v0, v19

    move/from16 v1, v28

    if-eq v0, v1, :cond_14

    const/16 v28, 0xa

    move/from16 v0, v19

    move/from16 v1, v28

    if-eq v0, v1, :cond_14

    const/16 v28, 0xc

    move/from16 v0, v19

    move/from16 v1, v28

    if-eq v0, v1, :cond_14

    const/16 v28, 0xe

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_15

    :cond_14
    if-eqz v10, :cond_15

    .line 2347
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 2361
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 2362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 2494
    .end local v3    # "cid":I
    .end local v10    # "isVoiceCapable":Z
    .end local v11    # "lac":I
    .end local v17    # "psc":I
    .end local v18    # "reasonRegStateDenied":I
    .end local v19    # "regState":I
    .end local v26    # "states":[Ljava/lang/String;
    .end local v27    # "type":I
    :catch_0
    move-exception v8

    .line 2495
    .local v8, "ex":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2279
    .end local v8    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "cid":I
    .restart local v11    # "lac":I
    .restart local v17    # "psc":I
    .restart local v18    # "reasonRegStateDenied":I
    .restart local v19    # "regState":I
    .restart local v26    # "states":[Ljava/lang/String;
    .restart local v27    # "type":I
    :catch_1
    move-exception v8

    .line 2280
    .local v8, "ex":Ljava/lang/NumberFormatException;
    :try_start_4
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "error parsing RegistrationState: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2351
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    .restart local v10    # "isVoiceCapable":Z
    :cond_15
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto :goto_7

    .line 2367
    .end local v3    # "cid":I
    .end local v10    # "isVoiceCapable":Z
    .end local v11    # "lac":I
    .end local v17    # "psc":I
    .end local v18    # "reasonRegStateDenied":I
    .end local v19    # "regState":I
    .end local v26    # "states":[Ljava/lang/String;
    .end local v27    # "type":I
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, [Ljava/lang/String;

    move-object/from16 v0, v28

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    .line 2369
    .restart local v26    # "states":[Ljava/lang/String;
    const/16 v27, 0x0

    .line 2370
    .restart local v27    # "type":I
    const/16 v19, 0x4

    .line 2371
    .restart local v19    # "regState":I
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 2372
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 2373
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v28, v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    if-lez v28, :cond_19

    .line 2375
    const/16 v28, 0x0

    :try_start_5
    aget-object v28, v26, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 2378
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_16

    const/16 v28, 0x3

    aget-object v28, v26, v28

    if-eqz v28, :cond_16

    .line 2379
    const/16 v28, 0x3

    aget-object v28, v26, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 2381
    :cond_16
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_17

    const/16 v28, 0x3

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_17

    .line 2383
    const/16 v28, 0x4

    aget-object v28, v26, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 2385
    :cond_17
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_18

    .line 2386
    const/16 v28, 0x5

    aget-object v28, v26, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 2389
    :cond_18
    const/16 v28, 0x64

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1c

    .line 2390
    add-int/lit8 v27, v27, -0x64

    .line 2391
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDtmSupport:I

    .line 2396
    :goto_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_RIL_DisplayDcIcon"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1d

    const/16 v28, 0x1e

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d

    .line 2398
    const-string v28, "Data type DC -> HSPAP, and set optional value"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2399
    const/16 v27, 0xf

    .line 2400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/telephony/ServiceState;->setOptionalRadioTech(I)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2414
    :cond_19
    :goto_9
    :try_start_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v4

    .line 2415
    .local v4, "dataRegState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 2416
    const-string v28, "KOR"

    const-string v29, "CHN"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v28

    if-nez v28, :cond_1b

    .line 2417
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 2418
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1f

    .line 2419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    const-string v29, "gsm.operator.ispsroaming"

    const-string v30, "true"

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 2425
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlPollStateResultMessage: GsmSST setDataRegState="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " regState="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " dataRadioTechnology="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 2393
    .end local v4    # "dataRegState":I
    :cond_1c
    const/16 v28, 0x0

    :try_start_7
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDtmSupport:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_8

    .line 2410
    :catch_2
    move-exception v8

    .line 2411
    .restart local v8    # "ex":Ljava/lang/NumberFormatException;
    :try_start_8
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "error parsing GprsRegistrationState: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_9

    .line 2401
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    :cond_1d
    :try_start_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_RIL_DisplayTdlteIcon"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1e

    const/16 v28, 0x1f

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1e

    .line 2403
    const-string v28, "Data type TDLTE -> LTE, and set optional value"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2404
    const/16 v27, 0xe

    .line 2405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Landroid/telephony/ServiceState;->setOptionalRadioTech(I)V

    goto/16 :goto_9

    .line 2407
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/telephony/ServiceState;->setOptionalRadioTech(I)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_9

    .line 2421
    .restart local v4    # "dataRegState":I
    :cond_1f
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    const-string v29, "gsm.operator.ispsroaming"

    const-string v30, "false"

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2433
    .end local v4    # "dataRegState":I
    .end local v19    # "regState":I
    .end local v26    # "states":[Ljava/lang/String;
    .end local v27    # "type":I
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, [Ljava/lang/String;

    move-object/from16 v0, v28

    check-cast v0, [Ljava/lang/String;

    move-object v15, v0

    .line 2435
    .local v15, "opNames":[Ljava/lang/String;
    if-eqz v15, :cond_5

    array-length v0, v15

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_5

    .line 2436
    const-string v28, "gsm.sim.operator.numeric"

    const-string v29, ""

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2437
    .local v22, "sim_numeric":Ljava/lang/String;
    const-string v28, "gsm.sim.operator.alpha"

    const-string v29, ""

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2439
    .local v25, "spn":Ljava/lang/String;
    const/16 v28, 0x2

    aget-object v28, v15, v28

    if-eqz v28, :cond_22

    const/16 v28, 0x2

    aget-object v28, v15, v28

    const-string v29, "45400"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_20

    const/16 v28, 0x2

    aget-object v28, v15, v28

    const-string v29, "45402"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_20

    const/16 v28, 0x2

    aget-object v28, v15, v28

    const-string v29, "45410"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_20

    const/16 v28, 0x2

    aget-object v28, v15, v28

    const-string v29, "45418"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_22

    .line 2440
    :cond_20
    if-eqz v22, :cond_22

    const-string v28, "45400"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_21

    const-string v28, "45402"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_21

    const-string v28, "45410"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_21

    const-string v28, "45418"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_22

    .line 2441
    :cond_21
    const-string v28, "[CSL] CSL Network, SPN should be displayed instead of PLMN"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2442
    if-eqz v25, :cond_22

    .line 2443
    const/16 v28, 0x0

    aput-object v25, v15, v28

    .line 2444
    const/16 v28, 0x1

    const/16 v29, 0x0

    aget-object v29, v15, v29

    aput-object v29, v15, v28

    .line 2450
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v28

    if-nez v28, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v28

    if-eqz v28, :cond_23

    .line 2452
    const-string v28, "Don\'t update operator name in PS Only in service state"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2454
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v29, v15, v29

    const/16 v30, 0x1

    aget-object v30, v15, v30

    const/16 v31, 0x2

    aget-object v31, v15, v31

    invoke-virtual/range {v28 .. v31}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2465
    .end local v15    # "opNames":[Ljava/lang/String;
    .end local v22    # "sim_numeric":Ljava/lang/String;
    .end local v25    # "spn":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, [I

    move-object/from16 v0, v28

    check-cast v0, [I

    move-object v9, v0

    .line 2473
    .local v9, "ints":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    const/16 v28, 0x0

    aget v28, v9, v28

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_25

    const/16 v28, 0x1

    :goto_b
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 2475
    const-string v28, "KOR"

    const-string v29, "CHN"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 2476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 2477
    .local v24, "sp1":Landroid/content/SharedPreferences;
    const-string v28, "network_selection_key"

    const-string v29, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2479
    .local v12, "network_selection_key":Ljava/lang/String;
    const-string v28, "network_selection_name_key"

    const-string v29, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2481
    .local v13, "network_selection_name_key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v28

    if-nez v28, :cond_5

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_24

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_5

    .line 2482
    :cond_24
    const-string v28, "update manual selection mode to auto."

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 2484
    .local v23, "sp":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 2485
    .local v5, "e":Landroid/content/SharedPreferences$Editor;
    const-string v28, "network_selection_key"

    const-string v29, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2486
    const-string v28, "network_selection_name_key"

    const-string v29, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2487
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1

    .line 2473
    .end local v5    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "network_selection_key":Ljava/lang/String;
    .end local v13    # "network_selection_name_key":Ljava/lang/String;
    .end local v23    # "sp":Landroid/content/SharedPreferences;
    .end local v24    # "sp1":Landroid/content/SharedPreferences;
    :cond_25
    const/16 v28, 0x0

    goto/16 :goto_b

    .line 2510
    .end local v9    # "ints":[I
    :cond_26
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 2529
    .restart local v14    # "numeric":Ljava/lang/String;
    .restart local v20    # "roaming":Z
    :cond_27
    const-string v28, "Data Roaming mode is \'disable\'. Do not apply fake roaming."

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2532
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v28

    if-nez v28, :cond_8

    .line 2533
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 2543
    :cond_29
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_RIL_ControlFakeRoamingNRP2G"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_2a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_RIL_DisableRoamingUntilSimReady"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_2a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_RIL_FakeRoamingOption4"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_9

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_RIL_FakeRoamingOption4"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_9

    .line 2547
    :cond_2a
    const-string v28, "SIM is not ready. roaming set as false!"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2548
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 2576
    .restart local v6    # "equalsMcc":Z
    .restart local v16    # "operNumeric":Ljava/lang/String;
    .restart local v21    # "simNumeric":Ljava/lang/String;
    :catch_3
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 2238
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 3

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1744
    return-void
.end method

.method protected hangupBeforeDeactivePDP()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1747
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    .line 1750
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1751
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 1752
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 1753
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 1754
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    .line 1756
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupBeforeDeactivePDP() : post pending value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1757
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    if-eqz v1, :cond_2

    .line 1760
    const-string v0, "CHN"

    const-string v1, "CHN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1761
    const-wide/16 v0, 0x3e8

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendCallHangupDelayed(JI)V

    .line 1763
    :cond_1
    const/4 v0, 0x1

    .line 1765
    :cond_2
    return v0
.end method

.method protected is3GDataNetType(Ljava/lang/String;)Z
    .locals 5
    .param p1, "netType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 5553
    const/4 v0, 0x0

    .line 5554
    .local v0, "bRet":Z
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5555
    .local v1, "mDataType":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDataType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5556
    aget-object v2, v1, v4

    const-string v3, "UMTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v4

    const-string v3, "HSDPA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v4

    const-string v3, "HSUPA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v4

    const-string v3, "HSPA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v4

    const-string v3, "HSPAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v4

    const-string v3, "TD-SCDMA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5558
    :cond_0
    const/4 v0, 0x1

    .line 5559
    :cond_1
    return v0
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4027
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_EnableVoicePriority"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4028
    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mScreenState:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTetherState:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    const/16 v4, 0xe

    if-eq v3, v4, :cond_3

    .line 4029
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .line 4030
    .local v0, "antennabar":I
    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataSuspended:Z

    if-nez v3, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataSuspended:Z

    if-eqz v3, :cond_3

    if-ge v0, v5, :cond_3

    :cond_1
    move v1, v2

    .line 4050
    .end local v0    # "antennabar":I
    :cond_2
    :goto_0
    return v1

    .line 4038
    :cond_3
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDtmSupport:I

    if-ne v3, v1, :cond_4

    .line 4039
    const-string v2, "isConcurrentVoiceAndDataAllowed : network support DTM, return true"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4044
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_EnableDTM"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4045
    const-string v2, "isConcurrentVoiceAndDataAllowed : support DTM, return true"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4050
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    if-ge v3, v5, :cond_2

    move v1, v2

    goto :goto_0
.end method

.method protected isFakeRoamingBetweenOperators(Landroid/telephony/ServiceState;)Z
    .locals 13
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3983
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v10, :cond_1

    .line 4008
    :cond_0
    :goto_0
    return v8

    .line 3986
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 3988
    .local v5, "operatorNumeric":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v10, v9}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v7

    .line 3990
    .local v7, "uiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v7, :cond_0

    .line 3994
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 3995
    .local v3, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v3, :cond_0

    .line 3999
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getFakeRoamingOn()[Ljava/lang/String;

    move-result-object v1

    .line 4000
    .local v1, "fro":[Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v12, :cond_0

    .line 4001
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v6, v0, v2

    .line 4002
    .local v6, "r":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isFakeRoamingBetweenOperators - r["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], operatorNumeric["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4003
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v5, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    move v8, v9

    .line 4004
    goto :goto_0

    .line 4001
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected isGprsConsistent(II)Z
    .locals 1
    .param p1, "dataRegState"    # I
    .param p2, "voiceRegState"    # I

    .prologue
    .line 3708
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 20
    .param p1, "gsmRoaming"    # Z
    .param p2, "s"    # Landroid/telephony/ServiceState;

    .prologue
    .line 3925
    const-string v17, "gsm.sim.operator.alpha"

    const-string v18, "empty"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3927
    .local v15, "spn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v11

    .line 3928
    .local v11, "onsl":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v12

    .line 3930
    .local v12, "onss":Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v4, 0x1

    .line 3931
    .local v4, "equalsOnsl":Z
    :goto_0
    if-eqz v12, :cond_3

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/4 v5, 0x1

    .line 3933
    .local v5, "equalsOnss":Z
    :goto_1
    const-string v17, "gsm.sim.operator.numeric"

    const-string v18, ""

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3935
    .local v14, "simNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    .line 3937
    .local v13, "operatorNumeric":Ljava/lang/String;
    const/4 v3, 0x1

    .line 3939
    .local v3, "equalsMcc":Z
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 3941
    const/16 v17, 0x0

    const/16 v18, 0x3

    :try_start_0
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 3949
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 3950
    const/16 p1, 0x0

    .line 3977
    .end local p1    # "gsmRoaming":Z
    :cond_1
    :goto_3
    return p1

    .line 3930
    .end local v3    # "equalsMcc":Z
    .end local v4    # "equalsOnsl":Z
    .end local v5    # "equalsOnss":Z
    .end local v13    # "operatorNumeric":Ljava/lang/String;
    .end local v14    # "simNumeric":Ljava/lang/String;
    .restart local p1    # "gsmRoaming":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 3931
    .restart local v4    # "equalsOnsl":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 3952
    .restart local v3    # "equalsMcc":Z
    .restart local v5    # "equalsOnss":Z
    .restart local v13    # "operatorNumeric":Ljava/lang/String;
    .restart local v14    # "simNumeric":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v16

    .line 3954
    .local v16, "uiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v16, :cond_5

    .line 3955
    const/16 p1, 0x0

    goto :goto_3

    .line 3957
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v9

    .line 3958
    .local v9, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v9, :cond_6

    .line 3959
    const/16 p1, 0x0

    goto :goto_3

    .line 3962
    :cond_6
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IccRecords;->getFakeHomeOn()[Ljava/lang/String;

    move-result-object v6

    .line 3964
    .local v6, "fho":[Ljava/lang/String;
    if-eqz v6, :cond_9

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    .line 3965
    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_4
    if-ge v8, v10, :cond_9

    aget-object v7, v2, v8

    .line 3966
    .local v7, "h":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isRoamingBetweenOperators - h["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "], operatorNumeric["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3967
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    const/16 v17, 0x0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 3968
    :cond_7
    const/16 p1, 0x0

    goto/16 :goto_3

    .line 3965
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 3974
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "h":Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_RIL_EnableRoamingIcon4NationalRoaming"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 3977
    if-eqz p1, :cond_b

    if-eqz v3, :cond_a

    if-nez v4, :cond_b

    if-nez v5, :cond_b

    :cond_a
    const/16 v17, 0x1

    :goto_5
    move/from16 p1, v17

    goto/16 :goto_3

    :cond_b
    const/16 v17, 0x0

    goto :goto_5

    .line 3943
    .end local v6    # "fho":[Ljava/lang/String;
    .end local v9    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v16    # "uiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catch_0
    move-exception v17

    goto/16 :goto_2
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 5335
    const-string v0, "GsmSST"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5336
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 5340
    const-string v0, "GsmSST"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5341
    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 5344
    const-string v0, "GsmSST"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5345
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 5352
    const-string v0, "GsmSST"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5353
    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 5348
    const-string v0, "GsmSST"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5349
    return-void
.end method

.method public needToRunLteRoaming()Z
    .locals 3

    .prologue
    .line 6025
    const-string v1, "ril.simtype"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6027
    .local v0, "simType":Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KTT"

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "LGT"

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SKT"

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6030
    :cond_2
    const/4 v1, 0x1

    .line 6032
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected notifyApnChangeToRIL(ZISLjava/lang/String;SLjava/lang/String;)V
    .locals 11
    .param p1, "apnChanged"    # Z
    .param p2, "numericLength"    # I
    .param p3, "aid_length"    # S
    .param p4, "aid"    # Ljava/lang/String;
    .param p5, "passwd_length"    # S
    .param p6, "passwd"    # Ljava/lang/String;

    .prologue
    .line 5987
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5988
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5990
    .local v4, "dos":Ljava/io/DataOutputStream;
    const-string v8, "GsmSST"

    const-string v9, "[SBMNAM] notifyApnChangeToRIL"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5991
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 5992
    .local v2, "buf1":[B
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 5994
    .local v3, "buf2":[B
    :try_start_0
    array-length v8, v2

    add-int/lit8 v8, v8, 0xa

    array-length v9, v3

    add-int v7, v8, v9

    .line 5995
    .local v7, "size":I
    const-string v8, "GsmSST"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SBMNAM] size value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5996
    const/16 v8, 0x9

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5997
    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5998
    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 5999
    if-eqz p1, :cond_3

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6000
    invoke-virtual {v4, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6001
    invoke-virtual {v4, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 6002
    invoke-virtual {v4, p4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 6003
    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 6004
    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6014
    .end local v7    # "size":I
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 6016
    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FilterOutputStream;->close()V

    .line 6017
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 6021
    :cond_2
    :goto_2
    return-void

    .line 5999
    .restart local v7    # "size":I
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 6005
    .end local v7    # "size":I
    :catch_0
    move-exception v5

    .line 6006
    .local v5, "e":Ljava/io/IOException;
    const-string v8, "GsmSST"

    const-string v9, "IOException!!!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6008
    if-eqz v4, :cond_0

    .line 6009
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FilterOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 6010
    :catch_1
    move-exception v6

    .line 6011
    .local v6, "ex":Ljava/io/IOException;
    const-string v8, "LOG_TAG"

    const-string v9, "close fail!!!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6018
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 6019
    .restart local v6    # "ex":Ljava/io/IOException;
    const-string v8, "LOG_TAG"

    const-string v9, "close fail!!!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected onUpdateIccAvailability()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4900
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateRuimLoadedEvent()V

    .line 4902
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_1

    .line 4933
    :cond_0
    :goto_0
    return-void

    .line 4906
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 4909
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_0

    .line 4910
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_3

    .line 4911
    const-string v1, "Removing stale icc objects."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4912
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 4913
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_2

    .line 4914
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 4916
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsSIMLoadDone:Z

    .line 4917
    const-string v1, "IsSIMLoadDone set to false"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4920
    :cond_2
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4921
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 4923
    :cond_3
    if-eqz v0, :cond_0

    .line 4924
    const-string v1, "New card found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4925
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 4926
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4927
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v2, 0x11

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4928
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    .line 4929
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v2, 0x10

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected pollState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2602
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 2603
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aput v3, v0, v3

    .line 2605
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$13;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2639
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 2640
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 2644
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 2645
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 2649
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 2650
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 2654
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 2655
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 2660
    :goto_0
    return-void

    .line 2607
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 2608
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 2609
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2610
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifySignalStrength()V

    .line 2611
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 2612
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 2613
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 2617
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 2626
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 2627
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2628
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifySignalStrength()V

    .line 2629
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 2630
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 2631
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 2605
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 50

    .prologue
    .line 2684
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "Poll ServiceState done:  oldSS=["

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "] mNewSS=["

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "]"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " oldMaxDataCalls="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " mNewMaxDataCalls="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " oldReasonDataDenied="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " mNewReasonDataDenied="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2692
    sget-boolean v46, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v46, :cond_0

    const-string v46, "telephony.test.forceRoaming"

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    if-eqz v46, :cond_0

    .line 2693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 2696
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 2699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnWithEons(Landroid/telephony/ServiceState;Landroid/telephony/gsm/GsmCellLocation;)V

    .line 2701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    if-eqz v46, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    if-nez v46, :cond_22

    const/16 v21, 0x1

    .line 2710
    .local v21, "hasRegistered":Z
    :goto_0
    const/4 v14, 0x0

    .line 2723
    .local v14, "hasChangedChinaMcc":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    if-nez v46, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    if-eqz v46, :cond_23

    const/16 v16, 0x1

    .line 2727
    .local v16, "hasDeregistered":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v46

    if-eqz v46, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v46

    if-nez v46, :cond_24

    const/16 v17, 0x1

    .line 2731
    .local v17, "hasGprsAttached":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v46

    if-nez v46, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v46

    if-eqz v46, :cond_25

    const/16 v18, 0x1

    .line 2735
    .local v18, "hasGprsDetached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_26

    const/4 v15, 0x1

    .line 2738
    .local v15, "hasDataRegStateChanged":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_27

    const/16 v26, 0x1

    .line 2741
    .local v26, "hasVoiceRegStateChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_28

    const/16 v23, 0x1

    .line 2744
    .local v23, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_29

    const/16 v22, 0x1

    .line 2747
    .local v22, "hasRilDataRadioTechnologyChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_2a

    const/4 v13, 0x1

    .line 2749
    .local v13, "hasChanged":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v46

    if-nez v46, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v46

    if-eqz v46, :cond_2b

    const/16 v25, 0x1

    .line 2751
    .local v25, "hasRoamingOn":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v46

    if-eqz v46, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v46

    if-nez v46, :cond_2c

    const/16 v24, 0x1

    .line 2753
    .local v24, "hasRoamingOff":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_2d

    const/16 v20, 0x1

    .line 2755
    .local v20, "hasLocationChanged":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    const/16 v47, 0x2

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    const/16 v47, 0x2

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_2e

    const/16 v19, 0x1

    .line 2777
    .local v19, "hasLimited":Z
    :goto_c
    const-string v11, ""

    .line 2778
    .local v11, "dualmodeTest":Ljava/lang/String;
    const/16 v29, 0x0

    .line 2799
    .local v29, "limitedExecpt":Z
    if-nez v26, :cond_1

    if-eqz v15, :cond_2

    .line 2800
    :cond_1
    const v46, 0xc3c2

    const/16 v47, 0x4

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    const/16 v48, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    const/16 v48, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    const/16 v48, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2806
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    const/16 v47, 0x3

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    const/16 v47, 0x3

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_3

    .line 2808
    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsFlightMode:Z

    .line 2809
    const/16 v46, 0xfa0

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v46

    const-wide/16 v47, 0x7530

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-wide/from16 v2, v47

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2812
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    if-nez v46, :cond_4

    .line 2814
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsFlightMode:Z

    .line 2821
    :cond_4
    if-eqz v23, :cond_6

    .line 2822
    const/4 v8, -0x1

    .line 2823
    .local v8, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v30, v0

    .line 2824
    .local v30, "loc":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v30, :cond_5

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v8

    .line 2829
    :cond_5
    const v46, 0xc3cb

    const/16 v47, 0x3

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    const/16 v48, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    const/16 v48, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2833
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "RAT switched "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v47

    invoke-static/range {v47 .. v47}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " -> "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v47

    invoke-static/range {v47 .. v47}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " at cell "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2842
    .end local v8    # "cid":I
    .end local v30    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    .line 2843
    .local v40, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2844
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 2849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v37, v0

    .line 2850
    .local v37, "tcl":Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 2851
    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 2853
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v46, v0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 2854
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v46, v0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 2856
    if-eqz v23, :cond_7

    .line 2857
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 2861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.voice.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v48

    invoke-static/range {v48 .. v48}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v46 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2867
    :cond_7
    if-eqz v22, :cond_a

    .line 2868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v48

    invoke-static/range {v48 .. v48}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v46 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2873
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "gsm.network.type - Property: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "gsm.network.type"

    invoke-static/range {v47 .. v47}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ", ServiceState: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    invoke-static/range {v47 .. v47}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2876
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    .line 2880
    :cond_8
    const-string v46, "gsm.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    invoke-static/range {v47 .. v47}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_a

    .line 2884
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    move/from16 v46, v0

    rem-int/lit8 v46, v46, 0x5

    if-nez v46, :cond_9

    .line 2885
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "gsm.network.type - Property: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "gsm.network.type"

    invoke-static/range {v47 .. v47}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ", ServiceState: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    invoke-static/range {v47 .. v47}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2888
    :cond_9
    const-wide/16 v46, 0x64

    invoke-static/range {v46 .. v47}, Landroid/os/SystemClock;->sleep(J)V

    .line 2890
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    move/from16 v46, v0

    add-int/lit8 v46, v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    const/16 v47, 0x32

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_8

    .line 2891
    const-string v46, "Property set count 50. So we use break"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2897
    :cond_a
    if-eqz v21, :cond_b

    .line 2898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2901
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: registering current mNitzUpdatedTime="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " changing to false"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2904
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 2915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v46

    if-nez v46, :cond_b

    .line 2916
    const-string v46, "GsmSST"

    const-string v47, "hasRegistered but getOperatorNumeric() returned NULL"

    invoke-static/range {v46 .. v47}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 3238
    :cond_b
    if-eqz v13, :cond_19

    .line 3248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v46, v0

    if-eqz v46, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsSIMLoadDone:Z

    move/from16 v46, v0

    if-nez v46, :cond_2f

    .line 3249
    :cond_c
    const-string v46, "Network State Changed, NO SIM or EONS not loaded: So update Service state display"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logi(Ljava/lang/String;)V

    .line 3250
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 3256
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v46 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    const-string v46, "gsm.operator.numeric"

    const-string v47, ""

    invoke-static/range {v46 .. v47}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3262
    .local v35, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v33

    .line 3263
    .local v33, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.operator.numeric"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3266
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v46

    const-string v47, "CscFeature_RIL_PLMNFaking4Mvno"

    invoke-virtual/range {v46 .. v47}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_12

    .line 3267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v46

    const-string v47, "phone"

    invoke-virtual/range {v46 .. v47}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/telephony/TelephonyManager;

    .line 3268
    .local v38, "telephonyManager":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v32

    .line 3269
    .local v32, "operatorMccMnc":Ljava/lang/String;
    const-string v46, "gsm.sim.operator.numeric"

    const-string v47, ""

    invoke-static/range {v46 .. v47}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3270
    .local v34, "operatorSIM":Ljava/lang/String;
    invoke-virtual/range {v38 .. v38}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v27

    .line 3273
    .local v27, "imsi":Ljava/lang/String;
    if-eqz v34, :cond_d

    const-string v46, "73008"

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_d

    .line 3274
    if-eqz v32, :cond_d

    const-string v46, "73002"

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_d

    .line 3277
    if-eqz v27, :cond_d

    .line 3278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.operator.alpha"

    const-string v48, "vtr"

    invoke-virtual/range {v46 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3282
    :cond_d
    if-eqz v32, :cond_10

    const-string v46, "73001"

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_e

    const-string v46, "73010"

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_10

    .line 3284
    :cond_e
    if-eqz v27, :cond_10

    .line 3285
    const-string v46, "73001300"

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_f

    const-string v46, "73010300"

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_30

    .line 3287
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.operator.alpha"

    const-string v48, "Falabella"

    invoke-virtual/range {v46 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3295
    :cond_10
    :goto_e
    if-eqz v34, :cond_11

    const-string v46, "73007"

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_11

    .line 3296
    if-eqz v32, :cond_11

    const-string v46, "73002"

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_11

    .line 3299
    if-eqz v27, :cond_11

    .line 3300
    const-string v46, "7300701"

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_31

    .line 3302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.operator.alpha"

    const-string v48, "Gtd_Telsur"

    invoke-virtual/range {v46 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3320
    :cond_11
    :goto_f
    if-eqz v32, :cond_3a

    const-string v46, "732103"

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_3a

    .line 3322
    if-eqz v27, :cond_12

    .line 3323
    const-string v46, "732103017"

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_34

    .line 3325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.operator.alpha"

    const-string v48, "ETB"

    invoke-virtual/range {v46 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3354
    .end local v27    # "imsi":Ljava/lang/String;
    .end local v32    # "operatorMccMnc":Ljava/lang/String;
    .end local v34    # "operatorSIM":Ljava/lang/String;
    .end local v38    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_12
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    if-nez v46, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v46

    if-eqz v46, :cond_3c

    .line 3360
    const/16 v46, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GetTimezoneInfoUsingMcc(Ljava/lang/String;Z)V

    .line 3369
    :cond_13
    :goto_11
    if-nez v33, :cond_3d

    .line 3370
    const-string v46, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.operator.iso-country"

    const-string v48, ""

    invoke-virtual/range {v46 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3372
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 3373
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 3494
    :cond_14
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    const-string v48, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v46

    if-eqz v46, :cond_4a

    const-string v46, "true"

    :goto_13
    move-object/from16 v0, v47

    move-object/from16 v1, v48

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v36

    .line 3500
    .local v36, "serviceStateForProperty":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "ril.servicestate"

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v46 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3505
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "gsm.operator.isroaming - Property: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v48

    invoke-static/range {v47 .. v48}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ", ServiceState: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ", SIM Slot: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3508
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    .line 3510
    :cond_15
    const-string v46, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v46

    if-eqz v46, :cond_4b

    const-string v46, "true"

    :goto_14
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_17

    .line 3511
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    move/from16 v46, v0

    rem-int/lit8 v46, v46, 0x5

    if-nez v46, :cond_16

    .line 3512
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "gsm.operator.isroaming - Property: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v48

    invoke-static/range {v47 .. v48}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ", ServiceState: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ", SIM Slot: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3515
    :cond_16
    const-wide/16 v46, 0x64

    invoke-static/range {v46 .. v47}, Landroid/os/SystemClock;->sleep(J)V

    .line 3517
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    move/from16 v46, v0

    add-int/lit8 v46, v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->propertyCount:I

    const/16 v47, 0x32

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_15

    .line 3518
    const-string v46, "Property set count 50. So we use break"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3524
    :cond_17
    const-string v46, "CTC"

    const-string v47, "CMCC"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_18

    .line 3525
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setChinaMainlandProperty()V

    .line 3526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getState()I

    move-result v47

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->displayTimeZoneRecommend(Ljava/lang/String;I)V

    .line 3529
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 3542
    .end local v33    # "operatorNumeric":Ljava/lang/String;
    .end local v35    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v36    # "serviceStateForProperty":I
    :cond_19
    if-eqz v17, :cond_1a

    .line 3543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3546
    :cond_1a
    if-eqz v18, :cond_1b

    .line 3547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3550
    :cond_1b
    if-nez v15, :cond_1c

    if-eqz v22, :cond_1d

    .line 3551
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 3552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 3555
    :cond_1d
    if-eqz v25, :cond_1e

    .line 3556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3562
    :cond_1e
    if-eqz v24, :cond_1f

    .line 3563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3569
    :cond_1f
    if-eqz v20, :cond_20

    .line 3570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 3572
    const-string v46, "TCE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v47

    const-string v48, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual/range {v47 .. v48}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_20

    .line 3573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v46

    if-nez v46, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v46

    if-eqz v46, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_20

    .line 3574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoutingAreaChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3580
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v46

    if-nez v46, :cond_4c

    .line 3581
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move/from16 v46, v0

    if-nez v46, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    move/from16 v46, v0

    if-nez v46, :cond_21

    .line 3582
    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 3584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string v47, "gprs_register_check_period_ms"

    const v48, 0xea60

    invoke-static/range {v46 .. v48}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 3588
    .local v7, "check_period":I
    const/16 v46, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v46

    int-to-long v0, v7

    move-wide/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-wide/from16 v2, v47

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3595
    .end local v7    # "check_period":I
    :cond_21
    :goto_15
    return-void

    .line 2701
    .end local v11    # "dualmodeTest":Ljava/lang/String;
    .end local v13    # "hasChanged":Z
    .end local v14    # "hasChangedChinaMcc":Z
    .end local v15    # "hasDataRegStateChanged":Z
    .end local v16    # "hasDeregistered":Z
    .end local v17    # "hasGprsAttached":Z
    .end local v18    # "hasGprsDetached":Z
    .end local v19    # "hasLimited":Z
    .end local v20    # "hasLocationChanged":Z
    .end local v21    # "hasRegistered":Z
    .end local v22    # "hasRilDataRadioTechnologyChanged":Z
    .end local v23    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v24    # "hasRoamingOff":Z
    .end local v25    # "hasRoamingOn":Z
    .end local v26    # "hasVoiceRegStateChanged":Z
    .end local v29    # "limitedExecpt":Z
    .end local v37    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    .end local v40    # "tss":Landroid/telephony/ServiceState;
    :cond_22
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 2723
    .restart local v14    # "hasChangedChinaMcc":Z
    .restart local v21    # "hasRegistered":Z
    :cond_23
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 2727
    .restart local v16    # "hasDeregistered":Z
    :cond_24
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 2731
    .restart local v17    # "hasGprsAttached":Z
    :cond_25
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 2735
    .restart local v18    # "hasGprsDetached":Z
    :cond_26
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2738
    .restart local v15    # "hasDataRegStateChanged":Z
    :cond_27
    const/16 v26, 0x0

    goto/16 :goto_5

    .line 2741
    .restart local v26    # "hasVoiceRegStateChanged":Z
    :cond_28
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 2744
    .restart local v23    # "hasRilVoiceRadioTechnologyChanged":Z
    :cond_29
    const/16 v22, 0x0

    goto/16 :goto_7

    .line 2747
    .restart local v22    # "hasRilDataRadioTechnologyChanged":Z
    :cond_2a
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 2749
    .restart local v13    # "hasChanged":Z
    :cond_2b
    const/16 v25, 0x0

    goto/16 :goto_9

    .line 2751
    .restart local v25    # "hasRoamingOn":Z
    :cond_2c
    const/16 v24, 0x0

    goto/16 :goto_a

    .line 2753
    .restart local v24    # "hasRoamingOff":Z
    :cond_2d
    const/16 v20, 0x0

    goto/16 :goto_b

    .line 2755
    .restart local v20    # "hasLocationChanged":Z
    :cond_2e
    const/16 v19, 0x0

    goto/16 :goto_c

    .line 3253
    .restart local v11    # "dualmodeTest":Ljava/lang/String;
    .restart local v19    # "hasLimited":Z
    .restart local v29    # "limitedExecpt":Z
    .restart local v37    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v40    # "tss":Landroid/telephony/ServiceState;
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_d

    .line 3289
    .restart local v27    # "imsi":Ljava/lang/String;
    .restart local v32    # "operatorMccMnc":Ljava/lang/String;
    .restart local v33    # "operatorNumeric":Ljava/lang/String;
    .restart local v34    # "operatorSIM":Ljava/lang/String;
    .restart local v35    # "prevOperatorNumeric":Ljava/lang/String;
    .restart local v38    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_30
    const-string v46, "73009"

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_10

    .line 3291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.operator.alpha"

    const-string v48, "Nextel R"

    invoke-virtual/range {v46 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 3304
    :cond_31
    const-string v46, "7300702"

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_32

    .line 3306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.operator.alpha"

    const-string v48, "Virgin"

    invoke-virtual/range {v46 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 3308
    :cond_32
    const-string v46, "7300703"

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_33

    .line 3310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.operator.alpha"

    const-string v48, "GTEL Netline"

    invoke-virtual/range {v46 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 3312
    :cond_33
    const-string v46, "7300704"

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_11

    .line 3314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.operator.alpha"

    const-string v48, "Colo-Colo"

    invoke-virtual/range {v46 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 3327
    :cond_34
    const-string v46, "732103054"

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_35

    const-string v46, "732103055"

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_36

    .line 3329
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.operator.alpha"

    const-string v48, "Exito"

    invoke-virtual/range {v46 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 3331
    :cond_36
    const-string v46, "732103018"

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_37

    const-string v46, "732103019"

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_38

    .line 3333
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.operator.alpha"

    const-string v48, "Uff Movil"

    invoke-virtual/range {v46 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 3335
    :cond_38
    const-string v46, "732103024"

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_39

    const-string v46, "7321030027"

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_39

    const-string v46, "7321030028"

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_39

    const-string v46, "7321030029"

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_12

    .line 3337
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.operator.alpha"

    const-string v48, "UNE"

    invoke-virtual/range {v46 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 3341
    :cond_3a
    if-eqz v32, :cond_12

    const-string v46, "732123"

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_12

    .line 3343
    if-eqz v27, :cond_12

    .line 3344
    const-string v46, "732123900"

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_3b

    const-string v46, "732154"

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_12

    .line 3346
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.operator.alpha"

    const-string v48, "Virgin Mobile"

    invoke-virtual/range {v46 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 3364
    .end local v27    # "imsi":Ljava/lang/String;
    .end local v32    # "operatorMccMnc":Ljava/lang/String;
    .end local v34    # "operatorSIM":Ljava/lang/String;
    .end local v38    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    if-eqz v46, :cond_13

    .line 3365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneInfoShareManager:Lcom/android/internal/telephony/PhoneInfoShareManager;

    move-object/from16 v46, v0

    const/16 v46, 0x0

    sput-boolean v46, Lcom/android/internal/telephony/PhoneInfoShareManager;->IsalreadysendNITZ:Z

    goto/16 :goto_11

    .line 3375
    :cond_3d
    const-string v28, ""

    .line 3376
    .local v28, "iso":Ljava/lang/String;
    const-string v31, ""

    .line 3378
    .local v31, "mcc":Ljava/lang/String;
    const/16 v46, 0x0

    const/16 v47, 0x3

    :try_start_0
    move-object/from16 v0, v33

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 3379
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v46 .. v46}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v28

    .line 3386
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const-string v47, "gsm.operator.iso-country"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3387
    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 3389
    const/16 v44, 0x0

    .line 3390
    .local v44, "zone":Ljava/util/TimeZone;
    const-string v46, "452"

    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_3f

    .line 3391
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v46, v0

    if-nez v46, :cond_3f

    const-string v46, "000"

    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_3f

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v46

    if-nez v46, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v46

    if-eqz v46, :cond_3f

    .line 3395
    const-string v46, "telephony.test.ignore.nitz"

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    if-eqz v46, :cond_43

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v46

    const-wide/16 v48, 0x1

    and-long v46, v46, v48

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-nez v46, :cond_43

    const/16 v39, 0x1

    .line 3399
    .local v39, "testOneUniqueOffsetPath":Z
    :goto_17
    invoke-static/range {v28 .. v28}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v43

    .line 3400
    .local v43, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_3e

    if-eqz v39, :cond_44

    .line 3401
    :cond_3e
    const/16 v46, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    .end local v44    # "zone":Ljava/util/TimeZone;
    check-cast v44, Ljava/util/TimeZone;

    .line 3403
    .restart local v44    # "zone":Ljava/util/TimeZone;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: no nitz but one TZ for iso-cc="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " with zone.getID="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v44 .. v44}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " testOneUniqueOffsetPath="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3407
    invoke-virtual/range {v44 .. v44}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 3419
    .end local v39    # "testOneUniqueOffsetPath":Z
    .end local v43    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_3f
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v33

    move-object/from16 v3, v35

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v46

    if-eqz v46, :cond_14

    .line 3424
    const-string v46, "persist.sys.timezone"

    invoke-static/range {v46 .. v46}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 3426
    .local v45, "zoneName":Ljava/lang/String;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: fix time zone zoneName=\'"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\' mZoneOffset="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " mZoneDst="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " iso-cc=\'"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\' iso-cc-idx="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sget-object v47, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v47

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3438
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v46, v0

    if-nez v46, :cond_46

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v46, v0

    if-nez v46, :cond_46

    if-eqz v45, :cond_46

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v46

    if-lez v46, :cond_46

    sget-object v46, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v46

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v46

    if-gez v46, :cond_46

    .line 3441
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v44

    .line 3442
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v46, v0

    if-eqz v46, :cond_40

    .line 3445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 3446
    .local v9, "ctm":J
    move-object/from16 v0, v44

    invoke-virtual {v0, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v46

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v41, v0

    .line 3448
    .local v41, "tzOffset":J
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: tzOffset="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " ltod="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3451
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v46

    if-eqz v46, :cond_45

    .line 3452
    sub-long v5, v9, v41

    .line 3453
    .local v5, "adj":J
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: adj ltod="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static {v5, v6}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3455
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 3461
    .end local v5    # "adj":J
    .end local v9    # "ctm":J
    .end local v41    # "tzOffset":J
    :cond_40
    :goto_19
    const-string v46, "pollStateDone: using default TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3479
    :cond_41
    :goto_1a
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 3481
    if-eqz v44, :cond_49

    .line 3482
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: zone != null zone.getID="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v44 .. v44}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3483
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v46

    if-eqz v46, :cond_42

    .line 3484
    invoke-virtual/range {v44 .. v44}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 3487
    :cond_42
    invoke-virtual/range {v44 .. v44}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 3380
    .end local v44    # "zone":Ljava/util/TimeZone;
    .end local v45    # "zoneName":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 3381
    .local v12, "ex":Ljava/lang/NumberFormatException;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 3382
    .end local v12    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v12

    .line 3383
    .local v12, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 3395
    .end local v12    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v44    # "zone":Ljava/util/TimeZone;
    :cond_43
    const/16 v39, 0x0

    goto/16 :goto_17

    .line 3410
    .restart local v39    # "testOneUniqueOffsetPath":Z
    .restart local v43    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_44
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: there are "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " unique offsets for iso-cc=\'"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " testOneUniqueOffsetPath="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\', do nothing"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 3458
    .end local v39    # "testOneUniqueOffsetPath":Z
    .end local v43    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .restart local v9    # "ctm":J
    .restart local v41    # "tzOffset":J
    .restart local v45    # "zoneName":Ljava/lang/String;
    :cond_45
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    move-wide/from16 v46, v0

    sub-long v46, v46, v41

    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    goto/16 :goto_19

    .line 3462
    .end local v9    # "ctm":J
    .end local v41    # "tzOffset":J
    :cond_46
    const-string v46, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_47

    .line 3465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    if-nez v46, :cond_41

    .line 3466
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v47

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v44

    .line 3467
    const-string v46, "pollStateDone: using NITZ TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 3470
    :cond_47
    const-string v46, "452"

    move-object/from16 v0, v31

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_48

    .line 3471
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v48, v0

    move/from16 v0, v46

    move/from16 v1, v47

    move-wide/from16 v2, v48

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v44

    .line 3472
    const-string v46, "pollStateDone: using getTimeZone(off, dst, time, iso)"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 3474
    :cond_48
    const-string v46, "pollStateDone: no using getTimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 3489
    :cond_49
    const-string v46, "pollStateDone: zone == null"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 3494
    .end local v28    # "iso":Ljava/lang/String;
    .end local v31    # "mcc":Ljava/lang/String;
    .end local v44    # "zone":Ljava/util/TimeZone;
    .end local v45    # "zoneName":Ljava/lang/String;
    :cond_4a
    const-string v46, "false"

    goto/16 :goto_13

    .line 3510
    .restart local v36    # "serviceStateForProperty":I
    :cond_4b
    const-string v46, "false"

    goto/16 :goto_14

    .line 3592
    .end local v33    # "operatorNumeric":Ljava/lang/String;
    .end local v35    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v36    # "serviceStateForProperty":I
    :cond_4c
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto/16 :goto_15
.end method

.method protected regCodeIsRoaming(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 3914
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected regCodeToServiceState(I)I
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3875
    packed-switch p1, :pswitch_data_0

    .line 3903
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regCodeToServiceState: unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3904
    :goto_0
    :pswitch_1
    return v0

    .line 3893
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 3896
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 3900
    goto :goto_0

    .line 3875
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected saveNitzTime(J)V
    .locals 2
    .param p1, "time"    # J

    .prologue
    .line 4523
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    .line 4524
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    .line 4525
    return-void
.end method

.method protected saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 4519
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 4520
    return-void
.end method

.method protected sendBroadcastRegisterDualmode()V
    .locals 3

    .prologue
    .line 5753
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REGISTER_DUALMODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5754
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "[DUALMODE] Broadcast REGISTER_DUALMODE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5755
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5756
    return-void
.end method

.method protected sendMessageForBlockLteBand()V
    .locals 3

    .prologue
    .line 6221
    const-string v0, "[BlockLteBand] GetPreferredNetworkType before sending message"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 6222
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x2d

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 6223
    return-void
.end method

.method protected sendMessageForChangeNetworkMode()V
    .locals 5

    .prologue
    .line 5735
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkDualmodeTest()Ljava/lang/String;

    move-result-object v0

    .line 5736
    .local v0, "dualmodeTest":Ljava/lang/String;
    const-string v1, ""

    .line 5737
    .local v1, "simState":Ljava/lang/String;
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5738
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5739
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x75

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 5741
    :cond_0
    return-void
.end method

.method protected setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 4567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAndBroadcastNetworkSetTime: time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4580
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 4581
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4582
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4583
    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4584
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4591
    return-void
.end method

.method protected setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 4534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndBroadcastNetworkSetTimeZone: setTimeZone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4547
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4549
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 4550
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4551
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4552
    const-string v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4553
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndBroadcastNetworkSetTimeZone: call alarm.setTimeZone and broadcast zoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4558
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1640
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_EnableCallBlock4TDF"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1642
    :cond_0
    const-string v5, "ril.block4TDF"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1643
    .local v4, "tdfBlock":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TDF Block = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1644
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1646
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.latin.tdfnotifier.action.TDF_ACTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1647
    .local v2, "i":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1648
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1731
    .end local v2    # "i":Landroid/content/Intent;
    .end local v4    # "tdfBlock":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1649
    .restart local v4    # "tdfBlock":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1650
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "ActivityNotFoundException : TDFNotifier not installed"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1655
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    :try_start_1
    new-instance v5, Ljava/io/File;

    const-string v6, "/efs/FactoryApp/cblkftdf"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1661
    :goto_1
    if-eqz v4, :cond_3

    const-string v5, "ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1663
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.latin.tdfnotifier.action.TDF_ACTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1664
    .restart local v2    # "i":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1665
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1669
    .end local v2    # "i":Landroid/content/Intent;
    :goto_2
    const-string v5, "ril.block4TDF"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v9, v8}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 1656
    :catch_1
    move-exception v1

    .line 1657
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "OFF"

    .line 1658
    const-string v5, "Cannot open file"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1666
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 1667
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "ActivityNotFoundException : TDFNotifier not installed"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1677
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "tdfBlock":Ljava/lang/String;
    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v5, v6, :cond_6

    .line 1680
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getStkRefreshSimRestEnable()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1681
    const-string v5, "setRadioPower to true"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1682
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v10, v8}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1726
    :cond_4
    :goto_3
    const-string v5, "sys.deviceOffReq"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1727
    .local v3, "shutdownFlag":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1728
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v9, v8}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1684
    .end local v3    # "shutdownFlag":Ljava/lang/String;
    :cond_5
    const-string v5, "####setSimPower to true GsmServiceStateTracker"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1686
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v10, v8}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1687
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/PhoneBase;->setStkRefreshSimRestEnable(Z)Z

    goto :goto_3

    .line 1708
    :cond_6
    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1710
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v5, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1711
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto :goto_3
.end method

.method protected setPrefNetTypeForMultiSim()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 6122
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6123
    .local v3, "salesCode":Ljava/lang/String;
    const-string v4, "ril.MSIMM"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6124
    .local v1, "msimm":Ljava/lang/String;
    const-string v4, "persist.radio.dsds.msimm"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6125
    .local v2, "networkModeFlag":Ljava/lang/String;
    const/4 v0, 0x0

    .line 6127
    .local v0, "masterSlot":I
    const-string v4, "CHM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CHC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6128
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkMasterSlot()I

    move-result v0

    .line 6130
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MultiSim] Master slot : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Current Slot : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 6132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MultiSim] networkModeFlag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", useSlot2Data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->useSlot2Data:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isCmccSIM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCmccSIM:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 6133
    const-string v4, "false"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->useSlot2Data:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCmccSIM:Z

    if-eqz v4, :cond_4

    .line 6134
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MultiSim] CurentNetworkType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 6136
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    if-eq v4, v8, :cond_6

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    if-eq v4, v7, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v4

    if-ne v0, v4, :cond_6

    .line 6138
    const-string v4, "[MultiSim] Set master slot network mode to W/G or T/G"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 6139
    const-string v4, "CHM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "CHC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6140
    :cond_3
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 6144
    :goto_0
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$12;

    invoke-direct {v5, p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$12;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 6179
    :cond_4
    :goto_1
    return-void

    .line 6142
    :cond_5
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_0

    .line 6171
    :cond_6
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    if-eq v4, v6, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v4

    if-eq v0, v4, :cond_4

    .line 6172
    const-string v4, "[MultiSim] Set slave slot network mode to Gsm only"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 6173
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 6174
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 6175
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setModeFlag:Z

    goto :goto_1
.end method

.method protected final setRegAuthInfo(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x4

    .line 680
    const-string v7, "ril.skt.network_regist"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 682
    .local v3, "ril":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "Idle"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ril ril= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 687
    const-string v7, ";"

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 689
    .local v5, "rtsValues":[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "idleValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 693
    .local v4, "rtsIdleValue":I
    const/4 v6, 0x0

    .line 694
    .local v6, "textId":I
    const/4 v1, 0x0

    .line 695
    .local v1, "isCarrierSim":Z
    const/4 v2, 0x0

    .line 697
    .local v2, "isRoaming":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rtsIdleValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 699
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 713
    :pswitch_1
    const-string v7, "0"

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Reg:Ljava/lang/String;

    .line 714
    const-string v7, "0"

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Auth:Ljava/lang/String;

    goto :goto_0

    .line 699
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setSignalStrengthDefaultValues()V
    .locals 2

    .prologue
    .line 2590
    new-instance v0, Landroid/telephony/SignalStrength;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 2591
    return-void
.end method

.method protected setSilentReset()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 5693
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5694
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5695
    .local v1, "dos":Ljava/io/DataOutputStream;
    const-string v6, "ril.deviceOffReq = 1"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5697
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.SILENT_RESETBY_DUALMODE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5698
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "[DUALMODE] Broadcast SILENT_RESETBY_DUALMODE"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5699
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5701
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v7, "ril.deviceOffReq"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5702
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 5703
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 5704
    const-wide/16 v6, 0x14

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 5707
    const/4 v5, 0x4

    .line 5708
    .local v5, "size":I
    const/16 v6, 0x10

    :try_start_0
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5709
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5710
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5714
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 5716
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 5717
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5723
    :cond_1
    :goto_1
    return-void

    .line 5711
    :catch_0
    move-exception v2

    .line 5712
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 5718
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 5719
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method protected setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 37
    .param p1, "nitz"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    .line 4174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    .line 4175
    .local v24, "start":J
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "NITZ: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " start="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " delay="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sub-long v33, v24, p2

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4179
    const v32, 0x1005f5

    move/from16 v0, v32

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4183
    const/4 v5, 0x0

    .line 4187
    .local v5, "IsMccChanged":Z
    const-string v32, "[NAM] Close Manual Selection Popup. Send Intent ACTION_NITZ_SET_TIME."

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4188
    new-instance v13, Landroid/content/Intent;

    const-string v32, "android.intent.action.NITZ_SET_TIME"

    move-object/from16 v0, v32

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4189
    .local v13, "intent":Landroid/content/Intent;
    const/high16 v32, 0x20000000

    move/from16 v0, v32

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4196
    :try_start_0
    const-string v32, "GMT"

    invoke-static/range {v32 .. v32}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 4198
    .local v6, "c":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    .line 4199
    const/16 v32, 0x10

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 4201
    const-string v32, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 4202
    .local v19, "nitzSubs":[Ljava/lang/String;
    const/16 v28, 0x1

    .line 4203
    .local v28, "tzOffsetSign":Z
    const/16 v30, 0x0

    .line 4205
    .local v30, "year":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v32

    const-string v33, "CscFeature_RIL_HandleInvalidTimezonOffset"

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 4206
    const-string v32, "[/:,]"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 4207
    .local v20, "preNitzSubs":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 4209
    .local v11, "i":I
    const/4 v11, 0x0

    :goto_0
    const/16 v32, 0x6

    move/from16 v0, v32

    if-ge v11, v0, :cond_0

    .line 4210
    aget-object v32, v20, v11

    const-string v33, "-1"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_1

    .line 4213
    :cond_0
    const/16 v32, 0x6

    move/from16 v0, v32

    if-ne v11, v0, :cond_4

    .line 4215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4218
    const/16 v32, 0x5

    aget-object v32, v20, v32

    const-string v33, "[+-]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 4219
    .local v21, "secAndTzOffset":[Ljava/lang/String;
    const/16 v32, 0x5

    aget-object v32, v20, v32

    const/16 v33, 0x2d

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v32

    if-nez v32, :cond_2

    const/16 v28, 0x1

    .line 4221
    :goto_1
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 4222
    const/4 v11, 0x0

    :goto_2
    const/16 v32, 0x6

    move/from16 v0, v32

    if-ge v11, v0, :cond_3

    .line 4223
    const/16 v32, 0x0

    aput-object v32, v19, v11

    .line 4222
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 4209
    .end local v21    # "secAndTzOffset":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 4219
    .restart local v21    # "secAndTzOffset":[Ljava/lang/String;
    :cond_2
    const/16 v28, 0x0

    goto :goto_1

    .line 4225
    :cond_3
    const/16 v32, 0x6

    const/16 v33, 0x2

    aget-object v33, v21, v33

    aput-object v33, v19, v32

    .line 4226
    const/4 v11, 0x7

    :goto_3
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    if-ge v11, v0, :cond_5

    .line 4227
    add-int/lit8 v32, v11, -0x1

    aget-object v32, v20, v32

    aput-object v32, v19, v11

    .line 4226
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 4230
    .end local v21    # "secAndTzOffset":[Ljava/lang/String;
    :cond_4
    const/16 v32, 0x0

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v30, v0

    .line 4231
    const/16 v32, 0x1

    move/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 4234
    const/16 v32, 0x1

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    add-int/lit8 v18, v32, -0x1

    .line 4235
    .local v18, "month":I
    const/16 v32, 0x2

    move/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 4237
    const/16 v32, 0x2

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 4238
    .local v7, "date":I
    const/16 v32, 0x5

    move/from16 v0, v32

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 4240
    const/16 v32, 0x3

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 4241
    .local v10, "hour":I
    const/16 v32, 0xa

    move/from16 v0, v32

    invoke-virtual {v6, v0, v10}, Ljava/util/Calendar;->set(II)V

    .line 4243
    const/16 v32, 0x4

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 4244
    .local v17, "minute":I
    const/16 v32, 0xc

    move/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 4246
    const/16 v32, 0x5

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 4247
    .local v22, "second":I
    const/16 v32, 0xd

    move/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 4270
    .end local v7    # "date":I
    .end local v10    # "hour":I
    .end local v11    # "i":I
    .end local v17    # "minute":I
    .end local v18    # "month":I
    .end local v20    # "preNitzSubs":[Ljava/lang/String;
    .end local v22    # "second":I
    :cond_5
    :goto_4
    const/16 v32, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v32

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_12

    const/16 v23, 0x1

    .line 4272
    .local v23, "sign":Z
    :goto_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v32

    const-string v33, "CscFeature_RIL_HandleInvalidTimezonOffset"

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 4274
    const/16 v32, 0x0

    aget-object v32, v19, v32

    if-nez v32, :cond_6

    .line 4275
    move/from16 v23, v28

    .line 4280
    :cond_6
    const/16 v32, 0x6

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 4282
    .local v27, "tzOffset":I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_13

    const/16 v32, 0x7

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 4292
    .local v8, "dst":I
    :goto_6
    if-eqz v23, :cond_14

    const/16 v32, 0x1

    :goto_7
    mul-int v32, v32, v27

    mul-int/lit8 v32, v32, 0xf

    mul-int/lit8 v32, v32, 0x3c

    move/from16 v0, v32

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    .line 4294
    const/16 v31, 0x0

    .line 4300
    .local v31, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x9

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_7

    .line 4301
    const/16 v32, 0x8

    aget-object v32, v19, v32

    const/16 v33, 0x21

    const/16 v34, 0x2f

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v29

    .line 4302
    .local v29, "tzname":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v31

    .line 4329
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_15

    .line 4330
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[NITZ] get the MCC. "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4331
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v26

    .line 4333
    .local v26, "tempIso":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    const-string v33, "gsm.operator.iso-country"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4334
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 4335
    const/16 v31, 0x0

    .line 4336
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 4343
    .end local v26    # "tempIso":Ljava/lang/String;
    .end local v29    # "tzname":Ljava/lang/String;
    :cond_7
    :goto_8
    const-string v32, "gsm.operator.iso-country"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4345
    .local v14, "iso":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[NITZ] setTimeFromNITZString: iso = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", dst = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", ZoneOffset = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", Year ="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4348
    const/16 v32, 0x0

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v30, v0

    .line 4349
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[NITZ] setTimeFromNITZString: Year = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "302"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_b

    const-string v32, "ca"

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_b

    const/16 v32, 0x7da

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    const v32, -0x1499700

    move/from16 v0, v27

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    if-eqz v8, :cond_a

    :cond_8
    const/16 v32, 0x7d8

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    const v32, -0x112a880

    move/from16 v0, v27

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    const/16 v32, 0x1

    move/from16 v0, v32

    if-eq v8, v0, :cond_a

    :cond_9
    const/16 v32, 0x7db

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    const v32, -0x1808580

    move/from16 v0, v27

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v8, v0, :cond_b

    .line 4351
    :cond_a
    const-string v32, "iso remove"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4352
    const/4 v14, 0x0

    .line 4365
    :cond_b
    if-nez v31, :cond_c

    .line 4367
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v32, v0

    if-eqz v32, :cond_c

    .line 4368
    if-eqz v14, :cond_17

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_17

    .line 4369
    if-eqz v8, :cond_16

    const/16 v32, 0x1

    :goto_9
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    move/from16 v0, v27

    move/from16 v1, v32

    move-wide/from16 v2, v33

    invoke-static {v0, v1, v2, v3, v14}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v31

    .line 4382
    :cond_c
    :goto_a
    if-eqz v31, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v33, v0

    if-eqz v8, :cond_19

    const/16 v32, 0x1

    :goto_b
    move/from16 v0, v33

    move/from16 v1, v32

    if-eq v0, v1, :cond_e

    .line 4387
    :cond_d
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 4388
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    .line 4389
    if-eqz v8, :cond_1a

    const/16 v32, 0x1

    :goto_c
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    .line 4390
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    .line 4393
    :cond_e
    if-eqz v31, :cond_10

    .line 4395
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 4402
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v32

    if-eqz v32, :cond_f

    .line 4403
    invoke-virtual/range {v31 .. v31}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 4405
    :cond_f
    invoke-virtual/range {v31 .. v31}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 4408
    :cond_10
    const-string v32, "gsm.ignore-nitz"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4409
    .local v12, "ignore":Ljava/lang/String;
    if-eqz v12, :cond_1b

    const-string v32, "yes"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1b

    .line 4410
    const-string v32, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4498
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v8    # "dst":I
    .end local v12    # "ignore":Ljava/lang/String;
    .end local v14    # "iso":Ljava/lang/String;
    .end local v19    # "nitzSubs":[Ljava/lang/String;
    .end local v23    # "sign":Z
    .end local v27    # "tzOffset":I
    .end local v28    # "tzOffsetSign":Z
    .end local v30    # "year":I
    .end local v31    # "zone":Ljava/util/TimeZone;
    :goto_d
    return-void

    .line 4251
    .restart local v6    # "c":Ljava/util/Calendar;
    .restart local v19    # "nitzSubs":[Ljava/lang/String;
    .restart local v28    # "tzOffsetSign":Z
    .restart local v30    # "year":I
    :cond_11
    const/16 v32, 0x0

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v30, v0

    .line 4252
    const/16 v32, 0x1

    move/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 4255
    const/16 v32, 0x1

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    add-int/lit8 v18, v32, -0x1

    .line 4256
    .restart local v18    # "month":I
    const/16 v32, 0x2

    move/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 4258
    const/16 v32, 0x2

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 4259
    .restart local v7    # "date":I
    const/16 v32, 0x5

    move/from16 v0, v32

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 4261
    const/16 v32, 0x3

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 4262
    .restart local v10    # "hour":I
    const/16 v32, 0xa

    move/from16 v0, v32

    invoke-virtual {v6, v0, v10}, Ljava/util/Calendar;->set(II)V

    .line 4264
    const/16 v32, 0x4

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 4265
    .restart local v17    # "minute":I
    const/16 v32, 0xc

    move/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 4267
    const/16 v32, 0x5

    aget-object v32, v19, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 4268
    .restart local v22    # "second":I
    const/16 v32, 0xd

    move/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 4490
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "date":I
    .end local v10    # "hour":I
    .end local v17    # "minute":I
    .end local v18    # "month":I
    .end local v19    # "nitzSubs":[Ljava/lang/String;
    .end local v22    # "second":I
    .end local v28    # "tzOffsetSign":Z
    .end local v30    # "year":I
    :catch_0
    move-exception v9

    .line 4491
    .local v9, "ex":Ljava/lang/RuntimeException;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " ex="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4496
    .end local v9    # "ex":Ljava/lang/RuntimeException;
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneInfoShareManager:Lcom/android/internal/telephony/PhoneInfoShareManager;

    move-object/from16 v32, v0

    const/16 v32, 0x1

    sput-boolean v32, Lcom/android/internal/telephony/PhoneInfoShareManager;->IsalreadysendNITZ:Z

    goto/16 :goto_d

    .line 4270
    .restart local v6    # "c":Ljava/util/Calendar;
    .restart local v19    # "nitzSubs":[Ljava/lang/String;
    .restart local v28    # "tzOffsetSign":Z
    .restart local v30    # "year":I
    :cond_12
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 4282
    .restart local v23    # "sign":Z
    .restart local v27    # "tzOffset":I
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 4292
    .restart local v8    # "dst":I
    :cond_14
    const/16 v32, -0x1

    goto/16 :goto_7

    .line 4338
    .restart local v29    # "tzname":Ljava/lang/String;
    .restart local v31    # "zone":Ljava/util/TimeZone;
    :cond_15
    :try_start_1
    const-string v32, "[NITZ] get the TimeZone."

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 4369
    .end local v29    # "tzname":Ljava/lang/String;
    .restart local v14    # "iso":Ljava/lang/String;
    :cond_16
    const/16 v32, 0x0

    goto/16 :goto_9

    .line 4377
    :cond_17
    if-eqz v8, :cond_18

    const/16 v32, 0x1

    :goto_f
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v32

    move-wide/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v31

    goto/16 :goto_a

    :cond_18
    const/16 v32, 0x0

    goto :goto_f

    .line 4382
    :cond_19
    const/16 v32, 0x0

    goto/16 :goto_b

    .line 4389
    :cond_1a
    const/16 v32, 0x0

    goto/16 :goto_c

    .line 4415
    .restart local v12    # "ignore":Ljava/lang/String;
    :cond_1b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4417
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v32

    if-eqz v32, :cond_1e

    .line 4418
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    sub-long v15, v32, p2

    .line 4421
    .local v15, "millisSinceNitzReceived":J
    const-wide/16 v32, 0x0

    cmp-long v32, v15, v32

    if-gez v32, :cond_1c

    .line 4424
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4488
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_d

    .line 4431
    :cond_1c
    const-wide/32 v32, 0x7fffffff

    cmp-long v32, v15, v32

    if-lez v32, :cond_1d

    .line 4434
    :try_start_4
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-wide/32 v33, 0x5265c00

    div-long v33, v15, v33

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " days"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4488
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_d

    .line 4442
    :cond_1d
    const/16 v32, 0xe

    long-to-int v0, v15

    move/from16 v33, v0

    :try_start_6
    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 4445
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "NITZ: Setting time of day to "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " NITZ receive delay(ms): "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " gained(ms): "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    sub-long v33, v33, v35

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " from "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4452
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 4453
    const-string v32, "NITZ: after Setting time of day"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logi(Ljava/lang/String;)V

    .line 4456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NITZCount:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_1e

    .line 4457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v32

    const v33, 0x10408dd

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    .line 4458
    const-string v32, "Show <Auto-Update of Time and Date>"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logi(Ljava/lang/String;)V

    .line 4459
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NITZCount:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NITZCount:I

    .line 4477
    .end local v15    # "millisSinceNitzReceived":J
    :cond_1e
    const-string v32, "gsm.nitz.time"

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4481
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTime(J)V

    .line 4486
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4488
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_e

    :catchall_0
    move-exception v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v32
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method protected showRescanDialog()V
    .locals 4

    .prologue
    .line 5276
    const-string v2, "ManualSelectionReceiver"

    const-string v3, "showRescanDialog"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5277
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 5279
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5281
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x10408dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5282
    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRescanDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5284
    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRescanDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5286
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 5292
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    .line 5293
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$11;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$11;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5299
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 5300
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 5301
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsFlightMode:Z

    .line 5302
    return-void
.end method

.method protected updateApnPreferredMode()V
    .locals 8

    .prologue
    const/16 v7, 0x6b

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 5806
    const-string v3, "persist.radio.rplmn"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5807
    .local v0, "checkRplmn":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v3, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 5808
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLteDataOnRoamingEnabled()Z

    move-result v2

    .line 5810
    .local v2, "isLteRoamingOn":Z
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LTE_ROAMING : hasRegistered in Roam, persist.radio.rplmn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), LteRoamingOn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5812
    const-string v3, "domestic"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5813
    :cond_0
    const-string v3, "persist.radio.rplmn"

    const-string v4, "oversea"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5814
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyApnChangeToRIL()V

    .line 5815
    if-nez v2, :cond_1

    .line 5816
    const-string v3, "LTE_ROAMING : Home -> Roaming : setPreferredNetworkType G/W"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5817
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 5838
    :cond_1
    :goto_0
    return-void

    .line 5821
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LTE_ROAMING : hasRegistered, persist.radio.rplmn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), LteRoamingOn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5822
    if-eqz v2, :cond_3

    .line 5823
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setLteDataOnRoamingEnabled(Z)V

    .line 5825
    :cond_3
    const-string v3, "oversea"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5826
    const-string v3, "LTE_ROAMING : getPreferredNetworkType by checkRplmn(oversea)"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5827
    const-string v3, "persist.radio.rplmn"

    const-string v4, "domestic"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5828
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyApnChangeToRIL()V

    .line 5829
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 5836
    :goto_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReceivedHomeNetowkNoti:Z

    goto :goto_0

    .line 5830
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReceivedHomeNetowkNoti:Z

    if-eqz v3, :cond_5

    .line 5831
    const-string v3, "LTE_ROAMING : getPreferredNetworkType by mReceivedHomeNetowkNoti"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5832
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_1

    .line 5834
    :cond_5
    const-string v3, "LTE_ROAMING : checkRplmn(null or domestic) && mReceivedHomeNetowkNoti(false)"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected updateChinaSpnDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "plmnValue"    # Ljava/lang/String;

    .prologue
    .line 5401
    move-object v4, p1

    .line 5402
    .local v4, "mPlmn":Ljava/lang/String;
    const-string v8, "gsm.sim.operator.numeric"

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5404
    .local v5, "mSim":Ljava/lang/String;
    const-string v8, "[ROAM] Access updateChinaSpnDisplay"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 5407
    const-string v8, "46000"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "46001"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "46002"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "46007"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "46008"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    :cond_0
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v8, :cond_c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_c

    .line 5409
    const-string v8, "gsm.network.type"

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5410
    .local v3, "mAct":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v8

    if-nez v8, :cond_a

    .line 5411
    const-string v8, "46001"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 5412
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 5413
    .local v2, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v7

    .line 5414
    .local v7, "spn":Ljava/lang/String;
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 5415
    move-object v4, v7

    .line 5416
    const-string v8, "Ali_Operator_name - Not empty SPN"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 5491
    .end local v2    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v3    # "mAct":Ljava/lang/String;
    .end local v7    # "spn":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v8, "45407"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_2

    .line 5492
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 5493
    .local v6, "operatorNumeric":Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v8, "460"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5494
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CU HK SIM card in CHINA network case. plmn : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5495
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10408fe

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5501
    .end local v6    # "operatorNumeric":Ljava/lang/String;
    :cond_2
    const-string v8, "CTC"

    const-string v9, "CMCC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 5502
    const-string v8, "gsm.sim.state"

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5504
    .local v1, "CardStatusGSM":Ljava/lang/String;
    const-string v8, "gsm.sim.currentcardstatus"

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5506
    .local v0, "CardOffStatus":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CardStatusGSM = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " CardOffStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5507
    const-string v8, "UNKNOWN"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "READY"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    :cond_3
    const-string v8, "2"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 5509
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040909

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5521
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 5522
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10401f3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5524
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Airplane mode, plmn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5527
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 5528
    const-string v4, "--"

    .line 5548
    .end local v0    # "CardOffStatus":Ljava/lang/String;
    .end local v1    # "CardStatusGSM":Ljava/lang/String;
    :cond_6
    :goto_3
    return-object v4

    .line 5413
    .restart local v2    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v3    # "mAct":Ljava/lang/String;
    :cond_7
    const-string v7, ""

    goto/16 :goto_0

    .line 5418
    .restart local v7    # "spn":Ljava/lang/String;
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10408fe

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getRatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5420
    const-string v8, "CU_Operator_name"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5423
    .end local v2    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v7    # "spn":Ljava/lang/String;
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10408fd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getRatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5425
    const-string v8, "CMCC_Operator_name"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5429
    :cond_a
    const-string v8, "CMCC"

    const-string v9, "CMCC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "46001"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 5431
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10408fd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5434
    :cond_b
    const-string v8, "GsmSST"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ROAM] It is roaming state with CHINA Operators SIM card. Except CMCC, Display registered plmn : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5438
    .end local v3    # "mAct":Ljava/lang/String;
    :cond_c
    const-string v8, "46692"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "46601"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "46688"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "46697"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "46693"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "46699"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "46689"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    :cond_d
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v8, :cond_13

    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v8

    if-nez v8, :cond_13

    .line 5441
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v8

    if-nez v8, :cond_1

    .line 5442
    const-string v8, "46692"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 5443
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10408ff

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 5446
    :cond_e
    const-string v8, "46601"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 5447
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040900

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 5450
    :cond_f
    const-string v8, "46688"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 5451
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040901

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 5454
    :cond_10
    const-string v8, "46689"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 5455
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040902

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 5458
    :cond_11
    const-string v8, "46697"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    const-string v8, "46693"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    const-string v8, "46699"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5459
    :cond_12
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040903

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 5477
    :cond_13
    const-string v8, "45412"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    const-string v8, "45413"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    const-string v8, "45416"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    const-string v8, "45419"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_14
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v8

    if-nez v8, :cond_1

    .line 5479
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v8

    if-nez v8, :cond_1

    .line 5480
    const-string v8, "45412"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    const-string v8, "45413"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 5481
    :cond_15
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040906

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 5484
    :cond_16
    const-string v8, "45416"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    const-string v8, "45419"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5485
    :cond_17
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040905

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 5512
    .restart local v0    # "CardOffStatus":Ljava/lang/String;
    .restart local v1    # "CardStatusGSM":Ljava/lang/String;
    :cond_18
    const-string v8, "ABSENT"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string v8, "UNKNOWN"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string v8, "NOT_READY"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 5513
    :cond_19
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x104090a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 5516
    :cond_1a
    const-string v8, "PIN_REQUIRED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    const-string v8, "PUK_REQUIRED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 5517
    :cond_1b
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040908

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 5532
    .end local v0    # "CardOffStatus":Ljava/lang/String;
    .end local v1    # "CardStatusGSM":Ljava/lang/String;
    :cond_1c
    const-string v8, "OPEN"

    const-string v9, "CMCC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 5533
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 5534
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10401f3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5536
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Airplane mode, plmn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method protected updateSpnDisplay()V
    .locals 23

    .prologue
    .line 1789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1790
    .local v3, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v11, 0x0

    .line 1791
    .local v11, "plmn":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1792
    .local v15, "showPlmn":Z
    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v13

    .line 1793
    .local v13, "rule":I
    :goto_0
    const-string v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1794
    .local v14, "salesCode":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1796
    .local v6, "isShowCSL":Z
    const-string v2, "isValidPlmn"

    .line 1797
    .local v2, "EXTRA_IS_VALID_PLMN":Ljava/lang/String;
    const/4 v7, 0x1

    .line 1799
    .local v7, "isValidPlmn":Z
    if-nez v3, :cond_0

    .line 1844
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 1846
    :cond_1
    const/4 v15, 0x1

    .line 1847
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v19, v0

    if-eqz v19, :cond_17

    .line 1849
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10405a9

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1861
    :goto_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateSpnDisplay: radio is on but out of service, set plmn=\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1881
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_RIL_PLMNFaking4Mvno"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "phone"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 1883
    .local v18, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 1884
    .local v4, "imsi":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    .line 1885
    .local v9, "operatorMccMnc":Ljava/lang/String;
    const-string v19, "gsm.sim.operator.numeric"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1888
    .local v10, "operatorSIM":Ljava/lang/String;
    if-eqz v10, :cond_2

    const-string v19, "73008"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1889
    if-eqz v9, :cond_2

    const-string v19, "73002"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1891
    if-eqz v4, :cond_2

    .line 1892
    const-string v11, "vtr"

    .line 1896
    :cond_2
    if-eqz v10, :cond_3

    const-string v19, "73007"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1897
    if-eqz v9, :cond_3

    const-string v19, "73002"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1899
    if-eqz v4, :cond_3

    .line 1900
    const-string v19, "7300701"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 1901
    const-string v11, "Gtd_Telsur"

    .line 1912
    :cond_3
    :goto_3
    if-eqz v9, :cond_6

    const-string v19, "73001"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "73010"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1913
    :cond_4
    if-eqz v4, :cond_6

    .line 1914
    const-string v19, "73001300"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    const-string v19, "73010300"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 1915
    :cond_5
    const-string v11, "Falabella"

    .line 1922
    :cond_6
    :goto_4
    if-eqz v9, :cond_26

    const-string v19, "732103"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_26

    .line 1924
    if-eqz v4, :cond_7

    .line 1925
    const-string v19, "732103017"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_20

    .line 1926
    const-string v11, "ETB"

    .line 1980
    .end local v4    # "imsi":Ljava/lang/String;
    .end local v9    # "operatorMccMnc":Ljava/lang/String;
    .end local v10    # "operatorSIM":Ljava/lang/String;
    .end local v18    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    .line 1981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setSpnDynamic(Ljava/lang/String;)V

    .line 1982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v13

    .line 1983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v19

    if-nez v19, :cond_8

    .line 1984
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_28

    and-int/lit8 v19, v13, 0x2

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_28

    const/4 v15, 0x1

    .line 1991
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsSIMLoadDone:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    :cond_9
    const-string v19, "CHU"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_29

    .line 2060
    :cond_a
    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v17

    .line 2061
    .local v17, "spn":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v19, v0

    if-nez v19, :cond_2f

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2f

    and-int/lit8 v19, v13, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2f

    const/16 v16, 0x1

    .line 2065
    .local v16, "showSpn":Z
    :goto_8
    const-string v19, "CHM"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    const-string v19, "TGY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    const-string v19, "BRI"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    const-string v19, "CWT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    const-string v19, "FET"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    const-string v19, "TWM"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    const-string v19, "CHZ"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    const-string v19, "CHU"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    const-string v19, "CHC"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    const-string v19, "CHN"

    const-string v20, "CHN"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 2068
    :cond_b
    const-string v19, "gsm.sim.operator.numeric"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2069
    .local v8, "mOperatorSim":Ljava/lang/String;
    const/4 v13, 0x2

    .line 2070
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateChinaSpnDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2071
    if-nez v11, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    const-string v19, "CTC"

    const-string v20, "CMCC"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 2074
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1040584

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2077
    :cond_c
    if-eqz v8, :cond_31

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_31

    .line 2078
    const-string v19, "45400"

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    const-string v19, "45402"

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    const-string v19, "45410"

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    const-string v19, "45418"

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_30

    :cond_d
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v19

    if-nez v19, :cond_30

    .line 2080
    const/4 v13, 0x1

    .line 2088
    :goto_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateSpnDisplay : updateChinaSpnDisplay() rule : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2104
    :cond_e
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v19, v0

    if-nez v19, :cond_32

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_32

    and-int/lit8 v19, v13, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_32

    const/16 v16, 0x1

    .line 2110
    .end local v8    # "mOperatorSim":Ljava/lang/String;
    :cond_f
    :goto_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_RIL_IgnoreWrongNITZInformation"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 2111
    if-eqz v11, :cond_10

    .line 2112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkIgnoreNITZ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2116
    :cond_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_RIL_DisplayNetTypeWithPlmnInfo"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 2117
    if-eqz v17, :cond_11

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 2118
    const-string v19, "spn string == plmn string, showing only plmn-pnn"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2119
    const/4 v15, 0x1

    .line 2120
    const/16 v16, 0x0

    .line 2123
    :cond_11
    if-eqz v11, :cond_12

    .line 2124
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->appendNetworkType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2128
    :cond_12
    if-eqz v17, :cond_13

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 2130
    const-string v19, "spn string == plmn string, showing only plmn-pnn"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2131
    const/4 v15, 0x1

    .line 2132
    const/16 v16, 0x0

    .line 2136
    :cond_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_RIL_PLMNFaking4Mvno"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 2137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "phone"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 2138
    .restart local v18    # "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 2139
    .restart local v4    # "imsi":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    .line 2142
    .restart local v9    # "operatorMccMnc":Ljava/lang/String;
    if-eqz v11, :cond_15

    if-eqz v17, :cond_15

    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_15

    .line 2143
    if-eqz v4, :cond_15

    const-string v19, "73009"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_15

    if-eqz v9, :cond_15

    const-string v19, "73001"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_14

    const-string v19, "73010"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 2144
    :cond_14
    const-string v19, "Nextel R"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 2145
    const/4 v15, 0x1

    .line 2146
    const/16 v16, 0x0

    .line 2153
    .end local v4    # "imsi":Ljava/lang/String;
    .end local v9    # "operatorMccMnc":Ljava/lang/String;
    .end local v18    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_33

    .line 2197
    :goto_c
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    .line 2198
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    .line 2199
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 2200
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 2201
    .end local v16    # "showSpn":Z
    .end local v17    # "spn":Ljava/lang/String;
    :goto_d
    return-void

    .line 1792
    .end local v2    # "EXTRA_IS_VALID_PLMN":Ljava/lang/String;
    .end local v6    # "isShowCSL":Z
    .end local v7    # "isValidPlmn":Z
    .end local v13    # "rule":I
    .end local v14    # "salesCode":Ljava/lang/String;
    :cond_16
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1853
    .restart local v2    # "EXTRA_IS_VALID_PLMN":Ljava/lang/String;
    .restart local v6    # "isShowCSL":Z
    .restart local v7    # "isValidPlmn":Z
    .restart local v13    # "rule":I
    .restart local v14    # "salesCode":Ljava/lang/String;
    :cond_17
    const-string v19, "CTC"

    const-string v20, "CMCC"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 1854
    const-string v11, "--"

    goto/16 :goto_1

    .line 1857
    :cond_18
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1040584

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 1863
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v19

    if-nez v19, :cond_1b

    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v11

    .line 1869
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1a

    and-int/lit8 v19, v13, 0x2

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    const/4 v15, 0x1

    :goto_e
    goto/16 :goto_2

    :cond_1a
    const/4 v15, 0x0

    goto :goto_e

    .line 1877
    :cond_1b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateSpnDisplay: radio is off w/ showPlmn="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " plmn="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1902
    .restart local v4    # "imsi":Ljava/lang/String;
    .restart local v9    # "operatorMccMnc":Ljava/lang/String;
    .restart local v10    # "operatorSIM":Ljava/lang/String;
    .restart local v18    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1c
    const-string v19, "7300702"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 1903
    const-string v11, "Virgin"

    goto/16 :goto_3

    .line 1904
    :cond_1d
    const-string v19, "7300703"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 1905
    const-string v11, "GTEL Netline"

    goto/16 :goto_3

    .line 1906
    :cond_1e
    const-string v19, "7300704"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1907
    const-string v11, "Colo-Colo"

    goto/16 :goto_3

    .line 1916
    :cond_1f
    const-string v19, "73009"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1917
    const-string v11, "Nextel R"

    goto/16 :goto_4

    .line 1927
    :cond_20
    const-string v19, "732103054"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_21

    const-string v19, "732103055"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_22

    .line 1928
    :cond_21
    const-string v11, "Exito"

    goto/16 :goto_5

    .line 1929
    :cond_22
    const-string v19, "732103018"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_23

    const-string v19, "732103019"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_24

    .line 1930
    :cond_23
    const-string v11, "Uff Movil"

    goto/16 :goto_5

    .line 1931
    :cond_24
    const-string v19, "732103024"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_25

    const-string v19, "7321030027"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_25

    const-string v19, "7321030028"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_25

    const-string v19, "7321030029"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1932
    :cond_25
    const-string v11, "UNE"

    goto/16 :goto_5

    .line 1936
    :cond_26
    if-eqz v9, :cond_7

    const-string v19, "732123"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1937
    if-eqz v4, :cond_7

    .line 1938
    const-string v19, "732123900"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_27

    const-string v19, "732154"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1939
    :cond_27
    const-string v11, "Virgin Mobile"

    goto/16 :goto_5

    .line 1984
    .end local v4    # "imsi":Ljava/lang/String;
    .end local v9    # "operatorMccMnc":Ljava/lang/String;
    .end local v10    # "operatorSIM":Ljava/lang/String;
    .end local v18    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_28
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 1997
    :cond_29
    const/4 v12, 0x0

    .line 1999
    .local v12, "plmn_SIMNotLoaded":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v19

    if-eqz v19, :cond_2c

    .line 2000
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10405a9

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2008
    :cond_2a
    :goto_f
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateSpnDisplay: SIM records are not loaded - plmn=\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2b

    .line 2011
    new-instance v5, Landroid/content/Intent;

    const-string v19, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2012
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v19, 0x20000000

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2013
    const-string v19, "showSpn"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2014
    const-string v19, "spn"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2015
    const-string v19, "showPlmn"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2016
    const-string v19, "isValidPlmn"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2017
    const-string v19, "plmn"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v19

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2020
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_2b
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    goto/16 :goto_d

    .line 2002
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2a

    .line 2004
    :cond_2d
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1040584

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_f

    .line 2060
    .end local v12    # "plmn_SIMNotLoaded":Ljava/lang/String;
    :cond_2e
    const-string v17, ""

    goto/16 :goto_7

    .line 2061
    .restart local v17    # "spn":Ljava/lang/String;
    :cond_2f
    const/16 v16, 0x0

    goto/16 :goto_8

    .line 2083
    .restart local v8    # "mOperatorSim":Ljava/lang/String;
    .restart local v16    # "showSpn":Z
    :cond_30
    const/4 v13, 0x2

    .line 2084
    const/4 v6, 0x1

    .line 2085
    const/16 v16, 0x0

    .line 2086
    const/4 v15, 0x1

    goto/16 :goto_9

    .line 2091
    :cond_31
    const-string v19, "CSL"

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_e

    if-eqz v15, :cond_e

    if-nez v16, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v19

    if-nez v19, :cond_e

    .line 2092
    const-string v19, "HongKong CSL special requirment"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2093
    const/4 v13, 0x2

    .line 2094
    const/4 v15, 0x1

    .line 2095
    const/16 v16, 0x0

    .line 2097
    const/4 v13, 0x0

    .line 2098
    const/16 v17, 0x0

    .line 2099
    const/4 v11, 0x0

    goto/16 :goto_a

    .line 2104
    :cond_32
    const/16 v16, 0x0

    goto/16 :goto_b

    .line 2167
    .end local v8    # "mOperatorSim":Ljava/lang/String;
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v19

    if-eqz v19, :cond_34

    .line 2169
    const-string v19, "ServiceState isn\'t in service, do not show spn"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2171
    const/16 v16, 0x0

    .line 2174
    :cond_34
    const-string v19, "CTC"

    const-string v20, "CMCC"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_35

    .line 2175
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_35

    .line 2176
    const/4 v15, 0x1

    .line 2181
    :cond_35
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateSpnDisplay: changed sending intent rule="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " showPlmn=\'%b\' plmn=\'%s\' showSpn=\'%b\' spn=\'%s\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v11, v20, v21

    const/16 v21, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    aput-object v17, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2186
    new-instance v5, Landroid/content/Intent;

    const-string v19, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2187
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v19, 0x20000000

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2188
    const-string v19, "showSpn"

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2189
    const-string v19, "spn"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2190
    const-string v19, "showPlmn"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2191
    const-string v19, "isValidPlmn"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2192
    const-string v19, "plmn"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v19

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto/16 :goto_c
.end method

.method protected updateSpnWithEons(Landroid/telephony/ServiceState;Landroid/telephony/gsm/GsmCellLocation;)V
    .locals 4
    .param p1, "svcState"    # Landroid/telephony/ServiceState;
    .param p2, "cellLocation"    # Landroid/telephony/gsm/GsmCellLocation;

    .prologue
    .line 2663
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_0

    .line 2664
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2665
    const-string v1, "pollStateDone(), STATE_IN_SERVICE but getOperatorNumeric() returned NULL"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2680
    :cond_0
    :goto_0
    return-void

    .line 2667
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsSIMLoadDone:Z

    if-eqz v1, :cond_0

    .line 2668
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->getAllEonsNames(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2671
    .local v0, "eons":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2673
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
