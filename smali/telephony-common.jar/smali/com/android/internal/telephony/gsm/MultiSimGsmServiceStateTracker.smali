.class Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;
.super Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.source "MultiSimGsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;,
        Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$Lock;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final EVENT_FORWARDING_GET_COMPLETED:I = 0x407

.field private static final EVENT_GET_CFIS_DONE:I = 0x406

.field static final INTENT_ACTION_CANCEL_POWER_ON_DELAY:Ljava/lang/String; = "android.intent.action.CANCEL_POWER_ON_DELAY"

.field static final INTENT_ACTION_CANCEL_POWER_ON_TIMER:Ljava/lang/String; = "android.intent.action.CANCEL_POWER_ON_TIMER"

.field static final LOG_TAG:Ljava/lang/String; = "GsmSST"

.field private static final MCCMNC_CODES_CFIS_SIMERROR:[Ljava/lang/String;

.field private static isCmccSIM:Z

.field private static setModeFlag:Z

.field private static useSlot2Data:Z


# instance fields
.field private final BCM_EVENT_SIM_ABSENT:I

.field private final BCM_EVENT_SIM_LOCK:I

.field private final BCM_EVENT_SIM_NETWORKLOCK:I

.field private StartQueryCallForwardStatus:Z

.field private mHasPostedRadioPowerOnTimer:Z

.field private mLastRadioPowerOnTimer:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;

.field private mLocaleChanged:Z

.field private final mLock:Ljava/lang/Object;

.field private mMasterSimMode:Z

.field private mPhoneOnMode:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviousAirplanemode:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempIntent:Landroid/content/Intent;

.field mccmnc_final:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    sput-boolean v3, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setModeFlag:Z

    .line 153
    sput-boolean v2, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isCmccSIM:Z

    .line 154
    sput-boolean v2, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->useSlot2Data:Z

    .line 159
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46000"

    aput-object v1, v0, v2

    const-string v1, "46001"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "46002"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "46003"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "46005"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "46006"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "46007"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->MCCMNC_CODES_CFIS_SIMERROR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 211
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 131
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPreviousAirplanemode:Z

    .line 143
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneOnMode:Z

    .line 144
    iput v3, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->BCM_EVENT_SIM_ABSENT:I

    .line 145
    iput v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->BCM_EVENT_SIM_NETWORKLOCK:I

    .line 146
    iput v5, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->BCM_EVENT_SIM_LOCK:I

    .line 147
    new-instance v1, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$Lock;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$Lock;-><init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLock:Ljava/lang/Object;

    .line 148
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLocaleChanged:Z

    .line 150
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mMasterSimMode:Z

    .line 157
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mccmnc_final:Ljava/lang/String;

    .line 162
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->StartQueryCallForwardStatus:Z

    .line 170
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasPostedRadioPowerOnTimer:Z

    .line 171
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 179
    new-instance v1, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 214
    new-instance v1, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 283
    const-string v1, "CTC"

    const-string v4, "CMCC"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 284
    const-string v1, "Skip force PHONEX_ON to 1 for one sim inserted case"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 291
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 292
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneOnMode:Z

    .line 293
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 294
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "phone2_on"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneOnMode:Z

    .line 306
    :cond_1
    :goto_2
    const-string v1, "Combination"

    const-string v4, "Combination"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "Strawberry"

    const-string v4, "Combination"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    :cond_2
    :goto_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneOnMode:Z

    if-eqz v1, :cond_3

    move v3, v2

    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 316
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "phone"

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 318
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v3, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 321
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 322
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "Combination"

    const-string v2, "Combination"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "IMC"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 324
    :cond_4
    const-string v1, "android.intent.action.CANCEL_POWER_ON_DELAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v1, "android.intent.action.CANCEL_POWER_ON_TIMER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    :cond_5
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v1, "CHN"

    const-string v2, "CHN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 330
    const-string v1, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string v1, "CTC"

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 332
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v1, "com.samsung.intent.action.slot2LPM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    return-void

    .line 285
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_7
    invoke-static {v2}, Lcom/android/internal/telephony/MultiSimManager;->isInsertedSimSlot(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 286
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "phone2_on"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 288
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "phone1_on"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    move v1, v3

    .line 294
    goto/16 :goto_1

    .line 297
    :cond_a
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneOnMode:Z

    .line 298
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 299
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "phone1_on"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneOnMode:Z

    goto/16 :goto_2

    :cond_b
    move v1, v3

    goto :goto_4

    .line 309
    :cond_c
    const-string v1, "force radio on"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logi(Ljava/lang/String;)V

    .line 310
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneOnMode:Z

    goto/16 :goto_3
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isCmccSIM:Z

    return v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->useSlot2Data:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasPostedRadioPowerOnTimer:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasPostedRadioPowerOnTimer:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLastRadioPowerOnTimer:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLocaleChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mTempIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setModeFlag:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 126
    sput-boolean p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setModeFlag:Z

    return p0
.end method

.method private checkMasterSlot()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1365
    const-string v7, "gsm.sim.operator.numeric"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1366
    .local v2, "slot1Sim":Ljava/lang/String;
    const-string v7, "gsm.sim.operator.numeric2"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1367
    .local v3, "slot2Sim":Ljava/lang/String;
    const-string v7, "persist.sys.dataprefer.simid"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1368
    .local v0, "dataPrefer":Ljava/lang/String;
    const-string v7, "gsm.sim.state2"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1369
    .local v4, "slot2StateCheck":Ljava/lang/String;
    const-string v7, "ril.MSIMM"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1372
    .local v1, "msimm":Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "ABSENT"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-boolean v7, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setModeFlag:Z

    if-eqz v7, :cond_1

    .line 1373
    sput-boolean v6, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setModeFlag:Z

    .line 1377
    :goto_0
    const-string v7, "0"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "ABSENT"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1378
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

    .line 1379
    :cond_0
    const-string v7, "[MultiSim] CMCC model, Slot1 use CMCC SIM"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1380
    sput-boolean v6, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isCmccSIM:Z

    .line 1381
    const-string v6, "persist.radio.dsds.msimm"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    :goto_1
    return v5

    .line 1375
    :cond_1
    sput-boolean v5, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setModeFlag:Z

    goto :goto_0

    .line 1383
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

    .line 1384
    :cond_3
    const-string v5, "[MultiSim] CMCC model, Slot2 use CMCC SIM"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1385
    sput-boolean v6, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isCmccSIM:Z

    .line 1386
    const-string v5, "persist.radio.dsds.msimm"

    const-string v7, "false"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 1387
    goto :goto_1

    .line 1390
    :cond_4
    const-string v7, "persist.radio.dsds.iscmcc"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
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

    .line 1392
    const-string v5, "[MultiSim] Insert 2 Sim using slot2 data"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1393
    sput-boolean v6, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->useSlot2Data:Z

    move v5, v6

    .line 1394
    goto :goto_1

    .line 1396
    :cond_5
    const-string v6, "[MultiSim] Using default master slot"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected clearPowerOnTimer()V
    .locals 2

    .prologue
    .line 1200
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1201
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasPostedRadioPowerOnTimer:Z

    if-eqz v0, :cond_0

    .line 1202
    const-string v0, "clearPowerOnTimer "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1203
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLastRadioPowerOnTimer:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasPostedRadioPowerOnTimer:Z

    .line 1206
    :cond_0
    monitor-exit v1

    .line 1208
    return-void

    .line 1206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 341
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 347
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 354
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v5, v5, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v5, :cond_1

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] while being destroyed. Ignoring."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 360
    .local v4, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 428
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 363
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 365
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string v5, "GsmServiceStateTracker, handle message: EVENT_GET_CFIS_DONE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mccmnc_final:Ljava/lang/String;

    .line 369
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mccmnc_final:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GsmServiceStateTracker, mccmnc_final: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mccmnc_final:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_2
    const-string v5, "GsmServiceStateTracker, The mccmnc_final is null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 392
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const-string v5, "GsmServiceStateTracker, handle message: EVENT_FORWARDING_GET_COMPLETED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 394
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    .line 395
    const-string v5, "We can not get the call forwarding status from network!!!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_3
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v2, v5

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 401
    .local v2, "cfInfoArray":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v1, 0x0

    .line 402
    .local v1, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    array-length v5, v2

    if-lez v5, :cond_0

    .line 403
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 404
    aget-object v5, v2, v3

    if-eqz v5, :cond_4

    .line 405
    aget-object v5, v2, v3

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    .line 406
    aget-object v1, v2, v3

    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The call forwarding status from network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 408
    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v7, :cond_5

    .line 409
    invoke-virtual {v4, v7, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 410
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    .line 403
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 412
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 413
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto :goto_2

    .line 360
    :pswitch_data_0
    .packed-switch 0x406
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 24
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 957
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 960
    const/4 v5, 0x0

    .line 962
    .local v5, "err":Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 963
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telephony/CommandException;

    check-cast v20, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    .line 966
    :cond_2
    sget-object v20, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v20

    if-ne v5, v0, :cond_3

    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 972
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v20

    if-nez v20, :cond_4

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 978
    :cond_4
    sget-object v20, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v20

    if-eq v5, v0, :cond_5

    .line 979
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RIL implementation has returned an error where it must succeed"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1157
    .end local v5    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v22, v20, v21

    add-int/lit8 v22, v22, -0x1

    aput v22, v20, v21

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-nez v20, :cond_0

    .line 1169
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1e

    :cond_6
    const/16 v16, 0x1

    .line 1175
    .local v16, "roaming":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/ServiceState;->getState()I

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v20

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1178
    const/16 v16, 0x0

    .line 1181
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 1182
    const/16 v16, 0x0

    .line 1186
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFakeRoamingBetweenOperators(Landroid/telephony/ServiceState;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1187
    const/16 v16, 0x1

    .line 1191
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 1193
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 983
    .end local v16    # "roaming":Z
    :cond_a
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 985
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v20

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 986
    .local v18, "states":[Ljava/lang/String;
    const/4 v11, -0x1

    .line 987
    .local v11, "lac":I
    const/4 v3, -0x1

    .line 988
    .local v3, "cid":I
    const/16 v19, 0x0

    .line 989
    .local v19, "type":I
    const/4 v15, -0x1

    .line 990
    .local v15, "regState":I
    const/4 v14, -0x1

    .line 991
    .local v14, "reasonRegStateDenied":I
    const/4 v13, -0x1

    .line 994
    .local v13, "psc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v8

    .line 996
    .local v8, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v20, :cond_e

    .line 998
    const/16 v20, 0x0

    :try_start_1
    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 999
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_d

    .line 1000
    const/16 v20, 0x1

    aget-object v20, v18, v20

    if-eqz v20, :cond_b

    const/16 v20, 0x1

    aget-object v20, v18, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_b

    .line 1001
    const/16 v20, 0x1

    aget-object v20, v18, v20

    const/16 v21, 0x10

    invoke-static/range {v20 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 1003
    :cond_b
    const/16 v20, 0x2

    aget-object v20, v18, v20

    if-eqz v20, :cond_c

    const/16 v20, 0x2

    aget-object v20, v18, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_c

    .line 1004
    const/16 v20, 0x2

    aget-object v20, v18, v20

    const/16 v21, 0x10

    invoke-static/range {v20 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 1007
    :cond_c
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_d

    const/16 v20, 0x3

    aget-object v20, v18, v20

    if-eqz v20, :cond_d

    .line 1008
    const/16 v20, 0x3

    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1011
    :cond_d
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0xe

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_e

    .line 1012
    const/16 v20, 0xe

    aget-object v20, v18, v20

    if-eqz v20, :cond_e

    const/16 v20, 0xe

    aget-object v20, v18, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_e

    .line 1013
    const/16 v20, 0xe

    aget-object v20, v18, v20

    const/16 v21, 0x10

    invoke-static/range {v20 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    .line 1032
    :cond_e
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 1033
    const-string v20, "CTC"

    const-string v21, "CMCC"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v20

    if-nez v20, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v20

    if-nez v20, :cond_f

    .line 1036
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 1039
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 1047
    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v15, v0, :cond_10

    const/16 v20, 0xc

    move/from16 v0, v20

    if-eq v15, v0, :cond_10

    const/16 v20, 0xd

    move/from16 v0, v20

    if-eq v15, v0, :cond_10

    const/16 v20, 0xe

    move/from16 v0, v20

    if-ne v15, v0, :cond_14

    .line 1048
    :cond_10
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 1054
    :goto_4
    const-string v20, "persist.sys.dataprefer.simid"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 1057
    .local v17, "simToPowerUpLater":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "phone2_on"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "phone1_on"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-nez v20, :cond_15

    :cond_11
    const/4 v7, 0x1

    .line 1065
    .local v7, "hasSimDisabled":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    if-nez v7, :cond_12

    .line 1066
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is rejected, notify the other SIM"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1067
    new-instance v9, Landroid/content/Intent;

    const-string v20, "android.intent.action.CANCEL_POWER_ON_DELAY"

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1068
    .local v9, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1073
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 1076
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_13

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v15, v0, :cond_5

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->StartQueryCallForwardStatus:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 1077
    const-string v20, "GsmServiceStateTracker, the network state is registered - home or roaming network"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1079
    const/16 v20, 0x6fcb

    const/16 v21, 0x1

    const/16 v22, 0x406

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1080
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->StartQueryCallForwardStatus:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1153
    .end local v3    # "cid":I
    .end local v7    # "hasSimDisabled":Z
    .end local v8    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v11    # "lac":I
    .end local v13    # "psc":I
    .end local v14    # "reasonRegStateDenied":I
    .end local v15    # "regState":I
    .end local v17    # "simToPowerUpLater":I
    .end local v18    # "states":[Ljava/lang/String;
    .end local v19    # "type":I
    :catch_0
    move-exception v6

    .line 1154
    .local v6, "ex":Ljava/lang/RuntimeException;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1027
    .end local v6    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "cid":I
    .restart local v8    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v11    # "lac":I
    .restart local v13    # "psc":I
    .restart local v14    # "reasonRegStateDenied":I
    .restart local v15    # "regState":I
    .restart local v18    # "states":[Ljava/lang/String;
    .restart local v19    # "type":I
    :catch_1
    move-exception v6

    .line 1028
    .local v6, "ex":Ljava/lang/NumberFormatException;
    :try_start_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "error parsing RegistrationState: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1050
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :cond_14
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto/16 :goto_4

    .line 1057
    .restart local v17    # "simToPowerUpLater":I
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 1085
    .end local v3    # "cid":I
    .end local v8    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v11    # "lac":I
    .end local v13    # "psc":I
    .end local v14    # "reasonRegStateDenied":I
    .end local v15    # "regState":I
    .end local v17    # "simToPowerUpLater":I
    .end local v18    # "states":[Ljava/lang/String;
    .end local v19    # "type":I
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v20

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1087
    .restart local v18    # "states":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 1088
    .restart local v19    # "type":I
    const/4 v15, -0x1

    .line 1089
    .restart local v15    # "regState":I
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 1090
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 1091
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    if-lez v20, :cond_19

    .line 1093
    const/16 v20, 0x0

    :try_start_4
    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1096
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_16

    const/16 v20, 0x3

    aget-object v20, v18, v20

    if-eqz v20, :cond_16

    .line 1097
    const/16 v20, 0x3

    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1099
    :cond_16
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_17

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v15, v0, :cond_17

    .line 1100
    const/16 v20, 0x4

    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 1102
    :cond_17
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_18

    .line 1103
    const/16 v20, 0x5

    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 1107
    :cond_18
    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1c

    .line 1108
    add-int/lit8 v19, v19, -0x64

    .line 1109
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDtmSupport:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1119
    :cond_19
    :goto_6
    :try_start_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v4

    .line 1120
    .local v4, "dataRegState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 1121
    const-string v20, "KOR"

    const-string v21, "CHN"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v20

    if-nez v20, :cond_1b

    .line 1122
    :cond_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 1130
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 1132
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handlPollStateResultMessage: GsmSST setDataRegState="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " regState="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " dataRadioTechnology="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 1111
    .end local v4    # "dataRegState":I
    :cond_1c
    const/16 v20, 0x0

    :try_start_6
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDtmSupport:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    .line 1115
    :catch_2
    move-exception v6

    .line 1116
    .restart local v6    # "ex":Ljava/lang/NumberFormatException;
    :try_start_7
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "error parsing GprsRegistrationState: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1139
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    .end local v15    # "regState":I
    .end local v18    # "states":[Ljava/lang/String;
    .end local v19    # "type":I
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v20

    check-cast v0, [Ljava/lang/String;

    move-object v12, v0

    .line 1141
    .local v12, "opNames":[Ljava/lang/String;
    if-eqz v12, :cond_5

    array-length v0, v12

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v21, v12, v21

    const/16 v22, 0x1

    aget-object v22, v12, v22

    const/16 v23, 0x2

    aget-object v23, v12, v23

    invoke-virtual/range {v20 .. v23}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1148
    .end local v12    # "opNames":[Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [I

    move-object/from16 v0, v20

    check-cast v0, [I

    move-object v10, v0

    .line 1149
    .local v10, "ints":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v21, v0

    const/16 v20, 0x0

    aget v20, v10, v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    const/16 v20, 0x1

    :goto_7
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    :cond_1d
    const/16 v20, 0x0

    goto :goto_7

    .line 1169
    .end local v10    # "ints":[I
    :cond_1e
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 983
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method protected isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 17
    .param p1, "gsmRoaming"    # Z
    .param p2, "s"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1230
    const-string v14, "gsm.sim.operator.alpha"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v15

    invoke-static {v14, v15}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1232
    .local v13, "spn":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isRoamingBetweenOperators - mPhone.getSimSlot(): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " spn: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1234
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    .line 1235
    .local v9, "onsl":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v10

    .line 1237
    .local v10, "onss":Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v3, 0x1

    .line 1238
    .local v3, "equalsOnsl":Z
    :goto_0
    if-eqz v10, :cond_3

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v4, 0x1

    .line 1240
    .local v4, "equalsOnss":Z
    :goto_1
    const-string v14, "gsm.sim.operator.numeric"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v15

    invoke-static {v14, v15}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1242
    .local v12, "simNumeric":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isRoamingBetweenOperators - mPhone.getSimSlot(): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " simNumeric: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1244
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    .line 1246
    .local v11, "operatorNumeric":Ljava/lang/String;
    const/4 v2, 0x1

    .line 1248
    .local v2, "equalsMcc":Z
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x3

    if-lt v14, v15, :cond_5

    .line 1250
    const/4 v14, 0x0

    const/4 v15, 0x3

    :try_start_0
    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1256
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 1257
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/IccRecords;->getFakeHomeOn()[Ljava/lang/String;

    move-result-object v5

    .line 1258
    .local v5, "fho":[Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 1259
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_3
    if-ge v7, v8, :cond_5

    aget-object v6, v1, v7

    .line 1260
    .local v6, "h":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isRoamingBetweenOperators - h["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "], operatorNumeric["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1262
    :cond_0
    const/16 p1, 0x0

    .line 1273
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "fho":[Ljava/lang/String;
    .end local v6    # "h":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local p1    # "gsmRoaming":Z
    :cond_1
    :goto_4
    return p1

    .line 1237
    .end local v2    # "equalsMcc":Z
    .end local v3    # "equalsOnsl":Z
    .end local v4    # "equalsOnss":Z
    .end local v11    # "operatorNumeric":Ljava/lang/String;
    .end local v12    # "simNumeric":Ljava/lang/String;
    .restart local p1    # "gsmRoaming":Z
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1238
    .restart local v3    # "equalsOnsl":Z
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1259
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "equalsMcc":Z
    .restart local v4    # "equalsOnss":Z
    .restart local v5    # "fho":[Ljava/lang/String;
    .restart local v6    # "h":Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v11    # "operatorNumeric":Ljava/lang/String;
    .restart local v12    # "simNumeric":Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1270
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "fho":[Ljava/lang/String;
    .end local v6    # "h":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_RIL_EnableRoamingIcon4NationalRoaming"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1273
    if-eqz p1, :cond_7

    if-eqz v2, :cond_6

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    :cond_6
    const/4 v14, 0x1

    :goto_5
    move/from16 p1, v14

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    goto :goto_5

    .line 1252
    :catch_0
    move-exception v14

    goto/16 :goto_2
.end method

.method protected setPowerStateToDesired()V
    .locals 17

    .prologue
    .line 438
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "connectivity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v8

    .line 440
    .local v8, "isDataEnabled":Z
    const-string v12, "persist.sys.dataprefer.simid"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 442
    .local v10, "simToPowerUpLater":I
    const-string v12, "persist.sys.simdelaytime.ms"

    const/16 v13, 0x2710

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 444
    .local v3, "delayTime":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "phone2_on"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "phone1_on"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_9

    :cond_0
    const/4 v5, 0x1

    .line 446
    .local v5, "hasSimDisabled":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "airplane_mode_on"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_a

    const/4 v1, 0x1

    .line 449
    .local v1, "airplanemode":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    .line 450
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneOnMode:Z

    .line 451
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 452
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "phone2_on"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneOnMode:Z

    .line 461
    :cond_1
    :goto_3
    if-eqz v1, :cond_f

    .line 463
    if-nez v1, :cond_e

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 464
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPreviousAirplanemode:Z

    .line 465
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Previous Airplane mode ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPreviousAirplanemode:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logi(Ljava/lang/String;)V

    .line 475
    :cond_2
    :goto_5
    const-string v12, "Combination"

    const-string v13, "Combination"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11

    const-string v12, "Strawberry"

    const-string v13, "Combination"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 484
    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneOnMode:Z

    if-eqz v12, :cond_12

    const/4 v12, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 485
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setPowerStateToDesired(), mPhone.getSimSlot():"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": mDesiredPowerState="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mPhoneOnMode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneOnMode:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "mCi.getRadioState()="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v13}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mCi.getRadioState().isOn()= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v13}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "airplanemode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logi(Ljava/lang/String;)V

    .line 489
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v12, v13, :cond_15

    .line 491
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 492
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setPowerStateToDesired "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "phone2_on"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "phone1_on"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasPostedRadioPowerOnTimer:Z

    if-eqz v12, :cond_4

    .line 494
    const-string v12, "setPowerStateToDesired removeCallbacks"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logi(Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLastRadioPowerOnTimer:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 496
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasPostedRadioPowerOnTimer:Z

    .line 499
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setPowerStateToDesired(): simToPowerUpLater = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", hasSimDisabled = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getStkRefreshSimRestEnable()Z

    move-result v12

    if-nez v12, :cond_14

    .line 505
    if-eqz v8, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v12

    if-ne v10, v12, :cond_13

    if-nez v5, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/MultiSimManager;->getActivatedSimNum(Landroid/content/Context;)I

    move-result v12

    const/4 v14, 0x1

    if-le v12, v14, :cond_13

    const-string v12, "Combination"

    const-string v14, "Combination"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    const-string v12, "IMC"

    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    .line 513
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setPowerStateToDesired postDelayed(mLastRadioPowerOnTimer): simToPowerUpLater:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logi(Ljava/lang/String;)V

    .line 515
    new-instance v12, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;-><init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLastRadioPowerOnTimer:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;

    .line 516
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasPostedRadioPowerOnTimer:Z

    .line 517
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLastRadioPowerOnTimer:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;

    int-to-long v14, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 534
    :goto_8
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :cond_5
    :goto_9
    const-string v12, "sys.deviceOffReq"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 582
    .local v9, "shutdownFlag":Ljava/lang/String;
    if-eqz v9, :cond_6

    const-string v12, "1"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v12

    if-nez v12, :cond_6

    .line 583
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 586
    :cond_6
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v12

    if-nez v12, :cond_7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_RIL_EnableCallBlock4TDF"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 588
    :cond_7
    const-string v12, "ril.block4TDF"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 589
    .local v11, "tdfBlock":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TDF Block = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 590
    const-string v12, "1"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 592
    :try_start_1
    new-instance v6, Landroid/content/Intent;

    const-string v12, "com.sec.android.app.latin.tdfnotifier.action.TDF_ACTION"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v6, "i":Landroid/content/Intent;
    const/high16 v12, 0x10000000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 594
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 598
    .end local v6    # "i":Landroid/content/Intent;
    :goto_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 621
    .end local v11    # "tdfBlock":Ljava/lang/String;
    :cond_8
    :goto_b
    return-void

    .line 444
    .end local v1    # "airplanemode":Z
    .end local v5    # "hasSimDisabled":Z
    .end local v9    # "shutdownFlag":Ljava/lang/String;
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 446
    .restart local v5    # "hasSimDisabled":Z
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 452
    .restart local v1    # "airplanemode":Z
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 455
    :cond_c
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneOnMode:Z

    .line 456
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 457
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "phone1_on"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x1

    :goto_c
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneOnMode:Z

    goto/16 :goto_3

    :cond_d
    const/4 v12, 0x0

    goto :goto_c

    .line 463
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 467
    :cond_f
    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPreviousAirplanemode:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 469
    if-nez v1, :cond_10

    const/4 v12, 0x1

    :goto_d
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 470
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPreviousAirplanemode:Z

    .line 471
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Previous Airplane mode ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPreviousAirplanemode:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logi(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 469
    :cond_10
    const/4 v12, 0x0

    goto :goto_d

    .line 478
    :cond_11
    const-string v12, "force radio on"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logi(Ljava/lang/String;)V

    .line 479
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneOnMode:Z

    goto/16 :goto_6

    .line 484
    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 521
    :cond_13
    :try_start_2
    const-string v12, "setRadioPower to true"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-interface {v12, v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_8

    .line 534
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 526
    :cond_14
    :try_start_3
    const-string v12, "####setSimPower to true MultiSimGsmServiceStateTracker"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Lcom/android/internal/telephony/PhoneBase;->setSimPower(ZLandroid/os/Message;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-interface {v12, v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/PhoneBase;->setStkRefreshSimRestEnable(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_8

    .line 535
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-nez v12, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v12

    if-eqz v12, :cond_18

    .line 537
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v12, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 538
    .local v2, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    if-eqz v8, :cond_16

    if-nez v5, :cond_16

    .line 540
    if-nez v1, :cond_17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v12

    if-eq v10, v12, :cond_17

    .line 541
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.CANCEL_POWER_ON_DELAY"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 548
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_16
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto/16 :goto_9

    .line 544
    :cond_17
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.CANCEL_POWER_ON_TIMER"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_e

    .line 555
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v12, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 556
    .restart local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-nez v12, :cond_19

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneOnMode:Z

    if-eqz v12, :cond_19

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v12

    if-nez v12, :cond_19

    .line 557
    const-string v12, "AIRPLANE_MODE_ON, only change state"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 561
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v12}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 563
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    .line 565
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto/16 :goto_9

    .line 566
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v12, :cond_1a

    if-nez v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v12

    if-nez v12, :cond_1a

    .line 567
    const-string v12, "AIRPLANE_MODE_OFF, only change state"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 569
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v12}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 571
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    .line 573
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto/16 :goto_9

    .line 574
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneOnMode:Z

    if-nez v12, :cond_5

    .line 575
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto/16 :goto_9

    .line 595
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .restart local v9    # "shutdownFlag":Ljava/lang/String;
    .restart local v11    # "tdfBlock":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 596
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    const-string v12, "ActivityNotFoundException : TDFNotifier not installed"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 601
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1b
    :try_start_4
    new-instance v12, Ljava/io/File;

    const-string v13, "/efs/FactoryApp/cblkftdf"

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x20

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v11

    .line 607
    :goto_f
    if-eqz v11, :cond_8

    const-string v12, "ON"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 609
    :try_start_5
    new-instance v6, Landroid/content/Intent;

    const-string v12, "com.sec.android.app.latin.tdfnotifier.action.TDF_ACTION"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .restart local v6    # "i":Landroid/content/Intent;
    const/high16 v12, 0x10000000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 611
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 615
    .end local v6    # "i":Landroid/content/Intent;
    :goto_10
    const-string v12, "ril.block4TDF"

    const-string v13, "1"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_b

    .line 602
    :catch_1
    move-exception v4

    .line 603
    .local v4, "e":Ljava/io/IOException;
    const-string v11, "OFF"

    .line 604
    const-string v12, "Cannot open file"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_f

    .line 612
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 613
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    const-string v12, "ActivityNotFoundException : TDFNotifier not installed"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_10
.end method

.method protected setPrefNetTypeForMultiSim()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 1279
    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1280
    .local v3, "salesCode":Ljava/lang/String;
    const-string v5, "persist.radio.dsds.msimm"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1281
    .local v2, "networkModeFlag":Ljava/lang/String;
    const-string v5, "ril.MSIMM"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1282
    .local v1, "msimm":Ljava/lang/String;
    const-string v5, "gsm.sim.state2"

    const-string v6, "ABSENT"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1283
    .local v4, "slot2State":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1285
    .local v0, "masterSlot":I
    const-string v5, "CHM"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CHC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1286
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->checkMasterSlot()I

    move-result v0

    .line 1288
    :cond_1
    const-string v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "ABSENT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1289
    const-string v5, "GsmSST"

    const-string v6, "sim1 only mode. dsds msimm property set false"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    const-string v2, "false"

    .line 1293
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MultiSim] Master slot : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Current Slot : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1294
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MultiSim] networkModeFlag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", useSlot2Data : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->useSlot2Data:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isCmccSIM : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isCmccSIM:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1296
    const-string v5, "false"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->useSlot2Data:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isCmccSIM:Z

    if-eqz v5, :cond_5

    .line 1297
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MultiSim] CurentNetworkType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1299
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v5

    if-ne v0, v5, :cond_4

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    if-eq v5, v9, :cond_4

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    if-ne v5, v8, :cond_6

    .line 1354
    :cond_4
    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    if-eq v5, v7, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v5

    if-eq v0, v5, :cond_5

    .line 1355
    const-string v5, "[MultiSim] Set slave slot network mode to Gsm only"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1356
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 1357
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1358
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setModeFlag:Z

    .line 1362
    :cond_5
    :goto_0
    return-void

    .line 1305
    :cond_6
    const-string v5, "[MultiSim] Set master slot network mode to W/G or T/G , L/W/G or L/T/G"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1312
    const-string v5, "CHM"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "CHC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1313
    :cond_7
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 1318
    :goto_1
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$4;

    invoke-direct {v6, p0, v4, v1}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$4;-><init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1315
    :cond_8
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_1
.end method

.method public setRadioPowerOnNow()V
    .locals 3

    .prologue
    .line 1212
    const-string v0, "setRadioPowerOnNow "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->clearPowerOnTimer()V

    .line 1214
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1216
    return-void
.end method

.method protected updateSpnDisplay()V
    .locals 23

    .prologue
    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 646
    .local v2, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v9, 0x0

    .line 647
    .local v9, "plmn":Ljava/lang/String;
    const/4 v13, 0x0

    .line 648
    .local v13, "showPlmn":Z
    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v11

    .line 649
    .local v11, "rule":I
    :goto_0
    const-string v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 650
    .local v12, "salesCode":Ljava/lang/String;
    const/4 v5, 0x0

    .line 652
    .local v5, "isShowCSL":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1f

    .line 654
    :cond_0
    const/4 v13, 0x1

    .line 655
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1d

    .line 657
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10405a9

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 669
    :goto_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateSpnDisplay: radio is on but out of service, set plmn=\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 680
    :cond_1
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_RIL_PLMNFaking4Mvno"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 684
    .local v3, "imsi":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 685
    .local v7, "operatorMccMnc":Ljava/lang/String;
    const-string v19, "gsm.sim.operator.numeric"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 687
    .local v8, "operatorSIM":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v19, "73008"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 689
    if-eqz v7, :cond_2

    const-string v19, "73002"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 694
    if-eqz v3, :cond_2

    .line 695
    const-string v9, "vtr"

    .line 700
    :cond_2
    if-eqz v3, :cond_3

    const-string v19, "73007"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 702
    if-eqz v7, :cond_3

    const-string v19, "73002"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 707
    if-eqz v3, :cond_3

    .line 708
    const-string v19, "7300701"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_21

    .line 710
    const-string v9, "Gtd_Telsur"

    .line 723
    :cond_3
    :goto_3
    if-eqz v7, :cond_6

    const-string v19, "73001"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "73010"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 724
    :cond_4
    if-eqz v3, :cond_6

    .line 725
    const-string v19, "73001300"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    const-string v19, "73010300"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_23

    .line 726
    :cond_5
    const-string v9, "Falabella"

    .line 733
    :cond_6
    :goto_4
    if-eqz v7, :cond_2a

    const-string v19, "732103"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2a

    .line 735
    if-eqz v3, :cond_7

    .line 736
    const-string v19, "732103017"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_24

    .line 738
    const-string v9, "ETB"

    .line 767
    .end local v3    # "imsi":Ljava/lang/String;
    .end local v7    # "operatorMccMnc":Ljava/lang/String;
    .end local v8    # "operatorSIM":Ljava/lang/String;
    :cond_7
    :goto_5
    if-eqz v2, :cond_8

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setSpnDynamic(Ljava/lang/String;)V

    .line 775
    :cond_8
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v17

    .line 776
    .local v17, "spn":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v19, v0

    if-nez v19, :cond_2d

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2d

    and-int/lit8 v19, v11, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2d

    const/4 v14, 0x1

    .line 780
    .local v14, "showSpn":Z
    :goto_7
    const-string v19, "CHM"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    const-string v19, "TGY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    const-string v19, "BRI"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    const-string v19, "CWT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    const-string v19, "FET"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    const-string v19, "TWM"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    const-string v19, "CHZ"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    const-string v19, "CHU"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    const-string v19, "CHC"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    const-string v19, "CHN"

    const-string v20, "CHN"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 783
    :cond_9
    const-string v19, "gsm.sim.operator.numeric"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 784
    .local v6, "mOperatorSim":Ljava/lang/String;
    const/4 v11, 0x2

    .line 785
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateChinaSpnDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 786
    if-nez v9, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    const-string v19, "CTC"

    const-string v20, "CMCC"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 789
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1040584

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 792
    :cond_a
    if-eqz v6, :cond_c

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 793
    const-string v19, "45400"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    const-string v19, "45402"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    const-string v19, "45410"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    const-string v19, "45418"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2e

    :cond_b
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2e

    .line 795
    const/4 v11, 0x1

    .line 803
    :goto_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateSpnDisplay : updateChinaSpnDisplay() rule : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 808
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v19, v0

    if-nez v19, :cond_2f

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2f

    and-int/lit8 v19, v11, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2f

    const/4 v14, 0x1

    .line 814
    .end local v6    # "mOperatorSim":Ljava/lang/String;
    :cond_d
    :goto_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_RIL_DisplayNetTypeWithPlmnInfo"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 815
    if-eqz v17, :cond_e

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 816
    const-string v19, "spn string == plmn string, showing only plmn-pnn"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 817
    const/4 v13, 0x1

    .line 818
    const/4 v14, 0x0

    .line 821
    :cond_e
    if-eqz v9, :cond_f

    .line 822
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->appendNetworkType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 827
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v13, v0, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v14, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_18

    .line 831
    :cond_10
    if-eqz v17, :cond_11

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 832
    const-string v19, "spn string == plmn string, showing only plmn-pnn"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 833
    const/4 v13, 0x1

    .line 834
    const/4 v14, 0x0

    .line 837
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    if-eqz v19, :cond_12

    .line 839
    const-string v19, "ServiceState isn\'t in service, do not show spn"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 841
    const/4 v14, 0x0

    .line 844
    :cond_12
    const-string v19, "CTC"

    const-string v20, "CMCC"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_13

    .line 846
    const/4 v13, 0x1

    .line 850
    :cond_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_RIL_PLMNFaking4Mvno"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 853
    .restart local v3    # "imsi":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 856
    .restart local v7    # "operatorMccMnc":Ljava/lang/String;
    if-eqz v9, :cond_15

    if-eqz v17, :cond_15

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_15

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_15

    .line 857
    if-eqz v3, :cond_15

    const-string v19, "73009"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_15

    if-eqz v7, :cond_15

    const-string v19, "73001"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_14

    const-string v19, "73010"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 858
    :cond_14
    const-string v19, "Nextel R"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 859
    const/4 v13, 0x1

    .line 860
    const/4 v14, 0x0

    .line 867
    .end local v3    # "imsi":Ljava/lang/String;
    .end local v7    # "operatorMccMnc":Ljava/lang/String;
    :cond_15
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateSpnDisplay: changed sending intent rule="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v9, v20, v21

    const/16 v21, 0x2

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    aput-object v17, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 872
    new-instance v4, Landroid/content/Intent;

    const-string v19, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 873
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v19, 0x20000000

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 874
    const-string v19, "showSpn"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 875
    const-string v19, "spn"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    const-string v19, "showPlmn"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 877
    const-string v19, "plmn"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 878
    const-string v19, "simSlot"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 880
    if-eqz v9, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v19

    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v19

    if-nez v19, :cond_17

    .line 881
    :cond_16
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_30

    .line 882
    const-string v19, "persist.radio.plmnname_2"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SIM2 plmn : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 891
    :cond_17
    :goto_a
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mTempIntent:Landroid/content/Intent;

    .line 892
    new-instance v18, Landroid/os/Handler;

    invoke-direct/range {v18 .. v18}, Landroid/os/Handler;-><init>()V

    .line 893
    .local v18, "updateSpnDisplayHander":Landroid/os/Handler;
    new-instance v19, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v20

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x320

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 902
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v18    # "updateSpnDisplayHander":Landroid/os/Handler;
    :cond_18
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    .line 903
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    .line 904
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 905
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 908
    const-string v19, "Combination"

    const-string v20, "Combination"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 910
    const-string v19, "gsm.sim.operator.alpha"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 911
    .local v15, "simAlpha":Ljava/lang/String;
    const-string v19, "gsm.sim.operator.alpha2"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 912
    .local v16, "simAlpha_1":Ljava/lang/String;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_31

    .line 913
    const-string v19, "persist.radio.plmnname_2"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 914
    const-string v19, "persist.radio.plmnname_2"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_19
    :goto_b
    if-eqz v9, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    if-nez v19, :cond_33

    .line 925
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_32

    .line 926
    const-string v19, "persist.radio.plmnname_2"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_1a
    :goto_c
    new-instance v10, Landroid/content/Intent;

    const-string v19, "android.intent.action.PROPERTY_PLMN_NAME_CHANGED"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 940
    .local v10, "plmnIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 944
    .end local v10    # "plmnIntent":Landroid/content/Intent;
    .end local v15    # "simAlpha":Ljava/lang/String;
    .end local v16    # "simAlpha_1":Ljava/lang/String;
    :cond_1b
    return-void

    .line 648
    .end local v5    # "isShowCSL":Z
    .end local v11    # "rule":I
    .end local v12    # "salesCode":Ljava/lang/String;
    .end local v14    # "showSpn":Z
    .end local v17    # "spn":Ljava/lang/String;
    :cond_1c
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 661
    .restart local v5    # "isShowCSL":Z
    .restart local v11    # "rule":I
    .restart local v12    # "salesCode":Ljava/lang/String;
    :cond_1d
    const-string v19, "CTC"

    const-string v20, "CMCC"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 662
    const-string v9, "--"

    goto/16 :goto_1

    .line 665
    :cond_1e
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1040584

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 671
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v19

    if-nez v19, :cond_1

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    .line 674
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_20

    and-int/lit8 v19, v11, 0x2

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_20

    const/4 v13, 0x1

    :goto_d
    goto/16 :goto_2

    :cond_20
    const/4 v13, 0x0

    goto :goto_d

    .line 712
    .restart local v3    # "imsi":Ljava/lang/String;
    .restart local v7    # "operatorMccMnc":Ljava/lang/String;
    .restart local v8    # "operatorSIM":Ljava/lang/String;
    :cond_21
    const-string v19, "7300702"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_22

    .line 714
    const-string v9, "Virgin"

    goto/16 :goto_3

    .line 716
    :cond_22
    const-string v19, "7300703"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 718
    const-string v9, "GTEL Netline"

    goto/16 :goto_3

    .line 727
    :cond_23
    const-string v19, "73009"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 728
    const-string v9, "Nextel R"

    goto/16 :goto_4

    .line 740
    :cond_24
    const-string v19, "732103054"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_25

    const-string v19, "732103055"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_26

    .line 742
    :cond_25
    const-string v9, "Exito"

    goto/16 :goto_5

    .line 744
    :cond_26
    const-string v19, "732103018"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_27

    const-string v19, "732103019"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_28

    .line 746
    :cond_27
    const-string v9, "Uff Movil"

    goto/16 :goto_5

    .line 748
    :cond_28
    const-string v19, "732103024"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_29

    const-string v19, "7321030027"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_29

    const-string v19, "7321030028"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_29

    const-string v19, "7321030029"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 750
    :cond_29
    const-string v9, "UNE"

    goto/16 :goto_5

    .line 754
    :cond_2a
    if-eqz v7, :cond_7

    const-string v19, "732123"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 756
    if-eqz v3, :cond_7

    .line 757
    const-string v19, "732123900"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2b

    const-string v19, "732154"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 759
    :cond_2b
    const-string v9, "Virgin Mobile"

    goto/16 :goto_5

    .line 775
    .end local v3    # "imsi":Ljava/lang/String;
    .end local v7    # "operatorMccMnc":Ljava/lang/String;
    .end local v8    # "operatorSIM":Ljava/lang/String;
    :cond_2c
    const-string v17, ""

    goto/16 :goto_6

    .line 776
    .restart local v17    # "spn":Ljava/lang/String;
    :cond_2d
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 798
    .restart local v6    # "mOperatorSim":Ljava/lang/String;
    .restart local v14    # "showSpn":Z
    :cond_2e
    const/4 v11, 0x2

    .line 799
    const/4 v5, 0x1

    .line 800
    const/4 v14, 0x0

    .line 801
    const/4 v13, 0x1

    goto/16 :goto_8

    .line 808
    :cond_2f
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 886
    .end local v6    # "mOperatorSim":Ljava/lang/String;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_30
    const-string v19, "persist.radio.plmnname_1"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SIM1 plmn : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 918
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v15    # "simAlpha":Ljava/lang/String;
    .restart local v16    # "simAlpha_1":Ljava/lang/String;
    :cond_31
    const-string v19, "persist.radio.plmnname_1"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 919
    const-string v19, "persist.radio.plmnname_1"

    move-object/from16 v0, v19

    invoke-static {v0, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 928
    :cond_32
    const-string v19, "persist.radio.plmnname_1"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 931
    :cond_33
    if-eqz v9, :cond_1a

    const-string v19, "CHN"

    const-string v20, "CHN"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 933
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_34

    .line 934
    const-string v19, "persist.radio.plmnname_2"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 936
    :cond_34
    const-string v19, "persist.radio.plmnname_1"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c
.end method
