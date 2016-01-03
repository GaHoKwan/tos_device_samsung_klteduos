.class public Lcom/android/server/cover/CoverManagerService;
.super Lcom/samsung/android/cover/ICoverManager$Stub;
.source "CoverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverManagerService$DisableRecord;,
        Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;,
        Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;
    }
.end annotation


# static fields
.field private static BOOSTING_TIMEOUT:I = 0x0

.field private static final DEBUG:Z = true

.field private static final MSG_DISABLE_COVER_MANAGER:I = 0x6

.field private static final MSG_DISABLE_PARTIAL_DISP:I = 0xa

.field private static final MSG_ENABLE_PARTIAL_DISP:I = 0x9

.field private static final MSG_HIDE_SVIEW_COVER:I = 0x3

.field private static final MSG_SEND_COVER_ATTACH_STATE:I = 0x2

.field private static final MSG_SEND_COVER_STATE:I = 0x0

.field private static final MSG_SEND_COVER_SWITCH_STATE:I = 0x1

.field private static final MSG_SHOW_SVIEW_COVER:I = 0x4

.field private static final MSG_START_FREEZE_SCREEN:I = 0x7

.field private static final MSG_STOP_FREEZE_SCREEN:I = 0x8

.field private static final MSG_UPDATE_SVIEW_COVER_STATE:I = 0x5

.field private static final PATH_FILE_COVER_COLOR:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_color"

.field private static final PATH_FILE_COVER_TYPE:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_id"

.field private static final PATH_FILE_COVER_VERIFY:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_verify_mac"

.field private static final PATH_FILE_COVER_VERIFY_FAKE:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_cf"

.field private static final PATH_FILE_PARTIAL_DISP:Ljava/lang/String; = "/sys/class/lcd/panel/partial_disp"

.field private static final SAFE_DEBUG:Z

.field private static final SERVICE_VERSION:I = 0x1010000

.field private static final TAG:Ljava/lang/String; = "CoverManager"

.field public static final TYPE_COVER_STATE_LISTENER:I = 0x2

.field public static final TYPE_STATE_LISTENER:I = 0x1

.field private static mCoreNumLockHelper:Landroid/os/DVFSHelper;

.field private static mCpuBooster:Landroid/os/DVFSHelper;

.field private static sIsDeviceSupportVerityCover:Z

.field private static sIsDeviceSupportVerityCoverQueried:Z

.field private static sIsSupportFlipCover:Z

.field private static sIsSupportMiniSViewCoverTestMode:Z

.field private static sIsSupportSViewCover:Z

.field private static sIsSupportSViewCoverTestMode:Z

.field private static sIsSystemFeatureQueried:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field mCoverManagerDisabled:Z

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mDefaultCoverColor:I

.field private mDefaultCoverType:I

.field private mDefaultMiniSViewCoverHeight:I

.field private mDefaultMiniSViewCoverWidth:I

.field private mDefaultSViewCoverHeight:I

.field private mDefaultSViewCoverWidth:I

.field private mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/CoverManagerService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

.field private mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private mIsCoverVerified:Z

.field private mIsCoverVerifiedAndAttached:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

.field private mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

.field private mSendCoverStateWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mThread:Landroid/os/HandlerThread;

.field private mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    .line 119
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCoverQueried:Z

    .line 120
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCover:Z

    .line 122
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSystemFeatureQueried:Z

    .line 123
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    .line 124
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    .line 125
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCoverTestMode:Z

    .line 126
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportMiniSViewCoverTestMode:Z

    .line 877
    sput-object v3, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 878
    sput-object v3, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 879
    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/cover/CoverManagerService;->BOOSTING_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;-><init>()V

    .line 109
    iput v3, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    .line 110
    iput v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverColor:I

    .line 111
    iput v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverWidth:I

    .line 112
    iput v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverHeight:I

    .line 113
    iput v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverWidth:I

    .line 114
    iput v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverHeight:I

    .line 116
    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLock:Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 132
    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerDisabled:Z

    .line 135
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    .line 136
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 137
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 139
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cover"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    .line 140
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 141
    new-instance v0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;-><init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    .line 142
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    new-instance v1, Lcom/android/server/cover/CoverManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/cover/CoverManagerService$1;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    .line 152
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->updateSystemFeature(Landroid/content/Context;)V

    .line 154
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "show sviewcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 156
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "hide sviewcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 159
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "update sviewcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 162
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "disable covermanager"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 165
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "send coverstate"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 168
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "send coverswitchstate"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 171
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "send coverattachstate"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 174
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 177
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->initializeDefaultCoverState()V

    .line 179
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    .line 182
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/CoverState;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "x2"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/CoverManagerService;->handleSendCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/cover/CoverManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->handleSendCoverAttachState(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/cover/CoverManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/cover/CoverManagerService;ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerService;->disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->handleHideSViewCover()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->handleShowSViewCover()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->handleUpdateSViewCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/cover/CoverManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->handleDisableCoverManagerLocked(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->handleStartFreezeScreen()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->handleStopFreezeScreen()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/cover/CoverManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->handleSetPartialScreen(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/cover/CoverManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 7
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 949
    sget-boolean v4, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "CoverManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disableCoverManagerLocked : disable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 952
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerService;->manageDisableListLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V

    .line 954
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->gatherDisableLocked()Z

    move-result v3

    .line 955
    .local v3, "net":Z
    iget-boolean v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerDisabled:Z

    if-eq v3, v4, :cond_2

    .line 956
    iput-boolean v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerDisabled:Z

    .line 957
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_1

    .line 958
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 960
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 961
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x6

    iput v4, v2, Landroid/os/Message;->what:I

    .line 962
    if-eqz p1, :cond_3

    const/4 v4, 0x1

    :goto_0
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 963
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 968
    return-void

    .line 962
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 966
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "net":Z
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private gatherDisableLocked()Z
    .locals 6

    .prologue
    .line 1023
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1024
    .local v0, "N":I
    const/4 v2, 0x0

    .line 1025
    .local v2, "net":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1026
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;

    .line 1027
    .local v4, "rec":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    iget-boolean v2, v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;->disable:Z

    .line 1028
    if-eqz v2, :cond_0

    move v3, v2

    .line 1030
    .end local v2    # "net":Z
    .end local v4    # "rec":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    .local v3, "net":Z
    :goto_1
    return v3

    .line 1025
    .end local v3    # "net":Z
    .restart local v2    # "net":Z
    .restart local v4    # "rec":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "rec":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    :cond_1
    move v3, v2

    .line 1030
    .end local v2    # "net":Z
    .restart local v3    # "net":Z
    goto :goto_1
.end method

.method private getDefaultTypeOfCover()I
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 462
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isDeviceSupportCoverVerify()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 463
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isSViewCoverTestMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v1

    .line 465
    :cond_1
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isMiniSViewCoverTestMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 466
    const/16 v1, 0x63

    goto :goto_0

    :cond_2
    move v1, v2

    .line 468
    goto :goto_0

    .line 471
    :cond_3
    const-string v4, "ro.build.characteristics"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string/jumbo v4, "tablet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 473
    sget-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    if-eqz v1, :cond_5

    move v1, v3

    .line 474
    goto :goto_0

    .line 477
    :cond_4
    sget-boolean v4, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    if-nez v4, :cond_0

    .line 479
    sget-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    if-eqz v1, :cond_5

    move v1, v3

    .line 480
    goto :goto_0

    :cond_5
    move v1, v2

    .line 484
    goto :goto_0
.end method

.method private getSupportSViewCoverHeight(I)I
    .locals 1
    .param p1, "coverType"    # I

    .prologue
    .line 525
    sparse-switch p1, :sswitch_data_0

    .line 534
    const/4 v0, 0x0

    .line 536
    .local v0, "supportSViewCoverHeight":I
    :goto_0
    return v0

    .line 528
    .end local v0    # "supportSViewCoverHeight":I
    :sswitch_0
    iget v0, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverHeight:I

    .line 529
    .restart local v0    # "supportSViewCoverHeight":I
    goto :goto_0

    .line 531
    .end local v0    # "supportSViewCoverHeight":I
    :sswitch_1
    iget v0, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverHeight:I

    .line 532
    .restart local v0    # "supportSViewCoverHeight":I
    goto :goto_0

    .line 525
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x63 -> :sswitch_1
    .end sparse-switch
.end method

.method private getSupportSViewCoverWidth(I)I
    .locals 1
    .param p1, "coverType"    # I

    .prologue
    .line 509
    sparse-switch p1, :sswitch_data_0

    .line 518
    const/4 v0, 0x0

    .line 520
    .local v0, "supportSViewCoverWidth":I
    :goto_0
    return v0

    .line 512
    .end local v0    # "supportSViewCoverWidth":I
    :sswitch_0
    iget v0, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverWidth:I

    .line 513
    .restart local v0    # "supportSViewCoverWidth":I
    goto :goto_0

    .line 515
    .end local v0    # "supportSViewCoverWidth":I
    :sswitch_1
    iget v0, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverWidth:I

    .line 516
    .restart local v0    # "supportSViewCoverWidth":I
    goto :goto_0

    .line 509
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x63 -> :sswitch_1
    .end sparse-switch
.end method

.method private getValueFromSysFS(Ljava/lang/String;I)I
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 824
    move v5, p2

    .line 825
    .local v5, "value":I
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->isFileExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 826
    const/4 v3, 0x0

    .line 828
    .local v3, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    .end local v3    # "reader":Ljava/io/FileReader;
    .local v4, "reader":Ljava/io/FileReader;
    const/16 v6, 0xf

    :try_start_1
    new-array v0, v6, [C

    .line 830
    .local v0, "buf":[C
    invoke-virtual {v4, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    .line 831
    .local v2, "n":I
    if-lez v2, :cond_0

    .line 832
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    add-int/lit8 v8, v2, -0x1

    invoke-direct {v6, v0, v7, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .line 839
    :cond_0
    if-eqz v4, :cond_1

    .line 841
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 848
    .end local v0    # "buf":[C
    .end local v2    # "n":I
    .end local v4    # "reader":Ljava/io/FileReader;
    :cond_1
    :goto_0
    const-string v6, "CoverManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getValueFromSysFS() ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return v5

    .line 834
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 835
    .local v1, "ex":Ljava/io/IOException;
    :goto_1
    move v5, p2

    .line 839
    if-eqz v3, :cond_1

    .line 841
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    goto :goto_0

    .line 842
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v6

    goto :goto_0

    .line 836
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_2
    move-exception v1

    .line 837
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :goto_2
    move v5, p2

    .line 839
    if-eqz v3, :cond_1

    .line 841
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 839
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_2

    .line 841
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 839
    :cond_2
    :goto_4
    throw v6

    .line 842
    :catch_3
    move-exception v7

    goto :goto_4

    .line 839
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .line 836
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .line 834
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private handleDisableCoverManagerLocked(Z)V
    .locals 4
    .param p1, "disable"    # Z

    .prologue
    .line 971
    sget-boolean v1, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    .line 972
    const-string v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDisableCoverManagerLocked : disable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->updateCoverManagerDisableState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    :goto_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 981
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 983
    :cond_1
    return-void

    .line 976
    :catch_0
    move-exception v0

    .line 978
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private handleHideSViewCover()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->onSViewCoverHide()V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 692
    :cond_1
    return-void
.end method

.method private handleSendCoverAttachState(Z)V
    .locals 4
    .param p1, "attached"    # Z

    .prologue
    .line 652
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 653
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    .line 654
    .local v1, "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    invoke-virtual {v1, p1}, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->onCoverAttachStateChanged(Z)V

    goto :goto_0

    .line 656
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 658
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 660
    :cond_1
    return-void
.end method

.method private handleSendCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "switchState"    # Z

    .prologue
    .line 629
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 630
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    .line 631
    .local v1, "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    invoke-virtual {v1, p1}, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V

    .line 632
    invoke-virtual {v1, p2}, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->onCoverSwitchStateChanged(Z)V

    goto :goto_0

    .line 634
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 636
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 638
    :cond_1
    return-void
.end method

.method private declared-synchronized handleSetPartialScreen(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 860
    monitor-enter p0

    :try_start_0
    const-string v2, "0 0"

    .line 861
    .local v2, "parameters":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 862
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 865
    :cond_0
    const-string v3, "CoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parameters="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/lcd/panel/partial_disp"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 869
    .local v1, "out":Ljava/io/BufferedWriter;
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 870
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 874
    .end local v1    # "out":Ljava/io/BufferedWriter;
    :goto_0
    monitor-exit p0

    return-void

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "CoverManager"

    const-string v4, "Failed to write partial_disp"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 860
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "parameters":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private handleShowSViewCover()V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->onSViewCoverShow()V

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 715
    :cond_1
    return-void
.end method

.method private handleStartFreezeScreen()V
    .locals 4

    .prologue
    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    const v2, 0x10a0001

    const/high16 v3, 0x10a0000

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->startFreezingScreen(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :goto_0
    return-void

    .line 751
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private handleStopFreezeScreen()V
    .locals 2

    .prologue
    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->stopFreezingScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :goto_0
    return-void

    .line 760
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private handleUpdateSViewCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 735
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    .line 737
    :cond_1
    new-instance v0, Lcom/android/server/cover/CoverManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverManagerService$2;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    .line 744
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 745
    return-void
.end method

.method private hideSViewCoverLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 676
    const-string v1, "CoverManager"

    const-string v2, "hideLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 680
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 681
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 682
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 683
    return-void
.end method

.method private initializeDefaultCoverState()V
    .locals 5

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 186
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 187
    const v1, 0x105010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverWidth:I

    .line 189
    const v1, 0x105010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverHeight:I

    .line 191
    const v1, 0x1050110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverWidth:I

    .line 193
    const v1, 0x1050111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverHeight:I

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->getDefaultTypeOfCover()I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    .line 197
    new-instance v1, Lcom/samsung/android/cover/CoverState;

    iget v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    iget v3, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    invoke-direct {p0, v3}, Lcom/android/server/cover/CoverManagerService;->getSupportSViewCoverWidth(I)I

    move-result v3

    iget v4, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    invoke-direct {p0, v4}, Lcom/android/server/cover/CoverManagerService;->getSupportSViewCoverHeight(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/cover/CoverState;-><init>(III)V

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 200
    return-void
.end method

.method private isCoverVerfied()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    return v0
.end method

.method private isDeviceSupportCoverVerify()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 496
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCoverQueried:Z

    if-nez v0, :cond_0

    .line 497
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCover:Z

    .line 502
    :goto_0
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCoverQueried:Z

    .line 504
    :cond_0
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCover:Z

    return v0

    .line 500
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCover:Z

    goto :goto_0
.end method

.method private isFileExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 853
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    const/4 v0, 0x1

    .line 856
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMiniSViewCoverTestMode()Z
    .locals 1

    .prologue
    .line 492
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsSupportMiniSViewCoverTestMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSViewCoverTestMode()Z
    .locals 1

    .prologue
    .line 488
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCoverTestMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private manageDisableListLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 9
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 986
    sget-boolean v5, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v5, :cond_0

    .line 987
    const-string v5, "CoverManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "manageDisableList : disable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_0
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 991
    .local v0, "N":I
    const/4 v4, 0x0

    .line 993
    .local v4, "tok":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 994
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cover/CoverManagerService$DisableRecord;

    .line 995
    .local v3, "t":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    iget-object v5, v3, Lcom/android/server/cover/CoverManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v5, p2, :cond_4

    .line 996
    move-object v4, v3

    .line 1000
    .end local v3    # "t":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1001
    :cond_2
    if-eqz v4, :cond_3

    .line 1002
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1003
    iget-object v5, v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v5, v4, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1020
    :cond_3
    :goto_1
    return-void

    .line 993
    .restart local v3    # "t":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1006
    .end local v3    # "t":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    :cond_5
    if-nez v4, :cond_6

    .line 1007
    new-instance v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;

    .end local v4    # "tok":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/cover/CoverManagerService$DisableRecord;-><init>(Lcom/android/server/cover/CoverManagerService;Lcom/android/server/cover/CoverManagerService$1;)V

    .line 1009
    .restart local v4    # "tok":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p2, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    :cond_6
    iput-boolean p1, v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;->disable:Z

    .line 1017
    iput-object p2, v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 1018
    iput-object p3, v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;->pkg:Ljava/lang/String;

    goto :goto_1

    .line 1011
    :catch_0
    move-exception v1

    .line 1012
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private performCPUBoostCover()V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    .line 882
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 883
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    const-string v2, "COVER_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 884
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 885
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v8

    .line 886
    .local v8, "supportedCPUFreqTable":[I
    if-eqz v8, :cond_0

    .line 887
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    aget v2, v8, v9

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 890
    .end local v8    # "supportedCPUFreqTable":[I
    :cond_0
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 892
    :try_start_0
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/server/cover/CoverManagerService;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    .line 900
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    const-string v2, "COVER_CORE_BOOSTER"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 902
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    .line 903
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .line 904
    .local v6, "coreNumTable":[I
    if-eqz v6, :cond_2

    array-length v0, v6

    if-lez v0, :cond_2

    .line 905
    aget v0, v6, v9

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 906
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 910
    .end local v6    # "coreNumTable":[I
    :cond_2
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    .line 912
    :try_start_1
    const-string v0, "CoverManager"

    const-string v1, "mCoreNumLockHelper.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/server/cover/CoverManagerService;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 919
    :cond_3
    :goto_1
    return-void

    .line 893
    :catch_0
    move-exception v7

    .line 894
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "CoverManager"

    const-string v1, "mCpuBooster.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 914
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 915
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "CoverManager"

    const-string v1, "mCoreNumLockHelper.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private sendCoverAttachStateLocked(Z)V
    .locals 3
    .param p1, "attached"    # Z

    .prologue
    .line 641
    const-string v1, "CoverManager"

    const-string v2, "sendCoverAttachStateLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 645
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 646
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 647
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 648
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 649
    return-void

    .line 647
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "switchState"    # Z

    .prologue
    const/4 v1, 0x1

    .line 617
    const-string v2, "CoverManager"

    const-string v3, "sendCoverSwitchStateLocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    .line 619
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 621
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 622
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 623
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 624
    if-eqz p2, :cond_1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 625
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 626
    return-void

    .line 624
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showRuggedizedPopup()V
    .locals 3

    .prologue
    .line 795
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 796
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.popupuireceiver"

    const-string v2, "com.sec.android.app.popupuireceiver.SviewCover"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 798
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 800
    return-void
.end method

.method private showRuggedizedPopup(ZZ)V
    .locals 5
    .param p1, "attached"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    .line 804
    const-string v2, "/sys/bus/w1/devices/w1_bus_master1/w1_master_cf"

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/cover/CoverManagerService;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 805
    .local v1, "verified":Z
    :goto_0
    const-string v2, "CoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showRuggedizedPopup verified ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,attached :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 808
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 809
    const-string v2, "com.sec.android.app.popupuireceiver"

    const-string v3, "com.sec.android.app.popupuireceiver.SviewCover"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    :goto_1
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 813
    const-string v2, "isBoot"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 814
    const-string/jumbo v2, "verified"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 815
    const-string v2, "attached"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 816
    const/high16 v2, 0x34000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 819
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 821
    return-void

    .line 804
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "verified":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 811
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "verified":Z
    :cond_1
    const-string v2, "com.sec.android.app.popupuireceiver"

    const-string v3, "com.sec.android.app.popupuireceiver.SviewCoverFake"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private showSViewCoverLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 699
    const-string v1, "CoverManager"

    const-string/jumbo v2, "showLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 703
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 704
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 705
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 706
    return-void
.end method

.method private updateCoverPropertiesLocked()V
    .locals 6

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isDeviceSupportCoverVerify()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 549
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isSViewCoverTestMode()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isMiniSViewCoverTestMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 550
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    invoke-direct {p0, v4}, Lcom/android/server/cover/CoverManagerService;->updateCoverVerifyAndAttachStateLocked(Z)V

    .line 561
    :goto_0
    return-void

    .line 552
    :cond_1
    const-string v4, "/sys/devices/w1_bus_master1/w1_master_check_id"

    iget v5, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/cover/CoverManagerService;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v2

    .line 553
    .local v2, "type":I
    const-string v4, "/sys/devices/w1_bus_master1/w1_master_check_color"

    iget v5, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverColor:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/cover/CoverManagerService;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v0

    .line 554
    .local v0, "color":I
    invoke-direct {p0, v2}, Lcom/android/server/cover/CoverManagerService;->getSupportSViewCoverWidth(I)I

    move-result v3

    .line 555
    .local v3, "widthPixel":I
    invoke-direct {p0, v2}, Lcom/android/server/cover/CoverManagerService;->getSupportSViewCoverHeight(I)I

    move-result v1

    .line 556
    .local v1, "heightPixel":I
    invoke-direct {p0, v2, v0, v3, v1}, Lcom/android/server/cover/CoverManagerService;->updateCoverStateLocked(IIII)V

    goto :goto_0

    .line 559
    .end local v0    # "color":I
    .end local v1    # "heightPixel":I
    .end local v2    # "type":I
    .end local v3    # "widthPixel":I
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    invoke-direct {p0, v4}, Lcom/android/server/cover/CoverManagerService;->updateCoverVerifyAndAttachStateLocked(Z)V

    goto :goto_0
.end method

.method private updateCoverStateLocked(IIII)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "widthPixel"    # I
    .param p4, "heightPixel"    # I

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/cover/CoverState;->updateCoverState(IIII)V

    .line 609
    return-void
.end method

.method private updateCoverStateLocked(ZIIII)V
    .locals 6
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/cover/CoverState;->updateCoverState(ZIIII)V

    .line 614
    return-void
.end method

.method private updateCoverSwitchStateLocked(Z)V
    .locals 1
    .param p1, "switchState"    # Z

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->setSwitchState(Z)V

    .line 541
    return-void
.end method

.method private updateCoverVerificationLocked(Z)V
    .locals 7
    .param p1, "isBoot"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 568
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isDeviceSupportCoverVerify()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 569
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isSViewCoverTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isMiniSViewCoverTestMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    .line 571
    iput-boolean v1, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    .line 604
    :cond_1
    :goto_0
    return-void

    .line 574
    :cond_2
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/cover/CoverManagerService;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    if-eqz v0, :cond_3

    move v6, v1

    .line 576
    .local v6, "verified":Z
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    if-eq v0, v6, :cond_1

    .line 577
    iput-boolean v6, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    .line 578
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    if-nez v0, :cond_5

    .line 580
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    if-eqz v0, :cond_4

    .line 581
    const-string v0, "CoverManager"

    const-string/jumbo v2, "updateCoverVerificationLocked : Fail cover verification!! send default cover state"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :goto_2
    iget v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    iget v3, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverColor:I

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cover/CoverManagerService;->updateCoverStateLocked(ZIIII)V

    .line 589
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0, p1}, Lcom/android/server/cover/CoverManagerService;->updateSViewCoverLocked(Lcom/samsung/android/cover/CoverState;Z)V

    .line 590
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V

    .line 591
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    .end local v6    # "verified":Z
    :cond_3
    move v6, v4

    .line 574
    goto :goto_1

    .line 584
    .restart local v6    # "verified":Z
    :cond_4
    const-string v0, "CoverManager"

    const-string/jumbo v2, "updateCoverVerificationLocked : Cover detached !! send default cover state"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 593
    :cond_5
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->updateCoverPropertiesLocked()V

    goto :goto_0

    .line 598
    .end local v6    # "verified":Z
    :cond_6
    const-string v0, "CoverManager"

    const-string/jumbo v2, "updateCoverVerificationLocked : This device is not support cover verification"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iput-boolean v1, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    .line 602
    iput-boolean v1, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    goto :goto_0
.end method

.method private updateCoverVerifyAndAttachStateLocked(Z)V
    .locals 1
    .param p1, "attached"    # Z

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->setAttachState(Z)V

    .line 545
    return-void
.end method

.method private updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V
    .locals 7
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 767
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    .line 768
    .local v0, "isOpen":Z
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    .line 769
    .local v1, "type":I
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/os/PowerManager;->updateCoverState(Z)V

    .line 770
    sget-boolean v2, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    if-eqz v2, :cond_4

    if-eq v1, v3, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/16 v2, 0x63

    if-ne v1, v2, :cond_4

    .line 774
    :cond_0
    if-eqz v0, :cond_3

    .line 775
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 776
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 791
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v4

    .line 769
    goto :goto_0

    .line 779
    :cond_3
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 780
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_1

    .line 783
    :cond_4
    sget-boolean v2, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v2

    if-nez v2, :cond_1

    .line 785
    if-eqz v0, :cond_5

    .line 786
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_1

    .line 788
    :cond_5
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_1
.end method

.method private updateSViewCoverLocked(Lcom/samsung/android/cover/CoverState;Z)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "isBoot"    # Z

    .prologue
    .line 663
    const-string v0, "CoverManager"

    const-string/jumbo v1, "updateSViewCoverLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    if-nez v0, :cond_0

    .line 665
    const-string v0, "CoverManager"

    const-string v1, "Not support S View cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_0
    return-void

    .line 668
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->updateSViewCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0
.end method

.method private updateSViewCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 718
    const-string v1, "CoverManager"

    const-string/jumbo v2, "updateSViewCoverStateLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 722
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 723
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 724
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 725
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 726
    return-void
.end method

.method private updateSystemFeature(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 451
    sget-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSystemFeatureQueried:Z

    if-nez v1, :cond_0

    .line 452
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 453
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    .line 454
    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    .line 455
    const-string v1, "com.sec.feature.cover.sview.testmode"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCoverTestMode:Z

    .line 456
    const-string v1, "com.sec.feature.cover.sview.mini.testmode"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportMiniSViewCoverTestMode:Z

    .line 457
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSystemFeatureQueried:Z

    .line 459
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 3
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 942
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableLocked : disable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 944
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerService;->disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V

    .line 945
    monitor-exit v1

    .line 946
    return-void

    .line 945
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1035
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1037
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1084
    :goto_0
    return-void

    .line 1043
    :cond_0
    const-string v5, "Current Cover Manager state:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1044
    const-string v5, " sIsSupportFlipCover="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 1045
    const-string v5, " sIsSupportSViewCover="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1046
    const-string v5, " isSViewCoverTestMode="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isSViewCoverTestMode()Z

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 1047
    const-string v5, " isMiniSViewCoverTestMode="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isMiniSViewCoverTestMode()Z

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1048
    const-string v5, " mIsCoverVerified="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 1049
    const-string v5, " mIsCoverVerifiedAndAttached="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 1050
    const-string v5, " isDeviceSupportCoverVerify()="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isDeviceSupportCoverVerify()Z

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1051
    const-string v5, " mDefaultCoverType="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1052
    const-string v5, " mDefaultCoverColor="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverColor:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1053
    const-string v5, " mDefaultSViewCoverWidth="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1054
    const-string v5, " mDefaultSViewCoverHeight="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1055
    const-string v5, " mDefaultMiniSViewCoverWidth="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1056
    const-string v5, " mDefaultMiniSViewCoverHeight="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1058
    iget-object v6, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1059
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Live listeners ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "):"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    .line 1061
    .local v3, "info":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    if-eqz v3, :cond_1

    .line 1062
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (pid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->pid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->uid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1067
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1066
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    const-string v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1067
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1069
    iget-object v6, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v6

    .line 1070
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v7}, Lcom/samsung/android/cover/CoverState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1073
    iget-object v6, p0, Lcom/android/server/cover/CoverManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1074
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCoverManagerDisabled="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerDisabled:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1076
    .local v0, "N":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mDisableRecords.size="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 1078
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;

    .line 1079
    .local v4, "tok":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] disable="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;->disable:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " pkg="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " token="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1077
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1071
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "tok":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 1083
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_3
    :try_start_5
    monitor-exit v6

    goto/16 :goto_0

    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 2

    .prologue
    .line 440
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-exit v1

    return-object v0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 447
    const/high16 v0, 0x1010000

    return v0
.end method

.method public isCoverManagerDisabled()Z
    .locals 1

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerDisabled:Z

    return v0
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 329
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/cover/CoverManagerService;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    .line 330
    return-void
.end method

.method public registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    sget-boolean v1, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    .line 336
    const-string v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListenerCallback : binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    iget-object v8, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    .line 343
    .local v0, "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    if-eqz v0, :cond_1

    .line 344
    iget-object v1, v0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    const-string v1, "CoverManager"

    const-string v2, "registerCallback : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    monitor-exit v8

    .line 357
    :goto_0
    return-void

    .line 351
    .end local v0    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    :cond_2
    const/4 v0, 0x0

    .line 352
    .restart local v0    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    new-instance v0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    .end local v0    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;-><init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 354
    .restart local v0    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 355
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    monitor-exit v8

    goto :goto_0

    .end local v0    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 361
    sget-boolean v4, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    .line 362
    const-string v4, "CoverManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterCallback : binder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 367
    const/4 v2, 0x0

    .line 368
    .local v2, "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    .line 369
    .local v1, "l":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    if-eqz v1, :cond_1

    .line 370
    iget-object v5, v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 371
    move-object v2, v1

    .line 377
    .end local v1    # "l":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    :cond_2
    if-nez v2, :cond_3

    .line 378
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterCallback : matching listener is NOT EXIST"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    monitor-exit v4

    .line 390
    :goto_0
    return v3

    .line 382
    :cond_3
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 383
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 385
    :cond_4
    if-eqz v2, :cond_5

    .line 386
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 388
    :cond_5
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 389
    monitor-exit v4

    .line 390
    const/4 v3, 0x1

    goto :goto_0

    .line 389
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public updateCoverSwitchState(ZZ)V
    .locals 4
    .param p1, "switchState"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v1

    .line 396
    if-nez p2, :cond_0

    .line 397
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->performCPUBoostCover()V

    .line 399
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/cover/CoverManagerService;->updateCoverVerificationLocked(Z)V

    .line 400
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isCoverVerfied()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 401
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchStateLocked(Z)V

    .line 402
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V

    .line 403
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0, p2}, Lcom/android/server/cover/CoverManagerService;->updateSViewCoverLocked(Lcom/samsung/android/cover/CoverState;Z)V

    .line 404
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 405
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    .line 406
    const-string v0, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverSwitchState : switchState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v3, v3, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", color = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", widthPixel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", heightPixel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_1
    monitor-exit v1

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateCoverVerfiedState(ZZ)V
    .locals 4
    .param p1, "verified"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    .line 417
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v1

    .line 418
    if-nez p2, :cond_0

    .line 419
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->performCPUBoostCover()V

    .line 421
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    if-eq v0, p1, :cond_1

    .line 422
    iput-boolean p1, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    .line 423
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->updateCoverVerifyAndAttachStateLocked(Z)V

    .line 424
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->sendCoverAttachStateLocked(Z)V

    .line 425
    const-string v0, "CHN"

    const-string v2, "CHN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    invoke-direct {p0, v0, p2}, Lcom/android/server/cover/CoverManagerService;->showRuggedizedPopup(ZZ)V

    .line 430
    :goto_0
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    .line 431
    const-string v0, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverVerfiedState : mIsCoverVerifiedAndAttached = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_1
    monitor-exit v1

    .line 436
    return-void

    .line 428
    :cond_2
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->showRuggedizedPopup()V

    goto :goto_0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
