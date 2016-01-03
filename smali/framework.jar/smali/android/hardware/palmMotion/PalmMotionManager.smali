.class public Landroid/hardware/palmMotion/PalmMotionManager;
.super Ljava/lang/Object;
.source "PalmMotionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PalmMotionManager"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mPalmMotionService:Landroid/hardware/palmMotion/IPalmMotionService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/palmMotion/PalmMotionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/palmMotion/PalmMotionManager;->mPalmMotionService:Landroid/hardware/palmMotion/IPalmMotionService;

    .line 34
    sput-object p1, Landroid/hardware/palmMotion/PalmMotionManager;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Landroid/hardware/palmMotion/PalmMotionManager;->getService()Landroid/hardware/palmMotion/IPalmMotionService;

    .line 36
    return-void
.end method

.method private declared-synchronized getService()Landroid/hardware/palmMotion/IPalmMotionService;
    .locals 2

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/palmMotion/PalmMotionManager;->mPalmMotionService:Landroid/hardware/palmMotion/IPalmMotionService;

    if-nez v0, :cond_0

    .line 40
    const-string v0, "palmmotionservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/palmMotion/IPalmMotionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/palmMotion/IPalmMotionService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/palmMotion/PalmMotionManager;->mPalmMotionService:Landroid/hardware/palmMotion/IPalmMotionService;

    .line 43
    iget-object v0, p0, Landroid/hardware/palmMotion/PalmMotionManager;->mPalmMotionService:Landroid/hardware/palmMotion/IPalmMotionService;

    if-nez v0, :cond_0

    .line 44
    const-string v0, "PalmMotionManager"

    const-string v1, "mPalmMotionService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    iget-object v0, p0, Landroid/hardware/palmMotion/PalmMotionManager;->mPalmMotionService:Landroid/hardware/palmMotion/IPalmMotionService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public setUseGestureDetectorEx(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 52
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/palmMotion/PalmMotionManager;->getService()Landroid/hardware/palmMotion/IPalmMotionService;

    move-result-object v1

    .line 53
    .local v1, "svc":Landroid/hardware/palmMotion/IPalmMotionService;
    if-eqz v1, :cond_0

    .line 54
    invoke-interface {v1, p1}, Landroid/hardware/palmMotion/IPalmMotionService;->setUseGestureDetectorEx(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    return-void

    .line 56
    .end local v1    # "svc":Landroid/hardware/palmMotion/IPalmMotionService;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
