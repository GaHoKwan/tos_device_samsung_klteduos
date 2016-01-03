.class public Lcom/android/server/cocktailbar/CocktailBarManagerService;
.super Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;
.source "CocktailBarManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CocktailBarManagerService"


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCocktailBarServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;-><init>()V

    .line 38
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    .line 158
    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    .line 44
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 45
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-direct {v0, p1, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;-><init>(Landroid/content/Context;I)V

    .line 46
    .local v0, "primary":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;

    return-object v0
.end method

.method private checkPermission(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 68
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v6

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 72
    .local v7, "realUserId":I
    return-void
.end method

.method private getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->checkPermission(I)V

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "sendInitial":Z
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v3

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 80
    .local v1, "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    if-nez v1, :cond_0

    .line 81
    const-string v2, "CocktailBarManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find CocktailBarManagerService for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", adding"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .end local v1    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;-><init>(Landroid/content/Context;I)V

    .line 84
    .restart local v1    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 85
    const/4 v0, 0x1

    .line 87
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendInitialBroadcasts()V

    .line 91
    :cond_1
    return-object v1

    .line 87
    .end local v1    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 51
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 53
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 55
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 61
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v8, "sdFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 65
    return-void
.end method


# virtual methods
.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "connection"    # Landroid/os/IBinder;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0, p4}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 150
    return-void
.end method

.method public closeCocktail(II)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->closeCocktail(I)V

    .line 123
    return-void
.end method

.method public getCocktail(II)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    return-object v0
.end method

.method public getCocktailId(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 143
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCocktailIds(I)[I
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailIds()[I

    move-result-object v0

    return-object v0
.end method

.method public notifyCocktailViewDataChanged(III)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "cocktailId"    # I
    .param p3, "viewId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailViewDataChanged(II)V

    .line 129
    return-void
.end method

.method public requestToUpdateCocktail(II)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToUpdateCocktail(I)Z

    move-result v0

    return v0
.end method

.method public setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Lcom/samsung/android/cocktailbar/ICocktailHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;Ljava/util/List;I)[I
    .locals 1
    .param p1, "host"    # Lcom/samsung/android/cocktailbar/ICocktailHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/cocktailbar/ICocktailHost;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;I)[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    .local p3, "updatedCocktails":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    invoke-direct {p0, p4}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;Ljava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;I)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unbindRemoteViewsService(ILandroid/content/Intent;)V

    .line 156
    return-void
.end method

.method public updateCocktail(ILcom/samsung/android/cocktailbar/CocktailInfo;I)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "cocktailInfo"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p3, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    if-nez p2, :cond_0

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateCocktailLocked(ILcom/samsung/android/cocktailbar/CocktailInfo;)V

    goto :goto_0
.end method
