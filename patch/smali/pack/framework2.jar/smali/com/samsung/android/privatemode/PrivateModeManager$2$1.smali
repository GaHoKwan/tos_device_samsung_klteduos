.class Lcom/samsung/android/privatemode/PrivateModeManager$2$1;
.super Ljava/lang/Object;
.source "PrivateModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/privatemode/PrivateModeManager$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/privatemode/PrivateModeManager$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/privatemode/PrivateModeManager$2;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/samsung/android/privatemode/PrivateModeManager$2$1;->this$1:Lcom/samsung/android/privatemode/PrivateModeManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 188
    # getter for: Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$000()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 190
    :try_start_0
    # getter for: Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$000()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/privatemode/IPrivateModeClient;->onStateChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/privatemode/PrivateModeManager$2$1;->this$1:Lcom/samsung/android/privatemode/PrivateModeManager$2;

    iget-object v1, v1, Lcom/samsung/android/privatemode/PrivateModeManager$2;->this$0:Lcom/samsung/android/privatemode/PrivateModeManager;

    const-string v2, "bindPrivateModeManager"

    const/4 v3, 0x0

    # invokes: Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$400(Lcom/samsung/android/privatemode/PrivateModeManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
