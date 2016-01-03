.class public Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;
    }
.end annotation


# static fields
.field private static final ACTION_VOICELESS_OTA_PROVISIONING:Ljava/lang/String; = "com.android.phone.ACTION_VOICELESS_OTA_PROVISIONING"

.field private static final CDMA_MAINT_REQ_ACTION:Ljava/lang/String; = "android.intent.action.CDMA_MAINT_REQ"

.field private static final CTN_228:Ljava/lang/String; = "*228"

.field private static final CTN_22898:Ljava/lang/String; = "*22898"

.field private static final CTN_22899:Ljava/lang/String; = "*22899"

.field private static final CTN_NUMBER:Ljava/lang/String; = "ctnnumber"

.field private static final EVENT_TIMEOUT_CTN:I = 0x11e

.field private static final LGT_AUTH_LOCK_ACTION:Ljava/lang/String; = "android.intent.action.LGT_AUTH_LOCK"

.field static final LOG_TAG:Ljava/lang/String; = "CdmaSST"

.field private static final NITZ_UPDATE_DIFF_DEFAULT:I = 0x7d0

.field private static final NITZ_UPDATE_SPACING_DEFAULT:I = 0x927c0

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

.field private static final TIMEOUT_CTN_OTASP:I = 0x493e0

.field protected static final UNACTIVATED_MIN2_VALUE:Ljava/lang/String; = "000000"

.field protected static final UNACTIVATED_MIN_VALUE:Ljava/lang/String; = "1111110111"

.field protected static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"


# instance fields
.field protected CalibrationMcc:Ljava/lang/String;

.field protected bIsSimAbsent:Z

.field protected curNetworkReigst:Ljava/lang/String;

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field protected mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field private mCdmaRoaming:Z

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

.field protected mCr:Landroid/content/ContentResolver;

.field protected mCurPlmn:Ljava/lang/String;

.field private mCurrentCarrier:Ljava/lang/String;

.field mCurrentOtaspMode:I

.field protected mDataRoaming:Z

.field private mDefaultRoamingIndicator:I

.field protected mForceHasChanged:Z

.field protected mFromUserSelect:Z

.field protected mGotCountryCode:Z

.field private mHandset_Auth:Ljava/lang/String;

.field private mHandset_Reg:Ljava/lang/String;

.field protected mHomeNetworkId:[I

.field protected mHomeSystemId:[I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsEriTextLoaded:Z

.field private mIsInPrl:Z

.field protected mIsMinInfoReady:Z

.field protected mIsSubscriptionFromRuim:Z

.field protected mMdn:Ljava/lang/String;

.field protected mMin:Ljava/lang/String;

.field protected mNeedFixZone:Z

.field mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

.field private mNitzUpdateDiff:I

.field private mNitzUpdateSpacing:I

.field private mOldIsDomesticRoaming:Z

.field private mOldIsInternationalRoaming:Z

.field private mOldRoamingIndicator:I

.field private mPendingRadioPowerOffAfterHangup:I

.field mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field protected mPrlVersion:Ljava/lang/String;

.field private mRegistrationDeniedReason:Ljava/lang/String;

.field protected mRegistrationState:I

.field private mRoamingIconMode:I

.field private mRoamingIndicator:I

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J

.field private m_bActionLocaleChanged:Z

.field prlGettingRetrySender:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 115
    const-string v0, "true"

    const-string v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SHIP_BUILD:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    .line 365
    new-instance v0, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0}, Landroid/telephony/CellInfoCdma;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V

    .line 366
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "cellInfo"    # Landroid/telephony/CellInfo;

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 369
    iget-object v3, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p1, v3, p2}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V

    .line 124
    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    .line 128
    const-string v3, "ro.nitz_update_spacing"

    const v6, 0x927c0

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateSpacing:I

    .line 133
    const-string v3, "ro.nitz_update_diff"

    const/16 v6, 0x7d0

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateDiff:I

    .line 136
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    .line 138
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoaming:Z

    .line 142
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    .line 143
    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIconMode:I

    .line 148
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    .line 154
    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    .line 155
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    .line 162
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 166
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 176
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 179
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    .line 180
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    .line 183
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    .line 185
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsEriTextLoaded:Z

    .line 186
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 193
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    .line 196
    const-string v3, "1"

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHandset_Reg:Ljava/lang/String;

    .line 197
    const-string v3, "1"

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHandset_Auth:Ljava/lang/String;

    .line 200
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->m_bActionLocaleChanged:Z

    .line 201
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->bIsSimAbsent:Z

    .line 202
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curNetworkReigst:Ljava/lang/String;

    .line 216
    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldRoamingIndicator:I

    .line 217
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldIsDomesticRoaming:Z

    .line 218
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldIsInternationalRoaming:Z

    .line 221
    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    .line 224
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->CalibrationMcc:Ljava/lang/String;

    .line 228
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mForceHasChanged:Z

    .line 232
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFromUserSelect:Z

    .line 242
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 344
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 354
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 371
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 372
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 373
    new-instance v3, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v3}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 374
    new-instance v3, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v3}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 376
    const-string v3, "USC"

    const-string v6, "CMCC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ACG"

    const-string v6, "CMCC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 379
    :cond_0
    const-string v3, "1111110111"

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    .line 380
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateOtaspState()V

    .line 383
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x27

    invoke-static {v3, v6, p0, v7, v8}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 385
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v3

    if-nez v3, :cond_6

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 388
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "power"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 390
    .local v2, "powerManager":Landroid/os/PowerManager;
    const-string v3, "ServiceStateTracker"

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 392
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0, v4, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 394
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x1e

    invoke-interface {v3, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 395
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xb

    invoke-interface {v3, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 398
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    const/16 v6, 0x64

    invoke-virtual {v3, p0, v6, v8}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 400
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x28

    invoke-interface {v3, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 401
    const/16 v3, 0x24

    invoke-virtual {p1, p0, v3, v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 402
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x25

    invoke-interface {v3, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 404
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x78

    invoke-interface {v3, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsRetryOver(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 408
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v6, "airplane_mode_on"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 409
    .local v0, "airplaneMode":I
    if-gtz v0, :cond_2

    move v5, v4

    :cond_2
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 412
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 413
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 414
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    const-string v3, "USC"

    const-string v5, "CMCC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ACG"

    const-string v5, "CMCC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 418
    :cond_3
    const-string v3, "android.intent.action.MIN_VALUE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    :cond_4
    const-string v3, "CHN"

    const-string v5, "CHN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 426
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    const-string v3, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 437
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 440
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v5, "auto_time"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 443
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v5, "auto_time_zone"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 446
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 447
    return-void

    .end local v0    # "airplaneMode":I
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :cond_6
    move v3, v5

    .line 385
    goto/16 :goto_0
.end method

.method private IsDomesticRoaming()Z
    .locals 3

    .prologue
    .line 3013
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/EriManager;->IsDomesticRoaming(II)Z

    move-result v0

    return v0
.end method

.method private IsInternationalRoaming()Z
    .locals 3

    .prologue
    .line 3009
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/EriManager;->IsInternationalRoaming(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->revertToNitzTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->revertToNitzTimeZone()V

    return-void
.end method

.method private checkCtcRoamingArea()Z
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3032
    const-string v1, ""

    .line 3033
    .local v1, "iccOperatorNumeric":Ljava/lang/String;
    const-string v6, "gsm.sim.cdmaoperator.numeric"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3035
    const-string v2, ""

    .line 3036
    .local v2, "imsiPlmn":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v8, :cond_0

    .line 3037
    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3040
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 3042
    .local v3, "operatorNumeric":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    .line 3044
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3045
    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3046
    .local v0, "currentOperatorMcc":Ljava/lang/String;
    const-string v6, "460"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "455"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3062
    .end local v0    # "currentOperatorMcc":Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    .line 3057
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_3
    move v4, v5

    .line 3062
    goto :goto_0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 10
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 1979
    move v5, p1

    .line 1980
    .local v5, "rawOffset":I
    if-eqz p2, :cond_0

    .line 1981
    const v9, 0x36ee80

    sub-int/2addr v5, v9

    .line 1983
    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .line 1984
    .local v8, "zones":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1985
    .local v2, "guess":Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 1986
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

    .line 1987
    .local v7, "zone":Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 1988
    .local v6, "tz":Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    .line 1990
    move-object v2, v6

    .line 1995
    .end local v6    # "tz":Ljava/util/TimeZone;
    .end local v7    # "zone":Ljava/lang/String;
    :cond_1
    return-object v2

    .line 1986
    .restart local v6    # "tz":Ljava/util/TimeZone;
    .restart local v7    # "zone":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2412
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 2414
    :goto_0
    return v1

    .line 2412
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2413
    :catch_0
    move-exception v0

    .line 2414
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getAutoTimeZone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2420
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 2422
    :goto_0
    return v1

    .line 2420
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2421
    :catch_0
    move-exception v0

    .line 2422
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 1969
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1970
    .local v0, "guess":Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 1972
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1974
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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1975
    return-object v0

    .line 1972
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1974
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private handleCdmaSubscriptionSource(I)V
    .locals 2
    .param p1, "newSubscriptionSource"    # I

    .prologue
    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscription Source : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 877
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 879
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveCdmaSubscriptionSource(I)V

    .line 880
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v0, :cond_0

    .line 882
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 884
    :cond_0
    return-void

    .line 877
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHomeSid(I)Z
    .locals 2
    .param p1, "sid"    # I

    .prologue
    .line 2510
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    if-eqz v1, :cond_1

    .line 2511
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2512
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 2513
    const/4 v1, 0x1

    .line 2517
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 2511
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2517
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isRoamIndForHomeSystem(Ljava/lang/String;)Z
    .locals 7
    .param p1, "roamInd"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2093
    const-string v6, "ro.cdma.homesystem"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2095
    .local v2, "homeRoamIndicators":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2098
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 2099
    .local v1, "homeRoamInd":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2100
    const/4 v5, 0x1

    .line 2108
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "homeRoamInd":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return v5

    .line 2098
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "homeRoamInd":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isRoamingBetweenOperators(ZI)Z
    .locals 2
    .param p1, "cdmaRoaming"    # Z
    .param p2, "RoamingIndicator"    # I

    .prologue
    const/4 v0, 0x1

    .line 2922
    if-eqz p1, :cond_0

    if-eq p2, v0, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 2925
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 9
    .param p1, "cdmaRoaming"    # Z
    .param p2, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2121
    const-string v7, "gsm.sim.operator.alpha"

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "empty"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2125
    .local v4, "spn":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 2126
    .local v2, "onsl":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    .line 2128
    .local v3, "onss":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v0, v5

    .line 2129
    .local v0, "equalsOnsl":Z
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v5

    .line 2131
    .local v1, "equalsOnss":Z
    :goto_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    :goto_2
    return v5

    .end local v0    # "equalsOnsl":Z
    .end local v1    # "equalsOnss":Z
    :cond_0
    move v0, v6

    .line 2128
    goto :goto_0

    .restart local v0    # "equalsOnsl":Z
    :cond_1
    move v1, v6

    .line 2129
    goto :goto_1

    .restart local v1    # "equalsOnss":Z
    :cond_2
    move v5, v6

    .line 2131
    goto :goto_2
.end method

.method private onSprintRoamingIndicator()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2958
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v9, "roam_guard_data_domestic"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_5

    move v3, v6

    .line 2959
    .local v3, "domesticDataGuardEnabled":Z
    :goto_0
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v9, "roam_guard_data_international"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_6

    move v5, v6

    .line 2961
    .local v5, "internationalDataGuardEnabled":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IsDomesticRoaming()Z

    move-result v0

    .line 2962
    .local v0, "IsDomesticRoaming":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IsInternationalRoaming()Z

    move-result v1

    .line 2964
    .local v1, "IsInternationalRoaming":Z
    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v5, :cond_7

    if-eqz v1, :cond_7

    :cond_1
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldIsDomesticRoaming:Z

    if-ne v7, v0, :cond_2

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldIsInternationalRoaming:Z

    if-eq v7, v1, :cond_7

    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_7

    .line 2967
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->showDataGuard()V

    .line 2969
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2978
    :goto_2
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldIsDomesticRoaming:Z

    if-ne v6, v0, :cond_3

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldIsInternationalRoaming:Z

    if-eq v6, v1, :cond_4

    .line 2981
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_ROAMING_STATUS_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2983
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_9

    .line 2984
    const-string v2, "domesticRoam"

    .line 2990
    .local v2, "currentRoam":Ljava/lang/String;
    :goto_3
    const-string v6, "status"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2992
    const-string v6, "CdmaSST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_ROAMING_STATUS_CHANGED : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2996
    .end local v2    # "currentRoam":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldIsDomesticRoaming:Z

    .line 2997
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldIsInternationalRoaming:Z

    .line 2998
    return-void

    .end local v0    # "IsDomesticRoaming":Z
    .end local v1    # "IsInternationalRoaming":Z
    .end local v3    # "domesticDataGuardEnabled":Z
    .end local v5    # "internationalDataGuardEnabled":Z
    :cond_5
    move v3, v7

    .line 2958
    goto :goto_0

    .restart local v3    # "domesticDataGuardEnabled":Z
    :cond_6
    move v5, v7

    .line 2959
    goto :goto_1

    .line 2970
    .restart local v0    # "IsDomesticRoaming":Z
    .restart local v1    # "IsInternationalRoaming":Z
    .restart local v5    # "internationalDataGuardEnabled":Z
    :cond_7
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    if-ne v7, v6, :cond_8

    .line 2971
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_CLOSE_DIALOG_DATA_ROAMING_GUARD"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2972
    .restart local v4    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 2975
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_2

    .line 2985
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_9
    if-eqz v1, :cond_a

    .line 2986
    const-string v2, "internationalRoam"

    .restart local v2    # "currentRoam":Ljava/lang/String;
    goto :goto_3

    .line 2988
    .end local v2    # "currentRoam":Ljava/lang/String;
    :cond_a
    const-string v2, "home"

    .restart local v2    # "currentRoam":Ljava/lang/String;
    goto :goto_3
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 3

    .prologue
    .line 2006
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    if-eqz v1, :cond_0

    .line 2019
    :goto_0
    return-void

    .line 2014
    :cond_0
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2015
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2018
    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private revertToNitzTime()V
    .locals 6

    .prologue
    const-wide/16 v3, 0x0

    .line 2469
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2479
    :cond_0
    :goto_0
    return-void

    .line 2473
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revertToNitzTime: mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2475
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 2476
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    goto :goto_0
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    .prologue
    .line 2482
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2493
    :cond_0
    :goto_0
    return-void

    .line 2486
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revertToNitzTimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2487
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2491
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveCdmaSubscriptionSource(I)V
    .locals 2
    .param p1, "source"    # I

    .prologue
    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Storing cdma subscription source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "subscription_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 511
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 2427
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 2428
    return-void
.end method

.method private sendCallHangupDelayed(JI)V
    .locals 3
    .param p1, "delayMillis"    # J
    .param p3, "pendingRadioOff"    # I

    .prologue
    .line 3018
    const-string v1, "sendCallHangupDelayed"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3019
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 3020
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3021
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 3022
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait upto %d s for hanging up voice call."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3028
    :goto_0
    return-void

    .line 3026
    :cond_0
    const-string v1, "sendCallHangupDelayed() Cannot send delayed Msg"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 2454
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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2455
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 2456
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2457
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2458
    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2459
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2466
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 2437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndBroadcastNetworkSetTimeZone: setTimeZone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2438
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2440
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 2441
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2442
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2443
    const-string v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2444
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2445
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 37
    .param p1, "nitz"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    .line 2145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    .line 2147
    .local v25, "start":J
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "NITZ: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " start="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " delay="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sub-long v34, v25, p2

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2151
    const v33, 0x1005f5

    move/from16 v0, v33

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2157
    :try_start_0
    const-string v33, "GMT"

    invoke-static/range {v33 .. v33}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 2159
    .local v5, "c":Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    .line 2160
    const/16 v33, 0x10

    const/16 v34, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2162
    const-string v33, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 2164
    .local v20, "nitzSubs":[Ljava/lang/String;
    const/16 v33, 0x0

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v31, v0

    .line 2165
    .local v31, "year":I
    const/16 v33, 0x1

    move/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2168
    const/16 v33, 0x1

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    add-int/lit8 v19, v33, -0x1

    .line 2169
    .local v19, "month":I
    const/16 v33, 0x2

    move/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2171
    const/16 v33, 0x2

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2172
    .local v6, "date":I
    const/16 v33, 0x5

    move/from16 v0, v33

    invoke-virtual {v5, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 2174
    const/16 v33, 0x3

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 2175
    .local v13, "hour":I
    const/16 v33, 0xa

    move/from16 v0, v33

    invoke-virtual {v5, v0, v13}, Ljava/util/Calendar;->set(II)V

    .line 2177
    const/16 v33, 0x4

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 2178
    .local v18, "minute":I
    const/16 v33, 0xc

    move/from16 v0, v33

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2180
    const/16 v33, 0x5

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 2181
    .local v23, "second":I
    const/16 v33, 0xd

    move/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2183
    const/16 v33, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v33

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_6

    const/16 v24, 0x1

    .line 2185
    .local v24, "sign":Z
    :goto_0
    const/16 v33, 0x6

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 2187
    .local v29, "tzOffset":I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v33, v0

    const/16 v34, 0x8

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_7

    const/16 v33, 0x7

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2197
    .local v7, "dst":I
    :goto_1
    if-eqz v24, :cond_8

    const/16 v33, 0x1

    :goto_2
    mul-int v33, v33, v29

    mul-int/lit8 v33, v33, 0xf

    mul-int/lit8 v33, v33, 0x3c

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v29, v0

    .line 2199
    const/16 v32, 0x0

    .line 2205
    .local v32, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v33, v0

    const/16 v34, 0x9

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_0

    .line 2206
    const/16 v33, 0x8

    aget-object v33, v20, v33

    const/16 v34, 0x21

    const/16 v35, 0x2f

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v30

    .line 2207
    .local v30, "tzname":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v32

    .line 2226
    .end local v30    # "tzname":Ljava/lang/String;
    :cond_0
    const-string v33, "gsm.operator.iso-country"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v34

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2237
    .local v15, "iso":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[NITZ] setTimeFromNITZString: iso = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", dst = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", ZoneOffset = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", zone = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", mGotCountryCode = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2266
    if-nez v32, :cond_1

    .line 2267
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1

    .line 2268
    if-eqz v15, :cond_b

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_b

    .line 2269
    if-eqz v7, :cond_9

    const/16 v33, 0x1

    :goto_3
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    move/from16 v0, v29

    move/from16 v1, v33

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3, v15}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v32

    .line 2273
    const-string v33, "CTC"

    const-string v34, "CMCC"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 2279
    if-nez v32, :cond_1

    .line 2280
    const-string v33, "[NITZ] TimeUtils.getTimeZone() can\'t return zone -> Use getNitzTimeZone() right here"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2281
    if-eqz v7, :cond_a

    const/16 v33, 0x1

    :goto_4
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v33

    move-wide/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v32

    .line 2295
    :cond_1
    :goto_5
    if-eqz v32, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    move/from16 v33, v0

    move/from16 v0, v33

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    move/from16 v34, v0

    if-eqz v7, :cond_d

    const/16 v33, 0x1

    :goto_6
    move/from16 v0, v34

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    .line 2300
    :cond_2
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 2301
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    .line 2302
    if-eqz v7, :cond_e

    const/16 v33, 0x1

    :goto_7
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    .line 2303
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    .line 2306
    :cond_3
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "NITZ: tzOffset="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " dst="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " zone="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    if-eqz v32, :cond_f

    invoke-virtual/range {v32 .. v32}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v33

    :goto_8
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " iso="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " mGotCountryCode="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " mNeedFixZone="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2312
    if-eqz v32, :cond_5

    .line 2316
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTimeZone()Z

    move-result v33

    if-eqz v33, :cond_4

    .line 2317
    invoke-virtual/range {v32 .. v32}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2319
    :cond_4
    invoke-virtual/range {v32 .. v32}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 2322
    :cond_5
    const-string v33, "gsm.ignore-nitz"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2323
    .local v14, "ignore":Ljava/lang/String;
    if-eqz v14, :cond_10

    const-string v33, "yes"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_10

    .line 2324
    const-string v33, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2408
    .end local v5    # "c":Ljava/util/Calendar;
    .end local v6    # "date":I
    .end local v7    # "dst":I
    .end local v13    # "hour":I
    .end local v14    # "ignore":Ljava/lang/String;
    .end local v15    # "iso":Ljava/lang/String;
    .end local v18    # "minute":I
    .end local v19    # "month":I
    .end local v20    # "nitzSubs":[Ljava/lang/String;
    .end local v23    # "second":I
    .end local v24    # "sign":Z
    .end local v29    # "tzOffset":I
    .end local v31    # "year":I
    .end local v32    # "zone":Ljava/util/TimeZone;
    :goto_9
    return-void

    .line 2183
    .restart local v5    # "c":Ljava/util/Calendar;
    .restart local v6    # "date":I
    .restart local v13    # "hour":I
    .restart local v18    # "minute":I
    .restart local v19    # "month":I
    .restart local v20    # "nitzSubs":[Ljava/lang/String;
    .restart local v23    # "second":I
    .restart local v31    # "year":I
    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 2187
    .restart local v24    # "sign":Z
    .restart local v29    # "tzOffset":I
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 2197
    .restart local v7    # "dst":I
    :cond_8
    const/16 v33, -0x1

    goto/16 :goto_2

    .line 2269
    .restart local v15    # "iso":Ljava/lang/String;
    .restart local v32    # "zone":Ljava/util/TimeZone;
    :cond_9
    const/16 v33, 0x0

    goto/16 :goto_3

    .line 2281
    :cond_a
    const/16 v33, 0x0

    goto/16 :goto_4

    .line 2290
    :cond_b
    if-eqz v7, :cond_c

    const/16 v33, 0x1

    :goto_a
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v33

    move-wide/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v32

    goto/16 :goto_5

    :cond_c
    const/16 v33, 0x0

    goto :goto_a

    .line 2295
    :cond_d
    const/16 v33, 0x0

    goto/16 :goto_6

    .line 2302
    :cond_e
    const/16 v33, 0x0

    goto/16 :goto_7

    .line 2306
    :cond_f
    const-string v33, "NULL"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    .line 2329
    .restart local v14    # "ignore":Ljava/lang/String;
    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2334
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    sub-long v16, v33, p2

    .line 2337
    .local v16, "millisSinceNitzReceived":J
    const-wide/16 v33, 0x0

    cmp-long v33, v16, v33

    if-gez v33, :cond_11

    .line 2340
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2397
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2398
    .local v8, "end":J
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "NITZ: end="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " dur="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sub-long v34, v8, v25

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_9

    .line 2401
    .end local v5    # "c":Ljava/util/Calendar;
    .end local v6    # "date":I
    .end local v7    # "dst":I
    .end local v8    # "end":J
    .end local v13    # "hour":I
    .end local v14    # "ignore":Ljava/lang/String;
    .end local v15    # "iso":Ljava/lang/String;
    .end local v16    # "millisSinceNitzReceived":J
    .end local v18    # "minute":I
    .end local v19    # "month":I
    .end local v20    # "nitzSubs":[Ljava/lang/String;
    .end local v23    # "second":I
    .end local v24    # "sign":Z
    .end local v29    # "tzOffset":I
    .end local v31    # "year":I
    .end local v32    # "zone":Ljava/util/TimeZone;
    :catch_0
    move-exception v10

    .line 2402
    .local v10, "ex":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " ex="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2406
    .end local v10    # "ex":Ljava/lang/RuntimeException;
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneInfoShareManager:Lcom/android/internal/telephony/PhoneInfoShareManager;

    move-object/from16 v33, v0

    const/16 v33, 0x1

    sput-boolean v33, Lcom/android/internal/telephony/PhoneInfoShareManager;->IsalreadysendNITZ:Z

    goto/16 :goto_9

    .line 2347
    .restart local v5    # "c":Ljava/util/Calendar;
    .restart local v6    # "date":I
    .restart local v7    # "dst":I
    .restart local v13    # "hour":I
    .restart local v14    # "ignore":Ljava/lang/String;
    .restart local v15    # "iso":Ljava/lang/String;
    .restart local v16    # "millisSinceNitzReceived":J
    .restart local v18    # "minute":I
    .restart local v19    # "month":I
    .restart local v20    # "nitzSubs":[Ljava/lang/String;
    .restart local v23    # "second":I
    .restart local v24    # "sign":Z
    .restart local v29    # "tzOffset":I
    .restart local v31    # "year":I
    .restart local v32    # "zone":Ljava/util/TimeZone;
    :cond_11
    const-wide/32 v33, 0x7fffffff

    cmp-long v33, v16, v33

    if-lez v33, :cond_12

    .line 2350
    :try_start_3
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-wide/32 v34, 0x5265c00

    div-long v34, v16, v34

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " days"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2397
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2398
    .restart local v8    # "end":J
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "NITZ: end="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " dur="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sub-long v34, v8, v25

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_9

    .line 2358
    .end local v8    # "end":J
    :cond_12
    const/16 v33, 0xe

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v34, v0

    :try_start_5
    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 2360
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTime()Z

    move-result v33

    if-eqz v33, :cond_14

    .line 2364
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    sub-long v11, v33, v35

    .line 2365
    .local v11, "gained":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    move-wide/from16 v35, v0

    sub-long v27, v33, v35

    .line 2366
    .local v27, "timeSinceLastUpdate":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v33, v0

    const-string v34, "nitz_update_spacing"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateSpacing:I

    move/from16 v35, v0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    .line 2368
    .local v22, "nitzUpdateSpacing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v33, v0

    const-string v34, "nitz_update_diff"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateDiff:I

    move/from16 v35, v0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 2371
    .local v21, "nitzUpdateDiff":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    move-wide/from16 v33, v0

    const-wide/16 v35, 0x0

    cmp-long v33, v33, v35

    if-eqz v33, :cond_13

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v33, v0

    cmp-long v33, v27, v33

    if-gtz v33, :cond_13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v33

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v35, v0

    cmp-long v33, v33, v35

    if-lez v33, :cond_15

    .line 2374
    :cond_13
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "NITZ: Auto updating time of day to "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " NITZ receive delay="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "ms gained="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "ms from "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2379
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 2392
    .end local v11    # "gained":J
    .end local v21    # "nitzUpdateDiff":I
    .end local v22    # "nitzUpdateSpacing":I
    .end local v27    # "timeSinceLastUpdate":J
    :cond_14
    const-string v33, "NITZ: update nitz time property"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2393
    const-string v33, "gsm.nitz.time"

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2394
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    .line 2395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2397
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2398
    .restart local v8    # "end":J
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "NITZ: end="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " dur="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sub-long v34, v8, v25

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_b

    .line 2382
    .end local v8    # "end":J
    .restart local v11    # "gained":J
    .restart local v21    # "nitzUpdateDiff":I
    .restart local v22    # "nitzUpdateSpacing":I
    .restart local v27    # "timeSinceLastUpdate":J
    :cond_15
    :try_start_7
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "NITZ: ignore, a previous update was "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "ms ago and gained="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "ms"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2397
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2398
    .restart local v8    # "end":J
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "NITZ: end="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " dur="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sub-long v34, v8, v25

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_9

    .line 2397
    .end local v8    # "end":J
    .end local v11    # "gained":J
    .end local v16    # "millisSinceNitzReceived":J
    .end local v21    # "nitzUpdateDiff":I
    .end local v22    # "nitzUpdateSpacing":I
    .end local v27    # "timeSinceLastUpdate":J
    :catchall_0
    move-exception v33

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2398
    .restart local v8    # "end":J
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: end="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " dur="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v35, v8, v25

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2400
    throw v33
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method private showDataGuard()V
    .locals 4

    .prologue
    .line 3002
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v2, "data_roaming"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3004
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3005
    .local v0, "dialogIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3006
    return-void
.end method


# virtual methods
.method protected CalibrationTimezoneUsingMcc(Ljava/lang/String;)V
    .locals 13
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    const v12, 0x1ee6280

    const/4 v5, 0x1

    const/4 v11, 0x3

    const/4 v6, 0x0

    .line 2842
    if-nez p1, :cond_1

    .line 2843
    const-string v6, "CdmaSST"

    const-string v7, "operatorNumeric is null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    :cond_0
    :goto_0
    return-void

    .line 2846
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v11, :cond_2

    .line 2847
    const-string v6, "CdmaSST"

    const-string v7, "operatorNumeric is Invalid"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2851
    :cond_2
    invoke-virtual {p1, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2852
    .local v4, "NewMcc":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->CalibrationMcc:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    if-ne v7, v5, :cond_b

    const-string v7, "000"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "111"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "001"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "010"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "002"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "003"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 2855
    const-string v7, "CdmaSST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NITZ] 1step : we need to calibrate for Mcc : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->CalibrationMcc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " --> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->CalibrationMcc:Ljava/lang/String;

    .line 2858
    invoke-virtual {p1, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 2859
    .local v0, "CalibrationIso":Ljava/lang/String;
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    iget-wide v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    invoke-static {v7, v8, v9, v10, v0}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 2862
    .local v1, "CalibrationTimeZone":Ljava/util/TimeZone;
    if-nez v1, :cond_9

    .line 2863
    const-string v7, "CdmaSST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NITZ] 2step. we need to calibrate for Iso : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    invoke-virtual {p1, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v3

    .line 2865
    .local v3, "CalibrationZoneId":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NITZ] CalibrationZoneId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2866
    if-eqz v3, :cond_3

    .line 2867
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 2871
    :cond_3
    if-eqz v1, :cond_5

    const-string v7, "us"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    if-eq v7, v12, :cond_4

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    const v8, 0x2255100

    if-ne v7, v8, :cond_5

    .line 2873
    :cond_4
    const-string v0, "kr"

    .line 2874
    iput v12, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    .line 2875
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    .line 2876
    const-string v7, "CdmaSST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NITZ] 2-1step. testbed\'s exceptional case : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    iget-wide v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    invoke-static {v7, v8, v9, v10, v0}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 2881
    :cond_5
    if-eqz v1, :cond_6

    const-string v7, "us"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    if-eqz v7, :cond_6

    .line 2882
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    if-nez v7, :cond_8

    .line 2883
    .local v5, "mZoneDstRevert":Z
    :goto_1
    const-string v7, "CdmaSST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NITZ] 2-2step. DST\'s exceptional case(mZoneDstRevert) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    iget-wide v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    invoke-static {v7, v5, v8, v9, v0}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 2886
    .local v2, "CalibrationTimeZoneRevert":Ljava/util/TimeZone;
    if-eqz v2, :cond_6

    .line 2887
    const-string v7, "CdmaSST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NITZ] CalibrationTimeZoneRevert.getID() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2889
    move-object v1, v2

    .line 2894
    .end local v2    # "CalibrationTimeZoneRevert":Ljava/util/TimeZone;
    .end local v5    # "mZoneDstRevert":Z
    :cond_6
    if-eqz v1, :cond_7

    const-string v7, "us"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    const-string v8, "America/New_York"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    const v8, -0xdbba00

    if-ne v7, v8, :cond_7

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    if-nez v7, :cond_7

    .line 2896
    const-string v0, "pr"

    .line 2897
    const-string v7, "CdmaSST"

    const-string v8, "[NITZ] 2-3 step. Wrong MCC/MNC in Puerto Rico"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    iget-wide v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    invoke-static {v7, v8, v9, v10, v0}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 2901
    :cond_7
    if-nez v1, :cond_9

    .line 2902
    const-string v6, "CdmaSST"

    const-string v7, "[NITZ] 3step.  next time... "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v5, v6

    .line 2882
    goto/16 :goto_1

    .line 2906
    .end local v3    # "CalibrationZoneId":Ljava/lang/String;
    :cond_9
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 2907
    const-string v6, "CdmaSST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NITZ] CalibrationTimeZone.getID() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTimeZone()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2910
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2912
    :cond_a
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2913
    .end local v0    # "CalibrationIso":Ljava/lang/String;
    .end local v1    # "CalibrationTimeZone":Ljava/util/TimeZone;
    :cond_b
    const-string v7, "001"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "010"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "002"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "003"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2914
    :cond_c
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 2915
    const-string v6, "CdmaSST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NITZ] Test mcc using embedded board : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected displayTimeDisplayScheme(Ljava/lang/String;I)V
    .locals 6
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "serviceState"    # I

    .prologue
    .line 3066
    const-string v4, "CdmaSST"

    const-string v5, "displayTimeDisplayScheme()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3086
    :cond_0
    :goto_0
    return-void

    .line 3070
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3071
    .local v1, "mcc":I
    const-string v4, "gsm.ctc.timedispschmmcc"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3073
    .local v2, "previousMcc":I
    if-nez p2, :cond_0

    .line 3074
    const-string v4, "gsm.sim.state"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3075
    .local v3, "simState":Ljava/lang/String;
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3076
    const/16 v4, 0x1cc

    if-eq v1, v4, :cond_2

    const/16 v4, 0x1c7

    if-eq v1, v4, :cond_2

    if-lez v1, :cond_2

    if-eq v2, v1, :cond_2

    .line 3077
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_TIME_DISP_SCHM_LAUNCH"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3078
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3079
    const-string v4, "CdmaSST"

    const-string v5, "lunch displayTimeDisplayScheme"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    if-lez v1, :cond_0

    if-eq v2, v1, :cond_0

    .line 3082
    const-string v4, "gsm.ctc.timedispschmmcc"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->checkCorrectThread()V

    .line 452
    const-string v0, "ServiceStateTracker dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForEriFileLoaded(Landroid/os/Handler;)V

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 471
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsImsRetryOver(Landroid/os/Handler;)V

    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaPrlChanged(Landroid/os/Handler;)V

    .line 475
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    .line 476
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2805
    const-string v0, "CdmaServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2806
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2808
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

    .line 2809
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

    .line 2810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurrentOtaspMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsInPrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDefaultRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegistrationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedFixZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGotCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPrlVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsMinInfoReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsEriTextLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsEriTextLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsSubscriptionFromRuim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaSSM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegistrationDeniedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurrentCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2839
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 480
    const-string v0, "CdmaServiceStateTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method protected fixTimeZone(Ljava/lang/String;)V
    .locals 13
    .param p1, "isoCountryCode"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 1655
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    if-eqz v8, :cond_0

    const-string v8, "us"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    if-nez v8, :cond_0

    .line 1656
    const-string v8, "CdmaSST"

    const-string v9, "mZoneOffset is Invalid"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 1724
    :goto_0
    return-void

    .line 1662
    :cond_0
    const/4 v6, 0x0

    .line 1665
    .local v6, "zone":Ljava/util/TimeZone;
    const-string v8, "persist.sys.timezone"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1667
    .local v7, "zoneName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fixTimeZone zoneName=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' mZoneOffset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mZoneDst="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " iso-cc=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' iso-cc-idx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    invoke-static {v9, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1672
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    if-nez v8, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    sget-object v8, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    invoke-static {v8, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_4

    .line 1677
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    .line 1678
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    if-eqz v8, :cond_1

    .line 1679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1680
    .local v2, "ctm":J
    invoke-virtual {v6, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v4, v8

    .line 1682
    .local v4, "tzOffset":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fixTimeZone: tzOffset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ltod="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1685
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTime()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1686
    sub-long v0, v2, v4

    .line 1687
    .local v0, "adj":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fixTimeZone: adj ltod="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1688
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 1695
    .end local v0    # "adj":J
    .end local v2    # "ctm":J
    .end local v4    # "tzOffset":J
    :cond_1
    :goto_1
    const-string v8, "fixTimeZone: using default TimeZone"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1710
    :cond_2
    :goto_2
    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 1713
    if-eqz v6, :cond_7

    .line 1714
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fixTimeZone: zone != null zone.getID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1715
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTimeZone()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1716
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1720
    :goto_3
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1691
    .restart local v2    # "ctm":J
    .restart local v4    # "tzOffset":J
    :cond_3
    iget-wide v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    sub-long/2addr v8, v4

    iput-wide v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    .line 1692
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fixTimeZone: adj mSavedTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1696
    .end local v2    # "ctm":J
    .end local v4    # "tzOffset":J
    :cond_4
    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1700
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v8

    if-nez v8, :cond_2

    .line 1701
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    iget-wide v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v6

    .line 1702
    const-string v8, "fixTimeZone: using NITZ TimeZone"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1705
    :cond_5
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    iget-wide v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    invoke-static {v8, v9, v10, v11, p1}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 1706
    const-string v8, "fixTimeZone: using getTimeZone(off, dst, time, iso)"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1718
    :cond_6
    const-string v8, "fixTimeZone: skip changing zone as getAutoTimeZone was false"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1722
    :cond_7
    const-string v8, "fixTimeZone: zone == null, do nothing for zone"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2553
    const-string v0, "USC"

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    const-string v1, "1111110111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2555
    const-string v0, "Unactivated Min value returning null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2556
    const/4 v0, 0x0

    .line 2571
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 2068
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 330
    const-string v0, "REG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHandset_Reg:Ljava/lang/String;

    .line 339
    :goto_0
    return-object v0

    .line 332
    :cond_0
    const-string v0, "AUTH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHandset_Auth:Ljava/lang/String;

    goto :goto_0

    .line 334
    :cond_1
    const-string v0, "PHONE_NUMBER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 336
    :cond_2
    const-string v0, "ESN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getEsn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 339
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2595
    const-string v1, "gsm.sim.operator.numeric"

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2599
    .local v0, "operatorNumeric":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2605
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2549
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberToDial(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "ctnNumber"    # Ljava/lang/String;

    .prologue
    .line 321
    const-string v0, "*228"

    .line 322
    .local v0, "numberToDial":Ljava/lang/String;
    const-string v1, "*22898"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "*22899"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    :cond_0
    move-object v0, p1

    .line 325
    :cond_1
    return-object v0
.end method

.method getOtasp()I
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 2628
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 2629
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOtasp: bad mMin=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2630
    const/4 v0, 0x1

    .line 2640
    .local v0, "provisioningState":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOtasp: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2647
    return v0

    .line 2632
    .end local v0    # "provisioningState":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    const-string v2, "1111110111"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "test_cdma_setup"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2635
    :cond_2
    const/4 v0, 0x2

    .restart local v0    # "provisioningState":I
    goto :goto_0

    .line 2637
    .end local v0    # "provisioningState":I
    :cond_3
    const/4 v0, 0x3

    .restart local v0    # "provisioningState":I
    goto :goto_0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2577
    const-string v0, "CTC"

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2578
    const-string v0, "gsm.sim.state"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ABSENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2580
    :cond_0
    const-string v0, "default"

    .line 2584
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getSubscriptionInfoAndStartPollingThreads()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 517
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    .line 518
    return-void
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2

    .prologue
    .line 2952
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 526
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v4, v4, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v4, :cond_1

    .line 527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received message "

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v25, "["

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v25, "]"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v25, " while being destroyed. Ignoring."

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 868
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 534
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    goto :goto_0

    .line 540
    :sswitch_1
    const-string v4, "CTC"

    const-string v25, "CMCC"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v25, 0x3c

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 544
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getLteOnCdmaMode()I

    move-result v4

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v4, v0, :cond_3

    .line 546
    const-string v4, "Receive EVENT_RUIM_READY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    .line 552
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->prepareEri()V

    goto :goto_0

    .line 549
    :cond_3
    const-string v4, "Receive EVENT_RUIM_READY and Send Request getCDMASubscription."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    goto :goto_1

    .line 560
    :sswitch_2
    const-string v4, "Receive EVENT_SIM_READY or EVENT_SIM_RECORDS_LOADED and Send Request getCDMASubscription."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    .line 562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->prepareEri()V

    goto :goto_0

    .line 567
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    goto :goto_0

    .line 576
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    sget-object v25, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v25

    if-ne v4, v0, :cond_4

    .line 577
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    .line 580
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    .line 583
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setPowerStateToDesired()V

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 588
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 595
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 599
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 600
    .local v11, "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    .line 601
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .line 606
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 608
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_f

    .line 609
    iget-object v4, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object/from16 v23, v4

    check-cast v23, [Ljava/lang/String;

    .line 610
    .local v23, "states":[Ljava/lang/String;
    const/4 v5, -0x1

    .line 611
    .local v5, "baseStationId":I
    const v6, 0x7fffffff

    .line 612
    .local v6, "baseStationLatitude":I
    const v7, 0x7fffffff

    .line 613
    .local v7, "baseStationLongitude":I
    const/4 v8, -0x1

    .line 614
    .local v8, "systemId":I
    const/4 v9, -0x1

    .line 617
    .local v9, "networkId":I
    const/16 v24, -0x1

    .line 618
    .local v24, "tac":I
    const/16 v17, -0x1

    .line 620
    .local v17, "lteCellId":I
    move-object/from16 v0, v23

    array-length v4, v0

    const/16 v25, 0x9

    move/from16 v0, v25

    if-le v4, v0, :cond_c

    .line 622
    const/4 v4, 0x4

    :try_start_0
    aget-object v4, v23, v4

    if-eqz v4, :cond_5

    .line 623
    const/4 v4, 0x4

    aget-object v4, v23, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 625
    :cond_5
    const/4 v4, 0x5

    aget-object v4, v23, v4

    if-eqz v4, :cond_6

    .line 626
    const/4 v4, 0x5

    aget-object v4, v23, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 628
    :cond_6
    const/4 v4, 0x6

    aget-object v4, v23, v4

    if-eqz v4, :cond_7

    .line 629
    const/4 v4, 0x6

    aget-object v4, v23, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 632
    :cond_7
    if-nez v6, :cond_8

    if-nez v7, :cond_8

    .line 633
    const v6, 0x7fffffff

    .line 634
    const v7, 0x7fffffff

    .line 636
    :cond_8
    const/16 v4, 0x8

    aget-object v4, v23, v4

    if-eqz v4, :cond_9

    .line 637
    const/16 v4, 0x8

    aget-object v4, v23, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 639
    :cond_9
    const/16 v4, 0x9

    aget-object v4, v23, v4

    if-eqz v4, :cond_a

    .line 640
    const/16 v4, 0x9

    aget-object v4, v23, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 651
    :cond_a
    const/4 v4, 0x1

    aget-object v4, v23, v4

    if-eqz v4, :cond_b

    .line 652
    const/4 v4, 0x1

    aget-object v4, v23, v4

    const/16 v25, 0x10

    move/from16 v0, v25

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v24

    .line 654
    :cond_b
    const/4 v4, 0x2

    aget-object v4, v23, v4

    if-eqz v4, :cond_c

    .line 655
    const/4 v4, 0x2

    aget-object v4, v23, v4

    const/16 v25, 0x10

    move/from16 v0, v25

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 664
    :cond_c
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual/range {v4 .. v9}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 667
    const/4 v4, -0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_d

    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_e

    .line 668
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/telephony/cdma/CdmaCellLocation;->setLteCellLocationData(II)V

    .line 671
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 676
    .end local v5    # "baseStationId":I
    .end local v6    # "baseStationLatitude":I
    .end local v7    # "baseStationLongitude":I
    .end local v8    # "systemId":I
    .end local v9    # "networkId":I
    .end local v17    # "lteCellId":I
    .end local v23    # "states":[Ljava/lang/String;
    .end local v24    # "tac":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .line 659
    .restart local v5    # "baseStationId":I
    .restart local v6    # "baseStationLatitude":I
    .restart local v7    # "baseStationLongitude":I
    .restart local v8    # "systemId":I
    .restart local v9    # "networkId":I
    .restart local v17    # "lteCellId":I
    .restart local v23    # "states":[Ljava/lang/String;
    .restart local v24    # "tac":I
    :catch_0
    move-exception v14

    .line 660
    .local v14, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "error parsing cell location data: "

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 682
    .end local v5    # "baseStationId":I
    .end local v6    # "baseStationLatitude":I
    .end local v7    # "baseStationLongitude":I
    .end local v8    # "systemId":I
    .end local v9    # "networkId":I
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "ex":Ljava/lang/NumberFormatException;
    .end local v17    # "lteCellId":I
    .end local v23    # "states":[Ljava/lang/String;
    .end local v24    # "tac":I
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 683
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 687
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 689
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 690
    iget-object v4, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v12, v4

    check-cast v12, [Ljava/lang/String;

    .line 691
    .local v12, "cdmaSubscription":[Ljava/lang/String;
    if-eqz v12, :cond_12

    array-length v4, v12

    const/16 v25, 0x5

    move/from16 v0, v25

    if-lt v4, v0, :cond_12

    .line 692
    const/4 v4, 0x0

    aget-object v4, v12, v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 693
    const/4 v4, 0x1

    aget-object v4, v12, v4

    const/16 v25, 0x2

    aget-object v25, v12, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const/4 v4, 0x3

    aget-object v4, v12, v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    .line 696
    const/4 v4, 0x4

    aget-object v4, v12, v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 697
    sget-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SHIP_BUILD:Z

    if-eqz v4, :cond_10

    .line 698
    const-string v4, "GET_CDMA_SUBSCRIPTION: MDN=xxx"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 704
    :goto_3
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateOtaspState()V

    .line 713
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_11

    .line 715
    const-string v4, "GET_CDMA_SUBSCRIPTION set imsi in mIccRecords"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 701
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "GET_CDMA_SUBSCRIPTION: MDN="

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 722
    :cond_11
    const-string v4, "GET_CDMA_SUBSCRIPTION either mIccRecords is null  or NV type device - not setting Imsi in mIccRecords"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 728
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "GET_CDMA_SUBSCRIPTION: error parsing cdmaSubscription params num="

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v0, v12

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 738
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "cdmaSubscription":[Ljava/lang/String;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v25, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 742
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 744
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/16 v25, 0x0

    aget-object v20, v4, v25

    check-cast v20, Ljava/lang/String;

    .line 745
    .local v20, "nitzString":Ljava/lang/String;
    iget-object v4, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/16 v25, 0x1

    aget-object v4, v4, v25

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 747
    .local v18, "nitzReceiveTime":J
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 757
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "nitzReceiveTime":J
    .end local v20    # "nitzString":Ljava/lang/String;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 761
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    .line 763
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    goto/16 :goto_0

    .line 767
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_RUIM_RECORDS_LOADED: what="

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    .line 770
    const-string v4, "AP"

    const-string v25, ""

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 771
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v25, "alarm"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    .line 772
    .local v10, "am":Landroid/app/AlarmManager;
    new-instance v15, Landroid/content/Intent;

    const-string v4, "PRL_GETTING_RETRY_TIMER"

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 773
    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v4, v0, v15, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->prlGettingRetrySender:Landroid/app/PendingIntent;

    .line 774
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    const-wide/16 v27, 0x1b58

    add-long v25, v25, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->prlGettingRetrySender:Landroid/app/PendingIntent;

    move-object/from16 v27, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, v27

    invoke-virtual {v10, v4, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 776
    .end local v10    # "am":Landroid/app/AlarmManager;
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_13
    const-string v4, "CTC"

    const-string v25, "CMCC"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 777
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/ServiceState;->getState()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->displayTimeDisplayScheme(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 782
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 784
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 785
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v25, 0x1f

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 791
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    const-string v4, "[CdmaServiceStateTracker] ERI file has been loaded, repolling."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 793
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mForceHasChanged:Z

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 799
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 800
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 801
    iget-object v4, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object/from16 v16, v4

    check-cast v16, [I

    .line 802
    .local v16, "ints":[I
    const/4 v4, 0x0

    aget v21, v16, v4

    .line 810
    .local v21, "otaStatus":I
    const/16 v4, 0x8

    move/from16 v0, v21

    if-eq v0, v4, :cond_14

    const/16 v4, 0xa

    move/from16 v0, v21

    if-ne v0, v4, :cond_0

    .line 812
    :cond_14
    const-string v4, "EVENT_OTA_PROVISION_STATUS_CHANGE: Complete, Reload MDN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v25, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 820
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "ints":[I
    .end local v21    # "otaStatus":I
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 821
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 822
    iget-object v4, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object/from16 v16, v4

    check-cast v16, [I

    .line 824
    .restart local v16    # "ints":[I
    move-object/from16 v0, v16

    array-length v4, v0

    if-eqz v4, :cond_0

    .line 825
    const/4 v4, 0x0

    aget v4, v16, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    goto/16 :goto_0

    .line 832
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "ints":[I
    :sswitch_12
    const-string v4, "Exit emergency callback mode because of No service"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->exitEmergencyCallbackMode()V

    goto/16 :goto_0

    .line 838
    :sswitch_13
    const-string v4, "CdmaSST"

    const-string v25, "Handle Message EVENT_CALL_HANGUP_BEFORE_DEACTIVEPDP"

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    if-eqz v4, :cond_0

    .line 840
    const-string v4, "CdmaSST"

    const-string v25, "waiting before radio turn off"

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    .line 842
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v13, v4, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 843
    .local v13, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto/16 :goto_0

    .line 850
    .end local v13    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :sswitch_14
    const-string v4, "CdmaSST"

    const-string v25, "Handle Message EVENT_IMS_RETRYOVER"

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v22

    .line 852
    .local v22, "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    if-eqz v22, :cond_0

    .line 853
    const-string v4, "CdmaSST"

    const-string v25, "Sending domain change notification"

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendDomainChangeSms(B)V

    goto/16 :goto_0

    .line 861
    .end local v22    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :sswitch_15
    const/16 v4, 0x11e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 862
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFromUserSelect:Z

    if-eqz v4, :cond_15

    .line 863
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFromUserSelect:Z

    .line 864
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_TIMEOUT_CTN mFromUserSelect = "

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFromUserSelect:Z

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 532
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_6
        0x5 -> :sswitch_8
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_e
        0x18 -> :sswitch_8
        0x19 -> :sswitch_8
        0x1a -> :sswitch_1
        0x1b -> :sswitch_d
        0x1e -> :sswitch_5
        0x1f -> :sswitch_7
        0x22 -> :sswitch_9
        0x23 -> :sswitch_3
        0x24 -> :sswitch_f
        0x25 -> :sswitch_10
        0x27 -> :sswitch_0
        0x28 -> :sswitch_11
        0x64 -> :sswitch_13
        0x6a -> :sswitch_12
        0x78 -> :sswitch_14
        0x11e -> :sswitch_15
    .end sparse-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 10
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1449
    iget-object v5, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    if-eq v5, v8, :cond_1

    .line 1584
    :cond_0
    :goto_0
    return-void

    .line 1451
    :cond_1
    iget-object v5, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_c

    .line 1452
    const/4 v0, 0x0

    .line 1454
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v5, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_2

    .line 1455
    iget-object v5, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1458
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v5, :cond_3

    .line 1460
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 1464
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1466
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 1470
    :cond_4
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v5, :cond_5

    .line 1471
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePollStateResult: RIL returned an error where it must succeed"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1481
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v8, v5, v6

    add-int/lit8 v8, v8, -0x1

    aput v8, v5, v6

    .line 1483
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v5, v5, v6

    if-nez v5, :cond_0

    .line 1484
    const/4 v3, 0x0

    .line 1485
    .local v3, "namMatch":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSidsAllZeros()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isHomeSid(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1486
    const/4 v3, 0x1

    .line 1493
    :cond_6
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoaming:Z

    if-eqz v5, :cond_d

    :cond_7
    move v5, v7

    :goto_2
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    .line 1510
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v5, :cond_e

    .line 1511
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v6, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1512
    const-string v5, "2"

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1513
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-direct {p0, v6, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isRoamingBetweenOperators(ZI)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1521
    :cond_8
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    .line 1522
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 1523
    const/4 v2, 0x1

    .line 1524
    .local v2, "isPrlLoaded":Z
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1525
    const/4 v2, 0x0

    .line 1527
    :cond_9
    if-nez v2, :cond_f

    .line 1528
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v7}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 1551
    :cond_a
    :goto_4
    const-string v5, "CTC"

    const-string v6, "CMCC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1552
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    .line 1553
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 1556
    :cond_b
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v4

    .line 1557
    .local v4, "roamingIndicator":I
    const-string v5, "2"

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1558
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v4}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 1559
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIconMode:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    .line 1567
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EriIconIndex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", EriIconMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1574
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set CDMA Roaming Indicator to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". mCdmaRoaming = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isPrlLoaded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". namMatch = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mIsInPrl = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRoamingIndicator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mDefaultRoamingIndicator= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1581
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 1475
    .end local v2    # "isPrlLoaded":Z
    .end local v3    # "namMatch":Z
    .end local v4    # "roamingIndicator":I
    :cond_c
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1476
    :catch_0
    move-exception v1

    .line 1477
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePollStateResult: Exception while polling service state. Probably malformed RIL response."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "namMatch":Z
    :cond_d
    move v5, v6

    .line 1493
    goto/16 :goto_2

    .line 1516
    :cond_e
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    goto/16 :goto_3

    .line 1529
    .restart local v2    # "isPrlLoaded":Z
    :cond_f
    const-string v5, "0"

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1531
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSidsAllZeros()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1532
    if-nez v3, :cond_10

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    if-nez v5, :cond_10

    .line 1534
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_4

    .line 1535
    :cond_10
    if-eqz v3, :cond_11

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    if-nez v5, :cond_11

    .line 1536
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v9}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_4

    .line 1537
    :cond_11
    if-nez v3, :cond_12

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    if-eqz v5, :cond_12

    .line 1539
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_4

    .line 1542
    :cond_12
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    if-gt v5, v9, :cond_13

    .line 1543
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v7}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_4

    .line 1546
    :cond_13
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_4

    .line 1561
    .restart local v4    # "roamingIndicator":I
    :cond_14
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v6, v4, v7}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconIndex(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 1563
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v6, v4, v7}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconMode(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    goto/16 :goto_5
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 27
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1133
    sparse-switch p1, :sswitch_data_0

    .line 1437
    const-string v3, "handlePollStateResultMessage: RIL response handle in wrong phone! Expected CDMA RIL request and get GSM RIL request."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1441
    :cond_0
    :goto_0
    return-void

    .line 1135
    :sswitch_0
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v21, v3

    check-cast v21, [Ljava/lang/String;

    .line 1137
    .local v21, "states":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "handlePollStateResultMessage: EVENT_POLL_STATE_GPRS states.length="

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v24, " states="

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1141
    const/16 v18, 0x4

    .line 1142
    .local v18, "regState":I
    const/4 v10, 0x0

    .line 1144
    .local v10, "dataRadioTechnology":I
    move-object/from16 v0, v21

    array-length v3, v0

    if-lez v3, :cond_1

    .line 1146
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1149
    move-object/from16 v0, v21

    array-length v3, v0

    const/16 v24, 0x4

    move/from16 v0, v24

    if-lt v3, v0, :cond_1

    const/4 v3, 0x3

    aget-object v3, v21, v3

    if-eqz v3, :cond_1

    .line 1150
    const/4 v3, 0x3

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 1158
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v11

    .line 1159
    .local v11, "dataRegState":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v11}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v10}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 1162
    const-string v3, "CTC"

    const-string v24, "CMCC"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1165
    const-string v3, "set data roaming state in force"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1166
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoaming:Z

    .line 1167
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    .line 1168
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    .line 1173
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "handlPollStateResultMessage: cdma setDataRegState="

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v24, " regState="

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v24, " dataRadioTechnology="

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1152
    .end local v11    # "dataRegState":I
    :catch_0
    move-exception v13

    .line 1153
    .local v13, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "handlePollStateResultMessage: error parsing GprsRegistrationState: "

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1181
    .end local v10    # "dataRadioTechnology":I
    .end local v13    # "ex":Ljava/lang/NumberFormatException;
    .end local v18    # "regState":I
    .end local v21    # "states":[Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v21, v3

    check-cast v21, [Ljava/lang/String;

    .line 1183
    .restart local v21    # "states":[Ljava/lang/String;
    const/16 v19, 0x4

    .line 1184
    .local v19, "registrationState":I
    const/16 v16, -0x1

    .line 1185
    .local v16, "radioTechnology":I
    const/4 v4, -0x1

    .line 1187
    .local v4, "baseStationId":I
    const v5, 0x7fffffff

    .line 1189
    .local v5, "baseStationLatitude":I
    const v6, 0x7fffffff

    .line 1190
    .local v6, "baseStationLongitude":I
    const/4 v9, 0x0

    .line 1191
    .local v9, "cssIndicator":I
    const/4 v7, 0x0

    .line 1192
    .local v7, "systemId":I
    const/4 v8, 0x0

    .line 1193
    .local v8, "networkId":I
    const/16 v20, -0x1

    .line 1194
    .local v20, "roamingIndicator":I
    const/16 v22, 0x0

    .line 1195
    .local v22, "systemIsInPrl":I
    const/4 v12, 0x0

    .line 1196
    .local v12, "defaultRoamingIndicator":I
    const/16 v17, 0x0

    .line 1199
    .local v17, "reasonForDenial":I
    const/4 v7, -0x1

    .line 1200
    const/4 v8, -0x1

    .line 1201
    const/16 v20, 0x1

    .line 1202
    const/4 v12, 0x1

    .line 1205
    const/16 v23, -0x1

    .line 1206
    .local v23, "tac":I
    const/4 v14, -0x1

    .line 1208
    .local v14, "lteCellId":I
    move-object/from16 v0, v21

    array-length v3, v0

    const/16 v24, 0xe

    move/from16 v0, v24

    if-lt v3, v0, :cond_17

    .line 1210
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v21, v3

    if-eqz v3, :cond_3

    .line 1211
    const/4 v3, 0x0

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1213
    :cond_3
    const/4 v3, 0x3

    aget-object v3, v21, v3

    if-eqz v3, :cond_4

    .line 1214
    const/4 v3, 0x3

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1216
    :cond_4
    const/4 v3, 0x4

    aget-object v3, v21, v3

    if-eqz v3, :cond_5

    .line 1217
    const/4 v3, 0x4

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1222
    :cond_5
    const/4 v3, 0x5

    aget-object v3, v21, v3

    if-eqz v3, :cond_6

    .line 1223
    const/4 v3, 0x5

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1225
    :cond_6
    const/4 v3, 0x6

    aget-object v3, v21, v3

    if-eqz v3, :cond_7

    .line 1226
    const/4 v3, 0x6

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1229
    :cond_7
    if-nez v5, :cond_8

    if-nez v6, :cond_8

    .line 1230
    const v5, 0x7fffffff

    .line 1231
    const v6, 0x7fffffff

    .line 1233
    :cond_8
    const/4 v3, 0x7

    aget-object v3, v21, v3

    if-eqz v3, :cond_9

    .line 1234
    const/4 v3, 0x7

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1236
    :cond_9
    const/16 v3, 0x8

    aget-object v3, v21, v3

    if-eqz v3, :cond_a

    .line 1237
    const/16 v3, 0x8

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1239
    :cond_a
    const/16 v3, 0x9

    aget-object v3, v21, v3

    if-eqz v3, :cond_b

    .line 1240
    const/16 v3, 0x9

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1242
    :cond_b
    const/16 v3, 0xa

    aget-object v3, v21, v3

    if-eqz v3, :cond_c

    .line 1243
    const/16 v3, 0xa

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1245
    :cond_c
    const/16 v3, 0xb

    aget-object v3, v21, v3

    if-eqz v3, :cond_d

    .line 1246
    const/16 v3, 0xb

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 1248
    :cond_d
    const/16 v3, 0xc

    aget-object v3, v21, v3

    if-eqz v3, :cond_e

    .line 1249
    const/16 v3, 0xc

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1251
    :cond_e
    const/16 v3, 0xd

    aget-object v3, v21, v3

    if-eqz v3, :cond_f

    .line 1252
    const/16 v3, 0xd

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1263
    :cond_f
    const/4 v3, 0x1

    aget-object v3, v21, v3

    if-eqz v3, :cond_10

    .line 1264
    const/4 v3, 0x1

    aget-object v3, v21, v3

    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-static {v3, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v23

    .line 1266
    :cond_10
    const/4 v3, 0x2

    aget-object v3, v21, v3

    if-eqz v3, :cond_11

    .line 1267
    const/4 v3, 0x2

    aget-object v3, v21, v3

    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-static {v3, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    .line 1280
    :cond_11
    :goto_2
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    .line 1284
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v3

    if-eqz v3, :cond_18

    const/16 v3, 0xa

    aget-object v3, v21, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isRoamIndForHomeSystem(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    .line 1286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 1290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v9}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v7, v8}, Landroid/telephony/ServiceState;->setSystemAndNetworkId(II)V

    .line 1293
    const-string v3, "CTC"

    const-string v24, "CMCC"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_12

    .line 1295
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->checkCtcRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1296
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    .line 1297
    const/16 v20, 0x0

    .line 1298
    const/4 v12, 0x0

    .line 1299
    const-string v3, "Set roaming status to roaming in force."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1309
    :cond_12
    :goto_4
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    .line 1311
    const-string v3, "1"

    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "3"

    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1312
    :cond_13
    const/4 v3, -0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_14

    .line 1313
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    .line 1330
    :cond_14
    :goto_5
    if-nez v22, :cond_1d

    const/4 v3, 0x0

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    .line 1331
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    .line 1335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 1339
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_15

    const/4 v3, -0x1

    if-eq v14, v3, :cond_16

    .line 1340
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "tac: "

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v24, ", lteCellId: "

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move/from16 v0, v23

    invoke-virtual {v3, v0, v14}, Landroid/telephony/cdma/CdmaCellLocation;->setLteCellLocationData(II)V

    .line 1345
    :cond_16
    if-nez v17, :cond_1e

    .line 1346
    const-string v3, "General"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    .line 1353
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    const/16 v24, 0x3

    move/from16 v0, v24

    if-ne v3, v0, :cond_0

    .line 1354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Registration denied, "

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1271
    :catch_1
    move-exception v13

    .line 1272
    .restart local v13    # "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "EVENT_POLL_STATE_REGISTRATION_CDMA: error parsing: "

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1275
    .end local v13    # "ex":Ljava/lang/NumberFormatException;
    :cond_17
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Warning! Wrong number of parameters returned from RIL_REQUEST_REGISTRATION_STATE: expected 14 or more strings and got "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " strings"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1284
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1302
    :cond_19
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    .line 1303
    const/16 v20, 0x1

    .line 1304
    const/4 v12, 0x1

    .line 1305
    const-string v3, "Set roaming status to home in force."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1315
    :cond_1a
    const-string v3, "2"

    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1316
    and-int/lit8 v3, v20, 0x7f

    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v3, v0, :cond_1b

    const/4 v3, -0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_1c

    .line 1317
    :cond_1b
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    goto/16 :goto_5

    .line 1319
    :cond_1c
    and-int/lit8 v3, v20, 0x7f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    .line 1320
    shr-int/lit8 v3, v20, 0x7

    and-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIconMode:I

    .line 1321
    const-string v3, "MTR"

    const-string v24, "CMCC"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1323
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v3, v0, :cond_14

    .line 1324
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIconMode:I

    goto/16 :goto_5

    .line 1330
    :cond_1d
    const/4 v3, 0x1

    goto/16 :goto_6

    .line 1347
    :cond_1e
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_1f

    .line 1348
    const-string v3, "Authentication Failure"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto/16 :goto_7

    .line 1350
    :cond_1f
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto/16 :goto_7

    .line 1359
    .end local v4    # "baseStationId":I
    .end local v5    # "baseStationLatitude":I
    .end local v6    # "baseStationLongitude":I
    .end local v7    # "systemId":I
    .end local v8    # "networkId":I
    .end local v9    # "cssIndicator":I
    .end local v12    # "defaultRoamingIndicator":I
    .end local v14    # "lteCellId":I
    .end local v16    # "radioTechnology":I
    .end local v17    # "reasonForDenial":I
    .end local v19    # "registrationState":I
    .end local v20    # "roamingIndicator":I
    .end local v21    # "states":[Ljava/lang/String;
    .end local v22    # "systemIsInPrl":I
    .end local v23    # "tac":I
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v15, v3

    check-cast v15, [Ljava/lang/String;

    .line 1361
    .local v15, "opNames":[Ljava/lang/String;
    if-eqz v15, :cond_24

    array-length v3, v15

    const/16 v24, 0x3

    move/from16 v0, v24

    if-lt v3, v0, :cond_24

    .line 1391
    const/4 v3, 0x2

    aget-object v3, v15, v3

    if-eqz v3, :cond_20

    const/4 v3, 0x2

    aget-object v3, v15, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v24, 0x5

    move/from16 v0, v24

    if-lt v3, v0, :cond_20

    const-string v3, "00000"

    const/16 v24, 0x2

    aget-object v24, v15, v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1393
    :cond_20
    const-string v3, "CTC"

    const-string v24, "CMCC"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 1395
    const/4 v3, 0x2

    sget-object v24, Lcom/android/internal/telephony/cdma/CDMAPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    const-string v25, "00000"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v15, v3

    .line 1399
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "RIL_REQUEST_OPERATOR.response[2], the numeric,  is bad. Using SystemProperties \'"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v24, Lcom/android/internal/telephony/cdma/CDMAPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v24, "\'= "

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v24, 0x2

    aget-object v24, v15, v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1406
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v3, :cond_23

    .line 1409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/16 v24, 0x0

    const/16 v25, 0x1

    aget-object v25, v15, v25

    const/16 v26, 0x2

    aget-object v26, v15, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v3, v0, v1, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    const-string v3, "2"

    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/16 v24, 0x0

    aget-object v24, v15, v24

    const/16 v25, 0x1

    aget-object v25, v15, v25

    const/16 v26, 0x2

    aget-object v26, v15, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v3, v0, v1, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1426
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/16 v24, 0x0

    aget-object v24, v15, v24

    const/16 v25, 0x1

    aget-object v25, v15, v25

    const/16 v26, 0x2

    aget-object v26, v15, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v3, v0, v1, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1429
    :cond_24
    const-string v3, "EVENT_POLL_STATE_OPERATOR_CDMA: error parsing opNames"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1133
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
    .end sparse-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 3

    .prologue
    .line 2658
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 2659
    return-void
.end method

.method protected hangupBeforeDeactivePDP()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2930
    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    .line 2933
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2934
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 2935
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 2936
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 2937
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    .line 2939
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupBeforeDeactivePDP() : post pending value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2940
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    if-eqz v1, :cond_1

    .line 2941
    const-wide/16 v0, 0x3e8

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendCallHangupDelayed(JI)V

    .line 2942
    const/4 v0, 0x1

    .line 2944
    :cond_1
    return v0
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 1

    .prologue
    .line 2532
    const/4 v0, 0x0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 2615
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    return v0
.end method

.method protected isSidsAllZeros()Z
    .locals 2

    .prologue
    .line 2496
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    if-eqz v1, :cond_1

    .line 2497
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2498
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    .line 2499
    const/4 v1, 0x0

    .line 2503
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 2497
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2503
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2795
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2800
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2736
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_1

    .line 2791
    :cond_0
    :goto_0
    return-void

    .line 2741
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2744
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_0

    .line 2745
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_3

    .line 2746
    const-string v1, "Removing stale icc objects."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2747
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 2748
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_2

    .line 2749
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2751
    :cond_2
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2752
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2754
    :cond_3
    if-eqz v0, :cond_0

    .line 2755
    const-string v1, "New card found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2756
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2757
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2758
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v1, :cond_4

    .line 2759
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v2, 0x1a

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2760
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    .line 2761
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v2, 0x1b

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 2765
    :cond_4
    const-string v1, "Subscription from NV"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected parseSidNid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "sidStr"    # Ljava/lang/String;
    .param p2, "nidStr"    # Ljava/lang/String;

    .prologue
    .line 2662
    if-eqz p1, :cond_0

    .line 2663
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2664
    .local v3, "sid":[Ljava/lang/String;
    array-length v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    .line 2665
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 2667
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2665
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2668
    :catch_0
    move-exception v0

    .line 2669
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error parsing system id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 2673
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    .end local v3    # "sid":[Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA_SUBSCRIPTION: SID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2675
    if-eqz p2, :cond_1

    .line 2676
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2677
    .local v2, "nid":[Ljava/lang/String;
    array-length v4, v2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    .line 2678
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 2680
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2678
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2681
    :catch_1
    move-exception v0

    .line 2682
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA_SUBSCRIPTION: error parsing network id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 2686
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    .end local v2    # "nid":[Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA_SUBSCRIPTION: NID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2687
    return-void
.end method

.method protected pollState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1600
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 1601
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aput v3, v0, v3

    .line 1603
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1635
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1637
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 1640
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1642
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 1645
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1647
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 1651
    :goto_0
    return-void

    .line 1605
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1606
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 1607
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1608
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 1610
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 1614
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1623
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 1624
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1625
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 1627
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 1603
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 32

    .prologue
    .line 1727
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "pollStateDone: cdma oldSS=["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "] newSS=["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1729
    sget-boolean v28, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v28, :cond_0

    const-string v28, "telephony.test.forceRoaming"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1733
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v28

    if-eqz v28, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v28

    if-nez v28, :cond_14

    const/4 v15, 0x1

    .line 1739
    .local v15, "hasRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v28

    if-nez v28, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v28

    if-eqz v28, :cond_15

    const/4 v12, 0x1

    .line 1743
    .local v12, "hasDeregistered":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v28

    if-eqz v28, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v28

    if-nez v28, :cond_16

    const/4 v8, 0x1

    .line 1747
    .local v8, "hasCdmaDataConnectionAttached":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v28

    if-nez v28, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v28

    if-eqz v28, :cond_17

    const/4 v10, 0x1

    .line 1751
    .local v10, "hasCdmaDataConnectionDetached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_18

    const/4 v9, 0x1

    .line 1754
    .local v9, "hasCdmaDataConnectionChanged":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_19

    const/16 v17, 0x1

    .line 1757
    .local v17, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1a

    const/16 v16, 0x1

    .line 1760
    .local v16, "hasRilDataRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1b

    const/4 v11, 0x1

    .line 1762
    .local v11, "hasChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v28

    if-nez v28, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v28

    if-eqz v28, :cond_1c

    const/16 v19, 0x1

    .line 1764
    .local v19, "hasRoamingOn":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v28

    if-eqz v28, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v28

    if-nez v28, :cond_1d

    const/16 v18, 0x1

    .line 1766
    .local v18, "hasRoamingOff":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/telephony/cdma/CdmaCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1e

    const/4 v13, 0x1

    .line 1769
    .local v13, "hasLocationChanged":Z
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mForceHasChanged:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 1770
    const/4 v11, 0x1

    .line 1771
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mForceHasChanged:Z

    .line 1772
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Change hasChanged to "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1777
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 1778
    .local v5, "currOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v22

    .line 1779
    .local v22, "newOperatorNumeric":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "curr operator numeric "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " new "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1780
    const/4 v14, 0x0

    .line 1781
    .local v14, "hasPlmnChanged":Z
    if-eqz v5, :cond_2

    if-eqz v22, :cond_2

    .line 1782
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1f

    const/4 v14, 0x1

    .line 1787
    :cond_2
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_4

    .line 1789
    :cond_3
    const v28, 0xc3c4

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1795
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    .line 1796
    .local v27, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1797
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v26, v0

    .line 1802
    .local v26, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 1803
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 1805
    if-eqz v17, :cond_5

    .line 1806
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 1807
    const-string v28, "CTC"

    const-string v29, "CMCC"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v28, v0

    const-string v29, "gsm.voice.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v30

    invoke-static/range {v30 .. v30}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    :cond_5
    if-eqz v16, :cond_6

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v28, v0

    const-string v29, "gsm.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v30

    invoke-static/range {v30 .. v30}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    :cond_6
    if-eqz v15, :cond_7

    .line 1819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1822
    :cond_7
    if-eqz v11, :cond_b

    .line 1824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v28

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    move/from16 v28, v0

    if-nez v28, :cond_8

    .line 1827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v28

    if-nez v28, :cond_20

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v6

    .line 1835
    .local v6, "eriText":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1838
    .end local v6    # "eriText":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v28, v0

    const-string v29, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    const-string v28, "gsm.operator.numeric"

    const-string v29, ""

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1847
    .local v24, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v23

    .line 1848
    .local v23, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v28, v0

    const-string v29, "gsm.operator.numeric"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    if-nez v23, :cond_21

    .line 1851
    const-string v28, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v28, v0

    const-string v29, "gsm.operator.iso-country"

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 1888
    :cond_9
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    const-string v30, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v28

    if-eqz v28, :cond_22

    const-string v28, "true"

    :goto_e
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getState()I

    move-result v25

    .line 1894
    .local v25, "serviceStateForProperty":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v28, v0

    const-string v29, "ril.servicestate"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    .line 1900
    const-string v28, "CTC"

    const-string v29, "CMCC"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 1901
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setChinaMainlandProperty()V

    .line 1902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getState()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->displayTimeDisplayScheme(Ljava/lang/String;I)V

    .line 1904
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1932
    .end local v23    # "operatorNumeric":Ljava/lang/String;
    .end local v24    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v25    # "serviceStateForProperty":I
    :cond_b
    if-eqz v8, :cond_c

    .line 1933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1936
    :cond_c
    if-eqz v10, :cond_d

    .line 1937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1940
    :cond_d
    if-nez v9, :cond_e

    if-eqz v16, :cond_f

    .line 1941
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 1942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1945
    :cond_f
    if-eqz v19, :cond_10

    .line 1946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1949
    :cond_10
    if-eqz v18, :cond_11

    .line 1950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1953
    :cond_11
    if-eqz v13, :cond_12

    .line 1954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 1958
    :cond_12
    if-eqz v14, :cond_13

    .line 1959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPlmnChangeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1963
    :cond_13
    return-void

    .line 1735
    .end local v5    # "currOperatorNumeric":Ljava/lang/String;
    .end local v8    # "hasCdmaDataConnectionAttached":Z
    .end local v9    # "hasCdmaDataConnectionChanged":Z
    .end local v10    # "hasCdmaDataConnectionDetached":Z
    .end local v11    # "hasChanged":Z
    .end local v12    # "hasDeregistered":Z
    .end local v13    # "hasLocationChanged":Z
    .end local v14    # "hasPlmnChanged":Z
    .end local v15    # "hasRegistered":Z
    .end local v16    # "hasRilDataRadioTechnologyChanged":Z
    .end local v17    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v18    # "hasRoamingOff":Z
    .end local v19    # "hasRoamingOn":Z
    .end local v22    # "newOperatorNumeric":Ljava/lang/String;
    .end local v26    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v27    # "tss":Landroid/telephony/ServiceState;
    :cond_14
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1739
    .restart local v15    # "hasRegistered":Z
    :cond_15
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1743
    .restart local v12    # "hasDeregistered":Z
    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1747
    .restart local v8    # "hasCdmaDataConnectionAttached":Z
    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1751
    .restart local v10    # "hasCdmaDataConnectionDetached":Z
    :cond_18
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 1754
    .restart local v9    # "hasCdmaDataConnectionChanged":Z
    :cond_19
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 1757
    .restart local v17    # "hasRilVoiceRadioTechnologyChanged":Z
    :cond_1a
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 1760
    .restart local v16    # "hasRilDataRadioTechnologyChanged":Z
    :cond_1b
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1762
    .restart local v11    # "hasChanged":Z
    :cond_1c
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 1764
    .restart local v19    # "hasRoamingOn":Z
    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_9

    .line 1766
    .restart local v18    # "hasRoamingOff":Z
    :cond_1e
    const/4 v13, 0x0

    goto/16 :goto_a

    .line 1782
    .restart local v5    # "currOperatorNumeric":Ljava/lang/String;
    .restart local v13    # "hasLocationChanged":Z
    .restart local v14    # "hasPlmnChanged":Z
    .restart local v22    # "newOperatorNumeric":Ljava/lang/String;
    :cond_1f
    const/4 v14, 0x0

    goto/16 :goto_b

    .line 1832
    .restart local v26    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v27    # "tss":Landroid/telephony/ServiceState;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v28

    const v29, 0x10401a4

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "eriText":Ljava/lang/String;
    goto/16 :goto_c

    .line 1855
    .end local v6    # "eriText":Ljava/lang/String;
    .restart local v23    # "operatorNumeric":Ljava/lang/String;
    .restart local v24    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_21
    const-string v20, ""

    .line 1856
    .local v20, "isoCountryCode":Ljava/lang/String;
    const/16 v28, 0x0

    const/16 v29, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 1858
    .local v21, "mcc":Ljava/lang/String;
    const/16 v28, 0x0

    const/16 v29, 0x3

    :try_start_0
    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v20

    .line 1866
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v28, v0

    const-string v29, "gsm.operator.iso-country"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 1870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 1884
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1860
    :catch_0
    move-exception v7

    .line 1861
    .local v7, "ex":Ljava/lang/NumberFormatException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_f

    .line 1862
    .end local v7    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v7

    .line 1863
    .local v7, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_f

    .line 1888
    .end local v7    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v20    # "isoCountryCode":Ljava/lang/String;
    .end local v21    # "mcc":Ljava/lang/String;
    :cond_22
    const-string v28, "false"

    goto/16 :goto_e
.end method

.method protected radioTechnologyToDataServiceState(I)I
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 2022
    const/4 v0, 0x1

    .line 2023
    .local v0, "retVal":I
    packed-switch p1, :pswitch_data_0

    .line 2039
    :pswitch_0
    const-string v1, "radioTechnologyToDataServiceState: Wrong radioTechnology code."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2042
    :goto_0
    :pswitch_1
    return v0

    .line 2036
    :pswitch_2
    const/4 v0, 0x0

    .line 2037
    goto :goto_0

    .line 2023
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected regCodeIsRoaming(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 2081
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
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2048
    packed-switch p1, :pswitch_data_0

    .line 2061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regCodeToServiceState: unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2062
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 2052
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 2058
    goto :goto_0

    .line 2048
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 490
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 491
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 493
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isMinInfoReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 496
    :cond_0
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 5

    .prologue
    .line 889
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v2, v3, :cond_2

    .line 892
    const/4 v1, 0x0

    .line 899
    .local v1, "skipRadioPower":Z
    if-eqz v1, :cond_1

    .line 900
    const-string v2, "skip RADIO_POWER request"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    .line 925
    .end local v1    # "skipRadioPower":Z
    :cond_0
    :goto_0
    return-void

    .line 904
    .restart local v1    # "skipRadioPower":Z
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 908
    .end local v1    # "skipRadioPower":Z
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 909
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 912
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto :goto_0
.end method

.method protected setSignalStrengthDefaultValues()V
    .locals 2

    .prologue
    .line 1587
    new-instance v0, Landroid/telephony/SignalStrength;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1588
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 500
    return-void
.end method

.method protected updateOtaspState()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    .line 2690
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getOtasp()I

    move-result v2

    .line 2691
    .local v2, "otaspMode":I
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    .line 2692
    .local v1, "oldOtaspMode":I
    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    .line 2695
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_0

    .line 2696
    const-string v4, "CDMA_SUBSCRIPTION: call notifyRegistrants()"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2697
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2700
    :cond_0
    const-string v4, "USC"

    const-string v5, "CMCC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ACG"

    const-string v5, "CMCC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2702
    :cond_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    if-ne v4, v6, :cond_2

    .line 2703
    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    .line 2707
    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    if-eq v1, v4, :cond_5

    .line 2709
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA_SUBSCRIPTION: call notifyOtaspChanged old otaspMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new otaspMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2713
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    if-eq v4, v6, :cond_3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    if-ne v4, v7, :cond_4

    .line 2714
    :cond_3
    const-string v4, "ril.otasp_state"

    const-string v5, "3"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2717
    :cond_4
    const-string v4, "VZW-CDMA"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2718
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2719
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "setup_wizard_skip"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2721
    .local v0, "SetupWizardSkip":Z
    if-eqz v0, :cond_6

    .line 2722
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->notifyOtaspChanged(I)V

    .line 2723
    const-string v4, "SetupWizardSkip: true, send OTASP_NOT_NEEDED to setup Wizard for skipping."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2732
    .end local v0    # "SetupWizardSkip":Z
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_5
    :goto_0
    return-void

    .line 2725
    .restart local v0    # "SetupWizardSkip":Z
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_6
    const-string v4, "SetupWizardSkip: false, send Current OtaspMode to setup Wizard"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2726
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyOtaspChanged(I)V

    goto :goto_0

    .line 2729
    .end local v0    # "SetupWizardSkip":Z
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyOtaspChanged(I)V

    goto :goto_0
.end method

.method protected updateSpnDisplay()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 930
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 954
    .local v1, "plmn":Ljava/lang/String;
    const-string v5, "CHN"

    const-string v6, "CHN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 955
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplayChn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 956
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plmn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 959
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 964
    if-eqz v1, :cond_2

    move v2, v3

    .line 971
    .local v2, "showPlmn":Z
    :goto_0
    const-string v5, "updateSpnDisplay: changed sending intent showPlmn=\'%b\' plmn=\'%s\'"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 975
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 977
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 978
    const-string v3, "showSpn"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 979
    const-string v3, "spn"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 980
    const-string v3, "showPlmn"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 981
    const-string v3, "plmn"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    const-string v3, "simSlot"

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 985
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 988
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "showPlmn":Z
    :cond_1
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 989
    return-void

    :cond_2
    move v2, v4

    .line 964
    goto :goto_0
.end method

.method protected updateSpnDisplayChn(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const v9, 0x104090d

    .line 994
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v7, "airplane_mode_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 995
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10401f3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 997
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Airplane mode, plmn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1119
    :cond_0
    :goto_0
    return-object p1

    .line 1001
    :cond_1
    const-string v6, "gsm.sim.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1002
    .local v1, "CardStatusCDMA":Ljava/lang/String;
    const-string v6, "gsm.sim.currentcardstatus"

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, "CardOffStatus":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1006
    .local v5, "plmnCDMAstate":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CardStatusCDMA = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CardOffStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1008
    const-string v6, "UNKNOWN"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "READY"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_2
    const-string v6, "2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1010
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040909

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1029
    :cond_3
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plmnCDMAstate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1032
    if-eqz v5, :cond_0

    .line 1033
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 1034
    .local v4, "numeric":Ljava/lang/String;
    const-string v6, "gsm.sim.operator.numeric"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1036
    .local v3, "mRuim":Ljava/lang/String;
    const-string v6, "gsm.sim.state"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "READY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1037
    const-string v6, "RUIM is ready!"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1046
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object p1

    .line 1047
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RUIM plmn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1055
    :goto_2
    if-eqz p1, :cond_4

    const-string v6, "Empty"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1056
    const/4 p1, 0x0

    .line 1059
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1060
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-eqz v6, :cond_d

    .line 1061
    const-string p1, "--"

    .line 1072
    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 1073
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RUIM string is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", plmn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", locale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "persist.sys.language"

    const-string v8, "zh"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1075
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "46003"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1076
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1110
    :cond_6
    :goto_4
    const-string v6, "persist.sys.language"

    const-string v7, "zh"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1111
    .local v2, "mLang":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v6, "zh"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1112
    const-string v6, "China Telecom"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1113
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "but, language is zh, plmn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mRuim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1013
    .end local v2    # "mLang":Ljava/lang/String;
    .end local v3    # "mRuim":Ljava/lang/String;
    .end local v4    # "numeric":Ljava/lang/String;
    :cond_7
    const-string v6, "ABSENT"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "UNKNOWN"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "NOT_READY"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1014
    :cond_8
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104090a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1016
    const-string v6, "OPEN"

    const-string v7, "CMCC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1017
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10405a9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 1021
    :cond_9
    const-string v6, "PIN_REQUIRED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "PUK_REQUIRED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1022
    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040908

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 1025
    :cond_b
    const-string p1, "--"

    .line 1026
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 1051
    .restart local v3    # "mRuim":Ljava/lang/String;
    .restart local v4    # "numeric":Ljava/lang/String;
    :cond_c
    const-string p1, "--"

    goto/16 :goto_2

    .line 1064
    :cond_d
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    .line 1065
    const-string v6, "2012"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "00000"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1066
    const-string p1, "--"

    goto/16 :goto_3

    .line 1078
    :cond_e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "46000"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1079
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10408fd

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 1081
    :cond_f
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "46001"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1082
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x104090c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 1084
    :cond_10
    const-string v6, "45502"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1086
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numeric="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_4
.end method
