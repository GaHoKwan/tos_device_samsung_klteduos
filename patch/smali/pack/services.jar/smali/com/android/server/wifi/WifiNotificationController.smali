.class final Lcom/android/server/wifi/WifiNotificationController;
.super Ljava/lang/Object;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNotificationController$5;,
        Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;
    }
.end annotation


# static fields
.field private static ICON_NETWORKS_AVAILABLE:I = 0x0

.field private static final ICON_NETWORKS_CONNECTED:I = 0x10808dd

.field private static final ICON_NETWORKS_DISABLED:I = 0x10808de

.field private static final ICON_NETWORKS_ENABLED:I = 0x10808df

.field private static final ICON_NETWORKS_NOT_CONNECTED:I = 0x10808e1

.field private static final ICON_NETWORKS_NO_NETWORK:I = 0x10808e0

.field private static final LOW_SIGNAL_URI:Landroid/net/Uri;

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiNotificationController"

.field private static final VZW_EAP_AKA_SSID:Ljava/lang/String; = "VerizonWiFiAccess"

.field private static final WIFI_AGGREGATION_SSID:Ljava/lang/String; = "VerizonWiFi"


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private final mContext:Landroid/content/Context;

.field private mIsShowingVzwNotification:Z

.field private mLowSignal:Z

.field private mLowSignalNWs:I

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumOpenNetworks:I

.field private mNumScansSinceNetworkStateChange:I

.field private mNumVzwNetworks:I

.field private mPrevVzwNotificationId:I

.field private mVzwNotificationEnabled:Z

.field private mVzwNotificationRepeatTime:J

.field private mVzwNotificationShown:Z

.field private mVzwNotificationVisible:Z

.field private mVzwWifiNotification:Landroid/app/Notification;

.field private mWfcObserver:Landroid/database/ContentObserver;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private volatile mWifiState:I

.field private final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field private mWifiStatusNoti:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const v0, 0x1080877

    sput v0, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    .line 154
    const-string v0, "content://com.samsung.tmowfc.wfcprovider/low_signal"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiNotificationController;->LOW_SIGNAL_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wsm"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    const/4 v5, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 133
    new-instance v1, Landroid/net/NetworkInfo;

    const/4 v2, 0x1

    const-string v3, "WIFI"

    const-string v4, ""

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 152
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z

    .line 153
    iput v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignalNWs:I

    .line 845
    new-instance v1, Lcom/android/server/wifi/WifiNotificationController$4;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiNotificationController$4;-><init>(Lcom/android/server/wifi/WifiNotificationController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWfcObserver:Landroid/database/ContentObserver;

    .line 159
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    .line 160
    iput-object p2, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 161
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "CMCC"

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CMCC"

    const-string v2, "LGT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    :cond_0
    const v1, 0x108086f

    sput v1, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiNotificationController$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiNotificationController$1;-><init>(Lcom/android/server/wifi/WifiNotificationController;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_networks_available_repeat_delay"

    const/16 v3, 0x384

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    .line 344
    new-instance v1, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;-><init>(Lcom/android/server/wifi/WifiNotificationController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    .line 345
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->register()V

    .line 346
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wifi/WifiNotificationController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V

    return-void
.end method

.method static synthetic access$1000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/server/wifi/WifiNotificationController;->LOW_SIGNAL_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiNotificationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->checkIfLowSignalFromProvider()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiNotificationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/wifi/WifiNotificationController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiNotificationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignalNWs:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiNotificationController;ZIZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Landroid/net/NetworkInfo;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNotificationController;->checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->updateResources()V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiNotificationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationVisible:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiNotificationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    return p1
.end method

.method private declared-synchronized checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V
    .locals 8
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v6, 0x3

    .line 355
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 465
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 357
    :cond_1
    if-eqz p1, :cond_0

    .line 358
    :try_start_1
    iget v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    if-ne v4, v6, :cond_0

    .line 360
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 366
    .local v3, "state":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_2

    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_7

    .line 368
    :cond_2
    const/4 v1, 0x0

    .line 369
    .local v1, "isVzwAkaNetworkFound":Z
    if-eqz p2, :cond_7

    .line 370
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    .line 374
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 375
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 379
    .local v2, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "[ESS]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "[WPS][ESS]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "[ESS][SEC80]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 383
    :cond_3
    iget v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    .line 374
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 397
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_5
    iget v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    if-lez v4, :cond_6

    .line 399
    iget v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    if-lt v4, v6, :cond_6

    .line 407
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    if-eqz v4, :cond_6

    .line 408
    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V

    .line 451
    :cond_6
    iget v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    if-gtz v4, :cond_0

    .line 460
    .end local v0    # "i":I
    .end local v1    # "isVzwAkaNetworkFound":Z
    :cond_7
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 355
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private checkIfLowSignalFromProvider()Z
    .locals 9

    .prologue
    .line 867
    const/4 v6, 0x0

    .line 868
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 869
    .local v8, "value":Ljava/lang/String;
    const/4 v7, 0x0

    .line 870
    .local v7, "isLowSignal":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 872
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/WifiNotificationController;->LOW_SIGNAL_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 874
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 875
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 876
    const-string v1, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    const/4 v7, 0x1

    .line 880
    :cond_0
    if-eqz v6, :cond_1

    .line 881
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 883
    :cond_1
    return v7

    .line 880
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 881
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 880
    :cond_2
    throw v1
.end method

.method private connectToVzwEapAkaNetwork()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 825
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 826
    .local v0, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    const-string v2, "VerizonWiFiAccess"

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 827
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 828
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 829
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 830
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 832
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 833
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x25001

    iput v2, v1, Landroid/os/Message;->what:I

    .line 834
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 835
    iput v4, v1, Landroid/os/Message;->arg2:I

    .line 836
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 838
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 839
    return-void
.end method

.method private isSecuredAp(I)Z
    .locals 8
    .param p1, "networkId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 735
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 736
    .local v3, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 737
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_3

    .line 738
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 739
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, p1, :cond_0

    .line 740
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 741
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v5

    if-eqz v6, :cond_2

    .line 749
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v4

    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    move v4, v5

    .line 743
    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    move v4, v5

    .line 749
    goto :goto_0
.end method

.method private declared-synchronized resetNotification()V
    .locals 4

    .prologue
    .line 472
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    .line 473
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    .line 474
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V

    .line 475
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mPrevVzwNotificationId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    monitor-exit p0

    return-void

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetVzwNotification()V
    .locals 2

    .prologue
    .line 479
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationRepeatTime:J

    .line 480
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNotificationController;->showVzwWifiNotification(Z)V

    .line 481
    return-void
.end method

.method private setNotificationVisible(ZIZI)V
    .locals 12
    .param p1, "visible"    # Z
    .param p2, "numNetworks"    # I
    .param p3, "force"    # Z
    .param p4, "delay"    # I

    .prologue
    .line 502
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iput p2, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignalNWs:I

    .line 510
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 514
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    if-nez p1, :cond_2

    .line 573
    const/4 v0, 0x0

    sget v1, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 575
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    goto :goto_0

    .line 519
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_cmcc_manual"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 525
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.WLAN_SSID_AVAILABLE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    goto :goto_0

    .line 530
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    if-nez v0, :cond_4

    .line 532
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    .line 533
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/app/Notification;->when:J

    .line 534
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    sget v1, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 535
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 537
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 538
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const v0, 0x10008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 540
    iget-object v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v11, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 547
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v6, "deleteIntent":Landroid/content/Intent;
    const-string v0, "nid"

    sget v1, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 549
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v6, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 552
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "deleteIntent":Landroid/content/Intent;
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1130015

    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 554
    .local v10, "title":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1130016

    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 557
    .local v7, "details":Ljava/lang/CharSequence;
    const-string v0, "CHN"

    const-string v1, "CHN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 559
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 560
    .local v9, "simpleWifiWidgetIntent":Landroid/content/Intent;
    const-string v0, "com.android.settings.wifi.action.SET_WIFI_WIDGET_OPEN_NETWORK"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    const-string v0, "num_of_open_networks"

    invoke-virtual {v9, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 562
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 565
    .end local v9    # "simpleWifiWidgetIntent":Landroid/content/Intent;
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iput-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 566
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v10, v7, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    .line 570
    const/4 v0, 0x0

    sget v1, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, v1, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_1
.end method

.method private showVzwEapAkaNetworkFoundNotification()Z
    .locals 15

    .prologue
    .line 788
    const/4 v3, 0x0

    .line 789
    .local v3, "isVzwAkaConfiguredNetworkFound":Z
    iget-object v10, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "wifi"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 790
    .local v4, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 791
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    .line 792
    .local v8, "simState":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 794
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v1, :cond_1

    .line 795
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 796
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v10, "VerizonWiFiAccess"

    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 797
    const/4 v3, 0x1

    .line 802
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    if-nez v3, :cond_2

    const/4 v10, 0x5

    if-ne v8, v10, :cond_2

    .line 804
    const-string v10, "WifiNotificationController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVzwAkaConfiguredNetworkFound: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v10, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 806
    .local v7, "r":Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "ACTION_CONNECT_TO_VZW_EAP_AKA"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 807
    .local v6, "pi":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x10406de

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "VerizonWiFiAccess"

    aput-object v14, v12, v13

    invoke-virtual {v7, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    const v11, 0x10406df

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    sget v11, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 815
    .local v9, "vzwAkaNotification":Landroid/app/Notification;
    const v10, 0x2df96b

    invoke-virtual {v5, v10, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 816
    const/4 v10, 0x1

    .line 819
    .end local v6    # "pi":Landroid/app/PendingIntent;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v9    # "vzwAkaNotification":Landroid/app/Notification;
    :goto_0
    return v10

    .line 818
    :cond_2
    const-string v10, "WifiNotificationController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVzwAkaConfiguredNetworkFound: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private showVzwWifiNotification(Z)V
    .locals 11
    .param p1, "visible"    # Z

    .prologue
    const/16 v10, 0x146e

    const/4 v9, 0x0

    .line 580
    const-string v5, "WifiNotificationController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showVzwWifiNotification: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 582
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_2

    .line 583
    const-string v5, "WifiNotificationController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mVzwNotificationRepeatTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationRepeatTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationRepeatTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 586
    const-string v5, "WifiNotificationController"

    const-string v6, "not showing notification"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwWifiNotification:Landroid/app/Notification;

    if-nez v5, :cond_1

    .line 591
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwWifiNotification:Landroid/app/Notification;

    .line 592
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwWifiNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 593
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwWifiNotification:Landroid/app/Notification;

    sget v6, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 594
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwWifiNotification:Landroid/app/Notification;

    const/16 v6, 0x10

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 595
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwWifiNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.settings.WIFI_SETTINGS_STATUS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 597
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.net.wifi.SEC_VZW_NOTIFICATION_CANCEL"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, "deleteIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwWifiNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 600
    .end local v0    # "deleteIntent":Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 601
    .local v3, "r":Landroid/content/res/Resources;
    const v5, 0x10406de

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "VerizonWiFi"

    aput-object v7, v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 603
    .local v4, "title":Ljava/lang/CharSequence;
    const v5, 0x10406df

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, "details":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwWifiNotification:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 606
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwWifiNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwWifiNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v4, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationRepeatTime:J

    .line 608
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwWifiNotification:Landroid/app/Notification;

    invoke-virtual {v2, v10, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 612
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mIsShowingVzwNotification:Z

    .line 613
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationShown:Z

    goto :goto_0

    .line 610
    :cond_2
    invoke-virtual {v2, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method private updateResources()V
    .locals 7

    .prologue
    .line 624
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    if-eqz v4, :cond_0

    .line 625
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 626
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1130015

    iget v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 628
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1130016

    iget v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 630
    .local v0, "details":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 631
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 632
    sget v4, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 634
    .end local v0    # "details":Ljava/lang/CharSequence;
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNoti:Landroid/app/Notification;

    if-eqz v4, :cond_1

    .line 639
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :goto_0
    return-void

    .line 640
    :catch_0
    move-exception v1

    .line 641
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v4, "WifiNotificationController"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationRepeatTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationShown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNumScansSinceNetworkStateChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method public showOngoingWifiNotification(ZIZ)V
    .locals 13
    .param p1, "enable"    # Z
    .param p2, "notificationId"    # I
    .param p3, "forceupdate"    # Z

    .prologue
    .line 648
    const-string v0, "WifiNotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showOngoingWifiNotification show : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 650
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_4

    .line 657
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNoti:Landroid/app/Notification;

    if-nez v0, :cond_0

    .line 658
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNoti:Landroid/app/Notification;

    .line 659
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNoti:Landroid/app/Notification;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/app/Notification;->when:J

    .line 660
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNoti:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 669
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNoti:Landroid/app/Notification;

    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 670
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNoti:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 672
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 673
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    const v0, 0x10008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 676
    const-string v0, "launchWithEnable"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 677
    iget-object v12, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNoti:Landroid/app/Notification;

    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v12, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 680
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 681
    .local v8, "r":Landroid/content/res/Resources;
    const/4 v10, 0x0

    .line 682
    .local v10, "title":Ljava/lang/String;
    const/4 v6, 0x0

    .line 683
    .local v6, "message":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 712
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNoti:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->icon:I

    .line 713
    iput p2, p0, Lcom/android/server/wifi/WifiNotificationController;->mPrevVzwNotificationId:I

    .line 717
    if-eqz v10, :cond_1

    if-eqz v6, :cond_1

    .line 718
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNoti:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNoti:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v10, v6, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 719
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    .line 721
    const v0, 0x2df96b

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNoti:Landroid/app/Notification;

    invoke-virtual {v7, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationVisible:Z

    .line 732
    .end local v6    # "message":Ljava/lang/String;
    .end local v8    # "r":Landroid/content/res/Resources;
    .end local v10    # "title":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 685
    .restart local v6    # "message":Ljava/lang/String;
    .restart local v8    # "r":Landroid/content/res/Resources;
    .restart local v10    # "title":Ljava/lang/String;
    :pswitch_0
    const v0, 0x10406d0

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 686
    const v0, 0x10406d5

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 687
    goto :goto_0

    .line 689
    :pswitch_1
    const v0, 0x10406d2

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 690
    const v0, 0x10406d3

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 691
    goto :goto_0

    .line 693
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    .line 694
    .local v11, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const v0, 0x10406d7

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 695
    .local v9, "secure":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNotificationController;->isSecuredAp(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 696
    const v0, 0x10406d6

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 698
    :cond_3
    const v0, 0x10406d4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v9, v1, v3

    invoke-virtual {v8, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 699
    const v0, 0x10406d5

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 700
    goto/16 :goto_0

    .line 703
    .end local v9    # "secure":Ljava/lang/String;
    .end local v11    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :pswitch_3
    const v0, 0x10406ce

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 704
    const v0, 0x10406cf

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 705
    goto/16 :goto_0

    .line 707
    :pswitch_4
    const v0, 0x10406d8

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 708
    const v0, 0x10406d9

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 726
    .end local v6    # "message":Ljava/lang/String;
    .end local v8    # "r":Landroid/content/res/Resources;
    .end local v10    # "title":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNoti:Landroid/app/Notification;

    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    .line 727
    const v0, 0x2df96b

    invoke-virtual {v7, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 728
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationVisible:Z

    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNoti:Landroid/app/Notification;

    goto/16 :goto_2

    .line 722
    .restart local v6    # "message":Ljava/lang/String;
    .restart local v8    # "r":Landroid/content/res/Resources;
    .restart local v10    # "title":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 683
    :pswitch_data_0
    .packed-switch 0x10808dd
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
