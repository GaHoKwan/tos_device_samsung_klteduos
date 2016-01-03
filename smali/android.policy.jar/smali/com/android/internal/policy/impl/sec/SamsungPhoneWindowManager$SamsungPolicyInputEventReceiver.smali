.class public final Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SamsungPolicyInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2450
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .line 2451
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 2452
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 2456
    const/4 v3, 0x0

    .line 2457
    .local v3, "handled":Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getFocusedWindow()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v2

    .line 2458
    .local v2, "focusedWindow":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2460
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-eqz v1, :cond_3

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_3

    const/4 v4, 0x1

    .line 2465
    .local v4, "isStatusBarWindow":Z
    :goto_1
    if-eqz v1, :cond_1

    :try_start_0
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, 0x10000000

    and-int/2addr v5, v6

    if-nez v5, :cond_1

    .line 2467
    instance-of v5, p1, Landroid/view/MotionEvent;

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 2470
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    if-nez v5, :cond_0

    .line 2472
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    new-instance v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver$1;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;Landroid/content/Context;)V

    iput-object v6, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    .line 2485
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v6, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2486
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v7, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v5, v0

    invoke-virtual {v7, v5, v4}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->onInputPointerEvent(Landroid/view/MotionEvent;Z)V

    .line 2488
    const/4 v3, 0x1

    .line 2489
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2493
    :cond_1
    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 2495
    return-void

    .line 2458
    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "isStatusBarWindow":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2460
    .restart local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 2489
    .restart local v4    # "isStatusBarWindow":Z
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2493
    :catchall_1
    move-exception v5

    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v5
.end method
