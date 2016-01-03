.class Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;
.super Ljava/lang/Object;
.source "StatusBarWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->onShowStatusBarOnFullScreen(Z)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performHideStatusBarOnNormalScreen(Z)V

    goto :goto_0
.end method
