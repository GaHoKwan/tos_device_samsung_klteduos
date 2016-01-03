.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;
.super Ljava/lang/Thread;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungVolumeControlThread"
.end annotation


# instance fields
.field private final DURATION_LONG_PRESS:J

.field private final DURATION_REPEAT:J

.field private mKeyCode:I

.field private mNeedControlCallVolume:Z

.field private mNeedControlMusicVolume:Z

.field private mNeedControlRadioVolume:Z

.field private mNeedToRun:Z

.field private mSleepDuration:J

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3242
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3248
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlMusicVolume:Z

    .line 3249
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlRadioVolume:Z

    .line 3250
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlCallVolume:Z

    .line 3252
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->DURATION_LONG_PRESS:J

    .line 3253
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->DURATION_REPEAT:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;

    .prologue
    .line 3242
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method controlCallAndRingingVolume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3384
    const/4 v2, 0x0

    .line 3385
    .local v2, "needControlTelephonyVolume":Z
    const/4 v1, 0x0

    .line 3386
    .local v1, "needControlTelephony2Volume":Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 3388
    .local v3, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_2

    .line 3390
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->isVoipCallActive()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v5

    if-nez v5, :cond_6

    .line 3392
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "SamsungVolumeControl"

    const-string v6, "in run(), now adjust call volume."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    :cond_1
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->handleVolume(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3394
    const/4 v2, 0x1

    .line 3404
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3405
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 3407
    .local v4, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_4

    .line 3409
    :try_start_1
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->isVoipCallActive()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v5

    if-nez v5, :cond_8

    .line 3411
    const-string v5, "SamsungVolumeControl"

    const-string v6, "in run(), now adjust call 2 volume."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->handleVolume(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3413
    const/4 v1, 0x1

    .line 3424
    .end local v4    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_4
    :goto_1
    if-nez v2, :cond_5

    if-eqz v1, :cond_9

    .line 3425
    :cond_5
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlCallVolume:Z

    .line 3429
    :goto_2
    return-void

    .line 3396
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 3398
    :catch_0
    move-exception v0

    .line 3399
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "SamsungVolumeControl"

    const-string v6, "ITelephony threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3400
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 3415
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v4    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    .line 3417
    :catch_1
    move-exception v0

    .line 3418
    .restart local v0    # "ex":Landroid/os/RemoteException;
    const-string v5, "SamsungVolumeControl"

    const-string v6, "ITelephony2 threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3419
    const/4 v1, 0x0

    goto :goto_1

    .line 3427
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v4    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlCallVolume:Z

    goto :goto_2
.end method

.method controlFMRadioVolume()V
    .locals 2

    .prologue
    .line 3374
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->isFMActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3375
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungVolumeControl"

    const-string v1, "in run(), now adjust FM radio volume."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    :cond_0
    const/16 v0, 0xa

    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->handleVolume(II)V

    .line 3377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlRadioVolume:Z

    .line 3381
    :goto_0
    return-void

    .line 3379
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlRadioVolume:Z

    goto :goto_0
.end method

.method controlMusicVolume()V
    .locals 2

    .prologue
    .line 3364
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3365
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungVolumeControl"

    const-string v1, "in run(), now adjust music volume."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    :cond_0
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->handleVolume(II)V

    .line 3367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlMusicVolume:Z

    .line 3371
    :goto_0
    return-void

    .line 3369
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlMusicVolume:Z

    goto :goto_0
.end method

.method handleVolume(II)V
    .locals 7
    .param p1, "stream"    # I
    .param p2, "keycode"    # I

    .prologue
    .line 3324
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    .line 3325
    .local v1, "audioManager":Landroid/media/AudioManager;
    if-nez v1, :cond_0

    .line 3361
    :goto_0
    return-void

    .line 3329
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/media/AudioManager;->dismissVolumePanel()V

    .line 3330
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 3346
    :sswitch_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p1, v5}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3358
    :catch_0
    move-exception v2

    .line 3359
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleVolume() threw Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3332
    .end local v2    # "e":Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    const/16 v5, 0xa4

    invoke-direct {v3, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3334
    .local v3, "muteEvent":Landroid/view/KeyEvent;
    const/high16 v4, -0x80000000

    invoke-virtual {v1, v3, v4}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    goto :goto_0

    .line 3338
    .end local v3    # "muteEvent":Landroid/view/KeyEvent;
    :sswitch_2
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    const/16 v5, 0xf4

    invoke-direct {v0, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3340
    .local v0, "JogEvent":Landroid/view/KeyEvent;
    const/high16 v4, -0x80000000

    invoke-virtual {v1, v0, v4}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    goto :goto_0

    .line 3352
    .end local v0    # "JogEvent":Landroid/view/KeyEvent;
    :sswitch_3
    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p1, v5}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3330
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_3
        0xa4 -> :sswitch_1
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_3
        0xf2 -> :sswitch_3
        0xf3 -> :sswitch_0
        0xf4 -> :sswitch_2
    .end sparse-switch
.end method

.method isAdjustableVolumeKey(I)Z
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 3310
    sparse-switch p1, :sswitch_data_0

    .line 3319
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3317
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3310
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xf2 -> :sswitch_0
        0xf3 -> :sswitch_0
    .end sparse-switch
.end method

.method isFMActive()Z
    .locals 3

    .prologue
    .line 3447
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 3448
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 3449
    const-string v1, "SamsungWindowManager"

    const-string v2, "isFMActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    const/4 v1, 0x0

    .line 3452
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    goto :goto_0
.end method

.method isMusicActive()Z
    .locals 3

    .prologue
    .line 3435
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 3436
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 3437
    const-string v1, "SamsungWindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3438
    const/4 v1, 0x0

    .line 3440
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_0
.end method

.method isVoipCallActive()Z
    .locals 4

    .prologue
    .line 3456
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 3457
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 3458
    const-string v1, "SamsungWindowManager"

    const-string v2, "isVoipCallActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3459
    const/4 v1, 0x0

    .line 3463
    :goto_0
    return v1

    .line 3461
    :cond_0
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voice stream active = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isVoiceCallActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", record thread active = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    invoke-virtual {v0}, Landroid/media/AudioManager;->isVoiceCallActive()Z

    move-result v1

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 3271
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3274
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->controlMusicVolume()V

    .line 3277
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->controlFMRadioVolume()V

    .line 3280
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->controlCallAndRingingVolume()V

    .line 3285
    :try_start_0
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3289
    :goto_1
    monitor-enter p0

    .line 3290
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlMusicVolume:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlRadioVolume:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlCallVolume:Z

    if-nez v0, :cond_0

    .line 3293
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3305
    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3307
    return-void

    .line 3296
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedToRun:Z

    if-nez v0, :cond_1

    .line 3297
    monitor-exit p0

    goto :goto_2

    .line 3303
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3300
    :cond_1
    :try_start_3
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->DURATION_LONG_PRESS:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 3301
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    .line 3303
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3286
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateInfo(IZZ)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "canceled"    # Z

    .prologue
    .line 3256
    monitor-enter p0

    .line 3259
    :try_start_0
    iput p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    .line 3260
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedToRun:Z

    .line 3261
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->DURATION_LONG_PRESS:J

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    .line 3263
    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->isAdjustableVolumeKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3264
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedToRun:Z

    .line 3266
    :cond_1
    monitor-exit p0

    .line 3267
    return-void

    .line 3266
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
