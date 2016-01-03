.class Lcom/android/server/AlarmManagerService;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$PrevAlarm;,
        Lcom/android/server/AlarmManagerService$EmergencyReceiver;,
        Lcom/android/server/AlarmManagerService$ResultReceiver;,
        Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$InFlight;,
        Lcom/android/server/AlarmManagerService$BatchTimeOrder;,
        Lcom/android/server/AlarmManagerService$Batch;,
        Lcom/android/server/AlarmManagerService$WakeupEvent;
    }
.end annotation


# static fields
.field private static final ALARM_EVENT:I = 0x1

.field private static APP_SYNC_LOG:Z = false

.field private static APP_SYNC_NewAlarm:Z = false

.field private static APP_SYNC_ON:Z = false

.field private static final ClockReceiver_TAG:Ljava/lang/String; = "ClockReceiver"

.field private static final DEBUG:Z

.field private static final DEBUG_BATCH:Z = false

.field private static final DEBUG_MID:Z

.field private static final DEBUG_VALIDATE:Z = false

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field private static FACTORY_ON:I = 0x0

.field private static final FACTORY_START:Ljava/lang/String; = "android.intent.action.START_FACTORY_TEST"

.field private static final FACTORY_STOP:Ljava/lang/String; = "android.intent.action.STOP_FACTORY_TEST"

.field private static final IS_WAKEUP_MASK:I = 0x5

.field private static final LATE_ALARM_THRESHOLD:J = 0x2710L

.field private static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field private static final REMOVE_ALARM_EVENT:I = 0x0

.field private static final REVIVAL_ALARM_EVENT:I = 0x1

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlarmManager"

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field private static final TIME_CHANGED_MASK:I = 0x10000

.field private static final TYPE_NONWAKEUP_MASK:I = 0x1

.field private static final WAKEUP_STATS:Z

.field private static final isEngBinary:Z

.field private static final localLOGV:Z

.field private static final mBackgroundIntent:Landroid/content/Intent;

.field private static final sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

.field private static final sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;


# instance fields
.field private final RECENT_WAKEUP_PERIOD:J

.field private emergencyAlarmHandler:Landroid/os/Handler;

.field private final mAlarmBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlockedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastRefCount:I

.field private final mBroadcastStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;"
        }
    .end annotation
.end field

.field private mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDateChangeSender:Landroid/app/PendingIntent;

.field private mDescriptor:I

.field private mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

.field private mEmergencyReceiver:Lcom/android/server/AlarmManagerService$EmergencyReceiver;

.field private mFactoryOnOffControlReceiver:Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;

.field private final mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private final mLog:Lcom/android/internal/util/LocalLog;

.field private mNextNonWakeup:J

.field private mNextWakeup:J

.field private mPendingAlarmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$PrevAlarm;",
            ">;"
        }
    .end annotation
.end field

.field private mPersona:Landroid/os/PersonaManager;

.field private final mRecentWakeups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/AlarmManagerService$WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

.field private mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

.field private final mTimeTickSender:Landroid/app/PendingIntent;

.field private final mTriggeredUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

.field private final mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG:Z

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 121
    new-instance v0, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 156
    const-string v0, "0x494d"

    const-string v3, "ro.debug_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_MID:Z

    .line 162
    sput v2, Lcom/android/server/AlarmManagerService;->FACTORY_ON:I

    .line 165
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    .line 166
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z

    .line 168
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->isEngBinary:Z

    .line 169
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->APP_SYNC_NewAlarm:Z

    .line 380
    new-instance v0, Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    return-void

    :cond_0
    move v0, v2

    .line 113
    goto :goto_0

    :cond_1
    move v0, v2

    .line 156
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 552
    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    .line 127
    new-instance v3, Lcom/android/internal/util/LocalLog;

    const-string v4, "AlarmManager"

    invoke-direct {v3, v4}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 129
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 131
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    .line 132
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    .line 137
    iput v5, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 139
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 140
    new-instance v3, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

    .line 141
    new-instance v3, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 144
    new-instance v3, Lcom/android/server/AlarmManagerService$ResultReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$ResultReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    .line 149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarmList:Ljava/util/ArrayList;

    .line 172
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mPersona:Landroid/os/PersonaManager;

    .line 187
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    .line 188
    const-wide/32 v3, 0x5265c00

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService;->RECENT_WAKEUP_PERIOD:J

    .line 381
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 549
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    .line 1932
    new-instance v3, Lcom/android/server/AlarmManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->emergencyAlarmHandler:Landroid/os/Handler;

    .line 553
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    .line 554
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()I

    move-result v3

    iput v3, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    .line 555
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 559
    const-string v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, "tz":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 561
    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->setTimeZone(Ljava/lang/String;)V

    .line 564
    :cond_0
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 565
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "AlarmManager"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 567
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.TIME_TICK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x50000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p1, v5, v3, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    .line 572
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 573
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 574
    const/high16 v3, 0x4000000

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p1, v5, v0, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 578
    new-instance v3, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 579
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 580
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 581
    new-instance v3, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    .line 584
    new-instance v3, Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mFactoryOnOffControlReceiver:Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;

    .line 587
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->SetSyncScheduler()V

    .line 588
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    if-eqz v3, :cond_1

    .line 589
    new-instance v3, Lcom/android/server/AlarmManagerServiceExt;

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/AlarmManagerServiceExt;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerServiceExt;->getSyncScheduler()Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 592
    :cond_1
    iget v3, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 593
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 600
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 601
    new-instance v3, Lcom/android/server/AlarmManagerService$EmergencyReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$EmergencyReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mEmergencyReceiver:Lcom/android/server/AlarmManagerService$EmergencyReceiver;

    .line 604
    return-void

    .line 595
    :cond_2
    const-string v3, "AlarmManager"

    const-string v4, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private SetSyncScheduler()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 915
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_DisableAppSync"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 917
    .local v0, "enableAppSync":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 919
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    .line 920
    const-string v2, "AlarmManager"

    const-string v3, "___AppSync ACTIVATED___"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->isEngBinary:Z

    if-eqz v2, :cond_0

    sput-boolean v1, Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z

    .line 928
    :cond_0
    :goto_1
    return-void

    .end local v0    # "enableAppSync":Z
    :cond_1
    move v0, v2

    .line 915
    goto :goto_0

    .line 925
    .restart local v0    # "enableAppSync":Z
    :cond_2
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    .line 926
    const-string v1, "AlarmManager"

    const-string v2, "___AppSync DEACTIVATED___"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000()Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    return-void
.end method

.method static synthetic access$1100()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerService;)Landroid/os/PersonaManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPersona:Landroid/os/PersonaManager;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/AlarmManagerService;Landroid/os/PersonaManager;)Landroid/os/PersonaManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Landroid/os/PersonaManager;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mPersona:Landroid/os/PersonaManager;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ResultReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$1708(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$1710(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_MID:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/AlarmManagerService;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/AlarmManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2500()I
    .locals 1

    .prologue
    .line 95
    sget v0, Lcom/android/server/AlarmManagerService;->FACTORY_ON:I

    return v0
.end method

.method static synthetic access$2502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 95
    sput p0, Lcom/android/server/AlarmManagerService;->FACTORY_ON:I

    return p0
.end method

.method static synthetic access$2600(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->removeDisallowedAlarmList()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarmList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/AlarmManagerService;)Lcom/sec/android/emergencymode/EmergencyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/AlarmManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->emergencyAlarmHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/AlarmManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->waitForAlarm(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    .line 95
    invoke-direct/range {p0 .. p5}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)V

    return-void
.end method

.method static addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z
    .locals 2
    .param p1, "newBatch"    # Lcom/android/server/AlarmManagerService$Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    sget-object v1, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {p0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 410
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 411
    rsub-int/lit8 v1, v0, 0x0

    add-int/lit8 v0, v1, -0x1

    .line 416
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 417
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private addPendingAlarmList(Lcom/android/server/AlarmManagerService$PrevAlarm;)V
    .locals 10
    .param p1, "reqAlarm"    # Lcom/android/server/AlarmManagerService$PrevAlarm;

    .prologue
    .line 2058
    iget-object v1, p1, Lcom/android/server/AlarmManagerService$PrevAlarm;->mOperation:Landroid/app/PendingIntent;

    .line 2059
    .local v1, "operation":Landroid/app/PendingIntent;
    if-nez v1, :cond_1

    .line 2087
    :cond_0
    :goto_0
    return-void

    .line 2062
    :cond_1
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    .line 2063
    .local v5, "reqPackage":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 2065
    .local v4, "reqAction":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    const/4 v7, 0x7

    invoke-virtual {v6, v5, v4, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2067
    const-string v6, "android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v6, v5, v4}, Lcom/sec/android/emergencymode/EmergencyManager;->checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2070
    :cond_2
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2071
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarmList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$PrevAlarm;

    .line 2072
    .local v2, "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    iget-object v6, v2, Lcom/android/server/AlarmManagerService$PrevAlarm;->mOperation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2073
    iget-object v6, v2, Lcom/android/server/AlarmManagerService$PrevAlarm;->mOperation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2074
    .local v3, "pendingAction":Ljava/lang/String;
    if-nez v4, :cond_5

    if-nez v3, :cond_5

    .line 2075
    monitor-exit v7

    goto :goto_0

    .line 2086
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .end local v3    # "pendingAction":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2063
    .end local v4    # "reqAction":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 2076
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .restart local v3    # "pendingAction":Ljava/lang/String;
    .restart local v4    # "reqAction":Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 2077
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2078
    monitor-exit v7

    goto :goto_0

    .line 2083
    .end local v2    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .end local v3    # "pendingAction":Ljava/lang/String;
    :cond_6
    const-string v6, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add pending alarm list : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService$PrevAlarm;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarmList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2086
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private native close(I)V
.end method

.method static convertToElapsed(JI)J
    .locals 5
    .param p0, "when"    # J
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 384
    if-eq p2, v0, :cond_0

    if-nez p2, :cond_2

    .line 385
    .local v0, "isRtc":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sub-long/2addr p0, v1

    .line 388
    :cond_1
    return-wide p0

    .line 384
    .end local v0    # "isRtc":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native disableFakeOffTimer(I)I
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJ)V
    .locals 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowELAPSED"    # J
    .param p5, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 1283
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1284
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1285
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v2

    .line 1286
    .local v2, "label":Ljava/lang/String;
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_0

    move-wide v3, p5

    .line 1287
    .local v3, "now":J
    :goto_1
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " #"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1288
    const-string v5, ": "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p0, v5, v3, v4}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 1283
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v3    # "now":J
    :cond_0
    move-wide v3, p3

    .line 1286
    goto :goto_1

    .line 1291
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "label":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1261
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1262
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1263
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1264
    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2, p4, p5}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 1261
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1267
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .locals 4

    .prologue
    .line 821
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 822
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 823
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 824
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 828
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :goto_1
    return-object v1

    .line 822
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 828
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1841
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    .line 1842
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1843
    .local v0, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v0, :cond_0

    .line 1844
    new-instance v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .end local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(Ljava/lang/String;)V

    .line 1845
    .restart local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    :cond_0
    return-object v0
.end method

.method private native init()I
.end method

.method private static final labelForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1270
    packed-switch p0, :pswitch_data_0

    .line 1278
    const-string v0, "--unknown--"

    :goto_0
    return-object v0

    .line 1271
    :pswitch_0
    const-string v0, "RTC"

    goto :goto_0

    .line 1272
    :pswitch_1
    const-string v0, "RTC_WAKEUP"

    goto :goto_0

    .line 1273
    :pswitch_2
    const-string v0, "ELAPSED"

    goto :goto_0

    .line 1274
    :pswitch_3
    const-string v0, "ELAPSED_WAKEUP"

    goto :goto_0

    .line 1270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private logBatchesLocked()V
    .locals 11

    .prologue
    .line 786
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v8, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 787
    .local v8, "bs":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 788
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 789
    .local v5, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 790
    .local v3, "nowELAPSED":J
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 791
    .local v7, "NZ":I
    const/4 v10, 0x0

    .local v10, "iz":I
    :goto_0
    if-ge v10, v7, :cond_0

    .line 792
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerService$Batch;

    .line 793
    .local v9, "bz":Lcom/android/server/AlarmManagerService$Batch;
    const-string v1, "Batch "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 794
    iget-object v1, v9, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v2, "  "

    invoke-static/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJ)V

    .line 795
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 796
    const-string v1, "AlarmManager"

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 791
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 799
    .end local v9    # "bz":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void
.end method

.method static maxTriggerTime(JJJ)J
    .locals 6
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    .prologue
    .line 398
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    sub-long v0, p2, p0

    .line 401
    .local v0, "futurity":J
    :goto_0
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 402
    const-wide/16 v0, 0x0

    .line 404
    :cond_0
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    long-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v2, p2

    return-wide v2

    .end local v0    # "futurity":J
    :cond_1
    move-wide v0, p4

    .line 398
    goto :goto_0
.end method

.method private removeDisallowedAlarmList()V
    .locals 17

    .prologue
    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2027
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2028
    .local v15, "numBatches":I
    const/4 v13, 0x0

    .local v13, "nextBatch":I
    :goto_0
    if-ge v13, v15, :cond_2

    .line 2029
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2030
    .local v14, "numAlarms":I
    const/4 v12, 0x0

    .local v12, "nextAlarm":I
    :goto_1
    if-ge v12, v14, :cond_1

    .line 2031
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start Remove Alarm Index : ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2033
    .local v11, "a":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    iget-boolean v9, v1, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    .line 2034
    .local v9, "standAlone":Z
    iget v3, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 2035
    .local v3, "type":I
    iget-object v8, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 2036
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    iget-wide v6, v11, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 2037
    .local v6, "repeatInterval":J
    iget-object v10, v11, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    .line 2039
    .local v10, "workSource":Landroid/os/WorkSource;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/emergencymode/EmergencyManager;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2041
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove Disallowed Alarm List : pkg="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", act="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Index=["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2046
    new-instance v1, Lcom/android/server/AlarmManagerService$PrevAlarm;

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/server/AlarmManagerService$PrevAlarm;-><init>(Lcom/android/server/AlarmManagerService;IJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService;->addPendingAlarmList(Lcom/android/server/AlarmManagerService$PrevAlarm;)V

    .line 2047
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2048
    add-int/lit8 v12, v12, -0x1

    .line 2030
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 2051
    .end local v3    # "type":I
    .end local v6    # "repeatInterval":J
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v9    # "standAlone":Z
    .end local v10    # "workSource":Landroid/os/WorkSource;
    .end local v11    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, v15, v1

    sub-int/2addr v13, v1

    .line 2052
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2028
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 2054
    .end local v12    # "nextAlarm":I
    .end local v14    # "numAlarms":I
    :cond_2
    monitor-exit v16

    .line 2055
    return-void

    .line 2054
    .end local v13    # "nextBatch":I
    .end local v15    # "numBatches":I
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private rescheduleKernelAlarmsLocked()V
    .locals 6

    .prologue
    .line 834
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 835
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v1

    .line 836
    .local v1, "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 837
    .local v0, "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 838
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 839
    const/4 v2, 0x2

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 841
    :cond_0
    if-eq v0, v1, :cond_1

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 842
    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    .line 843
    const/4 v2, 0x3

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 846
    .end local v0    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    return-void
.end method

.method private native set(IIJJ)V
.end method

.method private native setBootAlarm(ILjava/lang/String;)V
.end method

.method private setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;)V
    .locals 25
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxWhen"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;
    .param p13, "isStandalone"    # Z
    .param p14, "doValidate"    # Z
    .param p15, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 712
    new-instance v2, Lcom/android/server/AlarmManagerService$Alarm;

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    move-object/from16 v15, p15

    invoke-direct/range {v2 .. v15}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 715
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/server/AlarmManagerService;->APP_SYNC_NewAlarm:Z

    if-eqz v3, :cond_6

    .line 716
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/AlarmManagerService;->APP_SYNC_NewAlarm:Z

    .line 717
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z

    if-eqz v3, :cond_1

    .line 718
    new-instance v22, Landroid/text/format/Time;

    invoke-direct/range {v22 .. v22}, Landroid/text/format/Time;-><init>()V

    .line 719
    .local v22, "time":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v16, v3, v5

    .line 720
    .local v16, "TIME_SKEW":J
    iget-wide v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_0

    const-wide/16 v16, 0x0

    .end local v16    # "TIME_SKEW":J
    :cond_0
    add-long v3, v3, v16

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 721
    invoke-virtual/range {v22 .. v22}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v23

    .line 722
    .local v23, "timeStr":Ljava/lang/String;
    cmp-long v3, p4, p8

    if-nez v3, :cond_5

    const-string v19, "setExact"

    .line 724
    .local v19, "callStr":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (T:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getKidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .end local v19    # "callStr":Ljava/lang/String;
    .end local v22    # "time":Landroid/text/format/Time;
    .end local v23    # "timeStr":Ljava/lang/String;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-wide v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->lookForNonAdjustableAlarm(Landroid/app/PendingIntent;J)Z

    move-result v21

    .line 737
    .local v21, "isNonAdjustableAlarm":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 739
    if-nez v21, :cond_2

    .line 743
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v3, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->schedulingRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 751
    .end local v21    # "isNonAdjustableAlarm":Z
    :cond_2
    :goto_2
    sget v3, Lcom/android/server/AlarmManagerService;->FACTORY_ON:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 752
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_3
    if-eqz p13, :cond_7

    const/16 v24, -0x1

    .line 757
    .local v24, "whichBatch":I
    :goto_3
    if-gez v24, :cond_8

    .line 758
    new-instance v18, Lcom/android/server/AlarmManagerService$Batch;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 759
    .local v18, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move/from16 v0, p13

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    .line 782
    :cond_4
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 783
    return-void

    .line 722
    .end local v18    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v24    # "whichBatch":I
    .restart local v22    # "time":Landroid/text/format/Time;
    .restart local v23    # "timeStr":Ljava/lang/String;
    :cond_5
    const-string v19, "setWindow/setInexact"

    goto/16 :goto_0

    .line 729
    .restart local v19    # "callStr":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 730
    .local v20, "e":Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 748
    .end local v19    # "callStr":Ljava/lang/String;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v22    # "time":Landroid/text/format/Time;
    .end local v23    # "timeStr":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 756
    :cond_7
    iget-wide v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/server/AlarmManagerService;->attemptCoalesceLocked(JJ)I

    move-result v24

    goto :goto_3

    .line 762
    .restart local v24    # "whichBatch":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/AlarmManagerService$Batch;

    .line 763
    .restart local v18    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 767
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    goto :goto_4
.end method

.method private native setKernelTimezone(II)I
.end method

.method private setLocked(IJ)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "when"    # J

    .prologue
    const/4 v2, 0x1

    const-wide/16 v8, 0x3e8

    .line 1071
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1076
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 1077
    const-wide/16 v3, 0x0

    .line 1078
    .local v3, "alarmSeconds":J
    const-wide/16 v5, 0x0

    .line 1083
    .local v5, "alarmNanoseconds":J
    :goto_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmManager_setLocked to type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " curELAPSED = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ans="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    .line 1095
    .end local v3    # "alarmSeconds":J
    .end local v5    # "alarmNanoseconds":J
    :goto_1
    return-void

    .line 1080
    :cond_0
    div-long v3, p2, v8

    .line 1081
    .restart local v3    # "alarmSeconds":J
    rem-long v0, p2, v8

    mul-long/2addr v0, v8

    mul-long v5, v0, v8

    .restart local v5    # "alarmNanoseconds":J
    goto :goto_0

    .line 1089
    .end local v3    # "alarmSeconds":J
    .end local v5    # "alarmNanoseconds":J
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 1090
    .local v7, "msg":Landroid/os/Message;
    iput v2, v7, Landroid/os/Message;->what:I

    .line 1092
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 1093
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v7, p2, p3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private native setShutdownTimeAfterFakeOff(ILjava/lang/String;)I
.end method

.method private triggerAlarmsLocked(Ljava/util/ArrayList;JJ)V
    .locals 28
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 1340
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/AlarmManagerService$Batch;

    .line 1342
    .local v24, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, v24

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, p2

    if-lez v2, :cond_2

    .line 1380
    .end local v24    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    return-void

    .line 1349
    .restart local v24    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1351
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v22

    .line 1352
    .local v22, "N":I
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 1353
    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v23

    .line 1354
    .local v23, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v2, 0x1

    move-object/from16 v0, v23

    iput v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1355
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    move-object/from16 v0, v23

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    .line 1360
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    if-eqz v2, :cond_3

    .line 1361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExplicitRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1368
    :cond_3
    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v2, v2

    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v6, p2, v6

    move-object/from16 v0, v23

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v6, v8

    add-long/2addr v2, v6

    long-to-int v2, v2

    move-object/from16 v0, v23

    iput v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1371
    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v2, v2

    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v25, v2, v6

    .line 1372
    .local v25, "delta":J
    move-object/from16 v0, v23

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    add-long v4, v2, v25

    .line 1373
    .local v4, "nextElapsed":J
    move-object/from16 v0, v23

    iget v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v23

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v8, v2, v25

    move-object/from16 v0, v23

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v14

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v21, v0

    move-object/from16 v6, p0

    move v7, v10

    move-wide v10, v4

    invoke-direct/range {v6 .. v21}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;)V

    .line 1352
    .end local v4    # "nextElapsed":J
    .end local v25    # "delta":J
    :cond_4
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0
.end method

.method private validateConsistencyLocked()Z
    .locals 1

    .prologue
    .line 817
    const/4 v0, 0x1

    return v0
.end method

.method private native waitForAlarm(I)I
.end method


# virtual methods
.method attemptCoalesceLocked(JJ)I
    .locals 4
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .prologue
    .line 422
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 423
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 424
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 425
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-boolean v3, v1, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    if-nez v3, :cond_0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 423
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 429
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 32
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1099
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump AlarmManager from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1257
    :goto_0
    return-void

    .line 1107
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 1108
    :try_start_0
    const-string v3, "Current Alarm Manager state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDescriptor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1113
    .local v8, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1114
    .local v6, "nowELAPSED":J
    new-instance v26, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1116
    .local v26, "sdf":Ljava/text/SimpleDateFormat;
    const-string v3, "nowRTC="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 1117
    const-string v3, "="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1118
    const-string v3, " nowELAPSED="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 1120
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long v30, v8, v6

    add-long v23, v3, v30

    .line 1121
    .local v23, "nextWakeupRTC":J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long v30, v8, v6

    add-long v21, v3, v30

    .line 1122
    .local v21, "nextNonWakeupRTC":J
    const-string v3, "Next alarm: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1123
    const-string v3, " = "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    move-wide/from16 v0, v21

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1124
    const-string v3, "Next wakeup: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1125
    const-string v3, " = "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    move-wide/from16 v0, v23

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1128
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1129
    const-string v3, "Pending alarm batches: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Batch;

    .line 1132
    .local v10, "b":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v3, 0x3a

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 1133
    iget-object v4, v10, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v5, "  "

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJ)V

    goto :goto_1

    .line 1256
    .end local v6    # "nowELAPSED":J
    .end local v8    # "nowRTC":J
    .end local v10    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v21    # "nextNonWakeupRTC":J
    .end local v23    # "nextWakeupRTC":J
    .end local v26    # "sdf":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v3

    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1137
    .restart local v6    # "nowELAPSED":J
    .restart local v8    # "nowRTC":J
    .restart local v21    # "nextNonWakeupRTC":J
    .restart local v23    # "nextWakeupRTC":J
    .restart local v26    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1138
    const-string v3, "  Broadcast ref count: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1139
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v4, "  Recent problems"

    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1142
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1145
    :cond_2
    const/16 v3, 0xa

    new-array v0, v3, [Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v28, v0

    .line 1146
    .local v28, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v13, Lcom/android/server/AlarmManagerService$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1157
    .local v13, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v20, 0x0

    .line 1158
    .local v20, "len":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 1159
    .local v11, "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1161
    .local v12, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget-object v3, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1162
    .local v15, "fe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1163
    .local v16, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v20, :cond_7

    const/4 v3, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-static {v0, v3, v1, v2, v13}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v25

    .line 1165
    .local v25, "pos":I
    :goto_3
    if-gez v25, :cond_5

    .line 1166
    move/from16 v0, v25

    neg-int v3, v0

    add-int/lit8 v25, v3, -0x1

    .line 1168
    :cond_5
    move-object/from16 v0, v28

    array-length v3, v0

    move/from16 v0, v25

    if-ge v0, v3, :cond_4

    .line 1169
    move-object/from16 v0, v28

    array-length v3, v0

    sub-int v3, v3, v25

    add-int/lit8 v14, v3, -0x1

    .line 1170
    .local v14, "copylen":I
    if-lez v14, :cond_6

    .line 1171
    add-int/lit8 v3, v25, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v25

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1173
    :cond_6
    aput-object v16, v28, v25

    .line 1174
    move-object/from16 v0, v28

    array-length v3, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_4

    .line 1175
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1163
    .end local v14    # "copylen":I
    .end local v25    # "pos":I
    :cond_7
    const/16 v25, 0x0

    goto :goto_3

    .line 1180
    .end local v11    # "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v12    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v15    # "fe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_8
    if-lez v20, :cond_c

    .line 1181
    const-string v3, "  Top Alarms:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1182
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    .line 1183
    aget-object v16, v28, v17

    .line 1184
    .restart local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v3, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1185
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v3, :cond_9

    const-string v3, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1186
    :cond_9
    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1187
    const-string v3, " running, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1188
    const-string v3, " wakeups, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1189
    const-string v3, " alarms: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1190
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1191
    const-string v3, "      "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1192
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_a

    .line 1193
    const-string v3, " act="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1195
    :cond_a
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_b

    .line 1196
    const-string v3, " cmp="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1198
    :cond_b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1182
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_4

    .line 1202
    .end local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v17    # "i":I
    :cond_c
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1203
    const-string v3, "  Alarm Stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1204
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1205
    .local v27, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 1206
    .restart local v11    # "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1207
    .restart local v12    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string v3, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1208
    iget v3, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v3, :cond_e

    const-string v3, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1209
    :cond_e
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1210
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1211
    const-string v3, " running, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1212
    const-string v3, " wakeups:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1213
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 1215
    iget-object v3, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1216
    .restart local v15    # "fe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1218
    .end local v15    # "fe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_f
    move-object/from16 v0, v27

    invoke-static {v0, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1219
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_6
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_d

    .line 1220
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1221
    .restart local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v3, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1222
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v3, :cond_10

    const-string v3, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1223
    :cond_10
    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1224
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1225
    const-string v3, " wakes "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1226
    const-string v3, " alarms:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1227
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_11

    .line 1228
    const-string v3, " act="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1230
    :cond_11
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_12

    .line 1231
    const-string v3, " cmp="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1233
    :cond_12
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1219
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_6

    .line 1256
    .end local v11    # "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v12    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v17    # "i":I
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_13
    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 608
    :try_start_0
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->close(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    invoke-super {p0}, Landroid/app/IAlarmManager$Stub;->finalize()V

    .line 612
    return-void

    .line 610
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/app/IAlarmManager$Stub;->finalize()V

    throw v0
.end method

.method public findAlarmLocked(I)Z
    .locals 6
    .param p1, "hashCode"    # I

    .prologue
    .line 470
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 471
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 472
    .local v2, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v0

    .line 473
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 474
    invoke-virtual {v2, v4}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v1

    .line 475
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    if-nez v1, :cond_1

    .line 473
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 477
    :cond_1
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->hashCode()I

    move-result v5

    if-ne v5, p1, :cond_0

    const/4 v5, 0x1

    .line 480
    .end local v0    # "N":I
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v4    # "j":I
    :goto_2
    return v5

    .line 470
    .restart local v0    # "N":I
    .restart local v2    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v4    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 480
    .end local v0    # "N":I
    .end local v2    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v4    # "j":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public lookForPackageLocked(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1060
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1061
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1062
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1063
    const/4 v2, 0x1

    .line 1066
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :goto_1
    return v2

    .line 1060
    .restart local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1066
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method rebatchAllAlarms()V
    .locals 2

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 436
    monitor-exit v1

    .line 437
    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebatchAllAlarmsLocked(Z)V
    .locals 29
    .param p1, "doValidate"    # Z

    .prologue
    .line 440
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/ArrayList;

    .line 441
    .local v28, "oldSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 442
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 443
    .local v2, "nowElapsed":J
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 444
    .local v27, "oldBatches":I
    const/16 v25, 0x0

    .local v25, "batchNum":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    .line 445
    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/AlarmManagerService$Batch;

    .line 446
    .local v24, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v22

    .line 447
    .local v22, "N":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_1
    move/from16 v0, v26

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 448
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v23

    .line 449
    .local v23, "a":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, v23

    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v6, v7, v8}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v4

    .line 451
    .local v4, "whenElapsed":J
    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, v23

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 453
    move-wide v14, v4

    .line 462
    .local v14, "maxElapsed":J
    :goto_2
    move-object/from16 v0, v23

    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v23

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, v23

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    move/from16 v19, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v21, v0

    move-object/from16 v6, p0

    move-wide v10, v4

    move/from16 v20, p1

    invoke-direct/range {v6 .. v21}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;)V

    .line 447
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 458
    .end local v14    # "maxElapsed":J
    :cond_0
    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long v14, v4, v6

    .restart local v14    # "maxElapsed":J
    :goto_3
    goto :goto_2

    .end local v14    # "maxElapsed":J
    :cond_1
    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-static/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v14

    goto :goto_3

    .line 444
    .end local v4    # "whenElapsed":J
    .end local v23    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 466
    .end local v22    # "N":I
    .end local v24    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v26    # "i":I
    :cond_3
    return-void
.end method

.method recordWakeupAlarms(Ljava/util/ArrayList;JJ)V
    .locals 12
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 1459
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1460
    .local v11, "numBatches":I
    const/4 v9, 0x0

    .local v9, "nextBatch":I
    :goto_0
    if-ge v9, v11, :cond_0

    .line 1461
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Batch;

    .line 1462
    .local v7, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v1, v7, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v1, v1, p2

    if-lez v1, :cond_1

    .line 1475
    .end local v7    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void

    .line 1466
    .restart local v7    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    iget-object v1, v7, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1467
    .local v10, "numAlarms":I
    const/4 v8, 0x0

    .local v8, "nextAlarm":I
    :goto_1
    if-ge v8, v10, :cond_2

    .line 1468
    iget-object v1, v7, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1469
    .local v6, "a":Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v0, Lcom/android/server/AlarmManagerService$WakeupEvent;

    iget-object v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    iget-object v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-wide/from16 v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AlarmManagerService$WakeupEvent;-><init>(Lcom/android/server/AlarmManagerService;JILjava/lang/String;)V

    .line 1472
    .local v0, "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1467
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1460
    .end local v0    # "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    .end local v6    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 931
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " remove] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_0
    if-nez p1, :cond_1

    .line 938
    :goto_0
    return-void

    .line 935
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 936
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 937
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeLocked(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 988
    const/4 v1, 0x0

    .line 989
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 990
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 991
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Landroid/app/PendingIntent;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 992
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 993
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 989
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 997
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    if-eqz v1, :cond_3

    .line 998
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    if-eqz v3, :cond_2

    .line 999
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    if-eqz v3, :cond_2

    .line 1000
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v3, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(Landroid/app/PendingIntent;)V

    .line 1006
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1007
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1009
    :cond_3
    return-void
.end method

.method public removeLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1012
    const/4 v1, 0x0

    .line 1013
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1014
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1015
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1016
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1017
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1013
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1021
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    if-eqz v1, :cond_3

    .line 1022
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    if-eqz v3, :cond_2

    .line 1023
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    if-eqz v3, :cond_2

    .line 1024
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v3, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(Ljava/lang/String;)V

    .line 1030
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1031
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1033
    :cond_3
    return-void
.end method

.method public removeUserLocked(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1036
    const/4 v1, 0x0

    .line 1037
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1038
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1039
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1040
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1041
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1037
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1045
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    if-eqz v1, :cond_3

    .line 1046
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    if-eqz v3, :cond_2

    .line 1047
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    if-eqz v3, :cond_2

    .line 1048
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v3, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(I)V

    .line 1054
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1055
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1057
    :cond_3
    return-void
.end method

.method public rollbackAlarmLocked(IJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;)V
    .locals 23
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "isStandalone"    # Z
    .param p10, "doValidate"    # Z
    .param p11, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 486
    .local v3, "nowElapsed":J
    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v5

    .line 487
    .local v5, "whenElapsed":J
    const-wide/16 v7, 0x0

    cmp-long v7, p4, v7

    if-lez v7, :cond_0

    add-long v15, v5, p4

    .local v15, "maxElapsed":J
    :goto_0
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide v11, v5

    move-wide/from16 v13, p4

    move-wide/from16 v17, p6

    move-object/from16 v19, p8

    move/from16 v20, p9

    move/from16 v21, p10

    move-object/from16 v22, p11

    .line 489
    invoke-direct/range {v7 .. v22}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;)V

    .line 491
    return-void

    .end local v15    # "maxElapsed":J
    :cond_0
    move-wide/from16 v7, p6

    .line 487
    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v15

    goto :goto_0
.end method

.method public set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 621
    if-eqz p9, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string v2, "AlarmManager.set"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_0
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/AlarmManagerService;->set(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;)V

    .line 628
    return-void
.end method

.method public set(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;)V
    .locals 28
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "isStandalone"    # Z
    .param p10, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 632
    if-nez p8, :cond_0

    .line 633
    const-string v7, "AlarmManager"

    const-string v8, "set/setRepeating ignored because there is no intent"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :goto_0
    return-void

    .line 638
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v7}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 639
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v7}, Lcom/sec/android/emergencymode/EmergencyManager;->isScreenOn()Z

    move-result v7

    if-nez v7, :cond_1

    .line 640
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v7, v8, v9, v10}, Lcom/sec/android/emergencymode/EmergencyManager;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 641
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skip rejected app(Screen["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->isScreenOn()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]) : pkg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " act="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    new-instance v3, Lcom/android/server/AlarmManagerService$PrevAlarm;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v3 .. v12}, Lcom/android/server/AlarmManagerService$PrevAlarm;-><init>(Lcom/android/server/AlarmManagerService;IJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/AlarmManagerService;->addPendingAlarmList(Lcom/android/server/AlarmManagerService$PrevAlarm;)V

    goto/16 :goto_0

    .line 650
    :cond_1
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set alarm: type= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " triggerAtTime= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , called by : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", intent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FACTORY_ON= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/AlarmManagerService;->FACTORY_ON:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    sget v7, Lcom/android/server/AlarmManagerService;->FACTORY_ON:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 655
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Turn off alarm wake up : type= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " triggerAtTime= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    if-nez p1, :cond_6

    .line 658
    const/16 p1, 0x1

    .line 661
    :cond_2
    :goto_1
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alarm Changed : type= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_3
    const-wide/32 v7, 0x2932e00

    cmp-long v7, p4, v7

    if-lez v7, :cond_4

    .line 668
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Window length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms suspiciously long; limiting to 1 hour"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const-wide/32 p4, 0x36ee80

    .line 673
    :cond_4
    if-ltz p1, :cond_5

    const/4 v7, 0x3

    move/from16 v0, p1

    if-le v0, v7, :cond_7

    .line 674
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid alarm type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 659
    :cond_6
    const/4 v7, 0x2

    move/from16 v0, p1

    if-ne v0, v7, :cond_2

    .line 660
    const/16 p1, 0x3

    goto :goto_1

    .line 677
    :cond_7
    const-wide/16 v7, 0x0

    cmp-long v7, p2, v7

    if-gez v7, :cond_8

    .line 678
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v25, v0

    .line 679
    .local v25, "who":J
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v23, v0

    .line 680
    .local v23, "what":J
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid alarm trigger time! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v25

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v23

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-wide/16 p2, 0x0

    .line 685
    .end local v23    # "what":J
    .end local v25    # "who":J
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 686
    .local v3, "nowElapsed":J
    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v5

    .line 688
    .local v5, "triggerElapsed":J
    const-wide/16 v7, 0x0

    cmp-long v7, p4, v7

    if-nez v7, :cond_9

    .line 689
    move-wide v15, v5

    .line 696
    .local v15, "maxElapsed":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 697
    const/4 v7, 0x1

    :try_start_0
    sput-boolean v7, Lcom/android/server/AlarmManagerService;->APP_SYNC_NewAlarm:Z

    .line 704
    const/16 v21, 0x1

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide v11, v5

    move-wide/from16 v13, p4

    move-wide/from16 v17, p6

    move-object/from16 v19, p8

    move/from16 v20, p9

    move-object/from16 v22, p10

    invoke-direct/range {v7 .. v22}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;)V

    .line 706
    monitor-exit v27

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 690
    .end local v15    # "maxElapsed":J
    :cond_9
    const-wide/16 v7, 0x0

    cmp-long v7, p4, v7

    if-gez v7, :cond_a

    move-wide/from16 v7, p6

    .line 691
    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v15

    .restart local v15    # "maxElapsed":J
    goto :goto_2

    .line 693
    .end local v15    # "maxElapsed":J
    :cond_a
    add-long v15, v5, p4

    .restart local v15    # "maxElapsed":J
    goto :goto_2
.end method

.method public setAutoPowerUp(Ljava/lang/String;)V
    .locals 1
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 615
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->setBootAlarm(ILjava/lang/String;)V

    .line 616
    return-void
.end method

.method public setTime(J)V
    .locals 4
    .param p1, "millis"    # J

    .prologue
    .line 849
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SET_TIME"

    const-string v3, "setTime"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x4e1f

    if-gt v1, v2, :cond_0

    .line 855
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 856
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDateTimePolicy()Landroid/app/enterprise/DateTimePolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/DateTimePolicy;->isDateTimeChangeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 862
    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :goto_0
    return-void

    .line 860
    :cond_0
    const-string v1, "AlarmManager"

    const-string v2, " setTime()"

    invoke-static {v1, v2}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 11
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    .line 865
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.SET_TIME_ZONE"

    const-string v10, "setTimeZone"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const/16 v9, 0x2710

    if-lt v8, v9, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const/16 v9, 0x4e1f

    if-gt v8, v9, :cond_0

    .line 871
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v9, "enterprise_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 872
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDateTimePolicy()Landroid/app/enterprise/DateTimePolicy;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/DateTimePolicy;->isDateTimeChangeEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 912
    .end local v1    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :goto_0
    return-void

    .line 877
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 879
    .local v4, "oldId":J
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v8

    if-eqz v8, :cond_1

    .line 910
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 880
    :cond_1
    :try_start_1
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 883
    .local v7, "zone":Ljava/util/TimeZone;
    const/4 v6, 0x0

    .line 884
    .local v6, "timeZoneWasChanged":Z
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 885
    :try_start_2
    const-string v8, "persist.sys.timezone"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, "current":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 890
    :cond_2
    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "timezone changed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", new="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v6, 0x1

    .line 892
    const-string v8, "persist.sys.timezone"

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 898
    .local v2, "gmtOffset":I
    iget v8, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const v9, 0xea60

    div-int v9, v2, v9

    neg-int v9, v9

    invoke-direct {p0, v8, v9}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    .line 899
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 901
    const/4 v8, 0x0

    :try_start_3
    invoke-static {v8}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 903
    if-eqz v6, :cond_4

    .line 904
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 905
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x20000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 906
    const-string/jumbo v8, "time-zone"

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 910
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 899
    .end local v0    # "current":Ljava/lang/String;
    .end local v2    # "gmtOffset":I
    :catchall_0
    move-exception v8

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 910
    .end local v6    # "timeZoneWasChanged":Z
    .end local v7    # "zone":Ljava/util/TimeZone;
    :catchall_1
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 1634
    if-eqz p2, :cond_0

    .line 1635
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1649
    :goto_0
    return-void

    .line 1639
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    .line 1641
    .local v0, "uid":I
    if-ltz v0, :cond_1

    .line 1642
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1647
    .end local v0    # "uid":I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1646
    .restart local v0    # "uid":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public shutdownTimeAfterFakeOff(ZI)I
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "minute"    # I

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 1303
    if-eqz p1, :cond_4

    .line 1304
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1305
    .local v0, "sf":Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1306
    .local v2, "time":J
    new-instance v1, Landroid/text/format/Time;

    const-string v4, "UTC"

    invoke-direct {v1, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1308
    .local v1, "t":Landroid/text/format/Time;
    mul-int/lit8 v4, p2, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1309
    invoke-virtual {v1, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 1312
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, v1, Landroid/text/format/Time;->year:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1313
    iget v4, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v7, :cond_0

    .line 1314
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1316
    :cond_0
    iget v4, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1317
    iget v4, v1, Landroid/text/format/Time;->monthDay:I

    if-ge v4, v7, :cond_1

    .line 1318
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1320
    :cond_1
    iget v4, v1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1321
    iget v4, v1, Landroid/text/format/Time;->hour:I

    if-ge v4, v7, :cond_2

    .line 1322
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1324
    :cond_2
    iget v4, v1, Landroid/text/format/Time;->hour:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1325
    iget v4, v1, Landroid/text/format/Time;->minute:I

    if-ge v4, v7, :cond_3

    .line 1326
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1328
    :cond_3
    iget v4, v1, Landroid/text/format/Time;->minute:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1329
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shutdownTimeAfterFakeOff : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget v4, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/AlarmManagerService;->setShutdownTimeAfterFakeOff(ILjava/lang/String;)I

    move-result v4

    .line 1332
    .end local v0    # "sf":Ljava/lang/StringBuffer;
    .end local v1    # "t":Landroid/text/format/Time;
    .end local v2    # "time":J
    :goto_0
    return v4

    :cond_4
    iget v4, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-direct {p0, v4}, Lcom/android/server/AlarmManagerService;->disableFakeOffTimer(I)I

    move-result v4

    goto :goto_0
.end method

.method updateBlockedUids(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .prologue
    .line 945
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 946
    if-eqz p2, :cond_1

    .line 947
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 948
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 953
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 954
    add-int/lit8 v0, v0, -0x1

    .line 955
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-lez v1, :cond_0

    .line 957
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 958
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v1, :cond_0

    .line 962
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 947
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 976
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 977
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 984
    :cond_2
    monitor-exit v2

    .line 985
    return-void

    .line 981
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 976
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 984
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
