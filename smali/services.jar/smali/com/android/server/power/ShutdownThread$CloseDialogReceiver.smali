.class Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseDialogReceiver"
.end annotation


# instance fields
.field public dialog:Landroid/app/Dialog;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 479
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 480
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->mContext:Landroid/content/Context;

    .line 481
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 482
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 483
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 492
    const-string v0, "ShutdownThread"

    const-string v1, "on GlobalActionsSViewCoverDialog cancel touched"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/power/ShutdownThread;->restoreMiniModeBarAndSleep(Landroid/content/Context;Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->access$400(Landroid/content/Context;Z)V

    .line 494
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 495
    const/4 v0, 0x0

    # setter for: Lcom/android/server/power/ShutdownThread;->mFake:Z
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$102(Z)Z

    .line 496
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 500
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 501
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 502
    .local v0, "coverManager":Lcom/samsung/android/cover/CoverManager;
    if-eqz v0, :cond_0

    .line 503
    # getter for: Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$500()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 505
    :cond_0
    # getter for: Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 506
    const/4 v1, 0x0

    :try_start_0
    # setter for: Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$702(Z)Z

    .line 507
    monitor-exit v2

    .line 508
    return-void

    .line 507
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 488
    return-void
.end method
