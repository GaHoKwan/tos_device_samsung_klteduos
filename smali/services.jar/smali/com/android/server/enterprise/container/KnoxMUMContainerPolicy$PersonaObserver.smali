.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;
.super Landroid/content/pm/IPersonaObserver$Stub;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserver"
.end annotation


# static fields
.field private static final TYPE_ADMIN_LOCKED:I = 0x1


# instance fields
.field private mContainerId:I

.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V
    .locals 1
    .param p2, "userId"    # I

    .prologue
    .line 874
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPersonaObserver$Stub;-><init>()V

    .line 871
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I

    .line 875
    iput p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I

    .line 876
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    .prologue
    .line 870
    iget v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 870
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->sendIntentBroadcastForContainer(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 870
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->startActivityAdminLocked(II)V

    return-void
.end method

.method private sendIntentBroadcastForContainer(ILjava/lang/String;)V
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1008
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentBroadcastForContainer : containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1010
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "container_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1011
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1012
    return-void
.end method

.method private startActivityAdminLocked(II)V
    .locals 4
    .param p1, "userid"    # I
    .param p2, "parentUserid"    # I

    .prologue
    .line 998
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " startActivityAdminLocked called from MUM container"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1000
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.knox.bridge"

    const-string v2, "com.sec.knox.bridge.activity.klms.ContainerKLMSLockedActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1002
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1003
    const-string/jumbo v1, "userid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1004
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1005
    return-void
.end method


# virtual methods
.method public onFirstBoot()V
    .locals 2

    .prologue
    .line 890
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaObserver.onFirstBoot()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    return-void
.end method

.method public onInit()V
    .locals 2

    .prologue
    .line 885
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaObserver.onInit()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return-void
.end method

.method public onKeyGuardStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 900
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IPersonaObserver.onKeyGuardStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    return-void
.end method

.method public onPersonaSwitch()V
    .locals 2

    .prologue
    .line 880
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaObserver.onPersonaSwitch()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    return-void
.end method

.method public onSessionExpired()V
    .locals 2

    .prologue
    .line 895
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaObserver.onSessionExpired()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    return-void
.end method

.method public onStateChange(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "oldState"    # I

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 995
    return-void
.end method
