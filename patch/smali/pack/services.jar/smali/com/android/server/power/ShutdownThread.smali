.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$Led;,
        Lcom/android/server/power/ShutdownThread$Slog;,
        Lcom/android/server/power/ShutdownThread$LogFileWriter;,
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field private static final BIN_TYPE_PRODUCTSHIP:Z

.field private static final BIN_TYPE_USER:Z

.field private static final FORCE_SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.property_forcedshutdown"

.field private static final LedOffValue:I = 0x6

.field private static final LedOnValue:I = 0x6

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_LAST_SHUTDOWNLOG:I = 0x5

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x7530

.field private static final MINIMODE_SLEEP_TIME:I = 0x12c

.field private static final POWER_CONNECTED:I = 0x1

.field private static final POWER_DISCONNECTED:I = 0x0

.field private static final POWER_UNKNOWN:I = 0x2

.field private static final REBOOT_CHARGERMODE_PROPERTY:Ljava/lang/String; = "ro.rebootchargermode"

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final TIMEOUT_EXTENDS_RATIO:I = 0x8

.field private static final TTS_SYSTEM_STEAM_WEIGHT:D = 0.1

.field private static final WITHOUT_SLEEP:Z = false

.field private static final WITH_SLEEP:Z = true

.field private static coverOpen:Z

.field private static final delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static dlgAnim:Lcom/android/server/power/ShutdownDialog;

.field private static mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private static mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static mFake:Z

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static mSilent:Z

.field private static mTts:Landroid/speech/tts/TextToSpeech;

.field private static sConfirmDialog:Landroid/app/Dialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsConfirming:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private mActionDoneMount:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private final mActionDoneSyncMount:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    const-string/jumbo v0, "user"

    const-string v3, "ro.build.type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z

    .line 156
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 161
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 162
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    .line 167
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    .line 168
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mFake:Z

    .line 183
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 184
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 199
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    .line 461
    new-instance v0, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$4;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-void

    :cond_0
    move v0, v2

    .line 156
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 206
    const-string v0, "ShutdownThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public static IsShutDownConfirming()Z
    .locals 1

    .prologue
    .line 1446
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    return v0
.end method

.method public static IsShutDownStarted()Z
    .locals 2

    .prologue
    .line 1433
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_0

    .line 1434
    const-string v0, "ShutdownThread"

    const-string/jumbo v1, "shut down already running , return true"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    const/4 v0, 0x1

    .line 1441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->textToSpeech(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 133
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mFake:Z

    return p0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    return v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$1700()Lcom/android/server/power/ShutdownDialog;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    return-object v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z

    return v0
.end method

.method static synthetic access$1900()Landroid/speech/tts/TextToSpeech;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 133
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    return p0
.end method

.method static synthetic access$300()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->restoreMiniModeBarAndSleep(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$500()Lcom/samsung/android/cover/CoverManager$StateListener;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 133
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    return p0
.end method

.method static synthetic access$800()Lcom/android/server/power/ShutdownThread;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 658
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 659
    :try_start_0
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v6, :cond_0

    .line 660
    const-string v4, "ShutdownThread"

    const-string v6, "!@Shutdown sequence already running, returning."

    invoke-static {v4, v6}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    monitor-exit v5

    .line 751
    :goto_0
    return-void

    .line 663
    :cond_0
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 664
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->startState()V

    .line 666
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->openLogFileWriter()V

    .line 667
    const-string v5, "ShutdownThread"

    const-string v6, "!@beginShutdownSequence"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->setInputKeysDisable(Z)V

    .line 674
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 676
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 677
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    if-eqz p1, :cond_2

    move v3, v4

    .line 679
    .local v3, "powerofftriggered":I
    :cond_2
    const-string v5, "powerofftriggered"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 682
    const-string v5, "isShutDownForRCS"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 684
    :cond_3
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 688
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "powerofftriggered":I
    :cond_4
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 689
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 692
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sput-object v7, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 694
    :try_start_1
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    const-string v6, "ShutdownThread-cpu"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 696
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 697
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 703
    :goto_1
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 705
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string/jumbo v4, "shutdown"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sput-object v7, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 709
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    if-nez v4, :cond_5

    .line 711
    :try_start_2
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v5, 0x1a

    const-string v6, "ShutdownThread-screen"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 713
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 714
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 747
    :cond_5
    :goto_2
    const-string v4, "ShutdownThread"

    const-string v5, "!@normal"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startShutdownDialog(Landroid/content/Context;)V

    .line 749
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->startShutdownThread()V

    goto/16 :goto_0

    .line 664
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 698
    :catch_0
    move-exception v1

    .line 699
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v4, "ShutdownThread"

    const-string v5, "!@No permission to acquire wake lock"

    invoke-static {v4, v5, v1}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 700
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sput-object v7, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    .line 715
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :catch_1
    move-exception v1

    .line 716
    .restart local v1    # "e":Ljava/lang/SecurityException;
    const-string v4, "ShutdownThread"

    const-string v5, "!@No permission to acquire wake lock"

    invoke-static {v4, v5, v1}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 717
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sput-object v7, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2
.end method

.method private static blackMiniModeBar(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 513
    const-wide/16 v1, 0x12c

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    invoke-static {p0, v3, v3}, Lcom/android/server/power/ShutdownThread;->sendMiniModeUiIntent(Landroid/content/Context;ZZ)V

    .line 518
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ShutdownThread"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method public static canGlobalActionsShow()Z
    .locals 1

    .prologue
    .line 1427
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownConfirming()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkNeedToCheckTA(Landroid/content/Context;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v1, 0x0

    .line 754
    const-string v2, "AutoPowerOff"

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 755
    .local v0, "autoPowerOff":Z
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 764
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static createConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "titleText"    # I
    .param p2, "bodyText"    # I

    .prologue
    const v12, 0x1040009

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 379
    new-instance v1, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 380
    .local v1, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sput-boolean v11, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    .line 381
    new-instance v3, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v3, p0}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 382
    .local v3, "coverManager":Lcom/samsung/android/cover/CoverManager;
    if-eqz v3, :cond_0

    .line 383
    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->getSCoverState(Lcom/samsung/android/cover/CoverManager;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    .line 384
    sget-object v8, Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v3, v8}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 388
    :cond_0
    const-string v8, "VZW"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v8, :cond_3

    .line 389
    const v7, 0x1040b10

    .line 394
    .local v7, "positiveTextId":I
    :goto_0
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-eqz v8, :cond_5

    .line 396
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 397
    .local v5, "dlgBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v5, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 398
    invoke-virtual {v5, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 399
    new-instance v8, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v8, p0}, Lcom/android/server/power/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 406
    new-instance v8, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v8}, Lcom/android/server/power/ShutdownThread$2;-><init>()V

    invoke-virtual {v5, v12, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 412
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 413
    .local v4, "dlg":Landroid/app/Dialog;
    const-string v8, "keyguard"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    .line 414
    .local v6, "kgm":Landroid/app/KeyguardManager;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v8, :cond_4

    .line 415
    :cond_2
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 455
    .end local v5    # "dlgBuilder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "kgm":Landroid/app/KeyguardManager;
    :goto_1
    iput-object v4, v1, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 456
    invoke-virtual {v4, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 458
    return-object v4

    .line 391
    .end local v4    # "dlg":Landroid/app/Dialog;
    .end local v7    # "positiveTextId":I
    :cond_3
    const v7, 0x1040013

    .restart local v7    # "positiveTextId":I
    goto :goto_0

    .line 418
    .restart local v4    # "dlg":Landroid/app/Dialog;
    .restart local v5    # "dlgBuilder":Landroid/app/AlertDialog$Builder;
    .restart local v6    # "kgm":Landroid/app/KeyguardManager;
    :cond_4
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d8

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    .line 423
    .end local v4    # "dlg":Landroid/app/Dialog;
    .end local v5    # "dlgBuilder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "kgm":Landroid/app/KeyguardManager;
    :cond_5
    new-instance v5, Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 425
    .local v5, "dlgBuilder":Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    invoke-virtual {v5, p2}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    .line 426
    invoke-virtual {v5, p1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    .line 427
    new-instance v8, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v8, p0}, Lcom/android/server/power/ShutdownThread$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    .line 435
    invoke-virtual {v5, v12, v1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    .line 437
    invoke-virtual {v5}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->create()Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v2

    .line 439
    .local v2, "coverDlg":Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-virtual {v2}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x833

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 441
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110011

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 443
    invoke-virtual {v2}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 446
    :cond_6
    invoke-virtual {v2}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 448
    .local v0, "attr":Landroid/view/WindowManager$LayoutParams;
    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 449
    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 450
    invoke-virtual {v2}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 451
    invoke-virtual {v2, v10}, Landroid/app/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    .line 452
    move-object v4, v2

    .restart local v4    # "dlg":Landroid/app/Dialog;
    goto :goto_1
.end method

.method private static deviceRebootOrShutdown(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 10
    .param p0, "deviceShutdownClassName"    # Ljava/lang/String;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1387
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 1390
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v6, "rebootOrShutdown"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1391
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1406
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 1392
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 1393
    .local v2, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_2
    const-string v4, "ShutdownThread"

    const-string v6, "!@call method fail rebootOrShutdown"

    invoke-static {v4, v6, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    move v4, v5

    .line 1394
    goto :goto_0

    .line 1395
    .end local v2    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 1396
    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "ShutdownThread"

    const-string v6, "!@unchecked exception raised"

    invoke-static {v4, v6, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move v4, v5

    .line 1397
    goto :goto_0

    .line 1399
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1400
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "ShutdownThread"

    const-string v6, "!@can\'t found class"

    invoke-static {v4, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1401
    goto :goto_0

    .line 1402
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v1

    .line 1403
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ShutdownThread"

    const-string v6, "!@unchecked exception raised"

    invoke-static {v4, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1404
    goto :goto_0
.end method

.method public static enableShutdownAgain()V
    .locals 2

    .prologue
    .line 1515
    const-string v0, "ShutdownThread"

    const-string v1, "!@enable calling shutdown again"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 1517
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 1518
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 1519
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 1520
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    .line 1521
    monitor-exit v1

    .line 1522
    return-void

    .line 1521
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static fakeShutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 584
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 585
    :try_start_0
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_0

    .line 586
    const-string v1, "ShutdownThread"

    const-string v3, "!@fakeShutdown : shut down already running."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    monitor-exit v2

    .line 619
    :goto_0
    return-void

    .line 589
    :cond_0
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->fakeState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    const-string v1, "ShutdownThread"

    const-string v3, "!@fakeShutdown : fakeshutdown already done"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    monitor-exit v2

    goto :goto_0

    .line 593
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 599
    if-nez p2, :cond_2

    .line 600
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sput-object v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 602
    :try_start_2
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "ShutdownThread-cpu"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 604
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 605
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 612
    :cond_2
    :goto_1
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 613
    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reboot reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 615
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 616
    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->mFake:Z

    .line 618
    invoke-static {p0, p2, v4}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "ShutdownThread"

    const-string v2, "!@No permission to acquire wake lock"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 608
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sput-object v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1
.end method

.method private static getReasonforshutdownFileName()Ljava/io/File;
    .locals 11

    .prologue
    const/16 v10, 0x1b0

    const/4 v9, -0x1

    .line 1477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/log/power_off_reset_reason.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1480
    .local v2, "logFilename":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/log/power_off_reset_reason_backup.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1484
    .local v1, "logBackupFileName":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1485
    .local v0, "fname":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1487
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x2800

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 1488
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1489
    .local v3, "mBackupfname":Ljava/io/File;
    const-string v5, "ShutdownThread"

    const-string v6, "The size of power_off_reset_reason.txt is over than 10KB. Rename to power_off_reset_reason_backup.txt for backup."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1492
    const-string v5, "ShutdownThread"

    const-string v6, "power_off_reset_reason_backup.txt file is already exist. So, delete it."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1494
    const-string v5, "ShutdownThread"

    const-string v6, "power_off_reset_reason_backup.txt delete fail"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    .end local v0    # "fname":Ljava/io/File;
    .end local v3    # "mBackupfname":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 1499
    .restart local v0    # "fname":Ljava/io/File;
    .restart local v3    # "mBackupfname":Ljava/io/File;
    :cond_1
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1500
    const-string v5, "ShutdownThread"

    const-string v6, "rename to power_off_reset_reason_backup.txt"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1502
    .local v4, "new_fname":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1503
    const-string v5, "ShutdownThread"

    const-string v6, "power_off_reset_reason.txt is re-created."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 1504
    goto :goto_0

    .line 1506
    .end local v4    # "new_fname":Ljava/io/File;
    :cond_2
    const-string v5, "ShutdownThread"

    const-string v6, "rename to power_off_reset_reason_backup.txt fail"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSCoverState(Lcom/samsung/android/cover/CoverManager;)Z
    .locals 3
    .param p0, "cm"    # Lcom/samsung/android/cover/CoverManager;

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 368
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-nez v0, :cond_0

    .line 369
    const-string v1, "ShutdownThread"

    const-string/jumbo v2, "state is null "

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v1, 0x1

    .line 372
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    goto :goto_0
.end method

.method private isPoweredPlugged()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1001
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1002
    .local v0, "f":Landroid/content/IntentFilter;
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 1003
    .local v1, "i":Landroid/content/Intent;
    const-string v4, "plugged"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1004
    .local v2, "state":I
    if-ne v2, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1924
    const/16 v1, 0x3a

    .line 1925
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 1927
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x3a

    invoke-direct {v7, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1930
    .local v7, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1933
    .local v6, "enabledServicesSetting":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1934
    const-string v6, ""

    .line 1937
    :cond_0
    move-object v2, v7

    .line 1938
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1939
    :cond_1
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1940
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 1941
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 1943
    .local v5, "enabledService":Landroid/content/ComponentName;
    if-eqz v5, :cond_1

    .line 1944
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1945
    .local v4, "enabledPackage":Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v8, "com.google.android.marvin.talkback"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1947
    const/4 v8, 0x1

    .line 1951
    .end local v3    # "componentNameString":Ljava/lang/String;
    .end local v4    # "enabledPackage":Ljava/lang/String;
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    :goto_0
    return v8

    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v3, 0x0

    .line 551
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    :goto_0
    return-void

    .line 554
    :cond_0
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reboot reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 556
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 557
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 558
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mFake:Z

    .line 559
    invoke-static {p0, p2, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 7
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1331
    const-string v5, "ShutdownThread"

    const-string v6, "!@call oem shutdown..."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    const-string v5, "ro.baseband"

    const-string/jumbo v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1334
    .local v0, "baseband":Ljava/lang/String;
    const-string v5, "mdm2"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1335
    const-string v5, "ShutdownThread"

    const-string v6, "Temporarily skip OemSutdown for APQ8084"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "!@"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1346
    .local v3, "reasonLogString":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_3

    const-string v5, "reboot : "

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    if-nez p1, :cond_4

    const-string v5, "null"

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    const-string v5, "ShutdownThread"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->waitIfTimeoutDumpWorking()V

    .line 1352
    if-eqz p0, :cond_5

    .line 1353
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->closeLogFileWriter()V

    .line 1355
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1377
    :cond_1
    :goto_3
    const-string v5, "ShutdownThread"

    const-string v6, "!@Performing low-level shutdown..."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->closeLogFileWriter()V

    .line 1379
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    .line 1380
    return-void

    .line 1337
    .end local v3    # "reasonLogString":Ljava/lang/StringBuilder;
    :cond_2
    const-string v1, "com.android.server.power.ShutdownOem"

    .line 1338
    .local v1, "className":Ljava/lang/String;
    invoke-static {v1, p0, p1}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1339
    const-string v1, "com.qti.server.power.ShutdownOem"

    .line 1340
    invoke-static {v1, p0, p1}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(Ljava/lang/String;ZLjava/lang/String;)Z

    goto :goto_0

    .line 1346
    .end local v1    # "className":Ljava/lang/String;
    .restart local v3    # "reasonLogString":Ljava/lang/StringBuilder;
    :cond_3
    const-string/jumbo v5, "shutdown : "

    goto :goto_1

    :cond_4
    move-object v5, p1

    .line 1347
    goto :goto_2

    .line 1356
    :catch_0
    move-exception v2

    .line 1357
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "ShutdownThread"

    const-string v6, "!@Reboot failed, will attempt shutdown instead"

    invoke-static {v5, v6, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_3

    .line 1359
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    if-nez v5, :cond_1

    .line 1361
    new-instance v4, Landroid/os/SystemVibrator;

    invoke-direct {v4}, Landroid/os/SystemVibrator;-><init>()V

    .line 1363
    .local v4, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v5, 0x1f4

    :try_start_1
    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1371
    :goto_4
    const-wide/16 v5, 0x1f4

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 1372
    :catch_1
    move-exception v5

    goto :goto_3

    .line 1364
    :catch_2
    move-exception v2

    .line 1366
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "ShutdownThread"

    const-string v6, "!@Failed to vibrate during shutdown."

    invoke-static {v5, v6, v2}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_4
.end method

.method public static rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 636
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    :goto_0
    return-void

    .line 641
    :cond_0
    const-string v1, "enterprise_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 643
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isSafeModeAllowed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 644
    const-string v1, "ShutdownThread"

    const-string v2, "SAFE MODE is not allowed"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 649
    :cond_1
    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reboot safe reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", confirm : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 651
    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 652
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 653
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mFake:Z

    .line 654
    invoke-static {p0, p2, v4}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    .line 629
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    :goto_0
    return-void

    .line 632
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static releaseWakeLocks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1525
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1526
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1527
    sput-object v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1529
    :cond_0
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 1530
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1531
    sput-object v1, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1533
    :cond_1
    return-void
.end method

.method private static restoreMiniModeBarAndSleep(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sleep"    # Z

    .prologue
    const/4 v1, 0x0

    .line 521
    invoke-static {p0, v1, v1}, Lcom/android/server/power/ShutdownThread;->sendMiniModeUiIntent(Landroid/content/Context;ZZ)V

    .line 522
    if-eqz p1, :cond_0

    .line 524
    const-wide/16 v1, 0x12c

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ShutdownThread"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method public static saveReasonforshutdown(Ljava/lang/Exception;)V
    .locals 10
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 1450
    const-string v7, "ShutdownThread"

    const-string v8, "ShutdownThread.saveReasonforshutdown"

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getReasonforshutdownFileName()Ljava/io/File;

    move-result-object v2

    .line 1452
    .local v2, "fname":Ljava/io/File;
    const/4 v4, 0x0

    .line 1454
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v5, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1455
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1456
    .local v6, "pw":Ljava/io/PrintWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yy/MM/dd HH:mm:ss"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1457
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1458
    .local v0, "dateString":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {p0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1461
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 1462
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1466
    if-eqz v5, :cond_0

    .line 1468
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v4, v5

    .line 1474
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 1466
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v4, :cond_2

    .line 1468
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1466
    :cond_2
    :goto_3
    throw v7

    .line 1463
    :catch_0
    move-exception v7

    .line 1466
    :goto_4
    if-eqz v4, :cond_1

    .line 1468
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1469
    :catch_1
    move-exception v1

    .line 1470
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1469
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 1470
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1469
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "dateString":Ljava/lang/String;
    .restart local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    :catch_3
    move-exception v1

    .line 1470
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1466
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1463
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method private static sendMiniModeUiIntent(Landroid/content/Context;ZZ)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "suppressCoverUI"    # Z
    .param p2, "miniModeUI"    # Z

    .prologue
    .line 533
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 534
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 536
    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 537
    const-string v1, "sender"

    const-string v2, "ShutdownThread"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 539
    return-void
.end method

.method static setInputKeysDisable(Z)V
    .locals 5
    .param p0, "bool"    # Z

    .prologue
    .line 1908
    const-string v2, "input"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    .line 1910
    .local v1, "im":Landroid/hardware/input/IInputManager;
    if-nez v1, :cond_0

    .line 1911
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceManager.checkService fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :goto_0
    return-void

    .line 1915
    :cond_0
    :try_start_0
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStartedShutdown to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    invoke-interface {v1, p0}, Landroid/hardware/input/IInputManager;->setStartedShutdown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1917
    :catch_0
    move-exception v0

    .line 1918
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "error occur while input disable"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x0

    .line 232
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mFake:Z

    .line 233
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 234
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 235
    invoke-static {p0, p1, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    .line 236
    return-void
.end method

.method public static shutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 220
    sput-object p2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 221
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 222
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;ZZ)V
    .locals 13
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "confirm"    # Z
    .param p2, "systemRequest"    # Z

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 255
    sget-object v9, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v9

    .line 256
    :try_start_0
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v8, :cond_1

    .line 257
    const-string v8, "ShutdownThread"

    const-string v10, "!@Request to shutdown already running, returning."

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    monitor-exit v9

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    if-eqz v8, :cond_2

    if-eqz p1, :cond_2

    .line 262
    const-string v8, "ShutdownThread"

    const-string v10, "!@duplicate shutdown confirm dialog request."

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    monitor-exit v9

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 265
    :cond_2
    const/4 v8, 0x1

    :try_start_1
    sput-boolean v8, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :try_start_2
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 271
    :cond_3
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v5

    .line 272
    .local v5, "rp":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v5, :cond_4

    .line 273
    if-nez p2, :cond_4

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/sec/enterprise/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    move-result v8

    if-nez v8, :cond_4

    .line 274
    const-string v8, "ShutdownThread"

    const-string v10, "Shutdown Disabled by Administrator"

    invoke-static {v8, v10}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    :try_start_3
    monitor-exit v9

    goto :goto_0

    .line 280
    .end local v5    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :catch_0
    move-exception v8

    .line 283
    :cond_4
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 289
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v8, 0x1030128

    invoke-direct {v1, p0, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 296
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Ljava/lang/Exception;

    const-string v8, "It is not an exception!! just save the trace for process which called shutdown thread!! ShutdownThread.shutdown"

    invoke-direct {v3, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 297
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->saveReasonforshutdown(Ljava/lang/Exception;)V

    .line 299
    if-eqz p1, :cond_e

    .line 300
    const-string v8, "ShutdownThread"

    const-string v9, "!@########POWEROFF START WITH CONFIRM######"

    invoke-static {v8, v9}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e001d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 304
    .local v4, "longPressBehavior":I
    const-string/jumbo v8, "wifi"

    const-string v9, "lte"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 306
    .local v7, "wifiOnly":Z
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v8, :cond_7

    .line 307
    const-string v8, "VZW"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 308
    const v0, 0x1040b0f

    .line 327
    .local v0, "bodyText":I
    :goto_1
    const-string v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!@Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    if-eqz v8, :cond_5

    .line 330
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 334
    :cond_5
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v8, :cond_c

    .line 335
    const-string v8, "VZW"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 336
    const v6, 0x1040b0e

    .line 347
    .local v6, "titleText":I
    :goto_2
    invoke-static {v1, v6, v0}, Lcom/android/server/power/ShutdownThread;->createConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;

    move-result-object v8

    sput-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    .line 348
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 350
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-nez v8, :cond_0

    .line 351
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->blackMiniModeBar(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 310
    .end local v0    # "bodyText":I
    .end local v6    # "titleText":I
    :cond_6
    const v0, 0x10401d9

    .restart local v0    # "bodyText":I
    goto :goto_1

    .line 312
    .end local v0    # "bodyText":I
    :cond_7
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v8, :cond_9

    .line 313
    if-ne v4, v12, :cond_8

    const v0, 0x10401d7

    .restart local v0    # "bodyText":I
    :goto_3
    goto :goto_1

    .end local v0    # "bodyText":I
    :cond_8
    const v0, 0x10401d5

    goto :goto_3

    .line 322
    :cond_9
    if-ne v4, v12, :cond_a

    const v0, 0x10401d6

    .restart local v0    # "bodyText":I
    :goto_4
    goto :goto_1

    .end local v0    # "bodyText":I
    :cond_a
    const v0, 0x10401d4

    goto :goto_4

    .line 338
    .restart local v0    # "bodyText":I
    :cond_b
    const v6, 0x10401d8

    .restart local v6    # "titleText":I
    goto :goto_2

    .line 340
    .end local v6    # "titleText":I
    :cond_c
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v8, :cond_d

    .line 341
    const v6, 0x10401df

    .restart local v6    # "titleText":I
    goto :goto_2

    .line 345
    .end local v6    # "titleText":I
    :cond_d
    const v6, 0x10401de

    .restart local v6    # "titleText":I
    goto :goto_2

    .line 357
    .end local v0    # "bodyText":I
    .end local v4    # "longPressBehavior":I
    .end local v6    # "titleText":I
    .end local v7    # "wifiOnly":Z
    :cond_e
    const-wide/16 v8, 0x32

    :try_start_4
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 361
    :goto_5
    const-string v8, "ShutdownThread"

    const-string v9, "!@########POWEROFF START WITHOUT CONFIRM######"

    invoke-static {v8, v9}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {v1, v11}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 358
    :catch_1
    move-exception v2

    .line 359
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v8, "ShutdownThread"

    const-string v9, "InterruptedException"

    invoke-static {v8, v9, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_5
.end method

.method private shutdownRadios(ILandroid/content/Context;Z)V
    .locals 11
    .param p1, "timeout"    # I
    .param p2, "con"    # Landroid/content/Context;
    .param p3, "reboot"    # Z

    .prologue
    .line 1010
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    int-to-long v9, p1

    add-long v3, v7, v9

    .line 1011
    .local v3, "endTime":J
    const/4 v1, 0x1

    new-array v5, v1, [Z

    .line 1012
    .local v5, "done":[Z
    const/16 v6, 0x1f4

    .line 1013
    .local v6, "PHONE_STATE_POLL_SLEEP_MSEC":I
    iput-object p2, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 1014
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 1015
    .local v2, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v0, Lcom/android/server/power/ShutdownThread$10;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$10;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;J[Z)V

    .line 1312
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1314
    int-to-long v7, p1

    :try_start_0
    invoke-virtual {v0, v7, v8}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    :goto_0
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_0

    .line 1318
    const-string v1, "ShutdownThread"

    const-string v7, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v7}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_0
    return-void

    .line 1315
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static silentShutdown(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 568
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    .line 569
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 570
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 571
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mFake:Z

    .line 572
    invoke-static {p0, v1, v1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    .line 573
    return-void
.end method

.method private static startFakeShutdown(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 768
    new-instance v0, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    .line 769
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->prepareFakeShutdown()V

    .line 770
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->show()V

    .line 771
    const-string v0, "ShutdownThread"

    const-string v1, "fake shutdown start"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown;->shutdown(Landroid/content/Context;Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V

    .line 773
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mFake:Z

    .line 774
    return-void
.end method

.method private static startGoogleShutdownDialog(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 818
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 819
    .local v0, "pd":Landroid/app/ProgressDialog;
    const v1, 0x10401cd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 820
    const v1, 0x10401d1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 821
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 822
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 823
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 825
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 826
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 828
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 829
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 830
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 832
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 833
    return-void
.end method

.method private static startShutdownDialog(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 778
    new-instance v0, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    .line 779
    const-string v0, "ShutdownThread"

    const-string v1, "normal shutdown thread will start"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->existAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    new-instance v0, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    .line 783
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->prepareShutdown()V

    .line 784
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->show()V

    .line 790
    :goto_0
    return-void

    .line 787
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    .line 788
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startGoogleShutdownDialog(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static startShutdownThread()V
    .locals 6

    .prologue
    .line 793
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v1, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$6;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 795
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread;->start()V

    .line 797
    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "System shutting down."

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 802
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$7;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 812
    :cond_0
    return-void
.end method

.method public static systemShutdown(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 240
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 241
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 242
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mFake:Z

    .line 244
    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    .line 245
    return-void
.end method

.method private static textToSpeech(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1955
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1957
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 1958
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1959
    .local v1, "systemVolume":I
    int-to-double v4, v1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v2, v4, v6

    .line 1963
    .end local v1    # "systemVolume":I
    .local v2, "ttsVolume":D
    :goto_0
    new-instance v4, Landroid/speech/tts/TextToSpeech;

    new-instance v5, Lcom/android/server/power/ShutdownThread$11;

    invoke-direct {v5, v2, v3, p1}, Lcom/android/server/power/ShutdownThread$11;-><init>(DLjava/lang/String;)V

    invoke-direct {v4, p0, v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v4, Lcom/android/server/power/ShutdownThread;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 1979
    return-void

    .line 1961
    .end local v2    # "ttsVolume":D
    :cond_0
    const-wide/16 v2, 0x0

    .restart local v2    # "ttsVolume":D
    goto :goto_0
.end method

.method private static waitIfTimeoutDumpWorking()V
    .locals 5

    .prologue
    .line 1411
    :try_start_0
    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1412
    const-string v1, "ShutdownThread"

    const-string v2, "!@Wait for dumpstate"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1414
    const-string v1, "ShutdownThread"

    const-string v2, "!@Dumpstate finished "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1422
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1424
    return-void

    .line 1416
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_1
    const-string v1, "ShutdownThread"

    const-string v2, "!@Dumpstate timeouted!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1419
    :catch_0
    move-exception v0

    .line 1420
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "ShutdownThread"

    const-string v2, "delayDumpLock TryLock"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1422
    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 836
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 837
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 838
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 839
    monitor-exit v1

    .line 840
    return-void

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method actionDoneMount()V
    .locals 2

    .prologue
    .line 843
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    monitor-enter v1

    .line 844
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z

    .line 845
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 846
    monitor-exit v1

    .line 847
    return-void

    .line 846
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 26

    .prologue
    .line 854
    # invokes: Lcom/android/server/power/ShutdownThread$Led;->On()V
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Led;->access$1100()V

    .line 855
    new-instance v6, Lcom/android/server/power/ShutdownThread$8;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 867
    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v25, Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_5

    const-string v2, "1"

    :goto_0
    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 868
    .local v25, "sb":Ljava/lang/StringBuilder;
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 869
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    :cond_0
    const-string/jumbo v2, "sys.shutdown.requested"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_1

    .line 878
    const-string v2, "persist.sys.safemode"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :cond_1
    const-string v2, "ShutdownThread"

    const-string v4, "!@Sending shutdown broadcast..."

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 884
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 885
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 890
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    if-eqz v2, :cond_6

    .line 891
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v7, 0x2710

    add-long v17, v4, v7

    .line 896
    .local v17, "endTime":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 897
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_2

    .line 898
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v12, v17, v7

    .line 899
    .local v12, "delay":J
    const-wide/16 v7, 0x0

    cmp-long v2, v12, v7

    if-gtz v2, :cond_7

    .line 900
    const-string v2, "ShutdownThread"

    const-string v5, "!@Shutdown broadcast timed out"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    .end local v12    # "delay":J
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    const-string v2, "ShutdownThread"

    const-string v4, "!@Shutting down activity manager..."

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 912
    .local v11, "am":Landroid/app/IActivityManager;
    if-eqz v11, :cond_3

    .line 914
    const/16 v2, 0x2710

    :try_start_1
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 920
    :cond_3
    :goto_3
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(ILandroid/content/Context;Z)V

    .line 922
    const-string v2, "ShutdownThread"

    const-string/jumbo v4, "waitForAnimEnd"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    sget-object v2, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    if-nez v2, :cond_4

    .line 925
    sget-object v2, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/android/server/power/ShutdownDialog;->waitForAnimEnd(I)Z

    .line 928
    :cond_4
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    if-nez v2, :cond_8

    .line 929
    new-instance v19, Ljava/io/File;

    const-string v2, "/proc/sysrq-trigger"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 930
    .local v19, "f":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    .line 931
    const-string v2, "ShutdownThread"

    const-string v4, "!@/proc/sysrq-trigger not exists!"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    .end local v19    # "f":Ljava/io/File;
    :goto_4
    return-void

    .line 867
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v17    # "endTime":J
    .end local v25    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    const-string v2, "0"

    goto/16 :goto_0

    .line 893
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v25    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v7, 0x13880

    add-long v17, v4, v7

    .restart local v17    # "endTime":J
    goto/16 :goto_1

    .line 904
    .restart local v12    # "delay":J
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 905
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 908
    .end local v12    # "delay":J
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 937
    .restart local v11    # "am":Landroid/app/IActivityManager;
    :cond_8
    new-instance v21, Lcom/android/server/power/ShutdownThread$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$9;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 944
    .local v21, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v4, "!@Shutting down MountService"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 948
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v7, 0x7530

    add-long v15, v4, v7

    .line 949
    .local v15, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    monitor-enter v4

    .line 951
    :try_start_4
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v20

    .line 953
    .local v20, "mount":Landroid/os/storage/IMountService;
    new-instance v19, Ljava/io/File;

    const-string v2, "/proc/sysrq-trigger"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 954
    .restart local v19    # "f":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 955
    const-string v2, "ShutdownThread"

    const-string v5, "!@MountService shutdown skip"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 965
    .end local v19    # "f":Ljava/io/File;
    .end local v20    # "mount":Landroid/os/storage/IMountService;
    :goto_5
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z

    if-nez v2, :cond_9

    .line 966
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v12, v15, v7

    .line 967
    .restart local v12    # "delay":J
    const-string v2, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@MountService delay : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", systemTime : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const-wide/16 v7, 0x0

    cmp-long v2, v12, v7

    if-gtz v2, :cond_d

    .line 969
    const-string v2, "ShutdownThread"

    const-string v5, "!@Shutdown wait timed out"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    .end local v12    # "delay":J
    :cond_9
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 979
    const-string v2, "ro.rebootchargermode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 981
    .local v24, "sRebootCharger":Ljava/lang/String;
    const-string/jumbo v2, "sys.property_forcedshutdown"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 984
    .local v23, "sForcedShutdown":Ljava/lang/String;
    const-string v2, "ShutdownThread"

    const-string v4, "!@Check power connected"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->isPoweredPlugged()Z

    move-result v22

    .line 986
    .local v22, "powerConnected":Z
    const-string/jumbo v2, "true"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v2, :cond_a

    const-string v2, "1"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz v22, :cond_a

    .line 990
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 991
    const-string v2, "charging"

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 994
    :cond_a
    const-string v4, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@ run, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_e

    const-string v2, "reboot"

    :goto_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " requested "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "reason="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_f

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_7
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    goto/16 :goto_4

    .line 957
    .end local v22    # "powerConnected":Z
    .end local v23    # "sForcedShutdown":Ljava/lang/String;
    .end local v24    # "sRebootCharger":Ljava/lang/String;
    .restart local v19    # "f":Ljava/io/File;
    .restart local v20    # "mount":Landroid/os/storage/IMountService;
    :cond_b
    if-eqz v20, :cond_c

    .line 958
    :try_start_6
    invoke-interface/range {v20 .. v21}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_5

    .line 962
    .end local v19    # "f":Ljava/io/File;
    .end local v20    # "mount":Landroid/os/storage/IMountService;
    :catch_1
    move-exception v14

    .line 963
    .local v14, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v2, "ShutdownThread"

    const-string v5, "!@Exception during MountService shutdown"

    invoke-static {v2, v5, v14}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_5

    .line 978
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    .line 960
    .restart local v19    # "f":Ljava/io/File;
    .restart local v20    # "mount":Landroid/os/storage/IMountService;
    :cond_c
    :try_start_8
    const-string v2, "ShutdownThread"

    const-string v5, "!@MountService unavailable for shutdown"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_5

    .line 973
    .end local v19    # "f":Ljava/io/File;
    .end local v20    # "mount":Landroid/os/storage/IMountService;
    .restart local v12    # "delay":J
    :cond_d
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_5

    .line 974
    :catch_2
    move-exception v14

    .line 975
    .local v14, "e":Ljava/lang/InterruptedException;
    :try_start_a
    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_5

    .line 994
    .end local v12    # "delay":J
    .end local v14    # "e":Ljava/lang/InterruptedException;
    .restart local v22    # "powerConnected":Z
    .restart local v23    # "sForcedShutdown":Ljava/lang/String;
    .restart local v24    # "sRebootCharger":Ljava/lang/String;
    :cond_e
    const-string/jumbo v2, "shutdown"

    goto :goto_6

    :cond_f
    const-string v2, "null"

    goto :goto_7

    .line 915
    .end local v15    # "endShutTime":J
    .end local v21    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v22    # "powerConnected":Z
    .end local v23    # "sForcedShutdown":Ljava/lang/String;
    .end local v24    # "sRebootCharger":Ljava/lang/String;
    :catch_3
    move-exception v2

    goto/16 :goto_3
.end method
