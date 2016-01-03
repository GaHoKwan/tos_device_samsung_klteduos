.class Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;
.super Ljava/lang/Thread;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnInstallPkgsThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;
    }
.end annotation


# instance fields
.field activeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field givenMsg:I

.field packagesList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field personaId:I

.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;ILjava/util/Set;I)V
    .locals 3
    .param p2, "id"    # I
    .param p4, "msg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3688
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3682
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->personaId:I

    .line 3683
    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->packagesList:Ljava/util/Set;

    .line 3684
    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->activeList:Ljava/util/List;

    .line 3685
    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3689
    iput p2, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->personaId:I

    .line 3690
    iput-object p3, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->packagesList:Ljava/util/Set;

    .line 3691
    iput p4, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->givenMsg:I

    .line 3692
    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3693
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveAdminsInfo for personaId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->personaId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget v1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->personaId:I

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->activeList:Ljava/util/List;

    .line 3695
    return-void
.end method

.method private deletePackage(ILjava/lang/String;)Z
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3759
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletePackage request for personaId -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and pkg-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3760
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;-><init>(Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;)V

    .line 3763
    .local v1, "obs":Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$3500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, p2, v1, p1, v3}, Lcom/android/server/pm/PackageManagerService;->deletePackageAsUserAndPersona(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 3764
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3765
    :goto_0
    :try_start_1
    iget-boolean v2, v1, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 3767
    :try_start_2
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting in while loop"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;->finished:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3768
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3769
    :catch_0
    move-exception v2

    goto :goto_0

    .line 3772
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3777
    :goto_1
    iget-boolean v2, v1, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;->result:Z

    return v2

    .line 3772
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 3773
    :catch_1
    move-exception v0

    .line 3774
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletePackage exception -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setInstalledPkgList(ILjava/util/Set;)V
    .locals 5
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3713
    .local p2, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInstalledPkgList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "installed pkg count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3714
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$3300(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3715
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 3716
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_0

    .line 3717
    const-string v2, "PersonaManagerService"

    const-string v4, "setInstalledPkgList personaInfo is null "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    monitor-exit v3

    .line 3724
    :goto_0
    return-void

    .line 3720
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3721
    .local v1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Landroid/content/pm/PersonaInfo;->setInstalledPkgList(Ljava/util/List;)V

    .line 3722
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v2, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2700(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    .line 3723
    monitor-exit v3

    goto :goto_0

    .end local v0    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v1    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private unInstallPackages(ILjava/util/Set;)V
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3727
    .local p2, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unInstallPackages request for personaid -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    if-nez p2, :cond_1

    .line 3739
    :cond_0
    return-void

    .line 3729
    :cond_1
    const/4 v2, 0x0

    .line 3730
    .local v2, "result":Z
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->setInstalledPkgList(ILjava/util/Set;)V

    .line 3731
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3732
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->deletePackage(ILjava/lang/String;)Z

    move-result v2

    .line 3733
    if-nez v2, :cond_2

    .line 3734
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unInstallPackages : package ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") failed to uninstall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3736
    :cond_2
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unInstallPackages : package ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") successfully uninstalled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 3699
    const-string v1, "PersonaManagerService"

    const-string v2, "UnInstallPkgsThread has started..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->personaId:I

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->packagesList:Ljava/util/Set;

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->unInstallPackages(ILjava/util/Set;)V

    .line 3702
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->givenMsg:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 3703
    const-string v1, "PersonaManagerService"

    const-string v2, " msg was -1 and removing the Persona"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3704
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v2, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->personaId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService;->finishRemoveUser(I)V

    .line 3710
    :cond_0
    :goto_0
    return-void

    .line 3705
    :cond_1
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->givenMsg:I

    if-ne v1, v3, :cond_0

    .line 3706
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3707
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->personaId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3708
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
