.class public Landroid/hardware/scontext/SContextManager;
.super Ljava/lang/Object;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextManager"


# instance fields
.field private mAvailableServiceMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;

.field private mSContextService:Landroid/hardware/scontext/ISContextService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 56
    const-string v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/scontext/ISContextService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    .line 58
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    .line 59
    return-void
.end method

.method private changeParameters(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "property"    # Landroid/hardware/scontext/SContextProperty;

    .prologue
    const/4 v3, 0x0

    .line 674
    invoke-virtual {p2}, Landroid/hardware/scontext/SContextProperty;->getType()I

    move-result v2

    .line 675
    .local v2, "service":I
    invoke-direct {p0, p1, v2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 695
    :goto_0
    return v3

    .line 679
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 681
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_1

    .line 682
    const-string v4, "SContextManager"

    const-string v5, "  .changeParameters : SContextListener is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 687
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3, v1, p2}, Landroid/hardware/scontext/ISContextService;->changeParameters(Landroid/os/IBinder;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 688
    const-string v3, "SContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .changeParameters : listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :cond_2
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SContextManager"

    const-string v4, "RemoteException in changeParameters: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 843
    const/4 v0, 0x0

    .line 844
    .local v0, "res":Z
    if-nez p1, :cond_0

    .line 845
    const-string v2, "SContextManager"

    const-string v3, "Listener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 849
    .end local v0    # "res":Z
    .local v1, "res":I
    :goto_0
    return v1

    .line 848
    .end local v1    # "res":I
    .restart local v0    # "res":Z
    :cond_0
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    move v1, v0

    .line 849
    .restart local v1    # "res":I
    goto :goto_0
.end method

.method private getAvailableServiceMap()Ljava/util/HashMap;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 802
    const/4 v2, 0x0

    .line 804
    .local v2, "serviceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3}, Landroid/hardware/scontext/ISContextService;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :goto_0
    return-object v2

    .line 805
    :catch_0
    move-exception v1

    .line 806
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SContextManager"

    const-string v4, "RemoteException in getAvailableServiceMap: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;

    .prologue
    .line 818
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 819
    :cond_0
    const/4 v2, 0x0

    .line 833
    :cond_1
    :goto_0
    return-object v2

    .line 822
    :cond_2
    const/4 v2, 0x0

    .line 824
    .local v2, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 825
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 826
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .line 827
    .local v0, "delegate":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 828
    move-object v2, v0

    .line 829
    goto :goto_0
.end method

.method private registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "property"    # Landroid/hardware/scontext/SContextProperty;

    .prologue
    .line 521
    invoke-virtual {p2}, Landroid/hardware/scontext/SContextProperty;->getType()I

    move-result v2

    .line 522
    .local v2, "service":I
    invoke-direct {p0, p1, v2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 523
    const/4 v3, 0x0

    .line 541
    :goto_0
    return v3

    .line 526
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 528
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_1

    .line 529
    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .end local v1    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Handler;)V

    .line 530
    .restart local v1    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3, v1, p2}, Landroid/hardware/scontext/ISContextService;->registerCallback(Landroid/os/IBinder;Landroid/hardware/scontext/SContextProperty;)V

    .line 535
    const-string v3, "SContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .registerListener : listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SContextManager"

    const-string v4, "RemoteException in registerListener: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 645
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 646
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    if-ne p2, v3, :cond_1

    .line 647
    const/4 v2, 0x1

    if-eq p3, v2, :cond_0

    if-ne p3, v3, :cond_2

    .line 649
    :cond_0
    const-string v2, "pedometer_gender"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 650
    const-string v2, "pedometer_height"

    invoke-virtual {v0, v2, p4, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;D)V

    .line 651
    const-string v2, "pedometer_weight"

    invoke-virtual {v0, v2, p6, p7}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;D)V

    .line 659
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    .line 661
    :cond_1
    :goto_0
    return v1

    .line 653
    :cond_2
    const-string v2, "SContextManager"

    const-string v3, "The arg is wrong!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFeatureLevel(I)I
    .locals 2
    .param p1, "service"    # I

    .prologue
    .line 758
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 761
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initializeSContextService(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 612
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 618
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_2

    .line 619
    const-string v2, "SContextManager"

    const-string v3, "  .initializeSContextService : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 624
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->initializeSContextService(Landroid/os/IBinder;I)V

    .line 625
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .initializeSContextService : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in initializeSContextService: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isAvailableService(I)Z
    .locals 3
    .param p1, "service"    # I

    .prologue
    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, "res":Z
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 743
    invoke-direct {p0}, Landroid/hardware/scontext/SContextManager;->getAvailableServiceMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 745
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 746
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 748
    :cond_1
    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 70
    const/16 v2, 0x22

    if-ne p2, v2, :cond_0

    .line 71
    const-string v2, "SContextManager"

    const-string v3, "This service needs parameters."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v1, 0x0

    .line 77
    :goto_0
    return v1

    .line 74
    :cond_0
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 75
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    .line 77
    .local v1, "res":Z
    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 93
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 94
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 95
    const-string v2, "step_cout_alert_step"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 114
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    .line 116
    :goto_1
    return v1

    .line 96
    :cond_1
    const/4 v2, 0x6

    if-ne p2, v2, :cond_4

    .line 97
    if-eqz p3, :cond_2

    if-eq p3, v3, :cond_2

    const/4 v2, 0x4

    if-ne p3, v2, :cond_3

    .line 100
    :cond_2
    const-string v2, "auto_rotation_device_type"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    goto :goto_0

    .line 102
    :cond_3
    const-string v2, "SContextManager"

    const-string v3, "The arg is wrong!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 105
    :cond_4
    const/16 v2, 0x10

    if-ne p2, v2, :cond_0

    .line 106
    const/4 v2, 0x1

    if-eq p3, v2, :cond_5

    if-ne p3, v3, :cond_6

    .line 108
    :cond_5
    const-string/jumbo v2, "wake_up_voice_mode"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    goto :goto_0

    .line 110
    :cond_6
    const-string v2, "SContextManager"

    const-string v3, "The arg is wrong!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D

    .prologue
    const/4 v6, 0x2

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "res":Z
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 224
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    if-ne p2, v6, :cond_3

    .line 225
    const/4 v3, 0x1

    if-eq p3, v3, :cond_0

    if-eq p3, v6, :cond_0

    .line 227
    const-string v3, "SContextManager"

    const-string v4, "The gender is wrong!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    return v2

    .line 230
    :cond_0
    cmpg-double v3, p4, v4

    if-gtz v3, :cond_1

    .line 231
    const-string v3, "SContextManager"

    const-string v4, "The height cannot be less than or equal to 0.0[cm]!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    :cond_1
    cmpg-double v3, p6, v4

    if-gtz v3, :cond_2

    .line 235
    const-string v3, "SContextManager"

    const-string v4, "The weight cannot be less than or equal to 0.0[kg]!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    :cond_2
    const-string v2, "pedometer_gender"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 240
    const-string v2, "pedometer_height"

    invoke-virtual {v0, v2, p4, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;D)V

    .line 241
    const-string v2, "pedometer_weight"

    invoke-virtual {v0, v2, p6, p7}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;D)V

    .line 242
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    :cond_3
    move v2, v1

    .line 245
    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;III)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    .line 187
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 188
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v2, 0x8

    if-ne p2, v2, :cond_2

    .line 189
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 190
    const-string v2, "environment_sensor_type"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 191
    const-string v2, "environment_update_interval"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 204
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    .line 206
    :goto_1
    return v1

    .line 193
    :cond_1
    const-string v2, "SContextManager"

    const-string v3, "The arg is wrong!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x0

    goto :goto_1

    .line 196
    :cond_2
    const/16 v2, 0xc

    if-ne p2, v2, :cond_3

    .line 197
    const-string v2, "shake_motion_strength"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 198
    const-string v2, "shake_motion_duration"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    goto :goto_0

    .line 199
    :cond_3
    const/16 v2, 0x1d

    if-ne p2, v2, :cond_0

    .line 200
    const-string v2, "sleep_monitor_sensibility"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 201
    const-string v2, "sleep_monitor_sampling_interval"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIDI)Z
    .locals 11
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # D
    .param p7, "arg4"    # I

    .prologue
    .line 356
    const/4 v10, 0x0

    .line 357
    .local v10, "res":Z
    new-instance v9, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v9, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 358
    .local v9, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v2, 0x9

    if-ne p2, v2, :cond_1

    .line 359
    const-string v2, "mfp_nomove_duration_thrs"

    invoke-virtual {v9, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 360
    const-string v2, "mfp_move_duration_thrs"

    invoke-virtual {v9, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 361
    const-string v2, "mfp_move_distance_thrs"

    move-wide/from16 v0, p5

    invoke-virtual {v9, v2, v0, v1}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;D)V

    .line 362
    const-string v2, "mfp_move_min_duration_thrs"

    move/from16 v0, p7

    invoke-virtual {v9, v2, v0}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 363
    invoke-direct {p0, p1, v9}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v10

    .line 368
    :cond_0
    :goto_0
    return v10

    .line 364
    :cond_1
    const/16 v2, 0x1c

    if-ne p2, v2, :cond_0

    .line 365
    move-wide/from16 v0, p5

    double-to-int v7, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;IIIII)Z

    move-result v10

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 11
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I

    .prologue
    .line 390
    const/4 v10, 0x0

    .line 391
    .local v10, "res":Z
    new-instance v9, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v9, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 392
    .local v9, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v1, 0x1c

    if-ne p2, v1, :cond_6

    .line 393
    const/16 v1, 0x5a

    if-gt p4, v1, :cond_0

    const/16 v1, -0x5a

    if-lt p4, v1, :cond_0

    const/16 v1, 0x5a

    move/from16 v0, p5

    if-gt v0, v1, :cond_0

    const/16 v1, -0x5a

    move/from16 v0, p5

    if-ge v0, v1, :cond_1

    .line 394
    :cond_0
    const-string v1, "SContextManager"

    const-string v2, "The angle must be between -90 and 90 !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v1, 0x0

    .line 416
    :goto_0
    return v1

    .line 398
    :cond_1
    move/from16 v0, p5

    if-le p4, v0, :cond_2

    .line 399
    const-string v1, "SContextManager"

    const-string v2, "The munumum angle must be less than the maximum angle !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v1, 0x0

    goto :goto_0

    .line 403
    :cond_2
    if-ltz p6, :cond_3

    const/16 v1, 0x2710

    move/from16 v0, p6

    if-le v0, v1, :cond_4

    .line 404
    :cond_3
    const-string v1, "SContextManager"

    const-string v2, "The moving threshold must be between 0 and 10000 !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v1, 0x0

    goto :goto_0

    .line 407
    :cond_4
    const-string v1, "specific_pose_alert_retention_time"

    invoke-virtual {v9, v1, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 408
    const-string v1, "specific_pose_alert_minimum_angle"

    invoke-virtual {v9, v1, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 409
    const-string v1, "specific_pose_alert_maximum_angle"

    move/from16 v0, p5

    invoke-virtual {v9, v1, v0}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 410
    const-string v1, "specific_pose_alert_moving_thrs"

    move/from16 v0, p6

    invoke-virtual {v9, v1, v0}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 411
    invoke-direct {p0, p1, v9}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v10

    :cond_5
    :goto_1
    move v1, v10

    .line 416
    goto :goto_0

    .line 412
    :cond_6
    const/16 v1, 0x9

    if-ne p2, v1, :cond_5

    .line 413
    move/from16 v0, p5

    int-to-double v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;IIIDI)Z

    move-result v10

    goto :goto_1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIIII)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .param p7, "arg5"    # I

    .prologue
    .line 439
    const/4 v1, 0x0

    .line 440
    .local v1, "res":Z
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 441
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v2, 0x18

    if-ne p2, v2, :cond_0

    .line 442
    const-string v2, "activity_location_logging_stop_period"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 443
    const-string v2, "activity_location_logging_wait_period"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 444
    const-string v2, "activity_location_logging_statying radius"

    invoke-virtual {v0, v2, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 445
    const-string v2, "activity_location_logging_area_radius"

    invoke-virtual {v0, v2, p6}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 446
    const-string v2, "activity_location_logging_lpp_resolution"

    invoke-virtual {v0, v2, p7}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 447
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    .line 450
    :cond_0
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIIIII)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .param p7, "arg5"    # I
    .param p8, "arg6"    # I

    .prologue
    const/16 v6, 0x64

    const/16 v5, 0xb4

    const/4 v2, 0x0

    const/16 v4, -0xb4

    .line 477
    const/4 v1, 0x0

    .line 478
    .local v1, "res":Z
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 479
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v3, 0x1f

    if-ne p2, v3, :cond_8

    .line 480
    if-lt p3, v4, :cond_0

    if-gt p3, v5, :cond_0

    if-lt p4, v4, :cond_0

    if-le p4, v5, :cond_1

    .line 481
    :cond_0
    const-string v3, "SContextManager"

    const-string v4, "The tilt angle must be between -180 and 180 !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :goto_0
    return v2

    .line 485
    :cond_1
    if-lt p5, v4, :cond_2

    if-gt p5, v5, :cond_2

    if-lt p6, v4, :cond_2

    if-le p6, v5, :cond_3

    .line 486
    :cond_2
    const-string v3, "SContextManager"

    const-string v4, "The orientation angle must be between -180 and 180 !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 490
    :cond_3
    if-gt p3, p4, :cond_4

    if-le p5, p6, :cond_5

    .line 491
    :cond_4
    const-string v3, "SContextManager"

    const-string v4, "The munumum angle must be less than the maximum angle !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 495
    :cond_5
    if-ltz p7, :cond_6

    if-gt p7, v6, :cond_6

    if-ltz p8, :cond_6

    if-le p8, v6, :cond_7

    .line 496
    :cond_6
    const-string v3, "SContextManager"

    const-string v4, "The tilt angle must be between 0 and 100 !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 499
    :cond_7
    const-string v2, "capture_motion_tilt_minimum_angle"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 500
    const-string v2, "capture_motion_tilt_maximum_angle"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 501
    const-string v2, "capture_motion_orientation_minimum_angle"

    invoke-virtual {v0, v2, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 502
    const-string v2, "capture_motion_orientation_maximum_angle"

    invoke-virtual {v0, v2, p6}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 503
    const-string v2, "capture_motion_in_sampling_num"

    invoke-virtual {v0, v2, p7}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 504
    const-string v2, "capture_motion_out_sampling_num"

    invoke-virtual {v0, v2, p8}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 505
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    :cond_8
    move v2, v1

    .line 508
    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIZ)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # Z

    .prologue
    const/16 v5, 0x7f

    const/16 v4, -0x80

    const/4 v2, 0x0

    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, "res":Z
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 266
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v3, 0x17

    if-ne p2, v3, :cond_4

    .line 267
    if-gt p3, v5, :cond_0

    if-ge p3, v4, :cond_1

    .line 269
    :cond_0
    const-string v3, "SContextManager"

    const-string v4, "Low temperature must be between -128 and 127."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_0
    return v2

    .line 272
    :cond_1
    if-gt p4, v5, :cond_2

    if-ge p4, v4, :cond_3

    .line 274
    :cond_2
    const-string v3, "SContextManager"

    const-string v4, "High temperature must be between -128 and 127."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :cond_3
    if-ge p3, p4, :cond_5

    .line 278
    const-string v2, "temperature_alert_low_temperature"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 279
    const-string v2, "temperature_alert_high_temperature"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 280
    const-string v2, "temperature_alert_is_including"

    invoke-virtual {v0, v2, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;Z)V

    .line 285
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    :cond_4
    move v2, v1

    .line 288
    goto :goto_0

    .line 282
    :cond_5
    const-string v3, "SContextManager"

    const-string v4, "Low temperature must be less than high temperature."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[I)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # [I

    .prologue
    .line 131
    new-instance v3, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v3, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 132
    .local v3, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v5, 0x1b

    if-ne p2, v5, :cond_3

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p3

    if-ge v0, v5, :cond_2

    .line 135
    aget v5, p3, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 137
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 138
    const-string v5, "SContextManager"

    const-string v6, "This arg cannot have duplicated status."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v4, 0x0

    .line 147
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_2
    return v4

    .line 136
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 134
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "j":I
    :cond_2
    const-string v5, "activity_notification_activity_filter"

    invoke-virtual {v3, v5, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;[I)V

    .line 145
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    invoke-direct {p0, p1, v3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v4

    .line 147
    .local v4, "res":Z
    goto :goto_2
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[II)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # [I
    .param p4, "arg2"    # I

    .prologue
    .line 164
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 165
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v2, 0x1e

    if-ne p2, v2, :cond_0

    .line 166
    const-string v2, "activity_notification_ex_activity_filter"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;[I)V

    .line 167
    const-string v2, "activity_notification_ex_time_duration"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 170
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    .line 172
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[ILjava/util/ArrayList;I)Z
    .locals 10
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # [I
    .param p5, "arg3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/scontext/SContextListener;",
            "I[I",
            "Ljava/util/ArrayList",
            "<[I>;I)Z"
        }
    .end annotation

    .prologue
    .line 307
    .local p4, "arg2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    const/4 v6, 0x0

    .line 308
    .local v6, "res":Z
    new-instance v5, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v5, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 309
    .local v5, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v8, 0x22

    if-ne p2, v8, :cond_3

    .line 310
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v0, v8, [I

    .line 311
    .local v0, "countList":[I
    const/4 v7, 0x0

    .line 312
    .local v7, "totalSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 313
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    array-length v8, v8

    aput v8, v0, v2

    .line 314
    aget v8, v0, v2

    add-int/2addr v7, v8

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    :cond_0
    new-array v1, v7, [I

    .line 318
    .local v1, "data":[I
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 319
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 320
    .local v4, "next":[I
    const/4 v3, 0x0

    .line 321
    .local v3, "index":I
    if-lez v2, :cond_1

    .line 322
    add-int/lit8 v8, v2, -0x1

    aget v8, v0, v8

    add-int/2addr v3, v8

    .line 323
    :cond_1
    const/4 v8, 0x0

    array-length v9, v4

    invoke-static {v4, v8, v1, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 326
    .end local v3    # "index":I
    .end local v4    # "next":[I
    :cond_2
    const-string/jumbo v8, "wifi_transition_notification_id_list"

    invoke-virtual {v5, v8, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;[I)V

    .line 327
    const-string/jumbo v8, "wifi_transition_notification_db_list_count"

    invoke-virtual {v5, v8, v0}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;[I)V

    .line 329
    const-string/jumbo v8, "wifi_transition_notification_db_list"

    invoke-virtual {v5, v8, v1}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;[I)V

    .line 331
    const-string/jumbo v8, "wifi_transition_notification_period"

    invoke-virtual {v5, v8, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 332
    invoke-direct {p0, p1, v5}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v6

    .line 335
    .end local v0    # "countList":[I
    .end local v1    # "data":[I
    .end local v2    # "i":I
    .end local v7    # "totalSize":I
    :cond_3
    return v6
.end method

.method public requestToUpdate(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 706
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 732
    :goto_0
    return-void

    .line 710
    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/16 v2, 0x19

    if-eq p2, v2, :cond_1

    const/16 v2, 0x1d

    if-eq p2, v2, :cond_1

    .line 713
    const-string v2, "SContextManager"

    const-string v3, "  .requestToUpdate : This service is not supported!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 717
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 719
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_2

    .line 720
    const-string v2, "SContextManager"

    const-string v3, "  .requestToUpdate : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 725
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->requestToUpdate(Landroid/os/IBinder;I)V

    .line 726
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .requestToUpdate : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in changeParameters: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setReferenceData(I[B[B)Z
    .locals 5
    .param p1, "service"    # I
    .param p2, "data1"    # [B
    .param p3, "data2"    # [B

    .prologue
    .line 774
    const/4 v1, 0x0

    .line 775
    .local v1, "res":Z
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 793
    .end local v1    # "res":Z
    .local v2, "res":I
    :goto_0
    return v2

    .line 780
    .end local v2    # "res":I
    .restart local v1    # "res":Z
    :cond_1
    const/16 v3, 0x10

    if-ne p1, v3, :cond_2

    .line 781
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/4 v4, 0x1

    invoke-interface {v3, v4, p2}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/4 v4, 0x2

    invoke-interface {v3, v4, p3}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 785
    const/4 v1, 0x1

    :cond_2
    :goto_1
    move v2, v1

    .line 793
    .restart local v2    # "res":I
    goto :goto_0

    .line 787
    .end local v2    # "res":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SContextManager"

    const-string v4, "RemoteException in initializeSContextService: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;

    .prologue
    .line 550
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 555
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 556
    .local v3, "service":I
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v2

    .line 557
    .local v2, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-eqz v2, :cond_0

    .line 562
    :try_start_0
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v4, v2, v3}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 563
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 564
    const-string v4, "SContextManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .unregisterListener : listener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "SContextManager"

    const-string v5, "RemoteException in unregisterListener: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 582
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 603
    :goto_0
    return-void

    .line 586
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 588
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_1

    .line 589
    const-string v2, "SContextManager"

    const-string v3, "  .unregisterListener : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 594
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 595
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 597
    :cond_2
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .unregisterListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in unregisterListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
