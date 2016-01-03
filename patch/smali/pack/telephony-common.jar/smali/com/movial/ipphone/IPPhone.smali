.class public Lcom/movial/ipphone/IPPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "IPPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/movial/ipphone/IPPhone$6;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final DEFAULT_OOBE_WIFION_TIMEOUT:J = 0x12cL

.field private static final DEFAULT_TIMEOUT:I = 0xbb8

.field public static final EVENT_IP_USSD:I = 0x4

.field private static final EVENT_OOBE_WIFION_TIMEOUT:I = 0x1

.field public static final EVENT_SHOW_DIALOG:I = 0x5

.field private static final PHONE_TYPE_IPPHONE:I = 0x3

.field public static final SEND_IP_USSD_COMPLETE:I = 0x3

.field public static final SET_CALL_FORWARD:I = 0x0

.field public static final SET_CALL_WAITING:I = 0x1

.field public static final SET_CLIR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "IPPhone"

.field private static mCid:I

.field private static mLac:I

.field private static mNetworkOperator:Ljava/lang/String;

.field private static mNetworkType:I

.field private static mState:I

.field private static mTime:J


# instance fields
.field private final binded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

.field private mCT:Lcom/movial/ipphone/IPCallTracker;

.field private mCallWaitingDone:Z

.field private mCallWaitingOnPregress:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDialogHandler:Landroid/os/Handler;

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private mHandler:Landroid/os/Handler;

.field private mIPService:Lcom/movial/ipphone/IIPService;

.field private mLooper:Landroid/os/Looper;

.field private mMmiMessages:[Landroid/os/Message;

.field private mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/movial/ipphone/IPMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPostDialHandler:Landroid/os/Registrant;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field protected mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field private mUnitTestMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x3

    sput v0, Lcom/movial/ipphone/IPPhone;->mState:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .prologue
    const/4 v3, 0x0

    .line 473
    const-string v1, "WFC"

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v1, p3, v2, p2}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 136
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 139
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhone;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 143
    const/16 v1, 0x8

    new-array v1, v1, [Landroid/os/Message;

    iput-object v1, p0, Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;

    .line 146
    iput-boolean v3, p0, Lcom/movial/ipphone/IPPhone;->mCallWaitingOnPregress:Z

    .line 147
    iput-boolean v3, p0, Lcom/movial/ipphone/IPPhone;->mCallWaitingDone:Z

    .line 168
    new-instance v1, Lcom/movial/ipphone/IPPhone$1;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPPhone$1;-><init>(Lcom/movial/ipphone/IPPhone;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhone;->mHandler:Landroid/os/Handler;

    .line 266
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 267
    new-instance v1, Ljava/util/concurrent/CyclicBarrier;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhone;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    .line 268
    new-instance v1, Lcom/movial/ipphone/IPPhone$2;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPPhone$2;-><init>(Lcom/movial/ipphone/IPPhone;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhone;->mConnection:Landroid/content/ServiceConnection;

    .line 332
    new-instance v1, Lcom/movial/ipphone/IPPhone$3;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPPhone$3;-><init>(Lcom/movial/ipphone/IPPhone;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhone;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 451
    new-instance v1, Lcom/movial/ipphone/IPPhone$4;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPPhone$4;-><init>(Lcom/movial/ipphone/IPPhone;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhone;->mDialogHandler:Landroid/os/Handler;

    move-object v0, p1

    .line 475
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 476
    .local v0, "pbase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 478
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    .line 479
    iput-object p1, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 480
    const-string v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    iput-object v1, p0, Lcom/movial/ipphone/IPPhone;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 481
    new-instance v1, Lcom/movial/ipphone/IPCallTracker;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPCallTracker;-><init>(Lcom/movial/ipphone/IPPhone;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    .line 482
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/movial/ipphone/IPPhone;->mLooper:Landroid/os/Looper;

    .line 484
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPPhone;->registerReceiver(Landroid/content/Context;)V

    .line 485
    return-void
.end method

.method static synthetic access$000(Lcom/movial/ipphone/IPPhone;)[Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000()J
    .locals 2

    .prologue
    .line 119
    sget-wide v0, Lcom/movial/ipphone/IPPhone;->mTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/movial/ipphone/IPPhone;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/movial/ipphone/IPPhone;->mCallWaitingDone:Z

    return p1
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/movial/ipphone/IPPhone;->mLac:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/movial/ipphone/IPPhone;->mCid:I

    return v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/movial/ipphone/IPPhone;->mNetworkType:I

    return v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/movial/ipphone/IPPhone;->mNetworkOperator:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/movial/ipphone/IPPhone;)Ljava/util/concurrent/CyclicBarrier;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    return-object v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/movial/ipphone/IPPhone;->mState:I

    return v0
.end method

.method static synthetic access$1602(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 119
    sput p0, Lcom/movial/ipphone/IPPhone;->mState:I

    return p0
.end method

.method static synthetic access$1700(Lcom/movial/ipphone/IPPhone;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhone;->updateCellLocation()V

    return-void
.end method

.method static synthetic access$1800(Lcom/movial/ipphone/IPPhone;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/movial/ipphone/IPPhone;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/movial/ipphone/IPPhone;)Z
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/movial/ipphone/IPPhone;->mCallWaitingOnPregress:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/movial/ipphone/IPPhone;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhone;->bindToIPService()V

    return-void
.end method

.method static synthetic access$300(Lcom/movial/ipphone/IPPhone;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/movial/ipphone/IPPhone;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/movial/ipphone/IPPhone;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/movial/ipphone/IPPhone;->onIncomingUSSD(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/movial/ipphone/IPPhone;II)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/movial/ipphone/IPPhone;->showDialog(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/movial/ipphone/IPPhone;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/movial/ipphone/IPPhone;)Lcom/movial/ipphone/IIPService;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    return-object v0
.end method

.method static synthetic access$802(Lcom/movial/ipphone/IPPhone;Lcom/movial/ipphone/IIPService;)Lcom/movial/ipphone/IIPService;
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;
    .param p1, "x1"    # Lcom/movial/ipphone/IIPService;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/movial/ipphone/IPPhone;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private bindToIPService()V
    .locals 6

    .prologue
    .line 497
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 498
    :try_start_0
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 499
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v2}, Ljava/util/concurrent/CyclicBarrier;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/movial/ipphone/IIPService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.movial.ipservice"

    const-string v4, "com.movial.ipservice.IPService"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/movial/ipphone/IPPhone;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPPhone;->waitConnectionResponse(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 510
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IPPhone"

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

    .line 509
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private checkCorrectThread(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1299
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mLooper:Landroid/os/Looper;

    if-eq v0, v1, :cond_0

    .line 1300
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "com.android.internal.telephony.Phone must be used from within one thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1303
    :cond_0
    return-void
.end method

.method private convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 1371
    sget-object v0, Lcom/movial/ipphone/IPPhone$6;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1377
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1373
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1375
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1382
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 296
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 298
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 299
    const/4 v2, 0x1

    .line 304
    :cond_0
    :goto_0
    return v2

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 1386
    const-string v0, "IPPhone"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    return-void
.end method

.method private onIncomingUSSD(ILjava/lang/String;)V
    .locals 7
    .param p1, "ussdMode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 611
    if-ne p1, v2, :cond_2

    move v3, v2

    .line 614
    .local v3, "isUssdRequest":Z
    :goto_0
    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_3

    .line 621
    .local v2, "isUssdError":Z
    :goto_1
    const/4 v0, 0x0

    .line 622
    .local v0, "found":Lcom/movial/ipphone/IPMmiCode;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v6, p0, Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "s":I
    :goto_2
    if-ge v1, v5, :cond_0

    .line 623
    iget-object v6, p0, Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/movial/ipphone/IPMmiCode;

    invoke-virtual {v6}, Lcom/movial/ipphone/IPMmiCode;->isPendingUSSD()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 624
    iget-object v6, p0, Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "found":Lcom/movial/ipphone/IPMmiCode;
    check-cast v0, Lcom/movial/ipphone/IPMmiCode;

    .line 629
    .restart local v0    # "found":Lcom/movial/ipphone/IPMmiCode;
    :cond_0
    if-eqz v0, :cond_6

    .line 632
    if-eqz v2, :cond_5

    .line 633
    invoke-virtual {v0}, Lcom/movial/ipphone/IPMmiCode;->onUssdFinishedError()V

    .line 650
    :cond_1
    :goto_3
    return-void

    .end local v0    # "found":Lcom/movial/ipphone/IPMmiCode;
    .end local v1    # "i":I
    .end local v2    # "isUssdError":Z
    .end local v3    # "isUssdRequest":Z
    .end local v5    # "s":I
    :cond_2
    move v3, v6

    .line 611
    goto :goto_0

    .restart local v3    # "isUssdRequest":Z
    :cond_3
    move v2, v6

    .line 614
    goto :goto_1

    .line 622
    .restart local v0    # "found":Lcom/movial/ipphone/IPMmiCode;
    .restart local v1    # "i":I
    .restart local v2    # "isUssdError":Z
    .restart local v5    # "s":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 635
    :cond_5
    invoke-virtual {v0, p2, v3}, Lcom/movial/ipphone/IPMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_3

    .line 642
    :cond_6
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    .line 644
    invoke-static {p2, v3, p0}, Lcom/movial/ipphone/IPMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/movial/ipphone/IPPhone;)Lcom/movial/ipphone/IPMmiCode;

    move-result-object v4

    .line 647
    .local v4, "mmi":Lcom/movial/ipphone/IPMmiCode;
    invoke-direct {p0, v4}, Lcom/movial/ipphone/IPPhone;->onNetworkInitiatedUssd(Lcom/movial/ipphone/IPMmiCode;)V

    goto :goto_3
.end method

.method private onNetworkInitiatedUssd(Lcom/movial/ipphone/IPMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/movial/ipphone/IPMmiCode;

    .prologue
    const/4 v2, 0x0

    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 604
    return-void
.end method

.method private preProcessDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1097
    move-object v0, p1

    .line 1098
    .local v0, "processedDialString":Ljava/lang/String;
    const-string v1, "*82"

    const-string v2, "*31#"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1100
    const-string v1, "IPPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preProcessDialString old:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    return-object v0
.end method

.method private processWifiChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processWifiChanged(): state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 422
    packed-switch p1, :pswitch_data_0

    .line 450
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 435
    :pswitch_1
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "WIFI_FIRST_TURNON"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mDialogHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 437
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mDialogHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 443
    :pswitch_2
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mDialogHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mDialogHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 488
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 489
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "com.movial.ACTION_RADIO_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "WIFI_FIRST_TURNON"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 491
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    :cond_0
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 494
    return-void
.end method

.method private showDialog(II)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 309
    const-string v1, "IPPhone"

    const-string v2, "showDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sparse-switch p1, :sswitch_data_0

    .line 321
    :cond_0
    :goto_0
    const-string v1, "com.movial.ipservice"

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPPhone;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    .line 322
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, "newintent":Landroid/content/Intent;
    const-string v1, "com.movial.ipservice"

    const-string v2, "com.movial.ipservice.IPDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v1, "dialog_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 326
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 330
    .end local v0    # "newintent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 312
    :sswitch_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "WIFI_FIRST_TURNON"

    invoke-static {v1, v2, v3}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "WIFI_FIRST_TURNON"

    invoke-static {v1, v2, v4}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 317
    :sswitch_1
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "FIRST_WIFI_CALL"

    invoke-static {v1, v2, v3}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 328
    :cond_2
    const-string v1, "IPPhone"

    const-string v2, "showDialog: com.movial.ipservice not loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 310
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private updateCellLocation()V
    .locals 18

    .prologue
    .line 360
    sget v1, Lcom/movial/ipphone/IPPhone;->mState:I

    if-nez v1, :cond_1

    .line 361
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    .line 362
    .local v15, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v6

    .line 363
    .local v6, "networkType":I
    const/4 v4, 0x0

    .line 364
    .local v4, "lac":I
    const/4 v5, 0x0

    .line 366
    .local v5, "cid":I
    sparse-switch v6, :sswitch_data_0

    .line 391
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    move-object v12, v1

    check-cast v12, Landroid/telephony/gsm/GsmCellLocation;

    .line 392
    .local v12, "gsmLocation":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v12, :cond_0

    .line 393
    invoke-virtual {v12}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    .line 394
    invoke-virtual {v12}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    .line 399
    .end local v12    # "gsmLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    :goto_0
    :sswitch_0
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    .line 401
    .local v7, "networkOp":Ljava/lang/String;
    const/4 v1, -0x1

    if-eq v1, v4, :cond_1

    if-eqz v4, :cond_1

    if-eqz v6, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 403
    .local v2, "currentTime":J
    sput v4, Lcom/movial/ipphone/IPPhone;->mLac:I

    .line 404
    sput v5, Lcom/movial/ipphone/IPPhone;->mCid:I

    .line 405
    sput v6, Lcom/movial/ipphone/IPPhone;->mNetworkType:I

    .line 406
    sput-object v7, Lcom/movial/ipphone/IPPhone;->mNetworkOperator:Ljava/lang/String;

    .line 407
    sput-wide v2, Lcom/movial/ipphone/IPPhone;->mTime:J

    .line 408
    const-string v1, "IPPhone"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateCellLocation, time = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", lac = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", cid = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", networkType ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", networkOp = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    if-eqz v1, :cond_1

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface/range {v1 .. v7}, Lcom/movial/ipphone/IIPService;->setCellLocation(JIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v2    # "currentTime":J
    .end local v4    # "lac":I
    .end local v5    # "cid":I
    .end local v6    # "networkType":I
    .end local v7    # "networkOp":Ljava/lang/String;
    .end local v15    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    return-void

    .line 371
    .restart local v4    # "lac":I
    .restart local v5    # "cid":I
    .restart local v6    # "networkType":I
    .restart local v15    # "tm":Landroid/telephony/TelephonyManager;
    :sswitch_1
    const/4 v14, 0x0

    .line 372
    .local v14, "lteInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v9

    .line 374
    .local v9, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v9, :cond_0

    .line 377
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/CellInfo;

    .line 378
    .local v8, "cellInfo":Landroid/telephony/CellInfo;
    instance-of v1, v8, Landroid/telephony/CellInfoLte;

    if-eqz v1, :cond_2

    .line 379
    move-object v14, v8

    goto :goto_2

    .line 382
    .end local v8    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_3
    if-eqz v14, :cond_0

    .line 383
    check-cast v14, Landroid/telephony/CellInfoLte;

    .end local v14    # "lteInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v14}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v10

    .line 384
    .local v10, "cidLte":Landroid/telephony/CellIdentityLte;
    if-eqz v10, :cond_0

    .line 385
    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v4

    .line 386
    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v5

    goto/16 :goto_0

    .line 413
    .end local v9    # "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v10    # "cidLte":Landroid/telephony/CellIdentityLte;
    .end local v13    # "i$":Ljava/util/Iterator;
    .restart local v2    # "currentTime":J
    .restart local v7    # "networkOp":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 414
    .local v11, "e":Ljava/lang/Exception;
    const-string v1, "IPPhone"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setCellLocation FAILED: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 366
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method private waitConnectionResponse(Z)V
    .locals 5
    .param p1, "timeout"    # Z

    .prologue
    .line 514
    if-eqz p1, :cond_0

    .line 515
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I

    .line 521
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v1}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IPPhone"

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

    goto :goto_0
.end method


# virtual methods
.method public SimSlotActivation(Z)V
    .locals 0
    .param p1, "activation"    # Z

    .prologue
    .line 1517
    return-void
.end method

.method public SimSlotOnOff(I)V
    .locals 0
    .param p1, "on"    # I

    .prologue
    .line 1582
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
    .line 1032
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker;->acceptCall()V

    .line 1033
    return-void
.end method

.method public acceptCall(I)V
    .locals 0
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1036
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhone;->acceptCall()V

    .line 1037
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 884
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 885
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
    .line 1493
    const/4 v0, 0x0

    return-object v0
.end method

.method public akaAuthenticate([B[BLandroid/os/Message;)V
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->akaAuthenticate([B[BLandroid/os/Message;)V

    .line 1008
    return-void
.end method

.method bindService()V
    .locals 1

    .prologue
    .line 524
    new-instance v0, Lcom/movial/ipphone/IPPhone$5;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPPhone$5;-><init>(Lcom/movial/ipphone/IPPhone;)V

    .line 529
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 530
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker;->canConference()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 1060
    const/4 v0, 0x0

    return v0
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 587
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1448
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
    .line 1456
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker;->clearDisconnected()V

    .line 1070
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
    .line 1055
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker;->conference()V

    .line 1056
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
    .line 1138
    const/4 v0, 0x0

    .line 1139
    .local v0, "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    invoke-virtual {p0, p1, v0}, Lcom/movial/ipphone/IPPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dial(Ljava/lang/String;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "callType"    # I
    .param p3, "callDomain"    # I
    .param p4, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1148
    invoke-virtual {p0, p1}, Lcom/movial/ipphone/IPPhone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/Call$CallType;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "callType"    # Lcom/android/internal/telephony/Call$CallType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1143
    invoke-virtual {p0, p1}, Lcom/movial/ipphone/IPPhone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 7
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1108
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1111
    .local v2, "newDialString":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IPPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1133
    :goto_0
    return-object v3

    .line 1116
    :cond_0
    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPPhone;->preProcessDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1119
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1120
    .local v1, "networkPortion":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/movial/ipphone/IPMmiCode;->newFromDialString(Ljava/lang/String;Lcom/movial/ipphone/IPPhone;)Lcom/movial/ipphone/IPMmiCode;

    move-result-object v0

    .line 1121
    .local v0, "mmi":Lcom/movial/ipphone/IPMmiCode;
    const-string v4, "IPPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialing w/ mmi \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    if-nez v0, :cond_1

    .line 1124
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v3, v2}, Lcom/movial/ipphone/IPCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 1125
    :cond_1
    invoke-virtual {v0}, Lcom/movial/ipphone/IPMmiCode;->isTemporaryModeCLIR()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1126
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    iget-object v4, v0, Lcom/movial/ipphone/IPMmiCode;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPMmiCode;->getCLIRMode()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/movial/ipphone/IPCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 1128
    :cond_2
    iget-object v4, p0, Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1130
    invoke-virtual {v0}, Lcom/movial/ipphone/IPMmiCode;->processCode()V

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
    .line 1489
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
    .line 1421
    const/4 v0, 0x0

    return-object v0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 821
    return-void
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 817
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 0

    .prologue
    .line 1276
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1066
    return-void
.end method

.method public gbaAuthenticateBootstrap([B[BLandroid/os/Message;)V
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->gbaAuthenticateBootstrap([B[BLandroid/os/Message;)V

    .line 1012
    return-void
.end method

.method public gbaAuthenticateNaf([BLandroid/os/Message;)V
    .locals 1
    .param p1, "nafId"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->gbaAuthenticateNaf([BLandroid/os/Message;)V

    .line 1016
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 971
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 972
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    iget-object v0, v0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    return-object v0
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1427
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 1259
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 935
    new-array v2, v5, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 936
    .local v2, "cfl":[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v1, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 937
    .local v1, "cf":Lcom/android/internal/telephony/CallForwardInfo;
    const-string v4, "0000"

    iput-object v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 938
    iput v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 939
    const/4 v4, 0x0

    aput-object v1, v2, v4

    .line 942
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 944
    .local v3, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 945
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 946
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 6
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 960
    new-array v1, v3, [I

    .line 961
    .local v1, "cw":[I
    iget-boolean v5, p0, Lcom/movial/ipphone/IPPhone;->mCallWaitingDone:Z

    if-eqz v5, :cond_0

    :goto_0
    aput v3, v1, v4

    .line 964
    new-instance v2, Lcom/android/internal/telephony/CommandException;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 966
    .local v2, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p1, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 967
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 968
    return-void

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    move v3, v4

    .line 961
    goto :goto_0
.end method

.method public getCatService()Lcom/android/internal/telephony/cat/CatService;
    .locals 1

    .prologue
    .line 1504
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 888
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 889
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentGprsState()I
    .locals 1

    .prologue
    .line 1543
    const/4 v0, -0x1

    return v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 808
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 809
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 796
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataDunEnabled()Z
    .locals 1

    .prologue
    .line 1615
    const/4 v0, 0x0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataServiceState()I
    .locals 1

    .prologue
    .line 789
    const/4 v0, 0x0

    return v0
.end method

.method public getDesiredPowerState()Z
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDesiredPowerState()Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDualSimSlotActivationState()Z
    .locals 1

    .prologue
    .line 1579
    const/4 v0, 0x0

    return v0
.end method

.method public getDunDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 1607
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    return-object v0
.end method

.method public getDunNetworkType()I
    .locals 1

    .prologue
    .line 1611
    const/4 v0, 0x0

    return v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 864
    const-string v0, "0"

    return-object v0
.end method

.method public getFDNavailable()Z
    .locals 1

    .prologue
    .line 1467
    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    iget-object v0, v0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1575
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 876
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiInCDMAGSMPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImeiInCDMAGSMPhone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberType(I)Ljava/lang/String;
    .locals 1
    .param p1, "SimType"    # I

    .prologue
    .line 1597
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMdnavailable()Z
    .locals 1

    .prologue
    .line 920
    const/4 v0, 0x0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 868
    const-string v0, "0"

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMsisdnavailable()Z
    .locals 1

    .prologue
    .line 916
    const/4 v0, 0x0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 804
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 805
    return-void
.end method

.method public getOCSGLAvailable()Z
    .locals 2

    .prologue
    .line 1553
    const-string v0, "IPPhone"

    const-string v1, "Not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    const/4 v0, 0x0

    return v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 7
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 949
    iget-object v4, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 950
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v4, "clir_key"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 952
    .local v2, "clirSetting":I
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 953
    .local v1, "clirArray":[I
    const/4 v4, 0x0

    aput v2, v1, v4

    .line 954
    aput v6, v1, v6

    .line 955
    const/4 v4, 0x0

    invoke-static {p1, v1, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 956
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 957
    return-void
.end method

.method public getPSISMSCavailable()Z
    .locals 1

    .prologue
    .line 1565
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
    .line 563
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1477
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 700
    return-void
.end method

.method public getPsismsc()[B
    .locals 1

    .prologue
    .line 1570
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    iget-object v0, v0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    return-object v0
.end method

.method public getSMSPavailable()Z
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSMSPavailable()Z

    move-result v0

    return v0
.end method

.method public getSMSavailable()Z
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSMSavailable()Z

    move-result v0

    return v0
.end method

.method getService()Lcom/movial/ipphone/IIPService;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    .line 543
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1245
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 1246
    .local v0, "ss":Landroid/telephony/ServiceState;
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhone;->isAirplaneModeOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1247
    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1248
    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1250
    :cond_0
    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSktImsiM()Ljava/lang/String;
    .locals 2

    .prologue
    .line 988
    const-string v0, "IPPhone"

    const-string v1, "IPPhone.getSktImsiM(): Not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSktIrm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 997
    const-string v0, "IPPhone"

    const-string v1, "IPPhone.getSktIrm(): Not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 703
    return-void
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1499
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    iget-object v0, v0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdType(I)Ljava/lang/String;
    .locals 1
    .param p1, "SimType"    # I

    .prologue
    .line 1601
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

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
    .line 1158
    const/4 v0, 0x0

    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1153
    const/4 v0, 0x0

    return v0
.end method

.method public hasIsim()Z
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

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
    .line 1048
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 1049
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 715
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 718
    return-void
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method isInCall()Z
    .locals 4

    .prologue
    .line 1085
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1086
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1087
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1089
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isMMICode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1521
    const/4 v0, 0x0

    return v0
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1337
    const-string v0, "notifyDisconnect"

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1338
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1339
    return-void
.end method

.method notifyIncomingRing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1356
    const-string v1, "notifyIncomingRing"

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1357
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1358
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1359
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1326
    const-string v0, "notifyNewRingingConnection"

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1327
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 1328
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 5

    .prologue
    .line 1306
    const-string v3, "notifyPhoneStateChanged"

    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1309
    .local v2, "ringingCall":Lcom/android/internal/telephony/Call;
    const-string v1, ""

    .line 1310
    .local v1, "incomingNumber":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1311
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1314
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/movial/ipphone/IPPhone;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    move-result v4

    invoke-interface {v3, v4, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallState(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    :goto_0
    return-void

    .line 1315
    :catch_0
    move-exception v0

    .line 1316
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "IPPhone"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method notifyPreciseCallStateChanged()V
    .locals 1

    .prologue
    .line 1321
    const-string v0, "notifyPreciseCallStateChanged"

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1322
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 1323
    return-void
.end method

.method notifyRingbackTone(Z)V
    .locals 4
    .param p1, "playtone"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1362
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1363
    return-void
.end method

.method notifyServiceStateChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1342
    const-string v3, "notifyServiceStateChanged"

    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1343
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 1345
    .local v2, "mSS":Landroid/telephony/ServiceState;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v4, v2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1346
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1349
    :try_start_0
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyServiceState(Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1353
    :goto_0
    return-void

    .line 1350
    :catch_0
    move-exception v1

    .line 1351
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "IPPhone"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method notifyToShowDialog()V
    .locals 4

    .prologue
    .line 1366
    const-string v0, "notifyToShowDialog"

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1368
    return-void
.end method

.method notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v2, 0x0

    .line 1331
    const-string v1, "notifyUnknownRingingConnection"

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1332
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1333
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1334
    return-void
.end method

.method onMMIDone(Lcom/movial/ipphone/IPMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/movial/ipphone/IPMmiCode;

    .prologue
    const/4 v2, 0x0

    .line 579
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/movial/ipphone/IPMmiCode;->isUssdRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 583
    :cond_1
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 1

    .prologue
    .line 1395
    const-string v0, "onUpdateIccAvailability"

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1397
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 712
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 688
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 751
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 727
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1281
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 557
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 551
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 745
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 733
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 739
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 681
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 670
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 671
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 672
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 721
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 662
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 654
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 757
    return-void
.end method

.method registerHandler()V
    .locals 4

    .prologue
    .line 1023
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCallTracker;->registerHandler()V

    .line 1025
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Lcom/movial/ipphone/IIPService;->registerForIncomingUSSD(Landroid/os/Messenger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :goto_0
    return-void

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IPPhone"

    const-string v2, "register for ussd fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker;->rejectCall()V

    .line 1041
    return-void
.end method

.method public removeReferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1412
    const-string v0, "removeReferences"

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1413
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 1414
    iput-object v1, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    .line 1415
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 1417
    return-void
.end method

.method public selectCsg(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1548
    const-string v0, "IPPhone"

    const-string v1, "selectCsg: not possible"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 979
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 980
    return-void
.end method

.method public selectNetworkManually(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "operatorAlphaLong"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1462
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 2
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1183
    const-string v0, "IPPhone"

    const-string v1, "sendBurstDtmf is CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 1162
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1163
    const-string v0, "IPPhone"

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

    .line 1167
    :goto_0
    return-void

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPCallTracker;->sendDtmf(C)V

    goto :goto_0
.end method

.method public sendEncodedUssd([BII)V
    .locals 0
    .param p1, "ussdMessage"    # [B
    .param p2, "ussdLength"    # I
    .param p3, "dcsCode"    # I

    .prologue
    .line 1531
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 591
    :try_start_0
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    new-instance v4, Landroid/os/Messenger;

    iget-object v5, p0, Lcom/movial/ipphone/IPPhone;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-interface {v3, p1, v4}, Lcom/movial/ipphone/IIPService;->sendUssd(Ljava/lang/String;Landroid/os/Messenger;)I

    move-result v1

    .line 592
    .local v1, "index":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 593
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x7

    invoke-static {v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 594
    .local v2, "m":Landroid/os/Message;
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;

    const/4 v4, 0x7

    aput-object p2, v3, v4

    .line 595
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 600
    .end local v1    # "index":I
    .end local v2    # "m":Landroid/os/Message;
    :goto_0
    return-void

    .line 597
    .restart local v1    # "index":I
    :cond_0
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;

    aput-object p2, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 598
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "IPPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 567
    invoke-static {p1, p0}, Lcom/movial/ipphone/IPMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/movial/ipphone/IPPhone;)Lcom/movial/ipphone/IPMmiCode;

    move-result-object v0

    .line 568
    .local v0, "mmi":Lcom/movial/ipphone/IPMmiCode;
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 570
    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 709
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
    .line 1441
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
    .line 1433
    const/4 v0, 0x0

    return v0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "serviceClass"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1221
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1222
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 10
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1198
    move-object v9, p5

    .line 1201
    .local v9, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    new-instance v5, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/movial/ipphone/IIPService;->setCallForward(IILjava/lang/String;ILandroid/os/Messenger;)I

    move-result v7

    .line 1206
    .local v7, "index":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v8

    .line 1208
    .local v8, "m":Landroid/os/Message;
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;

    const/4 v1, 0x7

    aput-object p5, v0, v1

    .line 1209
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1213
    .end local v7    # "index":I
    .end local v8    # "m":Landroid/os/Message;
    :goto_0
    return-void

    .line 1211
    .restart local v7    # "index":I
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;

    aput-object p5, v0, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1212
    .end local v7    # "index":I
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "IPPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 7
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1233
    :try_start_0
    iput-boolean p1, p0, Lcom/movial/ipphone/IPPhone;->mCallWaitingOnPregress:Z

    .line 1234
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    new-instance v4, Landroid/os/Messenger;

    iget-object v5, p0, Lcom/movial/ipphone/IPPhone;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-interface {v3, p1, v4}, Lcom/movial/ipphone/IIPService;->setCW(ZLandroid/os/Messenger;)I

    move-result v1

    .line 1235
    .local v1, "index":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1236
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x7

    invoke-static {v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 1237
    .local v2, "m":Landroid/os/Message;
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;

    const/4 v4, 0x7

    aput-object p2, v3, v4

    .line 1238
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1242
    .end local v1    # "index":I
    .end local v2    # "m":Landroid/os/Message;
    :goto_0
    return-void

    .line 1240
    .restart local v1    # "index":I
    :cond_0
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;

    aput-object p2, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1241
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "IPPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 691
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaSubscriptionType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 694
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 892
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 893
    return-void
.end method

.method public setDataDunEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1620
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 828
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 829
    return-void
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1020
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 912
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 913
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPCallTracker;->setMute(Z)V

    .line 1268
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 975
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 976
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1290
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    .line 1291
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1263
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 1264
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 3
    .param p1, "clirmode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 1225
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    .line 1227
    invoke-static {p2, v2, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1228
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1229
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
    .line 1483
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 0
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 697
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .param p1, "power"    # Z

    .prologue
    .line 896
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 897
    return-void
.end method

.method public setRadioPowerOnNow()V
    .locals 0

    .prologue
    .line 1561
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 706
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 931
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 932
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 1170
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1171
    const-string v0, "IPPhone"

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

    .line 1175
    :goto_0
    return-void

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPCallTracker;->startDtmf(C)V

    goto :goto_0
.end method

.method public startGlobalNetworkSearchTimer()V
    .locals 0

    .prologue
    .line 1585
    return-void
.end method

.method public startGlobalNoSvcChkTimer()V
    .locals 0

    .prologue
    .line 1591
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker;->stopDtmf()V

    .line 1179
    return-void
.end method

.method public stopGlobalNetworkSearchTimer()V
    .locals 0

    .prologue
    .line 1588
    return-void
.end method

.method public stopGlobalNoSvcChkTimer()V
    .locals 0

    .prologue
    .line 1594
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
    .line 1044
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 1045
    return-void
.end method

.method unbindService()V
    .locals 3

    .prologue
    .line 533
    const-string v0, "IPPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindService. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 535
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    .line 536
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 537
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 730
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1286
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 560
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 554
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 748
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 736
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 742
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 685
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 676
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 677
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 724
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 666
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 658
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 760
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 754
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1296
    return-void
.end method

.method updateCurrentCarrierInProvider()Z
    .locals 1

    .prologue
    .line 1539
    const/4 v0, 0x0

    return v0
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 813
    return-void
.end method
