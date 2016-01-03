.class public Lcom/android/server/connectivity/EnterpriseVpn;
.super Landroid/net/BaseNetworkStateTracker;
.source "EnterpriseVpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/EnterpriseVpn$Connection;,
        Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;
    }
.end annotation


# static fields
.field private static final ADD:Z = true

.field private static final BIND_VPN_SERVICE:Ljava/lang/String; = "android.permission.BIND_VPN_SERVICE"

.field private static final DBG:Z

.field private static final NOTIFICATION_SIZE:I = 0x48

.field private static final PER_APP_VPN:Z = false

.field private static final SYSTEM_VPN:Z = true

.field private static final TAG:Ljava/lang/String; = "EnterpriseVpn"

.field public static final TUN_INTERFACE_DOWN:I = 0x2

.field public static final TUN_INTERFACE_UP:I = 0x1

.field private static final VPN_NOTIFICATION_ID:I = 0x3e9


# instance fields
.field final knoxVpnV1Enabled:Z

.field final knoxVpnV2Enabled:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

.field private mConfig:Lcom/android/internal/net/VpnConfig;

.field private mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

.field private mConnectivityService:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

.field mLabel:Ljava/lang/String;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mPackage:Ljava/lang/String;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

.field private mProfileName:Ljava/lang/String;

.field private mProfileState:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

.field private mRouteInfo:Z

.field private final mUserId:I

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mVpnUsers:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 97
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    .line 133
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Ljava/lang/String;Landroid/os/INetworkManagementService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vpnCallback"    # Lcom/android/server/ConnectivityService$VpnCallback;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "netService"    # Landroid/os/INetworkManagementService;

    .prologue
    .line 137
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/EnterpriseVpn;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Ljava/lang/String;Landroid/os/INetworkManagementService;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Ljava/lang/String;Landroid/os/INetworkManagementService;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vpnCallback"    # Lcom/android/server/ConnectivityService$VpnCallback;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "netService"    # Landroid/os/INetworkManagementService;
    .param p5, "userId"    # I

    .prologue
    .line 141
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Landroid/net/BaseNetworkStateTracker;-><init>(I)V

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Landroid/os/PersonaManager;

    .line 105
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mBitmap:Landroid/graphics/Bitmap;

    .line 110
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLabel:Ljava/lang/String;

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mEnableTeardown:Z

    .line 123
    const-string v1, "1"

    const-string v2, "ro.config.knox"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnV1Enabled:Z

    .line 124
    const-string/jumbo v1, "v30"

    const-string v2, "ro.config.knox"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnV2Enabled:Z

    .line 127
    sget-object v1, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->IDLE:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileState:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 540
    new-instance v1, Lcom/android/server/connectivity/EnterpriseVpn$3;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/EnterpriseVpn$3;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 142
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 143
    iput-object p3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    .line 144
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    .line 145
    iput-object p2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 148
    .local v10, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    new-instance v8, Lcom/android/server/connectivity/EnterpriseVpn$1;

    invoke-direct {v8, p0}, Lcom/android/server/connectivity/EnterpriseVpn$1;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    .line 167
    .local v8, "localeChangedReceiver":Landroid/content/BroadcastReceiver;
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v9, "localeFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    if-nez p5, :cond_0

    .line 174
    new-instance v1, Lcom/android/server/connectivity/EnterpriseVpn$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/EnterpriseVpn$2;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 198
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 149
    .end local v8    # "localeChangedReceiver":Landroid/content/BroadcastReceiver;
    .end local v9    # "localeFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v7

    .line 150
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "EnterpriseVpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to register mObserver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/connectivity/EnterpriseVpn;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/EnterpriseVpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->onUserAdded(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/server/connectivity/EnterpriseVpn$Connection;)Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/EnterpriseVpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->sendInterfaceStateToKnoxVpn(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/IConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getConnectivityService()Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/EnterpriseVpn;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/IConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/EnterpriseVpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/internal/net/VpnConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/EnterpriseVpn;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/server/ConnectivityService$VpnCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    return-object v0
.end method

.method private addVpnUserLocked(I)V
    .locals 6
    .param p1, "user"    # I

    .prologue
    const/4 v2, 0x1

    .line 881
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->enforceControlPermission()V

    .line 882
    const-string v3, "EnterpriseVpn"

    const-string v4, "In addVpnUserLocked before isRunningLocked()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->isRunningLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 884
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "VPN is not active"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 887
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    if-ne v3, v2, :cond_1

    .line 888
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 890
    .local v1, "forwardDns":Z
    :goto_0
    const-string v3, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In addVpnUserLocked before addUserForwarding()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->addUserForwarding(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    .end local v1    # "forwardDns":Z
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 902
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    const-string v4, "[Legacy VPN]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 903
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->showNotification(Lcom/android/internal/net/VpnConfig;Z)V

    .line 905
    :cond_2
    return-void

    .line 888
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 894
    .restart local v1    # "forwardDns":Z
    :catch_0
    move-exception v0

    .line 895
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method private enforceControlPermission()V
    .locals 2

    .prologue
    .line 652
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 653
    return-void

    .line 655
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Unauthorized Caller"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized getConnectivityService()Landroid/net/IConnectivityManager;
    .locals 4

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v1, :cond_0

    .line 252
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    :goto_0
    :try_start_1
    const-string v1, "EnterpriseVpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectivityService: mConnectivityService value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "EnterpriseVpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 861
    monitor-enter p0

    :try_start_0
    const-string v2, "net.vpn.framework"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 863
    .local v1, "getProperty":Ljava/lang/String;
    :try_start_1
    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 864
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 872
    :goto_0
    monitor-exit p0

    return-object v2

    .line 866
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPremiumVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "EnterpriseVpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 872
    const/4 v2, 0x0

    goto :goto_0

    .line 861
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "getProperty":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .locals 1

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    if-nez v0, :cond_0

    .line 264
    const-string v0, "knox_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPersonaManager()Landroid/os/PersonaManager;
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Landroid/os/PersonaManager;

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getPremiumVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    .locals 3

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    if-nez v1, :cond_1

    .line 273
    const-string v1, "enterprise_premium_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 275
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 276
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VPN policy service is not available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_0
    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 280
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    return-object v1
.end method

.method private isRunningLocked()Z
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(I)I
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniProtect(ILjava/lang/String;)V
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onUserAdded(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 929
    monitor-enter p0

    .line 930
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 931
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 932
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 934
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->addVpnUserLocked(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 939
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 940
    return-void

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseVpn"

    const-string v4, "Failed to add restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 939
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private onUserRemoved(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 944
    monitor-enter p0

    .line 945
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 946
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 947
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 949
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->removeVpnUserLocked(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 954
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 955
    return-void

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseVpn"

    const-string v4, "Failed to remove restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 954
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private removeVpnUserLocked(I)V
    .locals 4
    .param p1, "user"    # I

    .prologue
    const/4 v1, 0x1

    .line 908
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->enforceControlPermission()V

    .line 910
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->isRunningLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 911
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "VPN is not active"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 914
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    if-ne v2, v1, :cond_1

    .line 915
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 918
    .local v1, "forwardDns":Z
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->clearUserForwarding(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    .end local v1    # "forwardDns":Z
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 924
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification()V

    .line 925
    return-void

    .line 915
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 919
    .restart local v1    # "forwardDns":Z
    :catch_0
    move-exception v0

    .line 920
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method private sendInterfaceStateToKnoxVpn(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 611
    sget-boolean v3, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendInterfaceStateToKnoxVpn : profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 615
    .local v1, "token":J
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 616
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    const-string v3, "extra_action"

    const-string/jumbo v4, "tun_info"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    const-string v3, "extra_profile_name"

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    const-string v3, "extra_tun_id"

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string v3, "extra_state"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 621
    sget-boolean v3, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendInterfaceStateToKnoxVpn :  Sending broadcast. profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_1
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 626
    return-void

    .line 624
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method


# virtual methods
.method public closeInterface()V
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->jniReset(Ljava/lang/String;)V

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 791
    sget-object v0, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->DISCONNECTED:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileState:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    .line 793
    :cond_0
    return-void
.end method

.method public createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 5
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 661
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v4, 0x10407c5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 662
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v4, 0x10407c7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "text":Ljava/lang/String;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x108107e

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 674
    .local v0, "notification":Landroid/app/Notification;
    return-object v0
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 30
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v19

    .line 381
    .local v19, "mgr":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v20

    .line 382
    .local v20, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 384
    .local v6, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    move/from16 v29, v0

    invoke-interface/range {v26 .. v29}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 385
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v26

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v27, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 386
    const/16 v23, 0x0

    .line 507
    :goto_0
    monitor-exit p0

    return-object v23

    .line 388
    :catch_0
    move-exception v10

    .line 389
    .local v10, "e":Ljava/lang/Exception;
    const/16 v23, 0x0

    goto :goto_0

    .line 393
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    new-instance v17, Landroid/content/Intent;

    const-string v26, "android.net.VpnService"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v21

    .line 398
    .local v21, "token":J
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v24

    .line 399
    .local v24, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 400
    new-instance v26, Ljava/lang/SecurityException;

    const-string v27, "Restricted users cannot establish VPNs"

    invoke-direct/range {v26 .. v27}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 411
    .end local v24    # "user":Landroid/content/pm/UserInfo;
    :catch_1
    move-exception v10

    .line 412
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v26, Ljava/lang/SecurityException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cannot find "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 414
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v26

    :try_start_5
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 380
    .end local v6    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v19    # "mgr":Landroid/os/UserManager;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    .end local v21    # "token":J
    :catchall_1
    move-exception v26

    monitor-exit p0

    throw v26

    .line 403
    .restart local v6    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v19    # "mgr":Landroid/os/UserManager;
    .restart local v20    # "pm":Landroid/content/pm/PackageManager;
    .restart local v21    # "token":J
    .restart local v24    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    move/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 405
    .local v16, "info":Landroid/content/pm/ResolveInfo;
    if-nez v16, :cond_2

    .line 406
    new-instance v26, Ljava/lang/SecurityException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cannot find "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 408
    :cond_2
    const-string v26, "android.permission.BIND_VPN_SERVICE"

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 409
    new-instance v26, Ljava/lang/SecurityException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " does not require "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 414
    :cond_3
    :try_start_7
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 417
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    if-eqz v26, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_5

    .line 418
    :cond_4
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    .line 423
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    .line 424
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mLabel:Ljava/lang/String;

    .line 425
    const/16 v25, -0x1

    .line 426
    .local v25, "width":I
    const/4 v13, -0x1

    .line 427
    .local v13, "height":I
    const/4 v12, -0x1

    .line 428
    .local v12, "fixed_size":I
    const/4 v15, 0x0

    .line 431
    .local v15, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    if-nez v26, :cond_6

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x108107e

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 433
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v26

    if-lez v26, :cond_6

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v26

    if-lez v26, :cond_6

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1050010

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1050010

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 438
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-virtual {v15, v0, v1, v2, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 439
    sget-object v26, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mBitmap:Landroid/graphics/Bitmap;

    .line 440
    new-instance v8, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 441
    .local v8, "c":Landroid/graphics/Canvas;
    invoke-virtual {v15, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 442
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 451
    .end local v8    # "c":Landroid/graphics/Canvas;
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->jniCreate(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v23

    .line 453
    .local v23, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_8
    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v18

    .line 454
    .local v18, "interfaze":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .local v7, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 457
    .local v5, "address":Landroid/net/LinkAddress;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 495
    .end local v5    # "address":Landroid/net/LinkAddress;
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v18    # "interfaze":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 496
    .local v10, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v26, "EnterpriseVpn"

    const-string v27, "Exception in creating tun interface"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 499
    :try_start_a
    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 504
    :goto_2
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 459
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "builder":Ljava/lang/StringBuilder;
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v18    # "interfaze":Ljava/lang/String;
    :cond_7
    :try_start_b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    .line 460
    new-instance v26, Ljava/lang/IllegalArgumentException;

    const-string v27, "At least one address must be specified"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 463
    :cond_8
    new-instance v9, Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v9, v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn$Connection;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/server/connectivity/EnterpriseVpn$1;)V

    .line 464
    .local v9, "connection":Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    new-instance v28, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    move/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v26

    if-nez v26, :cond_9

    .line 466
    new-instance v26, Ljava/lang/IllegalStateException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cannot bind "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 468
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 471
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_b

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->jniReset(Ljava/lang/String;)V

    .line 475
    :cond_b
    new-instance v26, Landroid/util/SparseBooleanArray;

    invoke-direct/range {v26 .. v26}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    .line 476
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 477
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 478
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 481
    sget-object v26, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->CONNECTED:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileState:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    .line 483
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-wide v21

    .line 485
    :try_start_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/ConnectivityService$VpnCallback;->setMarkedForwarding(Ljava/lang/String;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$VpnCallback;->setRoutes(Ljava/lang/String;Ljava/util/List;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Lcom/android/server/ConnectivityService$VpnCallback;->override(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 490
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->addVpnUserLocked(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 492
    :try_start_d
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 506
    :try_start_e
    const-string v26, "EnterpriseVpn"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Established by "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " on "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_0

    .line 492
    :catchall_2
    move-exception v26

    :try_start_f
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v26
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 500
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "connection":Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v18    # "interfaze":Ljava/lang/String;
    .restart local v10    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    .line 501
    .local v11, "ex":Ljava/lang/Exception;
    :try_start_10
    const-string v26, "EnterpriseVpn"

    const-string v27, "Exception in closing tun interface"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_2
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonaUserIds()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 845
    sget-boolean v4, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "EnterpriseVpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPersonaUserIds > mUserId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 847
    .local v0, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaManager()Landroid/os/PersonaManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v3

    .line 848
    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 849
    sget-boolean v4, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "EnterpriseVpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPersonaUserIds > persona size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 851
    .local v2, "info":Landroid/content/pm/PersonaInfo;
    iget v4, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 854
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    :cond_2
    sget-boolean v4, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "EnterpriseVpn"

    const-string v5, "getPersonaUserIds > Does not created any persona!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_3
    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    const-string v0, "net.tcp.buffersize.unknown"

    return-object v0
.end method

.method public hideNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 798
    sget-boolean v6, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "EnterpriseVpn"

    const-string v7, "hideNotification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_0
    iget-object v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 801
    .local v5, "nm":Landroid/app/NotificationManager;
    if-eqz v5, :cond_2

    .line 802
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 803
    .local v3, "identity":J
    iget-boolean v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnV2Enabled:Z

    if-nez v6, :cond_3

    .line 804
    const/16 v6, 0x3e9

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v9, v6, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 815
    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 817
    .end local v3    # "identity":J
    :cond_2
    return-void

    .line 806
    .restart local v3    # "identity":J
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaUserIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 807
    .local v1, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    if-eqz v1, :cond_1

    .line 809
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 810
    .local v0, "domain":I
    sget-boolean v6, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v6, :cond_4

    const-string v6, "EnterpriseVpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hideNotification > domain : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_4
    add-int/lit16 v6, v0, 0x3e9

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v9, v6, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public hideNotification(I)V
    .locals 6
    .param p1, "domain"    # I

    .prologue
    .line 820
    sget-boolean v3, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hideNotification > domain : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 823
    .local v2, "nm":Landroid/app/NotificationManager;
    if-eqz v2, :cond_1

    .line 824
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 825
    .local v0, "identity":J
    const/4 v3, 0x0

    add-int/lit16 v4, p1, 0x3e9

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 826
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 828
    .end local v0    # "identity":J
    :cond_1
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "interfaze"    # Ljava/lang/String;

    .prologue
    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isConnectedProfile()Z
    .locals 3

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileState:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    sget-object v2, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->CONNECTED:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileState:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    sget-object v2, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->DISCONNECTED:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    if-ne v1, v2, :cond_1

    .line 534
    :cond_0
    const/4 v0, 0x1

    .line 536
    :cond_1
    sget-object v1, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->IDLE:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileState:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    .line 537
    return v0
.end method

.method public declared-synchronized prepare()Z
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 293
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->enforceControlPermission()V

    .line 296
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 297
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v4

    .line 299
    .local v4, "token":J
    :try_start_1
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v8}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    .line 300
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 301
    .local v3, "size":I
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    move v1, v7

    .line 303
    .local v1, "forwardDns":Z
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 304
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 305
    .local v6, "user":I
    iget-boolean v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    if-ne v8, v7, :cond_1

    .line 306
    const-string v8, "EnterpriseVpn"

    const-string v9, "Before clearUserForwarding in prepare EnterpriseVPN"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :try_start_2
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v8, v9, v6, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->clearUserForwarding(Ljava/lang/String;IZ)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 322
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "forwardDns":Z
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v6    # "user":I
    :catchall_0
    move-exception v7

    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 293
    .end local v4    # "token":J
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 316
    .restart local v1    # "forwardDns":Z
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    .restart local v4    # "token":J
    :cond_2
    :try_start_5
    iget-boolean v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    if-ne v8, v7, :cond_3

    .line 317
    const-string v8, "EnterpriseVpn"

    const-string v9, "Before clearMarkedForwarding in prepare EnterpriseVPN"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 322
    :cond_3
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 327
    .end local v1    # "forwardDns":Z
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "token":J
    :cond_4
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v8, :cond_5

    .line 329
    :try_start_7
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn$Connection;->mService:Landroid/os/IBinder;
    invoke-static {v8}, Lcom/android/server/connectivity/EnterpriseVpn$Connection;->access$300(Lcom/android/server/connectivity/EnterpriseVpn$Connection;)Landroid/os/IBinder;

    move-result-object v8

    const v9, 0xffffff

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 334
    :goto_2
    :try_start_8
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    invoke-virtual {v8, v9}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 335
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 337
    :cond_5
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 338
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/connectivity/EnterpriseVpn;->jniReset(Ljava/lang/String;)V

    .line 339
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 340
    sget-object v8, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->DISCONNECTED:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    iput-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileState:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    .line 342
    :cond_6
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 343
    monitor-exit p0

    return v7

    .line 331
    :catch_1
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v8, "EnterpriseVpn"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2
.end method

.method public protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 6
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "interfaze"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 356
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 357
    .local v0, "appUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v4, v0, :cond_0

    .line 358
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Unauthorized Caller"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 361
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 363
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v4, p1}, Lcom/android/server/ConnectivityService$VpnCallback;->protect(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 367
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/android/server/connectivity/EnterpriseVpn;->jniProtect(ILjava/lang/String;)V

    .line 368
    return-void

    .line 365
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public reconnect()Z
    .locals 1

    .prologue
    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reconnectDualMMS(I)Z
    .locals 1
    .param p1, "usingNetworkType"    # I

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public refreshNotification(ZI)V
    .locals 8
    .param p1, "optionAdd"    # Z
    .param p2, "domain"    # I

    .prologue
    .line 831
    sget-boolean v5, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "EnterpriseVpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshNotification > domain : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", optionAdd : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 834
    .local v1, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 836
    .local v3, "nm":Landroid/app/NotificationManager;
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {v5, v6, p1, p2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v4

    .line 837
    .local v4, "notification":Landroid/app/Notification;
    const/4 v5, 0x0

    add-int/lit16 v6, p2, 0x3e9

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v5, v6, v4, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    .end local v3    # "nm":Landroid/app/NotificationManager;
    .end local v4    # "notification":Landroid/app/Notification;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 842
    return-void

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseVpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPolicyDataEnableSecondary(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 215
    return-void
.end method

.method public setUserDataEnableEx(ZI)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "simSlot"    # I

    .prologue
    .line 219
    return-void
.end method

.method public setUserDataEnableSecondary(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 209
    return-void
.end method

.method public showNotification(Lcom/android/internal/net/VpnConfig;Z)V
    .locals 13
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "optionAdd"    # Z

    .prologue
    const/4 v12, 0x0

    .line 678
    sget-boolean v9, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "EnterpriseVpn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "showNotification > profileName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , optionAdd : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 682
    .local v7, "nm":Landroid/app/NotificationManager;
    if-eqz p1, :cond_1

    if-nez v7, :cond_3

    .line 683
    :cond_1
    const-string v9, "EnterpriseVpn"

    const-string v10, "Error : can not init"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_2
    :goto_0
    return-void

    .line 687
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, p1, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 688
    if-eqz v7, :cond_2

    if-eqz p1, :cond_2

    .line 689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 691
    .local v4, "identity":J
    iget-boolean v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnV2Enabled:Z

    if-nez v9, :cond_6

    .line 692
    sget-boolean v9, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v9, :cond_4

    const-string v9, "EnterpriseVpn"

    const-string/jumbo v10, "showNotification > KNOX 1.0 enabled"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_4
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v9, p1, p2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpn(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;Z)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v8

    .line 694
    .local v8, "notification":Landroid/app/Notification;
    const/16 v9, 0x3e9

    new-instance v10, Landroid/os/UserHandle;

    const/4 v11, -0x1

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v12, v9, v8, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 730
    .end local v8    # "notification":Landroid/app/Notification;
    :cond_5
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 696
    :cond_6
    sget-boolean v9, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v9, :cond_7

    const-string v9, "EnterpriseVpn"

    const-string/jumbo v10, "showNotification > KNOX 2.0 enabled"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_7
    iget-boolean v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 698
    sget-boolean v9, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v9, :cond_8

    const-string v9, "EnterpriseVpn"

    const-string/jumbo v10, "showNotification > vpn type is system"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_8
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-static {v9, p1, p2, v10}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v8

    .line 712
    .restart local v8    # "notification":Landroid/app/Notification;
    iget v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    add-int/lit16 v9, v9, 0x3e9

    new-instance v10, Landroid/os/UserHandle;

    iget v11, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v12, v9, v8, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 713
    sget-boolean v9, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v9, :cond_5

    const-string v9, "EnterpriseVpn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "showNotification > domain : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 715
    .end local v8    # "notification":Landroid/app/Notification;
    :cond_9
    sget-boolean v9, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v9, :cond_a

    const-string v9, "EnterpriseVpn"

    const-string/jumbo v10, "showNotification > vpn type is per-app"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_a
    :try_start_0
    iget-object v9, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/connectivity/EnterpriseVpn;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 718
    .local v1, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_5

    .line 719
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 720
    .local v6, "item":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 721
    .local v0, "domain":I
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v9, p1, p2, v0}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v8

    .line 722
    .restart local v8    # "notification":Landroid/app/Notification;
    const/4 v9, 0x0

    add-int/lit16 v10, v0, 0x3e9

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v9, v10, v8, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 725
    .end local v0    # "domain":I
    .end local v1    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "item":Ljava/lang/String;
    .end local v8    # "notification":Landroid/app/Notification;
    :catch_0
    move-exception v2

    .line 726
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "EnterpriseVpn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected startMonitoringInternal()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public teardown()Z
    .locals 1

    .prologue
    .line 235
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public teardownDualMMS(I)Z
    .locals 1
    .param p1, "usingNetworkType"    # I

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized updateNotification()V
    .locals 14

    .prologue
    .line 737
    monitor-enter p0

    :try_start_0
    sget-boolean v10, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v10, :cond_0

    const-string v10, "EnterpriseVpn"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateNotification > user : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_0
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 740
    .local v6, "nm":Landroid/app/NotificationManager;
    if-eqz v6, :cond_3

    .line 741
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 742
    .local v3, "identity":J
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v11, 0x10407c5

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 743
    .local v9, "title":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v11, 0x10407c7

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 745
    .local v8, "text":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnV2Enabled:Z

    if-nez v10, :cond_4

    .line 746
    sget-boolean v10, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v10, :cond_1

    const-string v10, "EnterpriseVpn"

    const-string/jumbo v11, "updateNotification > KNOX 1.0 enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_1
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefresh(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v7

    .line 748
    .local v7, "notification":Landroid/app/Notification;
    const/4 v10, 0x0

    const/16 v11, 0x3e9

    new-instance v12, Landroid/os/UserHandle;

    const/4 v13, -0x1

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v10, v11, v7, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 778
    .end local v7    # "notification":Landroid/app/Notification;
    :cond_2
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    .end local v3    # "identity":J
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_3
    monitor-exit p0

    return-void

    .line 750
    .restart local v3    # "identity":J
    .restart local v8    # "text":Ljava/lang/String;
    .restart local v9    # "title":Ljava/lang/String;
    :cond_4
    :try_start_1
    sget-boolean v10, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v10, :cond_5

    const-string v10, "EnterpriseVpn"

    const-string/jumbo v11, "updateNotification > KNOX 2.0 enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_5
    iget-boolean v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 752
    sget-boolean v10, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v10, :cond_6

    const-string v10, "EnterpriseVpn"

    const-string/jumbo v11, "updateNotification > vpn type is system"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_6
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-static {v10, v11}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefreshAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v7

    .line 764
    .restart local v7    # "notification":Landroid/app/Notification;
    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    add-int/lit16 v11, v11, 0x3e9

    new-instance v12, Landroid/os/UserHandle;

    iget v13, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v10, v11, v7, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 765
    sget-boolean v10, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v10, :cond_2

    const-string v10, "EnterpriseVpn"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateNotification > domain : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 737
    .end local v3    # "identity":J
    .end local v6    # "nm":Landroid/app/NotificationManager;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 767
    .restart local v3    # "identity":J
    .restart local v6    # "nm":Landroid/app/NotificationManager;
    .restart local v8    # "text":Ljava/lang/String;
    .restart local v9    # "title":Ljava/lang/String;
    :cond_7
    :try_start_2
    sget-boolean v10, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v10, :cond_8

    const-string v10, "EnterpriseVpn"

    const-string/jumbo v11, "updateNotification > vpn type is per-app"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_8
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 769
    .local v1, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 770
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 771
    .local v5, "item":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 772
    .local v0, "domain":I
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v10, v0}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefreshAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v7

    .line 773
    .restart local v7    # "notification":Landroid/app/Notification;
    const/4 v10, 0x0

    add-int/lit16 v11, v0, 0x3e9

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v10, v11, v7, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
