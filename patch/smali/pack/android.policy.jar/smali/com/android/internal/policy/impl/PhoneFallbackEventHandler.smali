.class public Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final LONG_PRESS_LAUNCH:I

.field private final NO_LAUNCH:I

.field private final SHORT_PRESS_LAUNCH:I

.field mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLaunchType:I

.field mSamsungZoomKeyController:Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

.field mSearchManager:Landroid/app/SearchManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "PhoneFallbackEventHandler"

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->NO_LAUNCH:I

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHORT_PRESS_LAUNCH:I

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->LONG_PRESS_LAUNCH:I

    .line 51
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    .line 67
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 398
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 400
    .local v0, "audioService":Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 402
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 407
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "Unable to find IAudioService for media key event."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchUserDefinedApp(I)Z
    .locals 10
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 413
    const/4 v3, 0x0

    .line 414
    .local v3, "launch_app":Ljava/lang/String;
    const/4 v4, 0x0

    .line 415
    .local v4, "package_index":I
    const/4 v5, 0x0

    .line 416
    .local v5, "package_name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 418
    .local v0, "activity_name":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 432
    :goto_0
    if-eqz v3, :cond_0

    .line 433
    const/16 v8, 0x2f

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 434
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 435
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 444
    :cond_0
    if-eqz v5, :cond_1

    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 445
    :cond_1
    sget-object v6, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v8, "None pkg name"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 461
    :goto_1
    :pswitch_0
    return v6

    .line 422
    :pswitch_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "short_press_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 424
    goto :goto_0

    .line 426
    :pswitch_2
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "long_press_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 437
    :catch_0
    move-exception v1

    .line 438
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-object v6, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v8, "There is no launch app!"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v5, 0x0

    .line 440
    const/4 v0, 0x0

    move v6, v7

    .line 441
    goto :goto_1

    .line 449
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .local v2, "i":Landroid/content/Intent;
    const/high16 v7, 0x30000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 452
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 455
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 456
    :catch_1
    move-exception v1

    .line 457
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v7, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v8, "Activity to be assigned by the key is not found."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 81
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 84
    .local v1, "keyCode":I
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getSamsungZoomKeyController()Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const/4 v2, 0x1

    .line 94
    :goto_0
    return v2

    .line 91
    :cond_0
    if-nez v0, :cond_1

    .line 92
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getSamsungZoomKeyController()Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSamsungZoomKeyController:Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSamsungZoomKeyController:Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSamsungZoomKeyController:Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    return-object v0
.end method

.method getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x2

    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x1

    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v10

    .line 105
    .local v10, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    sparse-switch p1, :sswitch_data_0

    .line 266
    :cond_0
    :goto_0
    return v6

    .line 109
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, p2, v2}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    move v6, v12

    .line 110
    goto :goto_0

    .line 119
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    move v6, v12

    .line 120
    goto :goto_0

    .line 125
    :cond_1
    :sswitch_2
    const/16 v0, 0x4f

    if-ne p1, v0, :cond_2

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    sget-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v2, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v12

    .line 128
    goto :goto_0

    .line 138
    :cond_2
    :sswitch_3
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    move v6, v12

    .line 139
    goto :goto_0

    .line 143
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v10, :cond_0

    .line 146
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 147
    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    move v6, v12

    .line 161
    goto :goto_0

    .line 148
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 150
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 152
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 157
    :catch_0
    move-exception v11

    .line 158
    .local v11, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_1

    .line 166
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v10, :cond_0

    .line 173
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 174
    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_5
    :goto_2
    move v6, v12

    .line 194
    goto/16 :goto_0

    .line 175
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 181
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportCameraQuickShot()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 182
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 183
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v0, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.QuickShot"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 187
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 188
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 199
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v10, :cond_0

    .line 204
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_b

    .line 205
    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 206
    iput v12, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    .line 214
    :cond_8
    :goto_3
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v0, v2, :cond_a

    .line 215
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 216
    sget-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v2, "There are no apps defined by the user key"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 220
    const-string v0, "com.sec.android.app.popupuireceiver"

    const-string v2, "com.sec.android.app.popupuireceiver.popupCustomizeKey"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 224
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_9
    :goto_4
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    :cond_a
    move v6, v12

    .line 231
    goto/16 :goto_0

    .line 207
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 208
    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 211
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    goto :goto_3

    .line 225
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v11

    .line 226
    .restart local v11    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v2, "popupuireceiver is not found."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 236
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v10, :cond_0

    .line 239
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_c

    .line 240
    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 241
    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 243
    .local v9, "config":Landroid/content/res/Configuration;
    iget v0, v9, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v12, :cond_d

    iget v0, v9, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_0

    .line 246
    :cond_d
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 249
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 256
    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move v6, v12

    .line 257
    goto/16 :goto_0

    .line 258
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 105
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_5
        0x4f -> :sswitch_2
        0x54 -> :sswitch_7
        0x55 -> :sswitch_1
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x59 -> :sswitch_3
        0x5a -> :sswitch_3
        0x5b -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_3
        0xa4 -> :sswitch_0
        0xde -> :sswitch_3
        0xee -> :sswitch_6
    .end sparse-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 273
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 274
    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 278
    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    move v2, v3

    .line 350
    :cond_2
    :goto_0
    return v2

    .line 282
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 283
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 285
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_2

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-virtual {v3, p2, v4}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    goto :goto_0

    .line 294
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :sswitch_1
    const/16 v3, 0x4f

    if-ne p1, v3, :cond_3

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 296
    sget-object v3, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    :cond_3
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 316
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 319
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 326
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 329
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 330
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_0

    .line 337
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 340
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v4, v2, :cond_2

    .line 341
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 342
    sget-object v4, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "There are no apps defined by the user key"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_4
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    goto/16 :goto_0

    .line 278
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_3
        0x4f -> :sswitch_1
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xde -> :sswitch_2
        0xee -> :sswitch_5
    .end sparse-switch
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;I)V

    .line 76
    return-void
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    .line 72
    return-void
.end method

.method startCallActivity()V
    .locals 4

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 355
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 358
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "No activity found for android.intent.action.CALL_BUTTON."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
