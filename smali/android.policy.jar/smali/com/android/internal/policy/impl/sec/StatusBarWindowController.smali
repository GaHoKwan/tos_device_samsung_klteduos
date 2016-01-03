.class public abstract Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.super Ljava/lang/Object;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;
    }
.end annotation


# static fields
.field static final ACTION_COLLAPSE:Ljava/lang/String; = "com.android.systemui.statusbar.COLLAPSED"

.field static final ACTION_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field static final ACTION_NOTIFICATION_ARRIVED:Ljava/lang/String; = "com.system.action.NOTIFICATION"

.field static final DELAY_ANIMATING_HIDE_IN_FULLSCREEN:I = 0x1f4

.field static final DELAY_HIDE_IN_FULLSCREEN:I = 0x3e8

.field static final DELAY_HIDE_IN_FULLSCREEN_BY_NOTIFICATION:I = 0x9c4

.field static final DELAY_SHOW_HOVERING_IN_FULLSCREEN:I = 0x3e8

.field static final DELAY_SHOW_IN_FULLSCREEN_BY_NOTIFICATION:I = 0x3e8

.field static final KEY_DISABLE_STATUS_BAR_OPEN:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Disable"

.field static final NOTIFICATION_FIELD_TYPE:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Type"

.field static final NOTIFICATION_TYPE_ADD:I = 0x1

.field static final TAG:Ljava/lang/String; = "StatusBarWindowController"


# instance fields
.field final DEBUG:Z

.field final SAFE_DEBUG:Z

.field mAnimatingHideOnFullScreen:Ljava/lang/Runnable;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mDefaultHideOnFullScreen:Ljava/lang/Runnable;

.field mDefaultShowOnFullScreen:Ljava/lang/Runnable;

.field mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

.field mDisplay:Landroid/view/Display;

.field mHandler:Landroid/os/Handler;

.field mHoveringInStatusBarArea:Z

.field mIsFingerAirViewEnabled:Z

.field mIsShowUpIndicatorEnabled:Z

.field mIsStatusBarExpandEnabled:Z

.field mIsStatusBarHideEnabled:Z

.field mIsStatusBarWindow:Z

.field mMoveStartedForCloseStatusbar:Z

.field mMoveStartedForExpandStatusbar:Z

.field mPreviousHiddenOnNormalScreen:Z

.field mPreviousShownOnFullScreen:Z

.field mReadyControlStatusBar:Z

.field final mServiceAquireLock:Ljava/lang/Object;

.field mStatusBarExpanded:Z

.field mStatusBarHeight:I

.field mStatusBarHiddenOnNormalScreen:Z

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mStatusBarShownOnFullScreen:Z

.field mSystemBarHeight:I

.field mTopIsFullScreen:Z

.field mUseStatusBarOpenByNotification:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->DEBUG:Z

    .line 42
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    if-ne v3, v5, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    .line 64
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mServiceAquireLock:Ljava/lang/Object;

    .line 70
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    .line 71
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mUseStatusBarOpenByNotification:Z

    .line 72
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarWindow:Z

    .line 73
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarExpandEnabled:Z

    .line 74
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    .line 76
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    .line 78
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    .line 79
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousShownOnFullScreen:Z

    .line 81
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    .line 82
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousHiddenOnNormalScreen:Z

    .line 84
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarHideEnabled:Z

    .line 85
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsFingerAirViewEnabled:Z

    .line 86
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsShowUpIndicatorEnabled:Z

    .line 88
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    .line 90
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mMoveStartedForExpandStatusbar:Z

    .line 91
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mMoveStartedForCloseStatusbar:Z

    .line 93
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$2;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    .line 240
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$3;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

    .line 254
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    .line 270
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$5;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mAnimatingHideOnFullScreen:Ljava/lang/Runnable;

    .line 306
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    .line 308
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 311
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x105000c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    .line 314
    const v3, 0x105000d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mSystemBarHeight:I

    .line 316
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    .line 318
    new-instance v2, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    .line 319
    .local v2, "settingsObserver":Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;->observe()V

    .line 323
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 324
    .local v0, "mReceiveFilter":Landroid/content/IntentFilter;
    const-string v3, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v3, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v3, "com.system.action.NOTIFICATION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDisplay:Landroid/view/Display;

    .line 330
    return-void

    .end local v0    # "mReceiveFilter":Landroid/content/IntentFilter;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "settingsObserver":Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;
    :cond_0
    move v3, v5

    .line 42
    goto/16 :goto_0
.end method


# virtual methods
.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 488
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract onHideStatusBarOnNormalScreen(Z)V
.end method

.method public onInputPointerEvent(Landroid/view/MotionEvent;Z)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "isStatusBarWindow"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 345
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarWindow:Z

    .line 348
    const-string v3, "StatusBarWindowController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInputPointerEvent : event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsShowUpIndicatorEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsShowUpIndicatorEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 353
    .local v0, "action":I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    .line 355
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    sub-int v1, v3, v4

    .line 357
    .local v1, "mSystemBarTopY":I
    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 440
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 371
    :pswitch_1
    if-ne v2, v6, :cond_0

    .line 372
    and-int/lit16 v3, v0, 0xff

    if-nez v3, :cond_1

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v4, v1

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    .line 374
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mMoveStartedForExpandStatusbar:Z

    .line 376
    const-string v3, "StatusBarWindowController"

    const-string v4, "ysahn onInputPointerEvent : mMoveStartedForExpandStatusbar = true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_1
    :goto_1
    and-int/lit16 v3, v0, 0xff

    if-ne v3, v6, :cond_3

    .line 388
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mMoveStartedForExpandStatusbar:Z

    if-eqz v3, :cond_2

    .line 389
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mMoveStartedForExpandStatusbar:Z

    .line 391
    const-string v3, "StatusBarWindowController"

    const-string v4, "ysahn onInputPointerEvent : mMoveStartedForExpandStatusbar = false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 394
    invoke-virtual {p0, v6, v6}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performShowStatusBarOnFullScreen(ZZ)V

    .line 398
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mMoveStartedForCloseStatusbar:Z

    if-eqz v3, :cond_3

    .line 399
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mMoveStartedForCloseStatusbar:Z

    .line 401
    const-string v3, "StatusBarWindowController"

    const-string v4, "ysahn onInputPointerEvent : mMoveStartedForCloseStatusbar = false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v4, v1

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 404
    invoke-virtual {p0, v6, v6}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performHideStatusBarOnNormalScreen(ZZ)V

    .line 409
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v4, v1

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    and-int/lit16 v3, v0, 0xff

    if-eq v3, v6, :cond_4

    and-int/lit16 v3, v0, 0xff

    if-nez v3, :cond_0

    .line 412
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->onShowStatusBarOnFullScreen(Z)V

    goto :goto_0

    .line 378
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 379
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mMoveStartedForCloseStatusbar:Z

    .line 381
    const-string v3, "StatusBarWindowController"

    const-string v4, "ysahn onInputPointerEvent : mMoveStartedForCloseStatusbar = true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 420
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-eqz v3, :cond_7

    if-ne v2, v6, :cond_7

    .line 421
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsFingerAirViewEnabled:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsShowUpIndicatorEnabled:Z

    if-eqz v3, :cond_6

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->postHoverEvent(Landroid/view/MotionEvent;)V

    .line 431
    :cond_6
    :goto_2
    and-int/lit16 v3, v0, 0xff

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->postHoverEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 425
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 426
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isStatusBarHoverOpenEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 427
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->postHoverEvent(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public abstract onShowStatusBarOnFullScreen(Z)V
.end method

.method public performHideStatusBarOnNormalScreen(Z)V
    .locals 1
    .param p1, "hide"    # Z

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performHideStatusBarOnNormalScreen(ZZ)V

    .line 282
    return-void
.end method

.method public performHideStatusBarOnNormalScreen(ZZ)V
    .locals 5
    .param p1, "hide"    # Z
    .param p2, "force"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 286
    const-string v2, "StatusBarWindowController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ysahn performHideStatusBarOnNormalScreen() :mPreviousHiddenOnNormalScreen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousHiddenOnNormalScreen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , hide = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    if-nez p2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousHiddenOnNormalScreen:Z

    if-eq p1, v2, :cond_1

    .line 291
    :cond_0
    if-eqz p1, :cond_2

    .line 292
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    .line 293
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    .line 298
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->onHideStatusBarOnNormalScreen(Z)V

    .line 300
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousHiddenOnNormalScreen:Z

    .line 301
    if-nez p1, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousShownOnFullScreen:Z

    .line 302
    return-void

    .line 295
    :cond_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    .line 296
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 301
    goto :goto_1
.end method

.method public performShowStatusBarOnFullScreen(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performShowStatusBarOnFullScreen(ZZ)V

    .line 126
    return-void
.end method

.method public performShowStatusBarOnFullScreen(ZZ)V
    .locals 6
    .param p1, "show"    # Z
    .param p2, "force"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    const-string v2, "StatusBarWindowController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCallbackFunc() : mPreviousShownOnFullScreen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousShownOnFullScreen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , show = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-nez p2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousShownOnFullScreen:Z

    if-eq p1, v2, :cond_1

    .line 135
    :cond_0
    if-eqz p1, :cond_2

    .line 136
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    .line 143
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->onShowStatusBarOnFullScreen(Z)V

    .line 145
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousShownOnFullScreen:Z

    .line 146
    if-nez p1, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousHiddenOnNormalScreen:Z

    .line 147
    return-void

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mAnimatingHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mAnimatingHideOnFullScreen:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 146
    goto :goto_1
.end method

.method public postHoverEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-wide/16 v5, 0x3e8

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 165
    .local v0, "action":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    add-int/lit8 v1, v2, -0xa

    .line 168
    .local v1, "hoverAllowHeight":I
    if-eqz p1, :cond_0

    .line 169
    const-string v2, "StatusBarWindowController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postHoverEvent() : x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    const-string v2, "StatusBarWindowController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postHoverEvent() : action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , hoverAllowHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mStatusBarExpanded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mStatusBarShownOnFullScreen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v2, :cond_2

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 180
    :cond_2
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 205
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 206
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    .line 207
    const-string v2, "StatusBarWindowController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ysahn mHoveringInStatusBarArea = true, mStatusBarShownOnFullScreen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-nez v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 184
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 185
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    .line 188
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-nez v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 193
    :cond_3
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    goto :goto_0

    .line 198
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 213
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mSystemBarHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 214
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    .line 215
    const-string v2, "StatusBarWindowController"

    const-string v3, "ysahn mHoveringInStatusBarArea = true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 217
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    .line 219
    const-string v2, "StatusBarWindowController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ysahn mHoveringInStatusBarArea = false, mStatusBarShownOnFullScreen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setProperties(ZZ)V
    .locals 3
    .param p1, "topIsFullScreen"    # Z
    .param p2, "openByNotification"    # Z

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-eq v0, p1, :cond_0

    .line 334
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 337
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mUseStatusBarOpenByNotification:Z

    .line 339
    const-string v0, "StatusBarWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProperties : mTopIsFullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUseStatusBarOpenByNotification = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mUseStatusBarOpenByNotification:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void

    .line 337
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateSetting()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 467
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 468
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v6, "finger_air_view"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 470
    .local v0, "isFingerAirViewEnabled":Z
    :goto_0
    const-string v6, "finger_air_view_show_up_indicator"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    .line 472
    .local v1, "isShowUpIndicatorEnabled":Z
    :goto_1
    const-string v6, "use_status_bar_hide"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v2, v4

    .line 474
    .local v2, "isStatusBarHideEnabled":Z
    :goto_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsFingerAirViewEnabled:Z

    if-eq v4, v0, :cond_0

    .line 475
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsFingerAirViewEnabled:Z

    .line 477
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsShowUpIndicatorEnabled:Z

    if-eq v4, v1, :cond_1

    .line 478
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsShowUpIndicatorEnabled:Z

    .line 480
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarHideEnabled:Z

    if-eq v4, v2, :cond_2

    .line 481
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarHideEnabled:Z

    .line 483
    :cond_2
    return-void

    .end local v0    # "isFingerAirViewEnabled":Z
    .end local v1    # "isShowUpIndicatorEnabled":Z
    .end local v2    # "isStatusBarHideEnabled":Z
    :cond_3
    move v0, v5

    .line 468
    goto :goto_0

    .restart local v0    # "isFingerAirViewEnabled":Z
    :cond_4
    move v1, v5

    .line 470
    goto :goto_1

    .restart local v1    # "isShowUpIndicatorEnabled":Z
    :cond_5
    move v2, v5

    .line 472
    goto :goto_2
.end method
