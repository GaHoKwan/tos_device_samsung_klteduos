.class public Lcom/android/server/connectivity/Nat464Xlat;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Nat464Xlat.java"


# static fields
.field public static final CLAT_INTERFACE_NAME:Ljava/lang/String; = "clat4"

.field private static final TAG:Ljava/lang/String; = "Nat464Xlat"


# instance fields
.field private mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsRunning:Z

.field private mIsStarted:Z

.field private mLP:Landroid/net/LinkProperties;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mTracker:Landroid/net/NetworkStateTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nmService"    # Landroid/os/INetworkManagementService;
    .param p3, "connService"    # Landroid/net/IConnectivityManager;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    .line 67
    iput-object p3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mConnService:Landroid/net/IConnectivityManager;

    .line 68
    iput-object p4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mHandler:Landroid/os/Handler;

    .line 70
    iput-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsStarted:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    .line 72
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    .line 73
    return-void
.end method

.method public static isRunningClat(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p0, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 89
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "clat4"

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string v5, "clat4"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    const-string v5, "Nat464Xlat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interface clat4 added, mIsRunning = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> true"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    .line 158
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 159
    .local v1, "config":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v0

    .line 160
    .local v0, "clatAddress":Landroid/net/LinkAddress;
    iget-object v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->clear()V

    .line 161
    iget-object v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    invoke-virtual {v5, p1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 162
    new-instance v3, Landroid/net/RouteInfo;

    new-instance v5, Landroid/net/LinkAddress;

    sget-object v6, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-direct {v3, v5, v6, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 164
    .local v3, "ipv4Default":Landroid/net/RouteInfo;
    iget-object v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    invoke-virtual {v5, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 165
    iget-object v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    invoke-virtual {v5, v0}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 166
    iget-object v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mTracker:Landroid/net/NetworkStateTracker;

    iget-object v6, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    invoke-interface {v5, v6}, Landroid/net/NetworkStateTracker;->addStackedLink(Landroid/net/LinkProperties;)V

    .line 167
    const-string v5, "Nat464Xlat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding stacked link. tracker LP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Nat464Xlat;->mTracker:Landroid/net/NetworkStateTracker;

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v0    # "clatAddress":Landroid/net/LinkAddress;
    .end local v1    # "config":Landroid/net/InterfaceConfiguration;
    .end local v3    # "ipv4Default":Landroid/net/RouteInfo;
    :goto_0
    iget-object v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mHandler:Landroid/os/Handler;

    const v6, 0x70001

    iget-object v7, p0, Lcom/android/server/connectivity/Nat464Xlat;->mTracker:Landroid/net/NetworkStateTracker;

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 177
    .local v4, "msg":Landroid/os/Message;
    const-string v5, "Nat464Xlat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sending message to ConnectivityService: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 180
    .end local v4    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "Nat464Xlat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error getting link properties: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string v0, "clat4"

    if-ne p1, v0, :cond_1

    .line 185
    iget-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "clat4"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 190
    :cond_0
    const-string v0, "Nat464Xlat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interface clat4 removed, mIsRunning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    .line 193
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mTracker:Landroid/net/NetworkStateTracker;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    invoke-interface {v0, v1}, Landroid/net/NetworkStateTracker;->removeStackedLink(Landroid/net/LinkProperties;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 195
    const-string v0, "Nat464Xlat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsStarted:Z

    return v0
.end method

.method public requiresClat(ILandroid/net/NetworkStateTracker;)Z
    .locals 2
    .param p1, "netType"    # I
    .param p2, "tracker"    # Landroid/net/NetworkStateTracker;

    .prologue
    .line 83
    invoke-interface {p2}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 85
    .local v0, "lp":Landroid/net/LinkProperties;
    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startClat(Landroid/net/NetworkStateTracker;)V
    .locals 6
    .param p1, "tracker"    # Landroid/net/NetworkStateTracker;

    .prologue
    .line 97
    iget-boolean v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsStarted:Z

    if-eqz v3, :cond_0

    .line 98
    const-string v3, "Nat464Xlat"

    const-string/jumbo v4, "startClat: already started"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mTracker:Landroid/net/NetworkStateTracker;

    .line 102
    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mTracker:Landroid/net/NetworkStateTracker;

    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    .line 103
    .local v2, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "iface":Ljava/lang/String;
    const-string v3, "Nat464Xlat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting clatd on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->startClatd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsStarted:Z

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Nat464Xlat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error starting clat daemon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopClat()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 117
    iget-boolean v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsStarted:Z

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "Nat464Xlat"

    const-string v2, "Stopping clatd"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopClatd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsStarted:Z

    .line 125
    iput-boolean v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    .line 126
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mTracker:Landroid/net/NetworkStateTracker;

    .line 127
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->clear()V

    .line 131
    :goto_1
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Nat464Xlat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error stopping clat daemon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "Nat464Xlat"

    const-string/jumbo v2, "stopClat: already stopped"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
