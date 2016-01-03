.class Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
.super Landroid/content/pm/IPersonaObserver$Stub;
.source "ClientCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserver"
.end annotation


# instance fields
.field private mUserId:I

.field final synthetic this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V
    .locals 1
    .param p2, "userId"    # I

    .prologue
    .line 1814
    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {p0}, Landroid/content/pm/IPersonaObserver$Stub;-><init>()V

    .line 1812
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->mUserId:I

    .line 1815
    iput p2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->mUserId:I

    .line 1816
    return-void
.end method


# virtual methods
.method public onFirstBoot()V
    .locals 0

    .prologue
    .line 1828
    return-void
.end method

.method public onInit()V
    .locals 0

    .prologue
    .line 1824
    return-void
.end method

.method public onKeyGuardStateChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 1848
    return-void
.end method

.method public onPersonaSwitch()V
    .locals 0

    .prologue
    .line 1820
    return-void
.end method

.method public onSessionExpired()V
    .locals 0

    .prologue
    .line 1832
    return-void
.end method

.method public onStateChange(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "oldState"    # I

    .prologue
    const/4 v3, 0x1

    .line 1836
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->mUserId:I

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZ)Z
    invoke-static {v0, v1, v3, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$500(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZ)Z

    .line 1844
    :cond_1
    :goto_0
    return-void

    .line 1841
    :cond_2
    if-nez p1, :cond_1

    .line 1842
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->mUserId:I

    const/4 v2, 0x0

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZ)Z
    invoke-static {v0, v1, v3, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$500(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZ)Z

    goto :goto_0
.end method
