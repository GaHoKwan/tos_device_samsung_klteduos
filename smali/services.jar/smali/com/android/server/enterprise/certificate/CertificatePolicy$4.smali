.class Lcom/android/server/enterprise/certificate/CertificatePolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V
    .locals 0

    .prologue
    .line 1647
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 1650
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1651
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edm.intent.action.ACTION_EDM_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1654
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # setter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z
    invoke-static {v1, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$2402(Lcom/android/server/enterprise/certificate/CertificatePolicy;Z)Z

    .line 1655
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$2300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$2500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1656
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v3, 0x2

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;IILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    new-array v2, v6, [[Ljava/lang/Integer;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getUsersKeystoreUnlocked()[Ljava/lang/Integer;
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$2600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)[Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1659
    :cond_1
    return-void
.end method
