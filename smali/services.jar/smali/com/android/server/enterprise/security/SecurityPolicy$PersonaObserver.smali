.class Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
.super Landroid/content/pm/IPersonaObserver$Stub;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserver"
.end annotation


# instance fields
.field private mContainerId:I

.field final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;I)V
    .locals 1
    .param p2, "userId"    # I

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPersonaObserver$Stub;-><init>()V

    .line 251
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->mContainerId:I

    .line 254
    iput p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->mContainerId:I

    .line 255
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    .prologue
    .line 250
    iget v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->mContainerId:I

    return v0
.end method


# virtual methods
.method public onFirstBoot()V
    .locals 2

    .prologue
    .line 269
    const-string v0, "SecurityPolicy"

    const-string v1, "PersonaObserver.onFirstBoot()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public onInit()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "SecurityPolicy"

    const-string v1, "PersonaObserver.onInit()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public onKeyGuardStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 279
    const-string v0, "SecurityPolicy"

    const-string v1, "IPersonaObserver.onKeyGuardStateChanged()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public onPersonaSwitch()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "SecurityPolicy"

    const-string v1, "PersonaObserver.onPersonaSwitch()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public onSessionExpired()V
    .locals 2

    .prologue
    .line 274
    const-string v0, "SecurityPolicy"

    const-string v1, "PersonaObserver.onSessionExpired()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public onStateChange(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "oldState"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    # getter for: Lcom/android/server/enterprise/security/SecurityPolicy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$600(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    return-void
.end method
