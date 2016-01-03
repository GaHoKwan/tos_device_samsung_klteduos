.class public Lcom/android/internal/telephony/ims/ImsPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsPhone$FormatChangeObserver;
    }
.end annotation


# static fields
.field public static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DEBUG:Z = true

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0x24

.field protected static final EVENT_SMS_FORMAT:I = 0x1

.field protected static final EVENT_WFC_SS_COMPLETE:I = 0x26

.field private static final IMS_PS_DOMAIN:Ljava/lang/String; = "persist.radio.domain.ps"

.field private static final LOG_TAG:Ljava/lang/String; = "IMSPhone"

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field public static final NET_TYPE_BLUETOOTH:I = 0x3

.field public static final NET_TYPE_ETHERNET:I = 0x4

.field public static final NET_TYPE_MAX:I = 0x5

.field public static final NET_TYPE_MOBILE:I = 0x0

.field public static final NET_TYPE_WIFI:I = 0x1

.field public static final NET_TYPE_WIMAX:I = 0x2

.field private static final PROPERTY_IMS_REGISTERED:Ljava/lang/String; = "persist.radio.ims.reg"

.field public static final RESTART_ECM_TIMER:I = 0x0

.field private static final RIL_IMS_STATUS_LIMITED_MODE_REG:I = 0x2

.field private static final RIL_IMS_STATUS_NOT_REGISTERED:I = 0x0

.field private static final RIL_IMS_STATUS_NOT_REGISTERED_E911:I = 0x3

.field private static final RIL_IMS_STATUS_REGISTERED:I = 0x1

.field private static final RIL_IMS_STATUS_REGISTERED_E911:I = 0x4

.field private static final RIL_SMS_OVER_IP_FORMAT_3GPP:I = 0x1

.field private static final RIL_SMS_OVER_IP_FORMAT_3GPP2:I = 0x2

.field private static final RIL_SMS_OVER_IP_FORMAT_UNKNOWN:I

.field public static final mFormatUri:Landroid/net/Uri;


# instance fields
.field private mFeature:[I

.field protected mFormatObserver:Lcom/android/internal/telephony/ims/ImsPhone$FormatChangeObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkType:I

.field public mPostDialHandler:Landroid/os/Registrant;

.field private mRegState:[I

.field protected mResolver:Landroid/content/ContentResolver;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSmsFormat:[Ljava/lang/String;

.field mWfcSupplimentaryServiceHelper:Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;

.field private sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private state:Lcom/android/internal/telephony/PhoneConstants$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const-string v0, "content://com.example.HiddenMenuContentProvider/IMSSETTINGSData"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ims/ImsPhone;->mFormatUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cm"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x5

    .line 160
    const-string v2, "IMS"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 114
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 116
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mNetworkType:I

    .line 118
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mFeature:[I

    .line 119
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mRegState:[I

    .line 120
    new-array v2, v6, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mSmsFormat:[Ljava/lang/String;

    .line 201
    new-instance v2, Lcom/android/internal/telephony/ims/ImsPhone$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ims/ImsPhone$1;-><init>(Lcom/android/internal/telephony/ims/ImsPhone;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    iput-object p3, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 163
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    .line 164
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 166
    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    .line 167
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 169
    new-instance v2, Lcom/android/internal/telephony/ims/ImsPhone$FormatChangeObserver;

    invoke-direct {v2, p0, p0}, Lcom/android/internal/telephony/ims/ImsPhone$FormatChangeObserver;-><init>(Lcom/android/internal/telephony/ims/ImsPhone;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mFormatObserver:Lcom/android/internal/telephony/ims/ImsPhone$FormatChangeObserver;

    .line 170
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/ims/ImsPhone;->mFormatUri:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mFormatObserver:Lcom/android/internal/telephony/ims/ImsPhone$FormatChangeObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 173
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mResolver:Landroid/content/ContentResolver;

    .line 174
    const/16 v2, 0x24

    const/4 v3, 0x0

    invoke-interface {p2, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsRegistrationStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mFeature:[I

    aput v7, v2, v1

    .line 179
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mRegState:[I

    aput v7, v2, v1

    .line 180
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mSmsFormat:[Ljava/lang/String;

    const-string v3, "unknown"

    aput-object v3, v2, v1

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_0
    const-string v2, "KOR"

    const-string v3, "CHN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ims/ImsPhone;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsPhone;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->isRegistered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ims/ImsPhone;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsPhone;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method private convertNetworkType(I)I
    .locals 4
    .param p1, "networkType"    # I

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "netType":I
    packed-switch p1, :pswitch_data_0

    .line 374
    :pswitch_0
    const-string v1, "IMSPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid network type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v0, 0x0

    .line 377
    :goto_0
    return v0

    .line 359
    :pswitch_1
    const/4 v0, 0x0

    .line 360
    goto :goto_0

    .line 362
    :pswitch_2
    const/4 v0, 0x1

    .line 363
    goto :goto_0

    .line 365
    :pswitch_3
    const/4 v0, 0x2

    .line 366
    goto :goto_0

    .line 368
    :pswitch_4
    const/4 v0, 0x3

    .line 369
    goto :goto_0

    .line 371
    :pswitch_5
    const/4 v0, 0x4

    .line 372
    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static getPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 153
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    instance-of v1, v0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v1, :cond_0

    .line 154
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 156
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    return-object v0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    .line 1270
    const/4 v0, 0x0

    .line 1272
    .local v0, "isAirplaneMode":Z
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1273
    const/4 v0, 0x1

    .line 1276
    :cond_0
    return v0
.end method

.method private isPSDomain()Z
    .locals 2

    .prologue
    .line 749
    const-string v0, "persist.radio.domain.ps"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isRegistered()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 347
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 348
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mRegState:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_0

    .line 352
    :goto_1
    return v1

    .line 347
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private logUnexpectedMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1261
    const-string v0, "IMSPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() is not supported by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    return-void
.end method

.method private setSmsFormat(II)V
    .locals 5
    .param p1, "smsFormat"    # I
    .param p2, "netType"    # I

    .prologue
    const/4 v4, 0x1

    .line 218
    const-string v1, "IMSPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSmsFormat: mRegState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mRegState:[I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " smsFormat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " netType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mSmsFormat:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "oldSmsFormat":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mRegState:[I

    aget v1, v1, p2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mRegState:[I

    aget v1, v1, p2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 224
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v1, :cond_3

    .line 225
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mSmsFormat:[Ljava/lang/String;

    const-string v2, "3gpp2"

    aput-object v2, v1, p2

    .line 234
    :cond_1
    :goto_0
    if-ne p1, v4, :cond_5

    .line 235
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mSmsFormat:[Ljava/lang/String;

    const-string v2, "3gpp"

    aput-object v2, v1, p2

    .line 244
    :cond_2
    :goto_1
    return-void

    .line 226
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mSmsFormat:[Ljava/lang/String;

    const-string v2, "3gpp"

    aput-object v2, v1, p2

    goto :goto_0

    .line 229
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mRegState:[I

    aget v1, v1, p2

    if-ne v1, v4, :cond_1

    .line 230
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mSmsFormat:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getSmsOverImsFormat()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    goto :goto_0

    .line 236
    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mSmsFormat:[Ljava/lang/String;

    const-string v2, "3gpp2"

    aput-object v2, v1, p2

    goto :goto_1
.end method


# virtual methods
.method public SimSlotOnOff(I)V
    .locals 1
    .param p1, "on"    # I

    .prologue
    .line 1380
    const-string v0, "SimSlotOnOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1381
    return-void
.end method

.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 425
    return-void
.end method

.method public acceptCall(I)V
    .locals 1
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V

    .line 421
    return-void
.end method

.method public acceptConnectionTypeChange(Lcom/android/internal/telephony/Connection;Ljava/util/Map;)V
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 705
    .local p2, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 706
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 707
    check-cast p1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local p1    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Connection;->acceptConnectionTypeChange(Ljava/util/Map;)V

    .line 716
    :goto_0
    return-void

    .line 708
    .restart local p1    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 709
    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local p1    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Connection;->acceptConnectionTypeChange(Ljava/util/Map;)V

    goto :goto_0

    .line 711
    .restart local p1    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_1
    const-string v0, "acceptConnectionTypeChange"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    goto :goto_0

    .line 714
    :cond_2
    const-string v0, "IMSPhone"

    const-string v1, "connection is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1203
    const-string v0, "activateCellBroadcastSms"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1204
    return-void
.end method

.method public akaAuthenticate([B[BLandroid/os/Message;)V
    .locals 0
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1356
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1357
    :cond_0
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 552
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    return v0
.end method

.method public canDial()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 436
    const-string v2, "ro.telephony.disable-call"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "disableCall":Ljava/lang/String;
    const-string v2, "IMSPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDial(): disableCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    :cond_0
    :goto_0
    return v1

    .line 442
    :cond_1
    const-string v2, "IMSPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDial(): ringingCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v2, "IMSPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDial(): foregndCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v2, "IMSPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDial(): backgndCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 556
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1101
    const-string v0, "changeBarringPassword"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1102
    const/4 v0, 0x0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "newPwdAgain"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1109
    const-string v0, "changeBarringPassword"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1110
    const/4 v0, 0x0

    return v0
.end method

.method public changeConnectionType(Landroid/os/Message;Lcom/android/internal/telephony/Connection;ILjava/util/Map;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p3, "newCallType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "Lcom/android/internal/telephony/Connection;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 690
    .local p4, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    .line 691
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 692
    check-cast p2, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local p2    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/internal/telephony/Connection;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    .line 701
    :goto_0
    return-void

    .line 693
    .restart local p2    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 694
    check-cast p2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local p2    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/internal/telephony/Connection;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_0

    .line 696
    .restart local p2    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_1
    const-string v0, "changeConnectionType"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    goto :goto_0

    .line 699
    :cond_2
    const-string v0, "IMSPhone"

    const-string v1, "connection is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 602
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 603
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 548
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    .line 549
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 453
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Dial with dialstring not supported for ImsPhone"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dial(Ljava/lang/String;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "callType"    # I
    .param p3, "domain"    # I
    .param p4, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 492
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "callType"    # I
    .param p3, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 498
    const/4 v1, 0x3

    .line 500
    .local v1, "domain":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->canDial()Z

    move-result v2

    if-nez v2, :cond_0

    .line 501
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "Cannot dial IMS call in current state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 504
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->isPSDomain()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    const/4 v1, 0x2

    .line 508
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, p1, p2, v1, p3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 509
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 459
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Dial with uusinfo not supported for ImsPhone"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableDataConnectivity()Z
    .locals 2

    .prologue
    .line 1293
    const-string v0, "IMSPhone"

    const-string v1, "not needed for IMS phone disableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const/4 v0, 0x0

    return v0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1139
    const-string v0, "disableLocationUpdates"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1140
    return-void
.end method

.method public disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 2
    .param p1, "causeCode"    # I

    .prologue
    .line 800
    sparse-switch p1, :sswitch_data_0

    .line 821
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 822
    .local v0, "serviceState":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 823
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 830
    .end local v0    # "serviceState":I
    :goto_0
    return-object v1

    .line 807
    :sswitch_0
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 809
    :sswitch_1
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 811
    :sswitch_2
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 813
    :sswitch_3
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 815
    :sswitch_4
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 817
    :sswitch_5
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 824
    .restart local v0    # "serviceState":I
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 826
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 827
    :cond_2
    const/16 v1, 0x10

    if-ne p1, v1, :cond_3

    .line 828
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 830
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 800
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x11 -> :sswitch_5
        0x22 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2c -> :sswitch_0
        0x31 -> :sswitch_0
        0x3a -> :sswitch_0
        0x44 -> :sswitch_1
        0xf0 -> :sswitch_2
        0xf1 -> :sswitch_3
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public enableDataConnectivity()Z
    .locals 2

    .prologue
    .line 1284
    const-string v0, "IMSPhone"

    const-string v1, "not needed for IMS phone enableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const/4 v0, 0x0

    return v0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1134
    const-string v0, "enableLocationUpdates"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1135
    return-void
.end method

.method public equals(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 393
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 383
    if-ne p1, p0, :cond_0

    .line 384
    const/4 v0, 0x1

    .line 385
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 561
    return-void
.end method

.method public gbaAuthenticateBootstrap([B[BLandroid/os/Message;)V
    .locals 0
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1360
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1361
    :cond_0
    return-void
.end method

.method public gbaAuthenticateNaf([BLandroid/os/Message;)V
    .locals 0
    .param p1, "nafId"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1364
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1365
    :cond_0
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1037
    const-string v0, "getAvailableNetworks"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1038
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 681
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1076
    const-string v0, "getCallBarringOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1077
    return-void
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1015
    const-string v0, "getCallForwardingOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1016
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 658
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 659
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 660
    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1208
    const-string v0, "getCellBroadcastSmsConfig"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1209
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 842
    const-string v0, "getCellLocation"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 843
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 852
    const-string v0, "getDataActivityState"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 853
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1125
    const-string v0, "getDataCallList"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1126
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 847
    const-string v0, "getDataConnectionState"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 848
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataDunEnabled()Z
    .locals 2

    .prologue
    .line 522
    const-string v0, "IMSPhone"

    const-string v1, "Not yet implement getDataOnDunEnabled() in JB 4.3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1144
    const-string v0, "getDataRoamingEnabled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1145
    const/4 v0, 0x0

    return v0
.end method

.method public getDataServiceState()I
    .locals 1

    .prologue
    .line 766
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataServiceState()I

    move-result v0

    return v0
.end method

.method public getDcnAddress()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 983
    const/4 v7, 0x0

    .line 985
    .local v7, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "mDcnNumber"

    aput-object v0, v2, v1

    .line 988
    .local v2, "reqField":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/ims/ImsPhone;->mFormatUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 989
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 990
    .local v8, "count":I
    if-lez v8, :cond_1

    .line 991
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 992
    const-string v0, "IMSPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Domain Change Address : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1002
    .local v6, "address":Ljava/lang/String;
    if-eqz v7, :cond_0

    .end local v6    # "address":Ljava/lang/String;
    .end local v8    # "count":I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1000
    :cond_0
    return-object v6

    .line 996
    .restart local v8    # "count":I
    :cond_1
    :try_start_1
    const-string v0, "IMSPhone"

    const-string v1, "Cursor < 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const-string v6, "4437501000"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1002
    if-eqz v7, :cond_0

    goto :goto_0

    .line 999
    .end local v8    # "count":I
    :catch_0
    move-exception v9

    .line 1000
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "4437501000"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1002
    if-eqz v7, :cond_0

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1155
    const-string v0, "getDeviceId"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1156
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1161
    const-string v0, "getDeviceSvn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1162
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualSimSlotActivationState()Z
    .locals 1

    .prologue
    .line 1399
    const-string v0, "getDualSimSlotActivationState"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1400
    const/4 v0, 0x0

    return v0
.end method

.method public getDunDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 514
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    return-object v0
.end method

.method public getDunNetworkType()I
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x0

    return v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1173
    const-string v0, "getEsn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1174
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 677
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFormatPreference()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1305
    const/4 v6, 0x0

    .line 1307
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "mSmsFormat"

    aput-object v0, v2, v1

    .line 1311
    .local v2, "reqField":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/ims/ImsPhone;->mFormatUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1312
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1313
    .local v7, "count":I
    if-lez v7, :cond_3

    .line 1314
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1315
    const-string v0, "IMSPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changed Sms Format : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1318
    .local v9, "smsFormat":Ljava/lang/String;
    const-string v0, "3GPP"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1319
    const-string v9, "3gpp"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    :goto_0
    if-eqz v6, :cond_0

    .end local v7    # "count":I
    .end local v9    # "smsFormat":Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1331
    :cond_0
    return-object v9

    .line 1320
    .restart local v7    # "count":I
    .restart local v9    # "smsFormat":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v0, "3GPP2"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1321
    const-string v9, "3gpp2"

    goto :goto_0

    .line 1323
    :cond_2
    const-string v9, "unknown"

    goto :goto_0

    .line 1327
    .end local v9    # "smsFormat":Ljava/lang/String;
    :cond_3
    const-string v0, "IMSPhone"

    const-string v1, "Cursor < 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const-string v9, "unknown"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1333
    if-eqz v6, :cond_0

    goto :goto_1

    .line 1330
    .end local v7    # "count":I
    :catch_0
    move-exception v8

    .line 1331
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v9, "unknown"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1333
    if-eqz v6, :cond_0

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1300
    const-string v0, "IMSPhone"

    const-string v1, "not needed for IMS phone getGroupIdLevel1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;

    .prologue
    .line 899
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 1197
    const-string v0, "getIccPhoneBookInterfaceManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1198
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1185
    const-string v0, "getImei"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1186
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImeiInCDMAGSMPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 893
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImeiInCDMAGSMPhone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsRegisteredFeature(I)I
    .locals 1
    .param p1, "netType"    # I

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mFeature:[I

    aget v0, v0, p1

    return v0
.end method

.method public getImsRegisteredNetworkType()I
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mNetworkType:I

    return v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 960
    const-string v0, "getLine1AlphaTag"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 961
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 954
    const-string v0, "getLine1Number"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 955
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1NumberType(I)Ljava/lang/String;
    .locals 1
    .param p1, "SimType"    # I

    .prologue
    .line 1370
    const-string v0, "getLine1NumberType"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1371
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMdnavailable()Z
    .locals 1

    .prologue
    .line 867
    const-string v0, "getMdnavailable"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 868
    const/4 v0, 0x0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1179
    const-string v0, "getMeid"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1180
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdnavailable()Z
    .locals 1

    .prologue
    .line 872
    const-string v0, "getMsisdnavailable"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 873
    const/4 v0, 0x0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 673
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1115
    const-string v0, "getNeighboringCids"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1116
    return-void
.end method

.method public getOCSGLAvailable()Z
    .locals 1

    .prologue
    .line 879
    const-string v0, "getOCSGLAvailable"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 880
    const/4 v0, 0x0

    return v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 647
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 648
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 649
    return-void
.end method

.method public getPSISMSCavailable()Z
    .locals 1

    .prologue
    .line 915
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPSISMSCavailable()Z

    move-result v0

    return v0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 862
    const-string v0, "getPendingMmiCodes"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 863
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    const-string v0, "IMS"

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 1191
    const-string v0, "getPhoneSubInfo"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1192
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x5

    return v0
.end method

.method public getPostDialHandler()Landroid/os/Registrant;
    .locals 1

    .prologue
    .line 1218
    const-string v0, "getPostDialHandler"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1219
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1062
    const-string v0, "getPreferredNetworkList"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1063
    return-void
.end method

.method public getProposedConnectionType(Lcom/android/internal/telephony/Connection;)I
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 733
    if-eqz p1, :cond_2

    .line 734
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 735
    check-cast p1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local p1    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getProposedConnectionType()I

    move-result v0

    .line 744
    :goto_0
    return v0

    .line 736
    .restart local p1    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 737
    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local p1    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getProposedConnectionType()I

    move-result v0

    goto :goto_0

    .line 739
    .restart local p1    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_1
    const-string v1, "rejectConnectionTypeChange"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    goto :goto_0

    .line 743
    :cond_2
    const-string v1, "IMSPhone"

    const-string v2, "connection is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPsismsc()[B
    .locals 1

    .prologue
    .line 1253
    const-string v0, "getPsismsc"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1254
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 685
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSMSPavailable()Z
    .locals 1

    .prologue
    .line 910
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSMSPavailable()Z

    move-result v0

    return v0
.end method

.method public getSMSavailable()Z
    .locals 1

    .prologue
    .line 905
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSMSavailable()Z

    move-result v0

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 753
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 857
    const-string v0, "getSignalStrength"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 858
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSktImsiM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1241
    const-string v0, "getSktImsiM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1242
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSktIrm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1236
    const-string v0, "getSktIrm"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmsOverImsFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 397
    const-string v0, "default"

    .line 399
    .local v0, "format":Ljava/lang/String;
    const-string v1, "3gpp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    const-string v1, "3gpp"

    .line 413
    :goto_0
    return-object v1

    .line 401
    :cond_0
    const-string v1, "3gpp2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    const-string v1, "3gpp2"

    goto :goto_0

    .line 403
    :cond_1
    const-string v1, "vzw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getFormatPreference()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 407
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v1, :cond_3

    .line 408
    const-string v1, "3gpp2"

    goto :goto_0

    .line 409
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_4

    .line 410
    const-string v1, "3gpp"

    goto :goto_0

    .line 412
    :cond_4
    const-string v1, "IMSPhone"

    const-string v2, "getSmsOverImsFormat(): No LTE-capable phone should access this."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v1, "unknown"

    goto :goto_0
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 887
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSponImsi()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1167
    const-string v0, "getSubscriberId"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1168
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubscriberIdType(I)Ljava/lang/String;
    .locals 1
    .param p1, "SimType"    # I

    .prologue
    .line 1375
    const-string v0, "getSubscriberIdType"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1376
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 978
    const-string v0, "getVoiceMailAlphaTag"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 979
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 972
    const-string v0, "getVoiceMailNumber"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 973
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 943
    const-string v0, "handleInCallMmiCommands"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 944
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 248
    const-string v11, "IMSPhone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received event:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    .line 341
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    .line 343
    :goto_0
    return-void

    .line 255
    :sswitch_0
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/internal/telephony/ims/ImsPhone;->setSmsFormat(II)V

    .line 256
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/android/internal/telephony/ims/ImsPhone;->setSmsFormat(II)V

    goto :goto_0

    .line 260
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 261
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_4

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v11, :cond_4

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    check-cast v11, [I

    array-length v11, v11

    const/4 v12, 0x1

    if-lt v11, v12, :cond_4

    .line 263
    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    move-object v9, v11

    check-cast v9, [I

    .line 267
    .local v9, "responseArray":[I
    const/4 v7, 0x0

    .line 269
    .local v7, "regIndex":I
    const/4 v11, 0x0

    aget v8, v9, v11

    .line 270
    .local v8, "regState":I
    const/4 v11, 0x1

    aget v3, v9, v11

    .line 271
    .local v3, "feature":I
    const/4 v11, 0x2

    aget v6, v9, v11

    .line 272
    .local v6, "networkType":I
    const/4 v11, 0x3

    aget v2, v9, v11

    .line 273
    .local v2, "ecmp":I
    const/4 v11, 0x4

    aget v10, v9, v11

    .line 275
    .local v10, "smsFormat":I
    const-string v11, "IMSPhone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IMS reg state: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " feature: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " networkType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ecmp: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " smsFormat: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ims/ImsPhone;->convertNetworkType(I)I

    move-result v7

    .line 280
    iget-object v11, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mRegState:[I

    aput v8, v11, v7

    .line 281
    iget-object v11, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mFeature:[I

    aput v3, v11, v7

    .line 282
    invoke-direct {p0, v10, v7}, Lcom/android/internal/telephony/ims/ImsPhone;->setSmsFormat(II)V

    .line 289
    if-nez v8, :cond_1

    .line 291
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->isRegistered()Z

    move-result v11

    if-nez v11, :cond_0

    .line 292
    iget-object v11, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 293
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mNetworkType:I

    .line 316
    :cond_0
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.ECMP_STATE_CHANGED"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v11, 0x20000000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 318
    const-string v11, "ECMP_STATE"

    const/4 v12, 0x3

    aget v12, v9, v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    iget-object v11, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 296
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v11, 0x1

    if-ne v8, v11, :cond_3

    .line 298
    iget-object v11, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 299
    if-nez v6, :cond_2

    iget-object v11, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mRegState:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 302
    const-string v11, "IMSPhone"

    const-string v12, "WFC is already registered. Keep current NetworkType"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 304
    :cond_2
    iput v6, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mNetworkType:I

    goto :goto_1

    .line 307
    :cond_3
    const/4 v11, 0x3

    if-ne v8, v11, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->isRegistered()Z

    move-result v11

    if-nez v11, :cond_0

    .line 310
    iget-object v11, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 311
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mNetworkType:I

    goto :goto_1

    .line 321
    .end local v2    # "ecmp":I
    .end local v3    # "feature":I
    .end local v6    # "networkType":I
    .end local v7    # "regIndex":I
    .end local v8    # "regState":I
    .end local v9    # "responseArray":[I
    .end local v10    # "smsFormat":I
    :cond_4
    const-string v11, "IMSPhone"

    const-string v12, "IMS State query failed!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 326
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 327
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 328
    .local v5, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_6

    .line 329
    const-string v11, "IMSPhone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WFC_SS failed. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_5
    :goto_2
    invoke-virtual {v5, p1, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 331
    :cond_6
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isCfIconUpdateRequired()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 332
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCfIconStatus()Z

    move-result v1

    .line 333
    .local v1, "cffEnabled":Z
    const-string v11, "IMSPhone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cf Set with cffEnabled :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->setVoiceCallForwardingFlag(Z)V

    goto :goto_2

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x24 -> :sswitch_1
        0x26 -> :sswitch_2
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 936
    const-string v0, "handlePinMmi"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 937
    const/4 v0, 0x0

    return v0
.end method

.method public handleTimerInEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 836
    const-string v0, "IMSPhone"

    const-string v1, "handleTimerInEmergencyCallbackMode, unsupported for this phone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    return-void
.end method

.method public hasIsim()Z
    .locals 1

    .prologue
    .line 1248
    const-string v0, "hasIsim"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1249
    const/4 v0, 0x0

    return v0
.end method

.method public holdCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 541
    const-string v0, "IMSPhone"

    const-string v1, " ~~~~~~  switch fg and bg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-class v1, Lcom/android/internal/telephony/ims/ImsPhone;

    monitor-enter v1

    .line 543
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 544
    monitor-exit v1

    .line 545
    return-void

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 784
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 792
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 793
    return-void
.end method

.method public notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 568
    return-void
.end method

.method public notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 598
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 599
    return-void
.end method

.method public notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    .locals 1
    .param p1, "code"    # Lcom/android/internal/telephony/Phone$SuppService;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 572
    return-void
.end method

.method public notifyUnknownConnection()V
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 788
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 1

    .prologue
    .line 1224
    const-string v0, "onUpdateIccAvailability"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1225
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 926
    const-string v0, "registerForSuppServiceNotification"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 927
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 429
    return-void
.end method

.method public rejectConnectionTypeChange(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 719
    if-eqz p1, :cond_2

    .line 720
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 721
    check-cast p1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local p1    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->rejectConnectionTypeChange()V

    .line 730
    :goto_0
    return-void

    .line 722
    .restart local p1    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 723
    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local p1    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->rejectConnectionTypeChange()V

    goto :goto_0

    .line 725
    .restart local p1    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_1
    const-string v0, "rejectConnectionTypeChange"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    goto :goto_0

    .line 728
    :cond_2
    const-string v0, "IMSPhone"

    const-string v1, "connection is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public selectCsg(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1057
    const-string v0, "selectCsg"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1058
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1047
    const-string v0, "selectNetworkManually"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1048
    return-void
.end method

.method public selectNetworkManually(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "operatorAlphaLong"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1052
    const-string v0, "selectNetworkManually"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1053
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 5
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 630
    const/4 v0, 0x1

    .line 631
    .local v0, "check":Z
    const/4 v1, 0x0

    .local v1, "itr":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 632
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 633
    const-string v2, "IMSPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BurstDtmf invalid character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v0, 0x0

    .line 640
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 641
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 643
    :cond_1
    return-void

    .line 631
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sendDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 606
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 607
    const-string v0, "IMSPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 610
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    goto :goto_0
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .prologue
    .line 920
    const-string v0, "sendUssdResponse"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 921
    return-void
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 1
    .param p1, "cbAction"    # Z
    .param p2, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1093
    const-string v0, "setCallBarringOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1094
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "cbAction"    # Z
    .param p2, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1084
    const-string v0, "setCallBarringOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1085
    const/4 v0, 0x0

    return v0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "serviceClass"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1032
    const-string v0, "setCallForwardingOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1033
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "commandInterfaceCFAction"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1022
    const-string v0, "setCallForwardingOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1023
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 663
    const-string v0, "setCallWaiting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 664
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1214
    const-string v0, "setCellBroadcastSmsConfig"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1215
    return-void
.end method

.method public setDataDunEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 528
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1150
    const-string v0, "setDataRoamingEnabled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1151
    return-void
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1230
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 1231
    :cond_0
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 967
    const-string v0, "setLine1Number"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 968
    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 667
    const-class v1, Lcom/android/internal/telephony/ims/ImsPhone;

    monitor-enter v1

    .line 668
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 669
    monitor-exit v1

    .line 670
    return-void

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1042
    const-string v0, "setNetworkSelectionModeAutomatic"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1043
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1120
    const-string v0, "setOnPostDialCharacter"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1121
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 653
    invoke-static {p2, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 654
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 655
    return-void
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "operator"    # Ljava/lang/String;
    .param p3, "plmn"    # Ljava/lang/String;
    .param p4, "gsmAct"    # I
    .param p5, "gsmCompactAct"    # I
    .param p6, "utranAct"    # I
    .param p7, "mode"    # I
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 1069
    const-string v0, "setPreferredNetworkList"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1070
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .param p1, "power"    # Z

    .prologue
    .line 949
    const-string v0, "setRadioPower"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method public setRadioPowerOnNow()V
    .locals 0

    .prologue
    .line 1266
    return-void
.end method

.method public setState(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 0
    .param p1, "newState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 775
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1009
    const-string v0, "setVoiceMailNumber"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1010
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 616
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    const-string v0, "IMSPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :goto_0
    return-void

    .line 620
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    goto :goto_0
.end method

.method public startGlobalNetworkSearchTimer()V
    .locals 1

    .prologue
    .line 1384
    const-string v0, "startGlobalNetworkSearchTimer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1385
    return-void
.end method

.method public startGlobalNoSvcChkTimer()V
    .locals 1

    .prologue
    .line 1392
    const-string v0, "startGlobalNoSvcChkTimer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1393
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 625
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 626
    return-void
.end method

.method public stopGlobalNetworkSearchTimer()V
    .locals 1

    .prologue
    .line 1388
    const-string v0, "stopGlobalNetworkSearchTimer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1389
    return-void
.end method

.method public stopGlobalNoSvcChkTimer()V
    .locals 1

    .prologue
    .line 1396
    const-string v0, "stopGlobalNoSvcChkTimer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1397
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 533
    const-string v0, "IMSPhone"

    const-string v1, " ~~~~~~  switch fg and bg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-class v1, Lcom/android/internal/telephony/ims/ImsPhone;

    monitor-enter v1

    .line 535
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 536
    monitor-exit v1

    .line 537
    return-void

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 931
    const-string v0, "unregisterForSuppServiceNotification"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 932
    return-void
.end method

.method updatePhoneState()V
    .locals 4

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 577
    .local v0, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 585
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_0

    .line 586
    const-string v1, "IMSPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ^^^ new phone state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->notifyPhoneStateChanged()V

    .line 589
    :cond_0
    return-void

    .line 579
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 580
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 582
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1130
    const-string v0, "updateServiceLocation"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1131
    return-void
.end method
