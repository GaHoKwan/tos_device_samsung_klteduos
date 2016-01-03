.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrafficAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    }
.end annotation


# static fields
.field private static final CORELATION_TOLERANCE_VALUE:J = 0x2710L

.field private static final TRAFFICMONITOR_ON:Z = true


# instance fields
.field private mBundlingPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field public volatile mDataConnectionIsConnected:Z

.field private mFgActivities:Landroid/util/SparseBooleanArray;

.field private mIgnorelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mIsScreenOn:Z

.field private mLocationUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mSafeLock:Ljava/lang/Object;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mWHITElist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mWatchlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

.field private whitelistCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V
    .locals 9
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1621
    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1604
    iput v7, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->whitelistCount:I

    .line 1605
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIsScreenOn:Z

    .line 1606
    iput-boolean v7, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mDataConnectionIsConnected:Z

    .line 1607
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    .line 1608
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    .line 1609
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    .line 1610
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mFgActivities:Landroid/util/SparseBooleanArray;

    .line 1614
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    .line 1617
    iput-object v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 2738
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$1;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$1;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 2752
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 2784
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$3;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$3;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 2814
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$4;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$4;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mLocationUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 2853
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$5;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$5;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mBundlingPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 1622
    const-string v6, "AlarmManager"

    const-string v7, "[TA] creating..."

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1630
    .local v0, "am":Landroid/app/IActivityManager;
    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v6}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1635
    .end local v0    # "am":Landroid/app/IActivityManager;
    :goto_0
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1636
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1638
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1639
    .local v3, "gmsBundlingFilter":Landroid/content/IntentFilter;
    const-string v6, "com.sec.GMS_bundling"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1640
    const-string v6, "com.google.android.location.reporting.ACTION_INSISTENT_SYNC"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1641
    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mLocationUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1643
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1644
    .local v1, "bundlingPolicyFilter":Landroid/content/IntentFilter;
    const-string v6, "com.sec.android.intent.action.BUNDLING_POLICY_UPDATED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1645
    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mBundlingPolicyReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.DEVICE_POWER"

    invoke-virtual {p2, v6, v1, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1647
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1648
    .local v5, "screenFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1649
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1650
    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1651
    const-string v6, "AlarmManager"

    const-string v7, "[TA] created."

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    return-void

    .line 1631
    .end local v1    # "bundlingPolicyFilter":Landroid/content/IntentFilter;
    .end local v3    # "gmsBundlingFilter":Landroid/content/IntentFilter;
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .end local v5    # "screenFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .line 1632
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$1100(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 1601
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mFgActivities:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 2710
    monitor-enter p0

    .line 2711
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 2712
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 2715
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    .line 2716
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public ForegroundAppsCheckLocked(IJ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "nowT"    # J

    .prologue
    .line 2725
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2728
    .local v1, "itWatch":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2730
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2731
    .local v0, "ar":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    if-ne p1, v2, :cond_0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    sub-long v2, p2, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 2733
    iget v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->UMCount:I

    iget v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->NfgCount:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    if-nez v2, :cond_0

    iget v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    goto :goto_0

    .line 2737
    .end local v0    # "ar":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_1
    return-void
.end method

.method public determineListTypeLocked(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)Z
    .locals 13
    .param p1, "record"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .prologue
    .line 1914
    const/4 v8, 0x0

    .line 1915
    .local v8, "typeChanged":Z
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[TA] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    :cond_0
    iget v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCount:I

    const/4 v10, 0x3

    if-lt v9, v10, :cond_8

    iget-boolean v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountEvenlyDistributed:Z

    if-nez v9, :cond_8

    iget v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountAfterHit:I

    if-eqz v9, :cond_1

    iget v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountAfterHit:I

    const/4 v10, 0x3

    if-lt v9, v10, :cond_8

    :cond_1
    iget-boolean v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    if-nez v9, :cond_8

    .line 1922
    new-instance v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-direct {v5, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 1924
    .local v5, "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1925
    .local v4, "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1926
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1927
    .local v6, "pStr":Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1928
    const/4 v9, 0x0

    .line 2024
    .end local v4    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v6    # "pStr":Ljava/lang/String;
    :goto_0
    return v9

    .line 1931
    .restart local v4    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_3
    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v11, 0x1388

    cmp-long v9, v9, v11

    if-gez v9, :cond_4

    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1932
    :cond_4
    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1933
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1934
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1935
    .local v0, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->hashCode()I

    move-result v9

    iget v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->piHashCode:I

    if-ne v9, v10, :cond_5

    .line 1937
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 1938
    const-wide/16 v9, 0x0

    iput-wide v9, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 1939
    const-wide/16 v9, 0x0

    iput-wide v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1943
    .end local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_6
    const/4 v8, 0x1

    .line 1944
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AppSync] moved to Ignore list: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    .end local v4    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_7
    :goto_1
    move v9, v8

    .line 2024
    goto :goto_0

    .line 1949
    :cond_8
    iget v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->hitCount:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_7

    iget-boolean v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    if-nez v9, :cond_7

    .line 1955
    iget-boolean v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountEvenlyDistributed:Z

    if-eqz v9, :cond_e

    iget-boolean v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isUIalarm:Z

    if-nez v9, :cond_e

    .line 1956
    new-instance v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-direct {v5, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 1957
    .restart local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    const/4 v1, 0x0

    .line 1958
    .local v1, "found":Z
    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 1960
    .local v7, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v9, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget v10, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v9, v10, :cond_9

    .line 1961
    const/4 v1, 0x1

    .line 1968
    .end local v7    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_a
    if-nez v1, :cond_c

    .line 1970
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    .line 1971
    const/4 v9, 0x0

    iput v9, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountAfterHit:I

    .line 1972
    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v11, 0x1388

    cmp-long v9, v9, v11

    if-gez v9, :cond_b

    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1973
    :cond_b
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AppSync] moved to Whitelist: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    :cond_c
    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget v10, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget-wide v11, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    # invokes: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateRepeatingAlarmLocked(IJ)V
    invoke-static {v9, v10, v11, v12}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;IJ)V

    .line 2022
    :cond_d
    :goto_2
    const/4 v8, 0x1

    goto :goto_1

    .line 1984
    .end local v1    # "found":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_e
    new-instance v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-direct {v5, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 1985
    .restart local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    const/4 v1, 0x0

    .line 1986
    .restart local v1    # "found":Z
    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 1988
    .restart local v7    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v9, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget v10, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v9, v10, :cond_f

    .line 1989
    const/4 v1, 0x1

    .line 1996
    .end local v7    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_10
    if-nez v1, :cond_d

    .line 1998
    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1999
    .restart local v4    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 2000
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2001
    .restart local v6    # "pStr":Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 2003
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2006
    .end local v6    # "pStr":Ljava/lang/String;
    :cond_12
    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    .line 2007
    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v11, 0x1388

    cmp-long v9, v9, v11

    if-gez v9, :cond_13

    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2008
    :cond_13
    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2009
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 2010
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2011
    .restart local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->hashCode()I

    move-result v9

    iget v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->piHashCode:I

    if-ne v9, v10, :cond_14

    .line 2013
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 2014
    const-wide/16 v9, 0x0

    iput-wide v9, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 2015
    const-wide/16 v9, 0x0

    iput-wide v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 2019
    .end local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_15
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AppSync] moved to Ignore list: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public getWhitelistCount()I
    .locals 3

    .prologue
    .line 2689
    const/4 v0, 0x0

    .line 2690
    .local v0, "c":I
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2691
    :try_start_0
    iget v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->whitelistCount:I

    .line 2692
    monitor-exit v2

    .line 2693
    return v0

    .line 2692
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I
    .locals 9
    .param p2, "alarmUid"    # I
    .param p3, "alarmPid"    # I
    .param p4, "alarmHashCode"    # I
    .param p5, "repeatInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;IIIJ)I"
        }
    .end annotation

    .prologue
    .local p1, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    const/4 v4, -0x1

    const-wide/16 v7, 0x0

    .line 2097
    const/4 v1, 0x0

    .line 2098
    .local v1, "index":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2099
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2101
    .local v3, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v5, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v5, p4, :cond_3

    .line 2106
    cmp-long v5, p5, v7

    if-lez v5, :cond_2

    iget-wide v5, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    cmp-long v5, p5, v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    if-eq p1, v5, :cond_0

    const-wide/32 v5, 0x186a0

    rem-long v5, p5, v5

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 2111
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2154
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_1
    :goto_1
    return v4

    .restart local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_2
    move v4, v1

    .line 2114
    goto :goto_1

    .line 2116
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 2117
    goto :goto_0

    .line 2121
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_4
    cmp-long v5, p5, v7

    if-lez v5, :cond_1

    .line 2122
    const/4 v1, 0x0

    .line 2123
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2127
    .restart local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v5, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    if-ne v5, p2, :cond_6

    iget-wide v5, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    cmp-long v5, v5, p5

    if-nez v5, :cond_6

    .line 2131
    iget v5, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-nez v5, :cond_5

    move v4, v1

    .line 2132
    goto :goto_1

    .line 2140
    :cond_5
    iget v5, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->hitCount:I

    const/4 v6, 0x1

    if-lt v5, v6, :cond_6

    iget v5, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCount:I

    if-nez v5, :cond_6

    .line 2144
    iput p4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    move v4, v1

    .line 2145
    goto :goto_1

    .line 2148
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public printWhitelist()V
    .locals 9

    .prologue
    .line 2697
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2698
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->whitelistCount:I

    .line 2699
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2700
    .local v1, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    .line 2701
    iget v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->whitelistCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->whitelistCount:I

    .line 2702
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(AppSync) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2706
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2707
    return-void
.end method

.method public queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J
    .locals 25
    .param p1, "aExt"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .param p2, "distRounded"    # J

    .prologue
    .line 1655
    const/16 v17, 0x1

    .line 1656
    .local v17, "isValidInterval":Z
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->keyId:I

    .line 1657
    .local v7, "alarmHash":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v5

    .line 1658
    .local v5, "alarmUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1659
    .local v6, "alarmPid":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v22

    .line 1660
    .local v22, "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TA] querying "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " for "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_0
    const/4 v15, -0x1

    .line 1668
    .local v15, "foundIdx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 1672
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    const-wide/16 p2, -0x1

    monitor-exit v24

    .line 1763
    .end local p2    # "distRounded":J
    :goto_0
    return-wide p2

    .line 1677
    .restart local p2    # "distRounded":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v15

    .line 1678
    const/4 v3, -0x1

    if-le v15, v3, :cond_2

    .line 1680
    move-wide/from16 v0, p2

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    monitor-exit v24

    goto :goto_0

    .line 1758
    .end local p2    # "distRounded":J
    :catchall_0
    move-exception v3

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1683
    .restart local p2    # "distRounded":J
    :cond_2
    const/16 v20, 0x0

    .line 1688
    .local v20, "makeNew":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v15

    .line 1689
    const/4 v3, -0x1

    if-le v15, v3, :cond_b

    .line 1690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 1694
    .local v13, "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v8, v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    cmp-long v3, v3, v8

    if-gez v3, :cond_b

    .line 1695
    iget v3, v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->resetCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->resetCount:I

    .line 1699
    iget v3, v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->resetCount:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_b

    .line 1700
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1701
    const/4 v14, 0x0

    .line 1702
    .local v14, "found":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 1703
    .local v23, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget v4, v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v3, v4, :cond_3

    .line 1704
    const/4 v14, 0x1

    .line 1708
    .end local v23    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_4
    if-nez v14, :cond_a

    .line 1710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 1711
    .local v19, "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1712
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1713
    .local v21, "pStr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1714
    const-wide/16 p2, 0x0

    monitor-exit v24

    goto/16 :goto_0

    .line 1717
    .end local v21    # "pStr":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    iput-boolean v3, v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    .line 1718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v8, 0x1388

    cmp-long v3, v3, v8

    if-gez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 1720
    .local v18, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1721
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1722
    .local v12, "aaExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v3, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->hashCode()I

    move-result v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 1724
    const/4 v3, 0x0

    iput-boolean v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 1725
    const-wide/16 v3, 0x0

    iput-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 1726
    const-wide/16 v3, 0x0

    iput-wide v3, v12, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1730
    .end local v12    # "aaExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_9
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AppSync][Periodicity] moved to Ignore list: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    .end local v18    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    .end local v19    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    const-wide/16 p2, -0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 1739
    .end local v13    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v14    # "found":Z
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_b
    const/4 v3, -0x1

    if-eq v15, v3, :cond_c

    if-eqz v20, :cond_f

    .line 1740
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v10, v3, v8

    .line 1745
    .local v10, "TIME_SKEW":J
    new-instance v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    .line 1746
    .restart local v13    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    move-object/from16 v0, v22

    iput-object v0, v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    .line 1747
    iput v5, v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    .line 1748
    iput v6, v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pid:I

    .line 1749
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->hashCode()I

    move-result v3

    iput v3, v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->piHashCode:I

    .line 1750
    iput v7, v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    .line 1751
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    iput-boolean v3, v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isExact:Z

    .line 1752
    move-wide/from16 v0, p2

    iput-wide v0, v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    .line 1753
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iput-wide v3, v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalRequested:J

    .line 1754
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v9, 0x1

    if-gt v8, v9, :cond_d

    const-wide/16 v10, 0x0

    .end local v10    # "TIME_SKEW":J
    :cond_d
    add-long/2addr v3, v10

    iput-wide v3, v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    .line 1755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v8, 0x1388

    cmp-long v3, v3, v8

    if-gez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1756
    :cond_e
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AppSync][Periodicity] added to Watchlist: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    .end local v13    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_f
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1763
    const-wide/16 p2, 0x0

    goto/16 :goto_0
.end method

.method public removeAlarmRecord(Ljava/lang/String;I)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v6, -0x1

    .line 2158
    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2159
    :try_start_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2160
    .local v2, "itWhite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2161
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2162
    .local v3, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    if-eqz p1, :cond_1

    iget-object v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eq p2, v6, :cond_0

    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 2168
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2195
    .end local v2    # "itWhite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2171
    .restart local v2    # "itWhite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2172
    .local v1, "itWatch":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2173
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2174
    .restart local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    if-eqz p1, :cond_5

    iget-object v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    if-eq p2, v6, :cond_4

    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_4

    .line 2180
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 2183
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_7
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2184
    .local v0, "itIgnore":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2186
    .restart local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    if-eqz p1, :cond_9

    iget-object v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    if-eq p2, v6, :cond_8

    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_8

    .line 2192
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 2195
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_b
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2196
    return-void
.end method

.method public removeUnusedAlarmRecord(J)V
    .locals 13
    .param p1, "curTimeRtc"    # J

    .prologue
    .line 2199
    iget-object v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2200
    :try_start_0
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2201
    iget-object v7, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2202
    .local v4, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    const-string v7, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync] WHITE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2253
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 2204
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2205
    .restart local v4    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    const-string v7, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync] ignore: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2207
    .end local v4    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_1
    iget-object v7, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2208
    .restart local v4    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    const-string v7, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync] watch: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2212
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_2
    iget-object v7, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2213
    .local v3, "itWatch":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2214
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2215
    .restart local v4    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget-wide v9, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    iget-wide v11, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    cmp-long v7, v9, v11

    if-gez v7, :cond_5

    iget-wide v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    .line 2216
    .local v5, "testTime":J
    :goto_4
    iget-wide v9, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    const-wide/16 v11, 0x3

    mul-long/2addr v9, v11

    add-long/2addr v9, v5

    cmp-long v7, v9, p1

    if-gez v7, :cond_3

    .line 2220
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync] removeW: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 2215
    .end local v5    # "testTime":J
    :cond_5
    iget-wide v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    goto :goto_4

    .line 2224
    .end local v4    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_6
    iget-object v7, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2225
    .local v2, "itIgnore":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_7
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2226
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2228
    .restart local v4    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v7, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    iget v9, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->hitCount:I

    sub-int/2addr v7, v9

    iget v9, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCount:I

    sub-int v0, v7, v9

    .line 2230
    .local v0, "IgnoreCount":I
    iget-wide v9, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    const-wide/32 v11, 0x36ee80

    cmp-long v7, v9, v11

    if-gez v7, :cond_9

    .line 2231
    const/16 v7, 0xa

    if-ge v0, v7, :cond_8

    int-to-long v9, v0

    iget-wide v11, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    mul-long/2addr v9, v11

    const-wide/32 v11, 0x112a880

    cmp-long v7, v9, v11

    if-ltz v7, :cond_b

    .line 2232
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2233
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync] removeI expiration1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2238
    :cond_9
    const/4 v7, 0x5

    if-ge v0, v7, :cond_a

    int-to-long v9, v0

    iget-wide v11, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    mul-long/2addr v9, v11

    const-wide/32 v11, 0x2932e00

    cmp-long v7, v9, v11

    if-ltz v7, :cond_b

    .line 2239
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2240
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync] removeI expiration2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2244
    :cond_b
    iget-wide v9, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    iget-wide v11, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    cmp-long v7, v9, v11

    if-gez v7, :cond_d

    iget-wide v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    .line 2245
    .restart local v5    # "testTime":J
    :goto_6
    iget-wide v9, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    const-wide/16 v11, 0x3

    mul-long/2addr v9, v11

    add-long/2addr v9, v5

    cmp-long v7, v9, p1

    if-gez v7, :cond_7

    .line 2249
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync] removeI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_5

    .line 2244
    .end local v5    # "testTime":J
    :cond_d
    iget-wide v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    goto :goto_6

    .line 2253
    .end local v0    # "IgnoreCount":I
    .end local v4    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_e
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2254
    return-void
.end method

.method public updateAlarmTriggerInfo(Landroid/app/PendingIntent;IJ)V
    .locals 19
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "count"    # I
    .param p3, "nowRtc"    # J

    .prologue
    .line 1770
    const/4 v7, -0x1

    .line 1771
    .local v7, "piHashCode":I
    const/4 v5, -0x1

    .line 1773
    .local v5, "trigUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getKidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v7

    .line 1774
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1778
    :goto_0
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TA][Trigger] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", code="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1782
    const/4 v12, -0x1

    .line 1786
    .local v12, "foundIdx":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v12

    .line 1787
    const/4 v3, -0x1

    if-eq v12, v3, :cond_7

    .line 1788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 1790
    .local v10, "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v3, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    .line 1791
    move/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->updateTriggerTimeLocked(IJ)V

    .line 1796
    const/4 v15, 0x1

    .line 1797
    .local v15, "tmRun":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIsScreenOn:Z

    if-eqz v3, :cond_2

    .line 1798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1799
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mFgActivities:Landroid/util/SparseBooleanArray;

    iget v6, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1801
    const/4 v15, 0x0

    .line 1802
    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    .line 1804
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1809
    :cond_2
    :try_start_3
    iget-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-lez v3, :cond_3

    iget-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    iget-wide v8, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    const-wide/16 v17, 0x5

    div-long v8, v8, v17

    cmp-long v3, v3, v8

    if-gez v3, :cond_3

    .line 1811
    const/4 v15, 0x0

    .line 1814
    :cond_3
    if-eqz v15, :cond_6

    .line 1815
    invoke-static {v5}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    iput-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->txbytes0time:J

    .line 1816
    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isMonitorON:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1818
    :try_start_4
    new-instance v14, Ljava/util/Timer;

    invoke-direct {v14}, Ljava/util/Timer;-><init>()V

    .line 1819
    .local v14, "timer":Ljava/util/Timer;
    new-instance v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1820
    .local v13, "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    if-eqz v14, :cond_4

    if-nez v13, :cond_5

    :cond_4
    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1890
    .end local v10    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v13    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .end local v14    # "timer":Ljava/util/Timer;
    .end local v15    # "tmRun":Z
    :goto_1
    return-void

    .line 1775
    .end local v12    # "foundIdx":I
    :catch_0
    move-exception v11

    .line 1776
    .local v11, "e":Landroid/os/RemoteException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1804
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v10    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .restart local v12    # "foundIdx":I
    .restart local v15    # "tmRun":Z
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v3

    .line 1889
    .end local v10    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v15    # "tmRun":Z
    :catchall_1
    move-exception v3

    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    .line 1821
    .restart local v10    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .restart local v13    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .restart local v14    # "timer":Ljava/util/Timer;
    .restart local v15    # "tmRun":Z
    :cond_5
    :try_start_8
    invoke-virtual {v13, v10}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->setAlarmInfo(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 1823
    const-wide/16 v3, 0x2710

    invoke-virtual {v14, v13, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1824
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TA] isRunpass="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1829
    .end local v13    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .end local v14    # "timer":Ljava/util/Timer;
    :cond_6
    :goto_2
    :try_start_9
    monitor-exit v16

    goto :goto_1

    .line 1825
    :catch_1
    move-exception v11

    .line 1826
    .local v11, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "AlarmManager"

    const-string v4, "OutOfMemory"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1835
    .end local v10    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v11    # "e":Ljava/lang/OutOfMemoryError;
    .end local v15    # "tmRun":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v12

    const/4 v3, -0x1

    if-le v12, v3, :cond_8

    .line 1836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 1838
    .restart local v10    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v3, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    .line 1839
    move/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->updateTriggerTimeLocked(IJ)V

    .line 1840
    monitor-exit v16

    goto :goto_1

    .line 1845
    .end local v10    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v12

    .line 1846
    const/4 v3, -0x1

    if-eq v12, v3, :cond_e

    .line 1847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 1849
    .restart local v10    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v3, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    .line 1850
    move/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->updateTriggerTimeLocked(IJ)V

    .line 1855
    const/4 v15, 0x1

    .line 1856
    .restart local v15    # "tmRun":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIsScreenOn:Z

    if-eqz v3, :cond_a

    .line 1857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1858
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mFgActivities:Landroid/util/SparseBooleanArray;

    iget v6, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1860
    const/4 v15, 0x0

    .line 1861
    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    .line 1863
    :cond_9
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1868
    :cond_a
    :try_start_b
    iget-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-lez v3, :cond_b

    iget-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    iget-wide v8, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    const-wide/16 v17, 0x5

    div-long v8, v8, v17

    cmp-long v3, v3, v8

    if-gez v3, :cond_b

    .line 1870
    const/4 v15, 0x0

    .line 1873
    :cond_b
    if-eqz v15, :cond_e

    .line 1874
    invoke-static {v5}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    iput-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->txbytes0time:J

    .line 1875
    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isMonitorON:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1877
    :try_start_c
    new-instance v14, Ljava/util/Timer;

    invoke-direct {v14}, Ljava/util/Timer;-><init>()V

    .line 1878
    .restart local v14    # "timer":Ljava/util/Timer;
    new-instance v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1879
    .restart local v13    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    if-eqz v14, :cond_c

    if-nez v13, :cond_d

    :cond_c
    :try_start_d
    monitor-exit v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_1

    .line 1863
    .end local v13    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .end local v14    # "timer":Ljava/util/Timer;
    :catchall_2
    move-exception v3

    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1880
    .restart local v13    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .restart local v14    # "timer":Ljava/util/Timer;
    :cond_d
    :try_start_10
    invoke-virtual {v13, v10}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->setAlarmInfo(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 1882
    const-wide/16 v3, 0x2710

    invoke-virtual {v14, v13, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1883
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TA] isRunpass="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1889
    .end local v10    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v13    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .end local v14    # "timer":Ljava/util/Timer;
    .end local v15    # "tmRun":Z
    :cond_e
    :goto_3
    :try_start_11
    monitor-exit v16

    goto/16 :goto_1

    .line 1884
    .restart local v10    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .restart local v15    # "tmRun":Z
    :catch_2
    move-exception v11

    .line 1885
    .restart local v11    # "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "AlarmManager"

    const-string v4, "OutOfMemory"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_3
.end method

.method public updateEmailSyncStatus(JJ[J)J
    .locals 24
    .param p1, "curAccountd"    # J
    .param p3, "alarmTriggerTime"    # J
    .param p5, "emailAccountInfos"    # [J

    .prologue
    .line 2028
    const/4 v12, 0x0

    .line 2029
    .local v12, "accountInfoIndex":I
    move-object/from16 v0, p5

    array-length v14, v0

    .line 2033
    .local v14, "accountInfoLimit":I
    const/4 v9, 0x2

    .line 2034
    .local v9, "ACCOUNT_INFO_UNIT_LENGTH":I
    const-wide/16 v19, 0x0

    .local v19, "newInterval":J
    move v13, v12

    .line 2036
    .end local v12    # "accountInfoIndex":I
    .local v13, "accountInfoIndex":I
    :cond_0
    :goto_0
    if-ge v13, v14, :cond_6

    .line 2037
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "accountInfoIndex":I
    .restart local v12    # "accountInfoIndex":I
    aget-wide v10, p5, v13

    .line 2038
    .local v10, "accountId":J
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "accountInfoIndex":I
    .restart local v13    # "accountInfoIndex":I
    aget-wide v21, p5, v12

    .line 2042
    .local v21, "prevSync":J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-ltz v2, :cond_0

    .line 2047
    cmp-long v2, p1, v10

    if-nez v2, :cond_0

    .line 2048
    const-wide/16 v2, 0x0

    cmp-long v2, v21, v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    .line 2049
    :cond_1
    sub-long v2, p3, v21

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    .line 2050
    .local v16, "distance":J
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Email) ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", interval:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :cond_2
    const-wide/16 v2, 0x3e8

    sub-long v2, v16, v2

    long-to-double v2, v2

    const-wide v4, 0x41124f8000000000L    # 300000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/32 v4, 0x493e0

    mul-long v16, v2, v4

    .line 2056
    const-wide/32 v2, 0x493e0

    cmp-long v2, v16, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x493e0

    rem-long v2, v16, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2057
    move-wide/from16 v19, v16

    .line 2061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 2062
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I
    invoke-static {v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I
    invoke-static {v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v5

    long-to-int v6, v10

    const-wide/16 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v18

    .line 2067
    .local v18, "foundIdx":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    cmp-long v2, v2, v19

    if-eqz v2, :cond_3

    .line 2068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2069
    const/16 v18, -0x1

    .line 2071
    :cond_3
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_5

    .line 2072
    new-instance v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    .line 2073
    .local v15, "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    const-string v2, "com.android.email"

    iput-object v2, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    .line 2074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I
    invoke-static {v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v2

    iput v2, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    .line 2075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I
    invoke-static {v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v2

    iput v2, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pid:I

    .line 2076
    long-to-int v2, v10

    iput v2, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    .line 2077
    move-wide/from16 v0, v19

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    move-wide/from16 v0, v19

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    move-wide/from16 v0, v19

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalRequested:J

    move-wide/from16 v0, v19

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    .line 2081
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    .line 2082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2083
    :cond_4
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AppSync] moved to Whitelist; Email IDX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    .end local v15    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_5
    monitor-exit v23

    goto/16 :goto_0

    .end local v18    # "foundIdx":I
    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2089
    .end local v10    # "accountId":J
    .end local v16    # "distance":J
    .end local v21    # "prevSync":J
    :cond_6
    return-wide v19
.end method

.method updateGmsBundlingState(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2838
    if-eqz p1, :cond_1

    .line 2839
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2840
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2851
    :cond_0
    :goto_0
    return-void

    .line 2843
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2845
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2846
    :catch_0
    move-exception v0

    .line 2847
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
