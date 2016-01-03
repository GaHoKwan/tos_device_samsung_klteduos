.class public Lcom/android/internal/telephony/uicc/UiccController;
.super Landroid/os/Handler;
.source "UiccController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccController$UiccCardBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final APP_FAM_3GPP:I = 0x1

.field public static final APP_FAM_3GPP2:I = 0x2

.field public static final APP_FAM_IMS:I = 0x3

.field private static final DBG:Z = true

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x2

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "UiccController"

.field private static mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

.field private static final mLock:[Ljava/lang/Object;


# instance fields
.field private NoSimNotyFlag:Z

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mIccChangedRegistrants:Landroid/os/RegistrantList;

.field mIccSwapDialog:Landroid/app/AlertDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private updateFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 122
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    sput-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:[Ljava/lang/Object;

    .line 123
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/UiccController;

    sput-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    .line 144
    const/4 v0, 0x0

    .local v0, "simSlot":I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 145
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:[Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    aput-object v2, v1, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 384
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 130
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    .line 133
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 134
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccController$UiccCardBroadcastReceiver;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/uicc/UiccController$UiccCardBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/UiccController;Lcom/android/internal/telephony/uicc/UiccController$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccSwapDialog:Landroid/app/AlertDialog;

    .line 136
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->updateFlag:Z

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->NoSimNotyFlag:Z

    .line 385
    const-string v1, "UiccController"

    const-string v2, "Creating UiccController"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 387
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 388
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 389
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 391
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 393
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.ICC_CARD_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, "iccCardIntentfilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 396
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 130
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    .line 133
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 134
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController$UiccCardBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccController$UiccCardBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/UiccController;Lcom/android/internal/telephony/uicc/UiccController$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccSwapDialog:Landroid/app/AlertDialog;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->updateFlag:Z

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->NoSimNotyFlag:Z

    .line 179
    const-string v0, "UiccController: setCurrentPhone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->setCurrentPhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 181
    return-void
.end method

.method private CancelNotification()V
    .locals 5

    .prologue
    .line 281
    const/16 v2, 0x14d

    .line 282
    .local v2, "stkNotiId":I
    const/16 v1, 0x1bc

    .line 284
    .local v1, "stk2NotiId":I
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 285
    .local v0, "notiMgr":Landroid/app/NotificationManager;
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 286
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 288
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 290
    :cond_0
    return-void
.end method

.method private LaunchSimRefreshMessage(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 9
    .param p1, "refreshResult"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    const v8, 0x10407d3

    const/4 v7, 0x1

    .line 293
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_RemoveToastDuringStkRefresh"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 294
    const-string v5, "Do not display a toast for SIM Refresh"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    const-string v5, "CTC"

    const-string v6, "CMCC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 299
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v5

    if-nez v5, :cond_2

    .line 300
    const-string v5, "send refresh intent for cdma"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 301
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.UtkRefresh"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 306
    :cond_2
    const-string v5, "BV"

    const-string v6, "CMCC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->isChnOpenProject()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 309
    const-string v5, "ril.ICC_TYPE"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "mSimIccType":Ljava/lang/String;
    const-string v5, "3"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "4"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 311
    :cond_3
    const-string v5, "send refresh intent for cdmaicctype"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 312
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.UtkRefresh"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 318
    .end local v0    # "mSimIccType":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 319
    .local v3, "pm":Landroid/os/PowerManager;
    const-string v5, "STKService"

    invoke-virtual {v3, v7, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 320
    .local v1, "mWakeLock":Landroid/os/PowerManager$WakeLock;
    const v4, 0xfde8

    .line 321
    .local v4, "wakeLockTimeout":I
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_5

    .line 322
    int-to-long v5, v4

    invoke-virtual {v1, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 325
    :cond_5
    const/4 v2, 0x0

    .line 326
    .local v2, "message":Ljava/lang/String;
    iget v5, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-ne v5, v7, :cond_6

    .line 327
    new-instance v2, Ljava/lang/String;

    .end local v2    # "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 336
    .restart local v2    # "message":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 328
    :cond_6
    iget v5, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 329
    new-instance v2, Ljava/lang/String;

    .end local v2    # "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const v6, 0x10407d4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_1

    .line 330
    :cond_7
    iget v5, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-nez v5, :cond_0

    .line 331
    new-instance v2, Ljava/lang/String;

    .end local v2    # "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->updateFlag:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/uicc/UiccController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->updateFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->onIccSwap(Z)V

    return-void
.end method

.method static synthetic access$300()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/UiccController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 166
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v1

    aget-object v1, v0, v1

    monitor-enter v1

    .line 167
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v2

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "UiccController.getInstance can\'t be called before make()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 171
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->setCurrentPhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 172
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v2

    aget-object v0, v0, v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 6
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 341
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v1, :cond_1

    .line 342
    const-string v1, "handleSimRefresh(): mUiccCard == null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    if-nez p1, :cond_2

    .line 345
    const-string v1, "handleSimRefresh(): received without input"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->CancelNotification()V

    .line 350
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->LaunchSimRefreshMessage(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    .line 352
    iget v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 353
    const-string v1, "handleSimRefresh SIM refresh reset"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/PhoneBase;->setStkRefreshSimRestEnable(Z)Z

    .line 359
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 360
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/PhoneBase;->setSimPower(ZLandroid/os/Message;)V

    .line 361
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getStkRefreshSimRestEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 362
    const-string v1, "Set StkRefreshRestEnable to true"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    .line 372
    :cond_3
    const-string v1, "CTC"

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 373
    const-string v1, "send StkRefreshReset to stk app"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 374
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.StkRefreshReset"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 379
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 380
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    goto :goto_0
.end method

.method private isChnOpenProject()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isChnOpenProject : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OPEN"

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CHN"

    const-string v2, "CHN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 275
    const-string v0, "OPEN"

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CHN"

    const-string v1, "CHN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 437
    const-string v0, "UiccController"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 581
    const-string v0, "UiccController"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 585
    const-string v0, "UiccController"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 586
    return-void
.end method

.method public static make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    return-object v0
.end method

.method public static make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "simSlot"    # I

    .prologue
    .line 156
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:[Ljava/lang/Object;

    aget-object v1, v0, p2

    monitor-enter v1

    .line 157
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "UiccController.make() should only be called once"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 160
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v2, Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v2, v0, p2

    .line 161
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    aget-object v0, v0, p2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 400
    const-string v1, "UiccController"

    const-string v2, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :goto_0
    monitor-exit p0

    return-void

    .line 406
    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 408
    .local v0, "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v1, :cond_2

    .line 411
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v1, :cond_1

    .line 412
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "onGetIccCardStatusDone : mCurrentPhone is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    .end local v0    # "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 415
    .restart local v0    # "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :cond_1
    :try_start_2
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 427
    :goto_1
    const-string v1, "Notifying IccChangedRegistrants"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 428
    const-string v1, "Combination"

    const-string v2, "Combination"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 430
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 419
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v1, :cond_3

    .line 420
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "onGetIccCardStatusDone : mCurrentPhone is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/PhoneBase;)V

    goto :goto_1

    .line 432
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private onIccSwap(Z)V
    .locals 13
    .param p1, "isAdded"    # Z

    .prologue
    .line 493
    sget-object v11, Lcom/android/internal/telephony/uicc/UiccController;->mLock:[Ljava/lang/Object;

    monitor-enter v11

    .line 498
    const/4 v4, 0x0

    .line 514
    .local v4, "listener":Landroid/content/DialogInterface$OnClickListener;
    :try_start_0
    new-instance v5, Lcom/android/internal/telephony/uicc/UiccController$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/uicc/UiccController$1;-><init>(Lcom/android/internal/telephony/uicc/UiccController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    .end local v4    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .local v5, "listener":Landroid/content/DialogInterface$OnClickListener;
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccSwapDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_0

    .line 535
    const-string v10, "already icc swap dialog showing, dissmiss dialog"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 536
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccSwapDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->dismiss()V

    .line 539
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 544
    .local v7, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_2

    const v10, 0x1040717

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 546
    .local v9, "title":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_3

    const v10, 0x1040718

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 548
    .local v6, "message":Ljava/lang/String;
    :goto_1
    const v10, 0x1040719

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, "buttonPositive":Ljava/lang/String;
    const/high16 v10, 0x1040000

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "buttonNegative":Ljava/lang/String;
    const/4 v8, 0x4

    .line 555
    .local v8, "theme":I
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v12, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 561
    .local v3, "iccSwapBuilder":Landroid/app/AlertDialog$Builder;
    const-string v10, "SPR-CDMA"

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 562
    invoke-virtual {v3, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 565
    :cond_1
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccSwapDialog:Landroid/app/AlertDialog;

    .line 568
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccSwapDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v12, 0x7d9

    invoke-virtual {v10, v12}, Landroid/view/Window;->setType(I)V

    .line 569
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccSwapDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Landroid/view/Window;->addFlags(I)V

    .line 570
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccSwapDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/high16 v12, 0x200000

    invoke-virtual {v10, v12}, Landroid/view/Window;->addFlags(I)V

    .line 572
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccSwapDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 573
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v10, 0x10

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 574
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccSwapDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 576
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccSwapDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 577
    monitor-exit v11

    .line 578
    return-void

    .line 544
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "buttonNegative":Ljava/lang/String;
    .end local v2    # "buttonPositive":Ljava/lang/String;
    .end local v3    # "iccSwapBuilder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "message":Ljava/lang/String;
    .end local v8    # "theme":I
    .end local v9    # "title":Ljava/lang/String;
    :cond_2
    const v10, 0x1040714

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 546
    .restart local v9    # "title":Ljava/lang/String;
    :cond_3
    const v10, 0x1040715

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    goto/16 :goto_1

    .line 577
    .end local v5    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v9    # "title":Ljava/lang/String;
    .restart local v4    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :catchall_0
    move-exception v10

    :goto_2
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .end local v4    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v5    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v4    # "listener":Landroid/content/DialogInterface$OnClickListener;
    goto :goto_2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiccController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mInstance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccCard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccChangedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIccChangedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 452
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 453
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 456
    :cond_1
    return-void
.end method

.method public getIccFileHandler(I)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3
    .param p1, "family"    # I

    .prologue
    .line 215
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v2

    aget-object v2, v1, v2

    monitor-enter v2

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 218
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    monitor-exit v2

    .line 222
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 3
    .param p1, "family"    # I

    .prologue
    .line 202
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v2

    aget-object v2, v1, v2

    monitor-enter v2

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 205
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    monitor-exit v2

    .line 209
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v1

    aget-object v1, v0, v1

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    monitor-exit v1

    return-object v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .param p1, "family"    # I

    .prologue
    .line 192
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v1

    aget-object v1, v0, v1

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    monitor-exit v1

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 245
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v2

    aget-object v2, v1, v2

    monitor-enter v2

    .line 246
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 247
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received msg("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") exception("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 251
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 265
    const-string v1, "UiccController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unknown Event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_0
    monitor-exit v2

    .line 268
    return-void

    .line 253
    :pswitch_0
    const-string v1, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_0

    .line 267
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 257
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    :try_start_1
    const-string v1, "Received EVENT_GET_ICC_STATUS_DONE"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 261
    :pswitch_2
    const-string v1, "Received EVENT_SIM_REFRESH"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 262
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 228
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v2

    aget-object v2, v1, v2

    monitor-enter v2

    .line 229
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 230
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 233
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 234
    monitor-exit v2

    .line 235
    return-void

    .line 234
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCurrentPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 487
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v1

    aget-object v1, v0, v1

    monitor-enter v1

    .line 488
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 489
    monitor-exit v1

    .line 490
    return-void

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForIccChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 238
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v1

    aget-object v1, v0, v1

    monitor-enter v1

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 240
    monitor-exit v1

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
