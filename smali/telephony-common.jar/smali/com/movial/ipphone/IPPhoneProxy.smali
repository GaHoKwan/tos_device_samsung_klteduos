.class public Lcom/movial/ipphone/IPPhoneProxy;
.super Landroid/os/Handler;
.source "IPPhoneProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x2710

.field private static final DELAY_BROADCAST_OPERATORNAME:I = 0x3e8

.field private static final DELAY_REBIND_IPSERVICE:I = 0x1388

.field private static final EVENT_BIND_TO_IPSERVICE:I = 0x5

.field private static final EVENT_BROADCAST_OPERATORNAME:I = 0x6

.field public static final EVENT_EMERGENCY_PREF_CHANGED:I = 0x7

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_REQUEST_VOICE_RADIO_TECH_DONE:I = 0x3

.field private static final EVENT_RIL_CONNECTED:I = 0x4

.field private static final EVENT_UPDATE_PHONE_OBJECT:I = 0x8

.field private static final EVENT_VOICE_RADIO_TECH_CHANGED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "IPPhoneProxy"

.field private static final TAG:Ljava/lang/String; = "IPPhoneProxy"

.field public static final lockForRadioTechnologyChange:Ljava/lang/Object;

.field private static mRegistered:Z


# instance fields
.field private final binded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

.field private forceEmergency:Z

.field private mActivePhone:Lcom/android/internal/telephony/Phone;

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mIPPhone:Lcom/movial/ipphone/IPPhone;

.field private mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

.field private mIPSMSDispatcher:Lcom/movial/ipphone/IPSMSDispatcher;

.field private mIPStateListener:Lcom/movial/ipphone/IPStateListener;

.field protected mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

.field private mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

.field private mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOperatorName:Ljava/lang/String;

.field private mOutgoingPhone:Ljava/lang/String;

.field private mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

.field private mRealName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetModemOnRadioTechnologyChange:Z

.field private mRilVersion:I

.field private mRingingCall:Lcom/android/internal/telephony/Call;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/movial/ipphone/IPPhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    .line 170
    const/4 v0, 0x0

    sput-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "iccSmsInterfaceManager"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 176
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 150
    iput-boolean v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    .line 173
    iput-boolean v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    .line 492
    new-instance v1, Lcom/movial/ipphone/IPPhoneProxy$1;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPPhoneProxy$1;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 522
    new-instance v1, Lcom/movial/ipphone/IPPhoneProxy$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/movial/ipphone/IPPhoneProxy$2;-><init>(Lcom/movial/ipphone/IPPhoneProxy;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mObserver:Landroid/database/ContentObserver;

    .line 533
    new-instance v1, Lcom/movial/ipphone/IPPhoneProxy$3;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPPhoneProxy$3;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    .line 562
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 563
    new-instance v1, Ljava/util/concurrent/CyclicBarrier;

    invoke-direct {v1, v7}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    .line 564
    new-instance v1, Lcom/movial/ipphone/IPPhoneProxy$4;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPPhoneProxy$4;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 177
    const-string v1, "IPPhoneProxy"

    invoke-static {v1}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 179
    iput-object p1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 180
    new-instance v1, Lcom/movial/ipphone/IPPhone;

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, v2, p2, p3}, Lcom/movial/ipphone/IPPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    .line 182
    sget-boolean v1, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "CELL_ONLY"

    invoke-static {v1, v2, v6}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindService()V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/movial/ipphone/IPPhoneSettings;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "CELL_ONLY"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 190
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "GBA_INIT"

    invoke-static {v1, v2, v4}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 200
    iput-object p4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 202
    new-instance v2, Lcom/movial/ipphone/IPSMSDispatcher;

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    iget-object v4, v1, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    iget-object v5, v1, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/movial/ipphone/IPSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    iput-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPSMSDispatcher:Lcom/movial/ipphone/IPSMSDispatcher;

    .line 204
    new-instance v1, Lcom/movial/ipphone/EmergencyCallController;

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, p0, v2}, Lcom/movial/ipphone/EmergencyCallController;-><init>(Lcom/movial/ipphone/IPPhoneProxy;Lcom/android/internal/telephony/Phone;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    .line 212
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 214
    new-instance v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;-><init>(Lcom/android/internal/telephony/PhoneSubInfo;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    .line 215
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 217
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 218
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 219
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "com.movial.gba_initialized"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v1, "com.movial.ACTION_TERMINATE_STACK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v1, "com.movial.ACTION_REREAD_ISIM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    new-instance v2, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    .line 230
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 232
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    .line 236
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 234
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/movial/ipphone/IPPhoneProxy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->unbindService(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/movial/ipphone/IPPhoneProxy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->updateNetworkName(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IIPRegistry;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/movial/ipphone/IPPhoneProxy;Lcom/movial/ipphone/IIPRegistry;)Lcom/movial/ipphone/IIPRegistry;
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Lcom/movial/ipphone/IIPRegistry;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/movial/ipphone/IPPhoneProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/movial/ipphone/IPPhoneProxy;)Ljava/util/concurrent/CyclicBarrier;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IPStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/movial/ipphone/IPPhoneProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindToIPRegistry()V

    return-void
.end method

.method static synthetic access$200(Lcom/movial/ipphone/IPPhoneProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindService()V

    return-void
.end method

.method static synthetic access$300(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IPPhone;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/EmergencyCallController;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/movial/ipphone/IPPhoneProxy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->setIPSMSDispatcher(Z)V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 130
    sput-boolean p0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return p0
.end method

.method static synthetic access$700(Lcom/movial/ipphone/IPPhoneProxy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/movial/ipphone/IPPhoneProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->broadcastOperatorName()V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {p0}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private bindService()V
    .locals 4

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "CELL_ONLY"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    :goto_0
    return-void

    .line 633
    :cond_0
    new-instance v0, Lcom/movial/ipphone/IPPhoneProxy$5;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPPhoneProxy$5;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    .line 638
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private bindToIPRegistry()V
    .locals 6

    .prologue
    .line 604
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 605
    :try_start_0
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 606
    const-string v2, "IPPhoneProxy"

    const-string v4, "bindToIPRegistry"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v2}, Ljava/util/concurrent/CyclicBarrier;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/movial/ipphone/IIPRegistry;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.movial.ipservice"

    const-string v4, "com.movial.ipservice.IPService"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 612
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->waitConnectionResponse()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 618
    return-void

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IPPhoneProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService FAILED. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 617
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private broadcastOperatorName()V
    .locals 0

    .prologue
    .line 1756
    return-void
.end method

.method private deleteAndCreatePhone(I)V
    .locals 4
    .param p1, "newVoiceRadioTech"    # I

    .prologue
    .line 422
    const-string v1, "Unknown"

    .line 423
    .local v1, "outgoingPhoneName":Ljava/lang/String;
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 425
    .local v0, "oldPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 426
    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    .line 429
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switching Voice Phone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "GSM"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 432
    if-eqz v0, :cond_1

    .line 433
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 434
    const-string v2, "Disposing old phone.."

    invoke-static {v2}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 435
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->dispose()V

    .line 445
    :cond_1
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 446
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 451
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 452
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->removeReferences()V

    .line 455
    :cond_3
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_4

    .line 456
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 459
    :cond_4
    const/4 v0, 0x0

    .line 460
    return-void

    .line 429
    :cond_5
    const-string v2, "CDMA"

    goto :goto_0

    .line 447
    :cond_6
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 448
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1
.end method

.method public static getRegister()Z
    .locals 1

    .prologue
    .line 1915
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 323
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 331
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 327
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method private phoneObjectUpdater(I)V
    .locals 8
    .param p1, "newVoiceRadioTech"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: newVoiceRadioTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 337
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_2

    .line 339
    const/16 v3, 0xe

    if-ne p1, v3, :cond_0

    .line 340
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 342
    .local v2, "volteReplacementRat":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: volteReplacementRat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 343
    if-eqz v2, :cond_0

    .line 344
    move p1, v2

    .line 348
    .end local v2    # "volteReplacementRat":I
    :cond_0
    iget v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRilVersion:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 353
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: LTE ON CDMA property is set. Use CDMA Phone newVoiceRadioTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mActivePhone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 417
    :goto_0
    return-void

    .line 359
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: LTE ON CDMA property is set. Switch to CDMALTEPhone newVoiceRadioTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mActivePhone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 362
    const/4 p1, 0x6

    .line 378
    :cond_2
    if-nez p1, :cond_6

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: Unknown rat ignore,  newVoiceRadioTech=Unknown. mActivePhone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_3
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-eq v3, v7, :cond_5

    :cond_4
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 370
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: No change ignore, newVoiceRadioTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mActivePhone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 386
    :cond_6
    const/4 v1, 0x0

    .line 387
    .local v1, "oldPowerState":Z
    iget-boolean v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    if-eqz v3, :cond_7

    .line 388
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 389
    const/4 v1, 0x1

    .line 390
    const-string v3, "phoneObjectUpdater: Setting Radio Power to Off"

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 391
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 395
    :cond_7
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->deleteAndCreatePhone(I)V

    .line 397
    iget-boolean v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    if-eqz v3, :cond_8

    if-eqz v1, :cond_8

    .line 398
    const-string v3, "phoneObjectUpdater: Resetting Radio"

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 399
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 403
    :cond_8
    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 404
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->setmIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    .line 406
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V

    .line 408
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 409
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    .line 412
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 414
    const-string v3, "phoneName"

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const/4 v3, -0x1

    invoke-static {v0, v5, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private setCall(Z)V
    .locals 4
    .param p1, "result"    # Z

    .prologue
    .line 464
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 465
    .local v0, "f":Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 466
    .local v1, "g":Lcom/android/internal/telephony/Call;
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 468
    .local v2, "r":Lcom/android/internal/telephony/Call;
    if-eqz p1, :cond_0

    .line 469
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 470
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 471
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 478
    :goto_0
    const/4 v0, 0x0

    .line 479
    const/4 v1, 0x0

    .line 480
    const/4 v2, 0x0

    .line 481
    return-void

    .line 473
    :cond_0
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 474
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 475
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    goto :goto_0
.end method

.method private setIPSMSDispatcher(Z)V
    .locals 3
    .param p1, "result"    # Z

    .prologue
    .line 484
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIPSMSDispatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    if-eqz p1, :cond_0

    .line 486
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPSMSDispatcher:Lcom/movial/ipphone/IPSMSDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setIPSMSDispatcher(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setIPSMSDispatcher(Lcom/android/internal/telephony/SMSDispatcher;)V

    goto :goto_0
.end method

.method private unbindService(Z)V
    .locals 4
    .param p1, "restart"    # Z

    .prologue
    const/4 v3, 0x0

    .line 642
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindService. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 646
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    .line 647
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 649
    sput-boolean v3, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    .line 650
    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    .line 653
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->unbindService()V

    .line 655
    if-eqz p1, :cond_1

    .line 656
    const/4 v0, 0x5

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 657
    :cond_1
    return-void
.end method

.method private updateNetworkName(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 1717
    const-string v5, "showSpn"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1718
    .local v3, "showSpn":Z
    const-string v5, "spn"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1719
    .local v4, "spn":Ljava/lang/String;
    const-string v5, "showPlmn"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1720
    .local v2, "showPlmn":Z
    const-string v5, "plmn"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1722
    .local v1, "plmn":Ljava/lang/String;
    const-string v5, "com.movial.IMS_WIFICALL"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1723
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_6

    const-string v5, "1"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "null"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_8

    const-string v5, "1"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "null"

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRealName:Ljava/lang/String;

    .line 1726
    :cond_0
    const-string v0, ""

    .line 1727
    .local v0, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1728
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_a

    const-string v5, "1"

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "null"

    .end local v4    # "spn":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_b

    const-string v5, "1"

    :goto_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v1, "null"

    .end local v1    # "plmn":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1731
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1732
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/movial/ipphone/IPPhoneProxy;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1733
    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mOperatorName:Ljava/lang/String;

    .line 1736
    :cond_5
    :goto_6
    return-void

    .line 1723
    .end local v0    # "name":Ljava/lang/String;
    .restart local v1    # "plmn":Ljava/lang/String;
    .restart local v4    # "spn":Ljava/lang/String;
    :cond_6
    const-string v5, "0"

    goto/16 :goto_0

    :cond_7
    move-object v5, v4

    goto/16 :goto_1

    :cond_8
    const-string v5, "0"

    goto/16 :goto_2

    :cond_9
    move-object v5, v1

    goto :goto_3

    .line 1728
    .restart local v0    # "name":Ljava/lang/String;
    :cond_a
    const-string v5, "0"

    goto :goto_4

    .end local v4    # "spn":Ljava/lang/String;
    :cond_b
    const-string v5, "0"

    goto :goto_5

    .line 1734
    .end local v1    # "plmn":Ljava/lang/String;
    :cond_c
    const-string v5, "com.movial.IMS_WIFICALL"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1735
    const/4 v5, 0x6

    const-wide/16 v6, 0x3e8

    invoke-virtual {p0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6
.end method

.method private waitConnectionResponse()V
    .locals 5

    .prologue
    .line 622
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    return-void

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IPPhoneProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitConnectionResponse FAILED. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public IsDomesticRoaming()Z
    .locals 1

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v0

    return v0
.end method

.method public IsInternationalRoaming()Z
    .locals 1

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->IsInternationalRoaming()Z

    move-result v0

    return v0
.end method

.method public SimSlotActivation(Z)V
    .locals 0
    .param p1, "activation"    # Z

    .prologue
    .line 1939
    return-void
.end method

.method public SimSlotOnOff(I)V
    .locals 0
    .param p1, "on"    # I

    .prologue
    .line 2060
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
    .line 940
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->acceptCall()V

    .line 942
    :goto_0
    return-void

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    goto :goto_0
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
    .line 944
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->acceptCall()V

    .line 946
    :goto_0
    return-void

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V

    goto :goto_0
.end method

.method public acceptConnectionTypeChange(Lcom/android/internal/telephony/Connection;Ljava/util/Map;)V
    .locals 0
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
    .line 997
    .local p2, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 1460
    return-void
.end method

.method public addUserToConfCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1890
    const/4 v0, 0x0

    return-object v0
.end method

.method public akaAuthenticate([B[BLandroid/os/Message;)V
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->akaAuthenticate([B[BLandroid/os/Message;)V

    .line 1701
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 1040
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->canConference()Z

    move-result v0

    .line 1041
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    goto :goto_0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 1060
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->canTransfer()Z

    move-result v0

    .line 1061
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    goto :goto_0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1822
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/movial/ipphone/IPPhone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    .line 1823
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "newPwdAgain"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1831
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    .line 1832
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public changeConnectionType(Landroid/os/Message;Lcom/android/internal/telephony/Connection;ILjava/util/Map;)V
    .locals 0
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
    .line 986
    .local p4, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->clearDisconnected()V

    .line 1071
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 1072
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
    .line 1045
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->conference()V

    .line 1047
    :goto_0
    return-void

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    goto :goto_0
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
    .line 1116
    const/4 v0, 0x0

    .line 1117
    .local v0, "info":Lcom/android/internal/telephony/UUSInfo;
    invoke-virtual {p0, p1, v0}, Lcom/movial/ipphone/IPPhoneProxy;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dial(Ljava/lang/String;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "CallType"    # I
    .param p3, "CallDomain"    # I
    .param p4, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1135
    const/4 v0, 0x0

    .line 1136
    .local v0, "info":Lcom/android/internal/telephony/UUSInfo;
    invoke-virtual {p0, p1, v0}, Lcom/movial/ipphone/IPPhoneProxy;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dial(Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "CallType"    # I
    .param p3, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1122
    const/4 v0, 0x0

    .line 1123
    .local v0, "info":Lcom/android/internal/telephony/UUSInfo;
    invoke-virtual {p0, p1, v0}, Lcom/movial/ipphone/IPPhoneProxy;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/Call$CallType;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "callType"    # Lcom/android/internal/telephony/Call$CallType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1129
    const/4 v0, 0x0

    .line 1130
    .local v0, "info":Lcom/android/internal/telephony/UUSInfo;
    invoke-virtual {p0, p1, v0}, Lcom/movial/ipphone/IPPhoneProxy;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1100
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 1101
    .local v0, "isEmergencyCall":Z
    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    if-eqz v1, :cond_1

    .line 1102
    :cond_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v1, p1}, Lcom/movial/ipphone/EmergencyCallController;->transitToDialingState(Ljava/lang/String;)V

    .line 1105
    :cond_1
    sget-boolean v1, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v1, :cond_2

    .line 1106
    const-string v1, "IPPhoneProxy"

    const-string v2, "ims call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1, p1}, Lcom/movial/ipphone/IPPhone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1111
    :goto_0
    return-object v1

    .line 1110
    :cond_2
    const-string v1, "IPPhoneProxy"

    const-string v2, "gsm call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0
.end method

.method public dialConferenceCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1886
    const/4 v0, 0x0

    return-object v0
.end method

.method public dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1784
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1785
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 713
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 714
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 1324
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 1644
    const-string v0, "dispose"

    invoke-static {v0}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 1645
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 1646
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V

    .line 1647
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    .line 1650
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 1052
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 1320
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 1509
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 1511
    :goto_0
    return-void

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->exitEmergencyCallbackMode()V

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
    .line 1065
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->explicitCallTransfer()V

    .line 1067
    :goto_0
    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    goto :goto_0
.end method

.method public gbaAuthenticateBootstrap([B[BLandroid/os/Message;)V
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->gbaAuthenticateBootstrap([B[BLandroid/os/Message;)V

    .line 1705
    return-void
.end method

.method public gbaAuthenticateNaf([BLandroid/os/Message;)V
    .locals 1
    .param p1, "nafId"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->gbaAuthenticateNaf([BLandroid/os/Message;)V

    .line 1709
    return-void
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 742
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivePhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 1
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
    .line 678
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1257
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method public getBand(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1954
    return-void
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1793
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    .line 1794
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    .line 1795
    return-void
.end method

.method public getCallDomain(Lcom/android/internal/telephony/Call;)I
    .locals 1
    .param p1, "call"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 968
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallDomain(Lcom/android/internal/telephony/Call;)I

    move-result v0

    return v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1222
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1224
    :goto_0
    return-void

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public getCallType(Lcom/android/internal/telephony/Call;)I
    .locals 1
    .param p1, "call"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 956
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallType(Lcom/android/internal/telephony/Call;)I

    move-result v0

    return v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1246
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->getCallWaiting(Landroid/os/Message;)V

    .line 1248
    :goto_0
    return-void

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getCatService()Lcom/android/internal/telephony/cat/CatService;
    .locals 1

    .prologue
    .line 1926
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaCurrIdd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1910
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 1465
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getComCfg(ILandroid/os/Message;)V
    .locals 0
    .param p1, "bitmap"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1963
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 1312
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "default"

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 701
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataDunEnabled()Z
    .locals 1

    .prologue
    .line 2093
    const/4 v0, 0x0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataServiceState()I
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDualSimSlotActivationState()Z
    .locals 1

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDualSimSlotActivationState()Z

    move-result v0

    return v0
.end method

.method public getDunDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 2085
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    return-object v0
.end method

.method public getDunDataRxBarLevel()I
    .locals 1

    .prologue
    .line 2101
    const/4 v0, 0x0

    return v0
.end method

.method public getDunDataState()I
    .locals 1

    .prologue
    .line 2109
    const/4 v0, 0x0

    return v0
.end method

.method public getDunDataTxBarLevel()I
    .locals 1

    .prologue
    .line 2105
    const/4 v0, 0x0

    return v0
.end method

.method public getDunNetworkType()I
    .locals 1

    .prologue
    .line 2089
    const/4 v0, 0x0

    return v0
.end method

.method public getEmergencyCallPowerState()Z
    .locals 1

    .prologue
    .line 1771
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getDesiredPowerState()Z

    move-result v0

    .line 1774
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEmergencyPreference()I
    .locals 1

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v0}, Lcom/movial/ipphone/EmergencyCallController;->getEmergencyPreference()I

    move-result v0

    return v0
.end method

.method public getEmergencyState()Lcom/movial/ipphone/IPUtils$EmergencyState;
    .locals 1

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v0}, Lcom/movial/ipphone/EmergencyCallController;->getEmergencyState()Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-result-object v0

    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 1057
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFDNavailable()Z
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getFDNavailable()Z

    move-result v0

    return v0
.end method

.method public getForceEmergencyMode()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiInCDMAGSMPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImeiInCDMAGSMPhone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getImsForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getImsRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberType(I)Ljava/lang/String;
    .locals 1
    .param p1, "SimType"    # I

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1NumberType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 746
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLockNetworkInfos(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2031
    return-void
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1293
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getMute()Z

    move-result v0

    .line 1294
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    goto :goto_0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 1280
    return-void
.end method

.method public getOCSGLAvailable()Z
    .locals 2

    .prologue
    .line 1973
    const-string v0, "IPPhoneProxy"

    const-string v1, "Not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    const/4 v0, 0x0

    return v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1234
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 1236
    :goto_0
    return-void

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getPSISMSCavailable()Z
    .locals 1

    .prologue
    .line 2034
    const/4 v0, 0x0

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
    .line 828
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    .line 829
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneIndex()I
    .locals 1

    .prologue
    .line 1907
    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1859
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1276
    return-void
.end method

.method public getProposedConnectionType(Lcom/android/internal/telephony/Connection;)I
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1021
    const/4 v0, 0x0

    return v0
.end method

.method public getProvisioningData()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getProvisioningData()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPsismsc()[B
    .locals 1

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPsismsc()[B

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method public getSMSPavailable()Z
    .locals 1

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSMSPavailable()Z

    move-result v0

    return v0
.end method

.method public getSMSavailable()Z
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSMSavailable()Z

    move-result v0

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 661
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 662
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    goto :goto_0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSimSlot()I
    .locals 1

    .prologue
    .line 1980
    const/4 v0, 0x0

    return v0
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSktImsiM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSktImsiM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSktIrm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSktIrm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 1478
    return-void
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1921
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 3

    .prologue
    .line 721
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 722
    .local v0, "mGsm":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 724
    .local v1, "mIP":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 726
    :goto_0
    return-object v2

    .line 725
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_3

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 726
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdType(I)Ljava/lang/String;
    .locals 1
    .param p1, "SimType"    # I

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSubscriberIdType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
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
    .line 1144
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 260
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 261
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error! This handler was not registered for this message type. Message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/movial/ipphone/IPPhoneProxy;->loge(Ljava/lang/String;)V

    .line 319
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 320
    return-void

    .line 264
    :pswitch_0
    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    goto :goto_0

    .line 269
    :pswitch_1
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 270
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRilVersion:I

    goto :goto_0

    .line 272
    :cond_0
    const-string v4, "Unexpected exception on EVENT_RIL_CONNECTED"

    invoke-static {v4}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 273
    const/4 v4, -0x1

    iput v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRilVersion:I

    goto :goto_0

    .line 279
    :pswitch_2
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v3, "EVENT_VOICE_RADIO_TECH_CHANGED"

    .line 282
    .local v3, "what":Ljava/lang/String;
    :goto_1
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    .line 283
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    array-length v4, v4

    if-eqz v4, :cond_2

    .line 284
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x0

    aget v2, v4, v5

    .line 285
    .local v2, "newVoiceTech":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": newVoiceTech="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 286
    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPPhoneProxy;->phoneObjectUpdater(I)V

    goto :goto_0

    .line 279
    .end local v2    # "newVoiceTech":I
    .end local v3    # "what":Ljava/lang/String;
    :cond_1
    const-string v3, "EVENT_REQUEST_VOICE_RADIO_TECH_DONE"

    goto :goto_1

    .line 288
    .restart local v3    # "what":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": has no tech!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/movial/ipphone/IPPhoneProxy;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/movial/ipphone/IPPhoneProxy;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 296
    .end local v3    # "what":Ljava/lang/String;
    :pswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4}, Lcom/movial/ipphone/IPPhoneProxy;->phoneObjectUpdater(I)V

    goto/16 :goto_0

    .line 300
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 301
    .local v1, "emergencyCallPref":I
    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v4, v1}, Lcom/movial/ipphone/EmergencyCallController;->setEmergencyPreference(I)V

    .line 302
    const-string v4, "IPPhoneProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mEmergencyCallPref to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 306
    .end local v1    # "emergencyCallPref":I
    :pswitch_5
    const-string v4, "IPPhoneProxy"

    const-string v5, "EVENT_BIND_TO_IPSERVICE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindService()V

    goto/16 :goto_0

    .line 311
    :pswitch_6
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->broadcastOperatorName()V

    goto/16 :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCall(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callType"    # Ljava/lang/String;

    .prologue
    .line 1673
    const/4 v0, 0x0

    return v0
.end method

.method public hasIsim()Z
    .locals 1

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hasIsim()Z

    move-result v0

    return v0
.end method

.method public holdCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1035
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->switchHoldingAndActive()V

    .line 1037
    :goto_0
    return-void

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1304
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1308
    return-void
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 2

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "default"

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isMMICode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1944
    const/4 v0, 0x0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    .line 1474
    return-void
.end method

.method public notifyDunDataActivity()V
    .locals 0

    .prologue
    .line 2118
    return-void
.end method

.method public notifyDunDataConnection()V
    .locals 0

    .prologue
    .line 2114
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 1346
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 1366
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 1455
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1578
    return-void
.end method

.method public registerForAvpUpgradeFailure(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 979
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1525
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 885
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 886
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 798
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 799
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 800
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1545
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 904
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 905
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 906
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 876
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 865
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 866
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 789
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 790
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1570
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 819
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 820
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 808
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 809
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 810
    return-void
.end method

.method public registerForModifyCallRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 973
    return-void
.end method

.method public registerForNewIMSCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1878
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 778
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 779
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 780
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1554
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 768
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 769
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 770
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1562
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 924
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 925
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 914
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 915
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 916
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 838
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 839
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 840
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1535
    return-void
.end method

.method public registerForSrvccHandOver(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1897
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 895
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 896
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 857
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 848
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 849
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1586
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 758
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 759
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 760
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
    .line 1025
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->rejectCall()V

    .line 1027
    :goto_0
    return-void

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    goto :goto_0
.end method

.method public rejectConnectionTypeChange(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1005
    return-void
.end method

.method public removeReferences()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1654
    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 1655
    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    .line 1656
    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 1657
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 1612
    return-void
.end method

.method public selectBand(IIIIILandroid/os/Message;)V
    .locals 0
    .param p1, "networkMode"    # I
    .param p2, "gsmBand"    # I
    .param p3, "umtsBand"    # I
    .param p4, "lteBandH"    # I
    .param p5, "lteBandL"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 1957
    return-void
.end method

.method public selectBand(ILandroid/os/Message;)V
    .locals 0
    .param p1, "band"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1951
    return-void
.end method

.method public selectCsg(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1968
    const-string v0, "IPPhoneProxy"

    const-string v1, "selectCsg: not possible"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 1265
    return-void
.end method

.method public selectNetworkManually(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "operatorAlphaLong"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1269
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1506
    return-void
.end method

.method public sendDtmf(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 1148
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->sendDtmf(C)V

    .line 1150
    :goto_0
    return-void

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    goto :goto_0
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .prologue
    .line 833
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->sendUssdResponse(Ljava/lang/String;)V

    .line 835
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 1336
    return-void
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 6
    .param p1, "cbAction"    # Z
    .param p2, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1813
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z

    move-result v0

    .line 1814
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "cbAction"    # Z
    .param p2, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1802
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/movial/ipphone/IPPhone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    .line 1803
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "serviceClass"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1995
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "commandInterfaceCFAction"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1229
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1231
    :goto_0
    return-void

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1251
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 1253
    :goto_0
    return-void

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1371
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1
    .param p1, "cdmaSubscriptionType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 1376
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 1470
    return-void
.end method

.method public setCellInfoListRate(I)V
    .locals 1
    .param p1, "rateInMillis"    # I

    .prologue
    .line 693
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 694
    return-void
.end method

.method public setComCfg(ZZIILandroid/os/Message;)V
    .locals 0
    .param p1, "umtswbamr"    # Z
    .param p2, "gsmwbamr"    # Z
    .param p3, "vendor"    # I
    .param p4, "manufacture"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 1961
    return-void
.end method

.method public setDataDunEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2098
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1354
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    .line 1300
    return-void
.end method

.method public setEmergencyState(Lcom/movial/ipphone/IPUtils$EmergencyState;)V
    .locals 1
    .param p1, "state"    # Lcom/movial/ipphone/IPUtils$EmergencyState;

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/EmergencyCallController;->setEmergencyState(Lcom/movial/ipphone/IPUtils$EmergencyState;)V

    .line 1768
    return-void
.end method

.method public setFdy(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "interval"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1959
    return-void
.end method

.method public setForceEmergencyMode(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 239
    const-string v1, "IPPhoneProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setForceEmergencyMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "CELL_ONLY"

    invoke-static {v1, v4, v2}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    if-nez p1, :cond_2

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    .line 242
    if-nez p1, :cond_3

    :goto_1
    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    .line 245
    :cond_0
    iget-boolean v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    if-eq p1, v1, :cond_1

    .line 246
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.movial.force_emergency_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "force"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 249
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v1, p1}, Lcom/movial/ipphone/EmergencyCallController;->notifyForceEmergencyModeChanged(Z)V

    .line 251
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iput-boolean p1, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    .line 252
    return-void

    :cond_2
    move v1, v3

    .line 241
    goto :goto_0

    :cond_3
    move v2, v3

    .line 242
    goto :goto_1
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1714
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1200
    return-void
.end method

.method public setLteBandMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setLteBandMode(ILandroid/os/Message;)V

    .line 1341
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 1288
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->setMute(Z)V

    .line 1290
    :goto_0
    return-void

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1261
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1594
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1595
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1284
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1285
    return-void
.end method

.method public setOnUnsolOemHookExtApp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2019
    return-void
.end method

.method public setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2001
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1240
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 1243
    :goto_0
    return-void

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setPcoValue(I)V
    .locals 0
    .param p1, "newPco"    # I

    .prologue
    .line 1664
    return-void
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "operator"    # Ljava/lang/String;
    .param p3, "plmn"    # Ljava/lang/String;
    .param p4, "gsmAct"    # I
    .param p5, "gsmCompactAct"    # I
    .param p6, "utranAct"    # I
    .param p7, "mode"    # I
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 1865
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1272
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .param p1, "power"    # Z

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1164
    return-void
.end method

.method public setRadioPowerOnNow()V
    .locals 0

    .prologue
    .line 1987
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1482
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "ttyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 1450
    return-void
.end method

.method public setTransmitPower(ILandroid/os/Message;)V
    .locals 1
    .param p1, "powerLevel"    # I
    .param p2, "onCompleted"    # Landroid/os/Message;

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setTransmitPower(ILandroid/os/Message;)V

    .line 1780
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 1
    .param p1, "f"    # Z

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 1328
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1218
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    .line 2013
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 1153
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->startDtmf(C)V

    .line 1155
    :goto_0
    return-void

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    goto :goto_0
.end method

.method public startGlobalNetworkSearchTimer()V
    .locals 0

    .prologue
    .line 2063
    return-void
.end method

.method public startGlobalNoSvcChkTimer()V
    .locals 0

    .prologue
    .line 2069
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 1158
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->stopDtmf()V

    .line 1160
    :goto_0
    return-void

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    goto :goto_0
.end method

.method public stopGlobalNetworkSearchTimer()V
    .locals 0

    .prologue
    .line 2066
    return-void
.end method

.method public stopGlobalNoSvcChkTimer()V
    .locals 0

    .prologue
    .line 2072
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1030
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->switchHoldingAndActive()V

    .line 1032
    :goto_0
    return-void

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_0
.end method

.method public switchModem(ILandroid/os/Message;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1965
    return-void
.end method

.method public unSetOnUnsolOemHookExtApp(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2025
    return-void
.end method

.method public unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2007
    return-void
.end method

.method public unregisterForAvpUpgradeFailure(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 982
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1530
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 890
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 891
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 804
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 805
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1550
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 909
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 910
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 911
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 880
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 881
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 870
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 871
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 793
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 794
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 795
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 1574
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 823
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 824
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 825
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 813
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 814
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 815
    return-void
.end method

.method public unregisterForModifyCallRequest(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 976
    return-void
.end method

.method public unregisterForNewIMSCall(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1881
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 783
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 784
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 785
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 1558
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 773
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 774
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 775
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 1566
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 928
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 929
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 919
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 920
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 921
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 843
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 844
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 845
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1540
    return-void
.end method

.method public unregisterForSrvccHandOver(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1901
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 900
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 901
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 860
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 861
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 852
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 853
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 1590
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 1582
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 763
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 764
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 765
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1599
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1600
    return-void
.end method

.method public updatePhoneObject(I)V
    .locals 3
    .param p1, "voiceRadioTech"    # I

    .prologue
    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneObject: radioTechnology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 688
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 689
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 1316
    return-void
.end method

.method public writeDataToEF(I[B)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "data"    # [B

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->writeDataToEF(I[B)V

    .line 2046
    return-void
.end method