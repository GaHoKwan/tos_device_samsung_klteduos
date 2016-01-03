.class public Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenShotForEffect;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field static final ACTION_NOTIFICATION_ARRIVED:Ljava/lang/String; = "com.system.action.NOTIFICATION"

.field private static BOOSTING_TIMEOUT:I = 0x0

.field static final DEBUG:Z = false

.field private static final DELAY_SHOW_IN_FULLSCREEN_BY_NOTIFICATION:I = 0x3e8

.field private static final FINGERPRINT_KEY_IGNORE_DURATION:I = 0x3e8

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final KEY_DISABLE_STATUS_BAR_OPEN:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Disable"

.field static final NOTIFICATION_FIELD_TYPE:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Type"

.field static final NOTIFICATION_TYPE_ADD:I = 0x1

.field private static final QUICKSHOT_CHORD_DEBOUNDCE_DELAY_MLLIS:J = 0x15eL

.field private static final QUICKSHOT_CHORD_KEY_INTERVEAL_TIME_MILLIS:J = 0x96L

.field private static final SAFETYASSURANCE_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0xfaL

.field static final SAFE_DEBUG:Z

.field static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field static final SCREENCAPTURE_SWEEP_LEFT:I = 0x2

.field static final SCREENCAPTURE_SWEEP_RIGHT:I = 0x3

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final TAG:Ljava/lang/String; = "SamsungWindowManager"

.field public static final TORCH_FILE:Ljava/lang/String; = "/sys/class/camera/flash/rear_flash"

.field static final localLOGV:Z

.field private static mCoreNumLockHelper:Landroid/os/DVFSHelper;

.field private static mCpuBooster:Landroid/os/DVFSHelper;

.field static mFocusedWindowPkgName:Ljava/lang/String;


# instance fields
.field private final EnableLinuxCOMMONAPI4:Ljava/lang/String;

.field final MAX_SCREENSHOT_CONNECTION:I

.field private final UVS_ORIENTATION_PROVIDER:Ljava/lang/String;

.field private final UVS_ORIENTATION_REQUEST:Ljava/lang/String;

.field WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

.field private final mAccessControlChordLongPress:Ljava/lang/Runnable;

.field mAlwaysComponet:Landroid/content/ComponentName;

.field mAlwaysIntent:Landroid/content/Intent;

.field mAudioManager:Landroid/media/AudioManager;

.field mAvailableVoiceCommand:Z

.field mBlockCollapseStatusBar:Z

.field mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleted:Z

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mCameraKeyConsumedByQuickShotChord:Z

.field private mCameraKeyTime:J

.field private mCameraKeyTriggered:Z

.field private mCameraRecordKeyConsumedByAccessControlChord:Z

.field private mCameraRecordKeyTime:J

.field private mCameraRecordKeyTriggered:Z

.field mClearCoverComponent:Landroid/content/ComponentName;

.field mContext:Landroid/content/Context;

.field mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

.field mDoubleTapOnHomeBehavior:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEasySetupKeyTriggered:Z

.field private final mFactoryTestChordLongPress:Ljava/lang/Runnable;

.field mFingerPrintIntent:Landroid/content/Intent;

.field mFingerPrintPending:Z

.field private final mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

.field mFlashAnnotateComponent:Landroid/content/ComponentName;

.field mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

.field private mFlashKeyConsumedByScreenshotChord:Z

.field private mFlashKeyTime:J

.field private mFlashKeyTriggered:Z

.field mFlipFolderOpenedIntent:Landroid/content/Intent;

.field mGloveModeIntent:Landroid/content/Intent;

.field mGloveState:I

.field mGripRotationLocked:Z

.field mHMTPressed:Z

.field mHandler:Landroid/os/Handler;

.field mHasDaynotePackage:Z

.field mHasFlashAnnotateComponent:Z

.field mHasMultiWindowFeature:Z

.field private mHasSPenUspFeature:Z

.field mHasUltraSonicPackage:Z

.field mHasVoiceMemoComponent:Z

.field mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

.field private mHomeKeyConsumedByAccessControlChord:Z

.field private mHomeKeyConsumedByScreenRecordChord:Z

.field private mHomeKeyConsumedByScreenshotChord:Z

.field private mHomeKeyTime:J

.field private mHomeKeyTriggered:Z

.field mIsCheckDrivingMode:Z

.field mIsDockHomeEnabled:Z

.field mIsEasyModeEnabled:Z

.field mIsEnabledAccessControl:Z

.field mIsKidsModeEnabled:Z

.field private mIsRingingOrOffhook:Z

.field mIsSafetyAssuranceEnabled:Z

.field mIsUseAccessControl:Z

.field private mIsVisibleSPenGestureView:Z

.field mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field final mLock:Ljava/lang/Object;

.field mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

.field mNavibarHandler:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;

.field mNotificationReceiver:Landroid/content/BroadcastReceiver;

.field mOpenByNotification:Z

.field mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

.field mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field mPenInsertedIntent:Landroid/content/Intent;

.field mPenInsertedIntentUserSwitch:Landroid/content/Intent;

.field mPenNotifyVibrationChecked:Z

.field mPenState:I

.field mPerformEditAfterScreenCapture:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPowerDoubleBehavior:Z

.field private mPowerKeyConsumedByAccessControlChord:Z

.field private mPowerKeyConsumedByFactoryTestChord:Z

.field private mPowerKeyConsumedByQuickShotChord:Z

.field private mPowerKeyConsumedByScreenRecordChord:Z

.field private mPowerKeyConsumedByScreenshotChord:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field mPowerKeyTripleClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;

.field mPowerManager:Landroid/os/PowerManager;

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private final mQuickShotChordLongPress:Ljava/lang/Runnable;

.field mRingtone:Landroid/media/Ringtone;

.field mSPenGestureInputChannel:Landroid/view/InputChannel;

.field mSPenGestureInputEventReceiver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;

.field mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

.field mSVoiceComponent:Landroid/content/ComponentName;

.field private final mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

.field mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSamsungPolicyInputEventChannel:Landroid/view/InputChannel;

.field mSamsungPolicyInputEventReceiver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;

.field mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

.field private final mScreenrecordChordLongPress:Ljava/lang/Runnable;

.field private final mScreenshotChordLongPress:Ljava/lang/Runnable;

.field final mScreenshotLock:Ljava/lang/Object;

.field final mServiceAquireLock:Ljava/lang/Object;

.field mServiceConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ServiceConnection;",
            "Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsObserver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

.field mSideSyncSourcePresentationActived:Z

.field private mSpenUspFeatureLevel:I

.field mStateGlance:Z

.field mStatusBarHideOnNormalScreen:Z

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mStatusBarShowOnFullScreen:Z

.field mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

.field mSweepDirection:I

.field mSweepReceiver:Landroid/content/BroadcastReceiver;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTorchlightEnabled:Z

.field mTorchlightOn:Z

.field mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

.field mTripleTapOnHomeBehavior:I

.field private final mTurnOffTorchlight:Ljava/lang/Runnable;

.field mUserSetupComplete:Z

.field mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mUvsOrientation:I

.field mUvsReceiver:Landroid/content/BroadcastReceiver;

.field mVibrator:Landroid/os/SystemVibrator;

.field mVoiceCommandIntent:Landroid/content/Intent;

.field mVoiceTalkComponent:Landroid/content/ComponentName;

.field mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mVolumeDownKeyConsumedByAccessControlChord:Z

.field private mVolumeDownKeyConsumedByQuickShotChord:Z

.field private mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumedByQuickShotChord:Z

.field private mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

.field private mVolumeUpKeyConsumedByScreenRecordChord:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private final mVolumeUpLongPress:Ljava/lang/Runnable;

.field private mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

.field private mWiFiProtectedSetupKeyTime:J

.field private mWiFiProtectedSetupKeyTriggered:Z

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 141
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    .line 391
    const-string v0, "UNKNOWN"

    sput-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFocusedWindowPkgName:Ljava/lang/String;

    .line 4158
    sput-object v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 4159
    sput-object v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 4160
    const/16 v0, 0x3e8

    sput v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    .line 163
    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 168
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 171
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    .line 175
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    .line 179
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTripleClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    .line 191
    iput v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    .line 192
    iput v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    .line 258
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 259
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    .line 263
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    .line 267
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    .line 271
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    .line 277
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    .line 278
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    .line 282
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    .line 286
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    .line 290
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    .line 291
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    .line 295
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasVoiceMemoComponent:Z

    .line 299
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasUltraSonicPackage:Z

    .line 303
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    .line 307
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    .line 311
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGripRotationLocked:Z

    .line 315
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    .line 319
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    .line 323
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    .line 327
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHMTPressed:Z

    .line 335
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    .line 339
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    .line 340
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    .line 344
    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 352
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mNavibarHandler:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;

    .line 359
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOpenByNotification:Z

    .line 363
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsVisibleSPenGestureView:Z

    .line 364
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasSPenUspFeature:Z

    .line 368
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStateGlance:Z

    .line 369
    iput v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    .line 373
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasMultiWindowFeature:Z

    .line 376
    iput v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    .line 377
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableLinuxCommonApi4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    .line 378
    const-string v0, "com.lguplus.uvs.REQUEST_ORIENTATION"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->UVS_ORIENTATION_REQUEST:Ljava/lang/String;

    .line 379
    const-string v0, "LGT"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->UVS_ORIENTATION_PROVIDER:Ljava/lang/String;

    .line 399
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUserSetupComplete:Z

    .line 403
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    .line 406
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    .line 452
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 481
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 496
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 513
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

    .line 525
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    .line 1407
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    .line 1954
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    .line 1989
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    .line 2041
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    .line 2080
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    .line 2163
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    .line 2213
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$15;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    .line 2226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 2227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    .line 2228
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->MAX_SCREENSHOT_CONNECTION:I

    .line 2498
    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    .line 2500
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarShowOnFullScreen:Z

    .line 2501
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarHideOnNormalScreen:Z

    .line 2502
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockCollapseStatusBar:Z

    .line 3682
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$18;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$18;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsReceiver:Landroid/content/BroadcastReceiver;

    .line 4264
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$19;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$19;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    .line 4272
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$20;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$20;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    .line 4315
    return-void
.end method

.method private TorchModeFlashSet(I)V
    .locals 8
    .param p1, "torchTime"    # I

    .prologue
    const/4 v7, 0x0

    .line 4280
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Torch Time Out ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4281
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 4282
    .local v1, "input":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4284
    .local v2, "out":Ljava/io/FileWriter;
    if-lez p1, :cond_3

    .line 4285
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    .line 4286
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4287
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    int-to-long v6, p1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4288
    const-string v1, "1"

    .line 4298
    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/camera/flash/rear_flash"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4299
    .end local v2    # "out":Ljava/io/FileWriter;
    .local v3, "out":Ljava/io/FileWriter;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4304
    if-eqz v3, :cond_1

    .line 4306
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v2, v3

    .line 4311
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :cond_2
    :goto_2
    return-void

    .line 4290
    :cond_3
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    .line 4291
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4292
    const-string v1, "0"

    goto :goto_0

    .line 4300
    :catch_0
    move-exception v0

    .line 4301
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v4, "SamsungWindowManager"

    const-string v5, "exception occurred. /sys/class/camera/flash/rear_flash"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4304
    if-eqz v2, :cond_2

    .line 4306
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 4307
    :catch_1
    move-exception v4

    goto :goto_2

    .line 4304
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_4

    .line 4306
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 4308
    :cond_4
    :goto_5
    throw v4

    .line 4307
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_2
    move-exception v4

    goto :goto_1

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :catch_3
    move-exception v5

    goto :goto_5

    .line 4304
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_4

    .line 4300
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_3
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsVisibleSPenGestureView:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsVisibleSPenGestureView:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setUvsOrieatation(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateAvailableVoiceCommand()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isScreenCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->takeScreenshot(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isOneTouchReportEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateWacomOffset(I)V

    return-void
.end method

.method private addPowerKeyClickAction(I)V
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 3216
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTripleClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;

    if-eqz v0, :cond_0

    .line 3217
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTripleClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->addAction(I)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->access$1200(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;I)V

    .line 3219
    :cond_0
    return-void
.end method

.method private cancelPendingAccessControlChordAction()V
    .locals 2

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2039
    return-void
.end method

.method private cancelPendingFactoryTestChordAction()V
    .locals 2

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1987
    return-void
.end method

.method private cancelPendingQuickShotChordAction()V
    .locals 2

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2211
    return-void
.end method

.method private cancelPendingSafetyAssuranceChordAction()V
    .locals 2

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2077
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2078
    :cond_0
    return-void
.end method

.method private cancelPendingScreenrecordChordAction()V
    .locals 2

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2161
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1952
    return-void
.end method

.method public static getFocusedWindowPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4020
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFocusedWindowPkgName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFocusedWindowPkgName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 2

    .prologue
    .line 1905
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method static getTelephonyExtService()Lcom/android/internal/telephony/ITelephonyExt;
    .locals 3

    .prologue
    .line 3721
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v0

    .line 3723
    .local v0, "telephonyExtService":Lcom/android/internal/telephony/ITelephonyExt;
    if-nez v0, :cond_0

    .line 3724
    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    :cond_0
    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 972
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method static getTelephonyService2()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 977
    const-string v1, "phone2"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 979
    .local v0, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 980
    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find ITelephony2 interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_0
    return-object v0
.end method

.method static getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .locals 3

    .prologue
    .line 3730
    const-string v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 3732
    .local v0, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-nez v0, :cond_0

    .line 3733
    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find IVoIPInterface interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    :cond_0
    return-object v0
.end method

.method private initStatusBarWindowController()V
    .locals 3

    .prologue
    .line 2505
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungPolicyInputEventChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_0

    .line 2506
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v1, "SamsungPolicyInputEventChannel"

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungPolicyInputEventChannel:Landroid/view/InputChannel;

    .line 2508
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungPolicyInputEventChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungPolicyInputEventReceiver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;

    .line 2512
    :cond_0
    return-void
.end method

.method private interceptAccessControlChord()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x96

    const/4 v4, 0x1

    .line 2005
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    if-nez v2, :cond_1

    .line 2035
    :cond_0
    :goto_0
    return-void

    .line 2006
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_2

    .line 2008
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2009
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 2012
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByAccessControlChord:Z

    .line 2013
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByAccessControlChord:Z

    .line 2014
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 2015
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 2016
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 2017
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 2018
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2021
    .end local v0    # "now":J
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_0

    .line 2022
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2023
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 2026
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByAccessControlChord:Z

    .line 2027
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyConsumedByAccessControlChord:Z

    .line 2028
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 2029
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 2030
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 2031
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 2032
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptFactoryTestChord()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x96

    const/4 v4, 0x1

    .line 1969
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1983
    :cond_0
    :goto_0
    return-void

    .line 1970
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v2, :cond_0

    .line 1971
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1972
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1974
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByFactoryTestChord:Z

    .line 1975
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

    .line 1976
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1977
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1978
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1979
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1980
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptSafetyAssuranceChord()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2058
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2073
    :cond_0
    :goto_0
    return-void

    .line 2060
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v0, :cond_0

    .line 2062
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2063
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptSafetyAssuranceChord - success and waiting long press : mVolumeDownKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mVolumeUpKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

    .line 2065
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

    .line 2066
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 2067
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 2068
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 2069
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2070
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptScreenRecordChord()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x96

    const/4 v6, 0x1

    .line 2124
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenRecordChordEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2157
    :cond_0
    :goto_0
    return-void

    .line 2125
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_4

    .line 2126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2127
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 2129
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptScreenRecordChord - success and waiting long press : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mHomeKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    :cond_2
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    .line 2131
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    .line 2132
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 2133
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 2134
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2137
    :cond_3
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptScreenRecordChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mHomeKeyTime{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2140
    .end local v0    # "now":J
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_0

    .line 2142
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2143
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_6

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_6

    .line 2145
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptScreenRecordChord - success and waiting long press : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mPowerKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    :cond_5
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    .line 2147
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    .line 2148
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 2149
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 2150
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 2151
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2154
    :cond_6
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptScreenRecordChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mPowerKeyTime{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 1029
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1031
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1033
    const/4 v2, 0x1

    .line 1038
    :cond_0
    :goto_0
    return v2

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isHMTLongClick()V
    .locals 5

    .prologue
    .line 4071
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4072
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 4074
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4075
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "interceptKeyBeforeDispatching: CALL key - short press down while ringing: Reject the call!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    .line 4092
    :cond_1
    :goto_0
    return-void

    .line 4078
    :cond_2
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "SamsungWindowManager"

    const-string v4, "seethrough Camara"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4079
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4080
    .local v1, "seethroughintent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.gvr.seethrough"

    const-string v4, "com.samsung.android.gvr.seethrough.CameraActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4081
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4083
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4084
    :catch_0
    move-exception v0

    .line 4085
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    :try_start_2
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "SamsungWindowManager"

    const-string v4, "Fail to launch seethrough Camera"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 4088
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v1    # "seethroughintent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 4089
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "SamsungWindowManager"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isHMTSingleClick()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 4051
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4052
    .local v1, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_3

    .line 4054
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4055
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "interceptKeyBeforeDispatching: CALL key - short press down while ringing: Answer the call!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V

    .line 4067
    :goto_0
    return v2

    .line 4058
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4059
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "SamsungWindowManager"

    const-string v4, "interceptKeyBeforeDispatching: ENDCALL key - short press down while offhook: End the call!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4060
    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4063
    :catch_0
    move-exception v0

    .line 4064
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "SamsungWindowManager"

    const-string v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4067
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isOneTouchReportEnabled()Z
    .locals 17

    .prologue
    .line 2359
    const-string v15, "go.police.report"

    .line 2360
    .local v15, "oneTouchReportPackageName":Ljava/lang/String;
    const-string v14, "com.android.vending"

    .line 2362
    .local v14, "oneTouchReportInstaller":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2363
    .local v13, "installerPackage":Ljava/lang/String;
    const/4 v12, 0x0

    .line 2365
    .local v12, "enabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2366
    const/4 v2, 0x0

    .line 2411
    :goto_0
    return v2

    .line 2370
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 2372
    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "go.police.report"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2374
    const-string v2, "com.android.vending"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 2376
    const/4 v2, 0x0

    goto :goto_0

    .line 2378
    :catch_0
    move-exception v11

    .line 2380
    .local v11, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 2384
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v9, "content://go.police.provider.report"

    .line 2385
    .local v9, "customerAgreementPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2387
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_3

    .line 2388
    const-string v2, "content://go.police.provider.report"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2390
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2391
    const-string v2, "customer_agreement"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2393
    .local v8, "customerAgreementColumn":I
    const/4 v2, -0x1

    if-eq v8, v2, :cond_2

    .line 2394
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 2395
    .local v10, "customerAgreementValue":I
    const/4 v2, 0x1

    if-ne v2, v10, :cond_4

    const/4 v12, 0x1

    .line 2405
    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 2406
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_2
    move v2, v12

    .line 2411
    goto :goto_0

    .line 2395
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "customerAgreementColumn":I
    .restart local v10    # "customerAgreementValue":I
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 2402
    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :catch_1
    move-exception v11

    .line 2403
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2405
    if-eqz v7, :cond_3

    .line 2406
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2405
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    .line 2406
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1043
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1045
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1046
    const/4 v2, 0x1

    .line 1051
    :cond_0
    :goto_0
    return v2

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isScreenCaptureEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1006
    const/4 v0, 0x1

    .line 1008
    .local v0, "isScreenCaptureEnabled":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_0

    .line 1009
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1013
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1014
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEDM.getRestrictionPolicy().isScreenCaptureEnabledEx(true) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabledEx(Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const/4 v0, 0x0

    .line 1017
    const/4 v1, 0x0

    .line 1020
    :goto_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private playSound(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 2672
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2673
    .local v3, "soundUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 2675
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2677
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->stop()V

    .line 2678
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2684
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    .line 2685
    if-eqz v0, :cond_2

    .line 2686
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 2688
    .local v2, "masterStreamVolume":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_1

    .line 2689
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 2690
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V

    .line 2699
    .end local v2    # "masterStreamVolume":I
    :goto_1
    return-void

    .line 2679
    :catch_0
    move-exception v1

    .line 2680
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to stop Ringtone - already done : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2693
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "masterStreamVolume":I
    :cond_1
    const-string v4, "SamsungWindowManager"

    const-string v5, "There are no ringtones"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2697
    .end local v2    # "masterStreamVolume":I
    :cond_2
    const-string v4, "SamsungWindowManager"

    const-string v5, "AudioManager loading fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private playSoundEffect()V
    .locals 3

    .prologue
    .line 2802
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 2803
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 2804
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2805
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 2813
    :goto_0
    return-void

    .line 2808
    :cond_0
    const-string v1, "SamsungWindowManager"

    const-string v2, "keyguard - disable key sound"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2811
    :cond_1
    const-string v1, "SamsungWindowManager"

    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setUvsOrieatation(I)V
    .locals 1
    .param p1, "request"    # I

    .prologue
    .line 3670
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    if-eq v0, p1, :cond_1

    .line 3671
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 3675
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    .line 3680
    :cond_1
    :goto_0
    return-void

    .line 3677
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    goto :goto_0
.end method

.method private startSGA(Ljava/lang/String;)V
    .locals 5
    .param p1, "gamePkg"    # Ljava/lang/String;

    .prologue
    .line 3971
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3972
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 3973
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3975
    if-eqz v1, :cond_1

    .line 3977
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3984
    :cond_0
    :goto_0
    return-void

    .line 3978
    :catch_0
    move-exception v0

    .line 3979
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "SGA is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3982
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "no Launch intent of SGA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private takeScreenshot(I)V
    .locals 8
    .param p1, "event"    # I

    .prologue
    .line 2256
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2257
    :try_start_0
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    .line 2258
    const-string v4, "SamsungWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "takeScreenshot : event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mPerformEditAfterScreenCapture = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    if-eqz v4, :cond_2

    .line 2263
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2264
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2265
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2266
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2284
    :cond_1
    :goto_0
    monitor-exit v5

    .line 2285
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 2268
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v6, 0x3

    if-lt v4, v6, :cond_3

    .line 2269
    monitor-exit v5

    goto :goto_1

    .line 2284
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2271
    :cond_3
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui"

    const-string v6, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2274
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2275
    new-instance v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V

    .line 2277
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v1, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2279
    new-instance v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/content/ServiceConnection;)V

    .line 2280
    .local v3, "runnable":Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2281
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private updateAvailableVoiceCommand()V
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSVoiceComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceTalkComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1330
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    .line 1334
    :goto_0
    return-void

    .line 1332
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    goto :goto_0
.end method

.method private updateWacomOffset(I)V
    .locals 5
    .param p1, "rotation"    # I

    .prologue
    .line 2751
    const/4 v1, 0x0

    .line 2753
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/epen_rotation"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2754
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    add-int/lit8 v3, p1, 0x30

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2761
    if-eqz v2, :cond_0

    .line 2762
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 2768
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :cond_1
    :goto_0
    return-void

    .line 2764
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 2765
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 2767
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 2755
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 2761
    :goto_1
    if-eqz v1, :cond_1

    .line 2762
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2764
    :catch_2
    move-exception v0

    .line 2765
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2757
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 2758
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2761
    if-eqz v1, :cond_1

    .line 2762
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 2764
    :catch_4
    move-exception v0

    .line 2765
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2760
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 2761
    :goto_3
    if-eqz v1, :cond_2

    .line 2762
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 2766
    :cond_2
    :goto_4
    throw v3

    .line 2764
    :catch_5
    move-exception v0

    .line 2765
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 2760
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 2757
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 2755
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method


# virtual methods
.method public callAccessibilityScreenCurtain()V
    .locals 4

    .prologue
    .line 1375
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1376
    const-string v2, "SamsungWindowManager"

    const-string v3, "callAccessibilityScreenCurtain() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1379
    .local v1, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setScreenCurtain()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    .end local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :goto_0
    return-void

    .line 1380
    .restart local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :catch_0
    move-exception v0

    .line 1381
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1384
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :cond_0
    const-string v2, "SamsungWindowManager"

    const-string v3, "sendBroadcastForAccessibility() is not called, because it is not provisioned"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public callAccessibilityTalkbackMode()V
    .locals 4

    .prologue
    .line 1365
    const-string v2, "SamsungWindowManager"

    const-string v3, "callAccessibilityTalkbackMode() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1368
    .local v1, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setTalkbackMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    :goto_0
    return-void

    .line 1369
    :catch_0
    move-exception v0

    .line 1370
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkMenuLongPressIgnore()Z
    .locals 1

    .prologue
    .line 3859
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->checkMenuLongPressIgnore()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->access$1900(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;)Z

    move-result v0

    return v0
.end method

.method public downloadForSGA(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgUri"    # Ljava/lang/String;

    .prologue
    .line 4003
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    const-string v3, "try download SGA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4005
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4006
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4007
    const v2, 0x30000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4009
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4015
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 4010
    :catch_0
    move-exception v0

    .line 4012
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SamsungWindowManager"

    const-string v3, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4013
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->downloadForSamsungApps()V

    goto :goto_0
.end method

.method public downloadForSamsungApps()V
    .locals 5

    .prologue
    .line 3987
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "try download SamsungApps"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3988
    :cond_0
    const-string v2, "http://apps.samsung.com/mw/apk_en.as"

    .line 3990
    .local v2, "url":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3992
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3993
    const v3, 0x30000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3995
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4000
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 3996
    :catch_0
    move-exception v0

    .line 3998
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "There is not browsable apps for samsungapps download"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4202
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mPenState="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 4203
    const-string v5, " mGloveState="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 4204
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mPowerKeyTriggered="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 4205
    const-string v5, " mHomeKeyTriggered="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 4206
    const-string v5, " mVolumeDownKeyTriggered="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 4207
    const-string v5, " mVolumeUpKeyTriggered="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4208
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mFlashKeyTriggered="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 4209
    const-string v5, " mCameraRecordKeyTriggered="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 4210
    const-string v5, " mCameraKeyTriggered="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraKeyTriggered:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4211
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mWiFiProtectedSetupKeyTriggered="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 4212
    const-string v5, " mEasySetupKeyTriggered="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEasySetupKeyTriggered:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4213
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mIsSafetyAssuranceEnabled="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 4214
    const-string v5, " mIsUseAccessControl="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 4215
    const-string v5, " mIsEnabledAccessControl="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4216
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mIsKidsModeEnabled="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 4217
    const-string v5, " mIsEasyModeEnabled="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 4218
    const-string v5, " mIsDockHomeEnabled="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4219
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mPerformEditAfterScreenCapture="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 4220
    const-string v5, " mHasFlashAnnotateComponent="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4221
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 4222
    const-string v5, " mAvailableVoiceCommand="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 4223
    const-string v5, " mTripleTapOnHomeBehavior="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 4224
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mOpenByNotification="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOpenByNotification:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4225
    const-string v5, "mIsRingingOrOffhook="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4227
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mSideSyncSourcePresentationActived="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4229
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    # getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->mKeyComponentsMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->access$2000(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 4230
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mKeyComponentsMap ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    # getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->mKeyComponentsMap:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->access$2000(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "):"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4231
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    # getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->mKeyComponentsMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->access$2000(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4232
    .local v2, "iIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4233
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 4234
    .local v4, "key":Ljava/lang/Integer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    key code = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4235
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    # getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->mKeyComponentsMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->access$2000(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 4236
    .local v0, "components":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 4237
    .local v3, "info":Landroid/content/ComponentName;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "        ComponentsClassName : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 4241
    .end local v0    # "components":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "iIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "info":Landroid/content/ComponentName;
    .end local v4    # "key":Ljava/lang/Integer;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4240
    .restart local v2    # "iIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    const-string v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4241
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4242
    return-void
.end method

.method public enableSPenGesture()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 3611
    iget v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3612
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    if-nez v2, :cond_0

    .line 3613
    new-instance v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .line 3614
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setVisibility(I)V

    .line 3617
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 3619
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x831

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3620
    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3623
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3624
    const-string v2, "SPenGesture"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3625
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 3626
    .local v1, "wm":Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 3627
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3628
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3630
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v3, "SPenGestureView"

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    .line 3631
    new-instance v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureInputEventReceiver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;

    .line 3635
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method public endCallByGamekey()Z
    .locals 7

    .prologue
    .line 3891
    const/4 v1, 0x0

    .line 3893
    .local v1, "hungUp":Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3894
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3896
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3897
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3905
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3906
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 3907
    .local v3, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_1

    .line 3909
    :try_start_1
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3910
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 3919
    .end local v3    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v4

    .line 3921
    .local v4, "voipInterfaceService":Landroid/os/IVoIPInterface;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3922
    invoke-interface {v4}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    .line 3927
    :cond_2
    :goto_2
    return v1

    .line 3899
    .end local v4    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_0
    move-exception v0

    .line 3900
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "SamsungWindowManager"

    const-string v6, "ITelephony threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3912
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v0

    .line 3913
    .restart local v0    # "ex":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "SamsungWindowManager"

    const-string v6, "ITelephony2 threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3924
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    .restart local v4    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_2
    move-exception v0

    .line 3925
    .restart local v0    # "ex":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "SamsungWindowManager"

    const-string v6, "ITelephony2 threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 3

    .prologue
    .line 996
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 997
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    monitor-exit v1

    return-object v0

    .line 1002
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentTopActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 3108
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 986
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 987
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 988
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 992
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTimeoutTimeOfKeyCombination(Landroid/view/KeyEvent;J)J
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "now"    # J

    .prologue
    const-wide/16 v5, 0x96

    .line 1638
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    .line 1639
    .local v0, "flags":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_3

    .line 1641
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-nez v3, :cond_0

    .line 1643
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long v1, v3, v5

    .line 1712
    :goto_0
    return-wide v1

    .line 1646
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-nez v3, :cond_1

    .line 1648
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long v1, v3, v5

    .line 1650
    .local v1, "timeoutTime":J
    goto :goto_0

    .line 1651
    .end local v1    # "timeoutTime":J
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v3, :cond_2

    .line 1652
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1653
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long v1, v3, v5

    .line 1655
    .restart local v1    # "timeoutTime":J
    goto :goto_0

    .line 1658
    .end local v1    # "timeoutTime":J
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_3

    .line 1659
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTime:J

    add-long v1, v3, v5

    .line 1661
    .restart local v1    # "timeoutTime":J
    goto :goto_0

    .line 1665
    .end local v1    # "timeoutTime":J
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenRecordChordEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_5

    .line 1667
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v3, :cond_4

    .line 1668
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long v1, v3, v5

    .line 1670
    .restart local v1    # "timeoutTime":J
    goto :goto_0

    .line 1672
    .end local v1    # "timeoutTime":J
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v3, :cond_5

    .line 1673
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long v1, v3, v5

    .line 1675
    .restart local v1    # "timeoutTime":J
    goto :goto_0

    .line 1679
    .end local v1    # "timeoutTime":J
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1681
    :cond_6
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v3, :cond_7

    .line 1682
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long v1, v3, v5

    .line 1684
    .restart local v1    # "timeoutTime":J
    goto :goto_0

    .line 1688
    .end local v1    # "timeoutTime":J
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    if-eqz v3, :cond_9

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_9

    .line 1689
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v3, :cond_8

    .line 1690
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long v1, v3, v5

    .line 1692
    .restart local v1    # "timeoutTime":J
    goto/16 :goto_0

    .line 1694
    .end local v1    # "timeoutTime":J
    :cond_8
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_9

    .line 1695
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTime:J

    add-long v1, v3, v5

    .line 1697
    .restart local v1    # "timeoutTime":J
    goto/16 :goto_0

    .line 1701
    .end local v1    # "timeoutTime":J
    :cond_9
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v3

    if-eqz v3, :cond_b

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_b

    .line 1702
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_a

    .line 1703
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTime:J

    add-long v1, v3, v5

    .line 1705
    .restart local v1    # "timeoutTime":J
    goto/16 :goto_0

    .line 1706
    .end local v1    # "timeoutTime":J
    :cond_a
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-nez v3, :cond_b

    .line 1707
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long v1, v3, v5

    .line 1709
    .restart local v1    # "timeoutTime":J
    goto/16 :goto_0

    .end local v1    # "timeoutTime":J
    :cond_b
    move-wide v1, p2

    .line 1712
    goto/16 :goto_0
.end method

.method public getUvsOrientation()I
    .locals 1

    .prologue
    .line 3666
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    return v0
.end method

.method public handleHomeKeyInRinging()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 4098
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4099
    .local v1, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4100
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isShowingIncomingPopup()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4101
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isAnyKeyMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4102
    const-string v4, "SamsungWindowManager"

    const-string v5, "ringing: Answer the call!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V

    .line 4130
    .end local v1    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v3

    .line 4107
    .restart local v1    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v3, "SamsungWindowManager"

    const-string v5, "ringing: home pass to call!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 4108
    goto :goto_0

    .line 4111
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4112
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4113
    .local v2, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4114
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isShowingIncomingPopup()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4115
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isAnyKeyMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4116
    const-string v4, "SamsungWindowManager"

    const-string v5, "ringing: Answer the call2!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4117
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4126
    .end local v1    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4127
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "RemoteException from getTelephonyService()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4130
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 4121
    .restart local v1    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    .restart local v2    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_3
    :try_start_1
    const-string v3, "SamsungWindowManager"

    const-string v5, "ringing: home pass to call2!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v4

    .line 4122
    goto :goto_0
.end method

.method public handleMenuLongPress()Z
    .locals 1

    .prologue
    .line 3863
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->handleMenuLongPress()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->access$500(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;)Z

    move-result v0

    return v0
.end method

.method public handleSamsungVolumeControl(IZZ)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "canceled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3468
    if-eqz p2, :cond_1

    .line 3469
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    if-nez v0, :cond_0

    .line 3470
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    .line 3471
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 3472
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->start()V

    .line 3480
    :cond_0
    :goto_0
    return-void

    .line 3475
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    if-eqz v0, :cond_0

    .line 3476
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 3477
    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "windowManager"    # Landroid/view/IWindowManager;
    .param p4, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 542
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 543
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 544
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 545
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 546
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 547
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    .line 557
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 560
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "SamsungPhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v0, v9, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 562
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mSafetyAssuranceWakeLock"

    invoke-virtual {v0, v9, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mSafetyAssuranceTimeoutWakeLock"

    invoke-virtual {v0, v9, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 567
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mVoiceWakeUpWakeLock"

    invoke-virtual {v0, v9, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 570
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mTorchlightWakeLock"

    invoke-virtual {v0, v9, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 574
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    .line 576
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    .line 581
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 582
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SWEEP_LEFT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 583
    const-string v0, "android.intent.action.SWEEP_RIGHT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 584
    const-string v0, "android.intent.action.SWEEP_DOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 594
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 595
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 599
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 600
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 601
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 605
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 606
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "com.system.action.NOTIFICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 609
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 610
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 613
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.action.SVOICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    .line 614
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v1, "isThisComeFromHomeKeyDoubleClickConcept"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 615
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v1, "CHECK_SCHEDULE_ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 616
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    .line 617
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT.USER_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.always.action.LAUNCH_ALWAYS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAlwaysIntent:Landroid/content/Intent;

    .line 619
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.glove.ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveModeIntent:Landroid/content/Intent;

    .line 620
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.flipfolder.OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    .line 621
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.secretmode.action.REQ_SHOW_VISUAL_CUE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    .line 622
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.secretmode.service"

    const-string v5, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-direct {v1, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 624
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.vlingo.client.samsung"

    const-string v2, "com.vlingo.client.car.CarActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceTalkComponent:Landroid/content/ComponentName;

    .line 626
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.vlingo.midas"

    const-string v2, "com.vlingo.midas.gui.ConversationActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSVoiceComponent:Landroid/content/ComponentName;

    .line 628
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.always"

    const-string v2, "com.samsung.android.app.always.ui.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAlwaysComponet:Landroid/content/ComponentName;

    .line 630
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.spen.flashannotate"

    const-string v2, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateComponent:Landroid/content/ComponentName;

    .line 632
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.spen.flashannotatesvc"

    const-string v2, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    .line 636
    const-string v0, "com.sec.android.daynote"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    .line 640
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    .line 644
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateAvailableVoiceCommand()V

    .line 647
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

    .line 648
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;->observe()V

    .line 651
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 652
    .local v7, "pm":Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_1

    .line 653
    const-string v0, "com.sec.feature.spen_usp"

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    .line 654
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSpenUspFeatureLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasSPenUspFeature:Z

    .line 657
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasSPenUspFeature:Z

    if-eqz v0, :cond_2

    .line 658
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 659
    new-instance v8, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    .line 660
    .local v8, "settingObserverForSPen":Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;
    invoke-virtual {v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;->observe()V

    .line 666
    .end local v8    # "settingObserverForSPen":Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;
    :cond_2
    if-eqz v7, :cond_3

    .line 667
    const-string v0, "com.sec.feature.multiwindow"

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasMultiWindowFeature:Z

    .line 668
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHasMultiWindowFeature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasMultiWindowFeature:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_3
    const-string v0, "LGT"

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 673
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 674
    .local v6, "mUvsFilter":Landroid/content/IntentFilter;
    const-string v0, "com.lguplus.uvs.REQUEST_ORIENTATION"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.SET_ORIENTATION"

    invoke-virtual {v0, v1, v6, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 680
    .end local v6    # "mUvsFilter":Landroid/content/IntentFilter;
    :cond_4
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 685
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_5

    .line 686
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 689
    :cond_5
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)Z
    .locals 26
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v18

    .line 1068
    .local v18, "keyguardOn":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v16

    .line 1069
    .local v16, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v19

    .line 1070
    .local v19, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    .line 1071
    .local v11, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v22

    if-nez v22, :cond_2

    const/4 v8, 0x1

    .line 1073
    .local v8, "down":Z
    :goto_0
    const/16 v22, 0x10c

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 1074
    if-eqz v8, :cond_0

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1076
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x3e8

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1079
    :cond_0
    const/16 v17, 0x1

    .line 1287
    :cond_1
    :goto_1
    return v17

    .line 1071
    .end local v8    # "down":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 1080
    .restart local v8    # "down":Z
    :cond_3
    const/16 v22, 0x10d

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 1081
    if-nez v8, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 1082
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1084
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchFingerPrint()V

    .line 1086
    :cond_4
    const/16 v17, 0x1

    goto :goto_1

    .line 1089
    :cond_5
    const/16 v22, 0x11d

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 1090
    if-nez v8, :cond_8

    .line 1091
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v22

    if-nez v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1092
    :cond_6
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1093
    .local v13, "intent":Landroid/content/Intent;
    const-string v22, "com.sec.android.intent.action.VOICE_WAKEUP_KEY"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v24, "com.sec.android.permission.HANDLE_VOICE_WAKEUP_KEY"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1096
    const/16 v17, 0x0

    goto :goto_1

    .line 1098
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 1100
    const-string v22, "SamsungWindowManager"

    const-string v23, "launch drivelink"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1114
    .restart local v13    # "intent":Landroid/content/Intent;
    const-string v22, "com.sec.android.automotive.drivelink.ACTION_VOICE_WAKEUP"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1123
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_8
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 1127
    :cond_9
    const/16 v22, 0x111

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 1128
    const/16 v17, 0x1

    .line 1129
    .local v17, "keyIntercept":Z
    if-nez v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v22

    if-nez v22, :cond_1

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchingGamekey(Z)Z

    move-result v17

    goto/16 :goto_1

    .line 1137
    .end local v17    # "keyIntercept":Z
    :cond_a
    const/16 v22, 0xf0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    .line 1138
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v22

    if-eqz v22, :cond_13

    .line 1139
    const-string v22, "service.media.dmb"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1140
    .local v7, "dmb_running":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "dmb_antenna_auto_start"

    const/16 v24, 0x0

    const/16 v25, -0x2

    invoke-static/range {v22 .. v25}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    const/4 v14, 0x1

    .line 1142
    .local v14, "isDmbAutoStarton":Z
    :goto_2
    const/4 v4, 0x0

    .line 1143
    .local v4, "b_dmb_running":Z
    const/4 v15, 0x0

    .line 1144
    .local v15, "isSecureKeyguard":Z
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_b

    .line 1145
    const-string v22, "1"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 1146
    const/4 v4, 0x1

    .line 1152
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v15

    .line 1154
    :cond_c
    const-string v22, "SamsungWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "KEYCODE_DMB_ANT_OPEN dmb_running="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", isSecureKeyguard="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", isDmbAutoStarton="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    if-nez v8, :cond_e

    if-nez v19, :cond_e

    .line 1160
    :try_start_0
    const-string v3, "/efs/FactoryApp/tdmb_det_count"

    .line 1161
    .local v3, "TDMB_DET_PATH":Ljava/lang/String;
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1162
    .local v21, "strDMBCount":Ljava/lang/String;
    const-string v22, "SamsungWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "TDMB_DET_COUNT : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    if-eqz v21, :cond_12

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_12

    .line 1165
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    const-wide/16 v24, 0x1

    add-long v5, v22, v24

    .line 1166
    .local v5, "dmb_det_count":J
    const-wide/32 v22, 0xf423f

    cmp-long v22, v5, v22

    if-lez v22, :cond_d

    .line 1167
    const-wide/16 v5, 0x1

    .line 1169
    :cond_d
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1180
    .end local v3    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v5    # "dmb_det_count":J
    .end local v21    # "strDMBCount":Ljava/lang/String;
    :cond_e
    :goto_4
    if-nez v8, :cond_20

    if-nez v19, :cond_20

    if-nez v4, :cond_20

    if-nez v15, :cond_20

    if-eqz v14, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v22

    if-nez v22, :cond_20

    .line 1183
    const-string v22, "SamsungWindowManager"

    const-string v23, "KEYCODE_DMB_ANT_OPEN"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    new-instance v22, Landroid/content/ComponentName;

    const-string v23, "com.sec.android.app.dmb"

    const-string v24, "com.sec.android.app.dmb.activity.DMBFullScreenView"

    invoke-direct/range {v22 .. v24}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v22 .. v22}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v13

    .line 1187
    .restart local v13    # "intent":Landroid/content/Intent;
    const-string v22, "com.sec.android.action.DMB_ANT_OPEN"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1188
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v22

    if-eqz v22, :cond_f

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1198
    :cond_f
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 1140
    .end local v4    # "b_dmb_running":Z
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "isDmbAutoStarton":Z
    .end local v15    # "isSecureKeyguard":Z
    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1147
    .restart local v4    # "b_dmb_running":Z
    .restart local v14    # "isDmbAutoStarton":Z
    .restart local v15    # "isSecureKeyguard":Z
    :cond_11
    const-string v22, "0"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 1148
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1171
    .restart local v3    # "TDMB_DET_PATH":Ljava/lang/String;
    .restart local v21    # "strDMBCount":Ljava/lang/String;
    :cond_12
    :try_start_1
    const-string v22, "0"

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 1173
    .end local v3    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v21    # "strDMBCount":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1174
    .local v9, "e":Ljava/io/IOException;
    const-string v22, "SamsungWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "IOException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1175
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 1176
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string v22, "SamsungWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "NumberFormatException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1202
    .end local v4    # "b_dmb_running":Z
    .end local v7    # "dmb_running":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "isDmbAutoStarton":Z
    .end local v15    # "isSecureKeyguard":Z
    :cond_13
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v22

    if-eqz v22, :cond_20

    .line 1204
    const/4 v15, 0x0

    .line 1205
    .restart local v15    # "isSecureKeyguard":Z
    const-string v22, "SamsungWindowManager"

    const-string v23, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v15

    .line 1209
    :cond_14
    if-nez v8, :cond_20

    if-nez v19, :cond_20

    if-nez v15, :cond_20

    .line 1210
    const-string v22, "SamsungWindowManager"

    const-string v23, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN TO SEND BROADCAST"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1212
    .restart local v13    # "intent":Landroid/content/Intent;
    const-string v22, "com.samsung.sec.mtv.DTV_ANTENNA_OPEN"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1214
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 1217
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v15    # "isSecureKeyguard":Z
    :cond_15
    const/16 v22, 0xf1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 1218
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v22

    if-eqz v22, :cond_16

    .line 1219
    if-nez v8, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v22

    if-nez v22, :cond_20

    .line 1220
    const-string v22, "SamsungWindowManager"

    const-string v23, "KEYCODE_DMB_ANT_CLOSE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1222
    .restart local v13    # "intent":Landroid/content/Intent;
    const-string v22, "com.sec.android.action.DMB_ANT_CLOSE"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1225
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 1229
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_16
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v22

    if-eqz v22, :cond_20

    .line 1230
    if-nez v8, :cond_20

    .line 1231
    const-string v22, "SamsungWindowManager"

    const-string v23, "KEYCODE_DTV_ANT_CLOSE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1233
    .restart local v13    # "intent":Landroid/content/Intent;
    const-string v22, "com.samsung.sec.mtv.DTV_ANTENNA_CLOSE"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1235
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 1243
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_17
    const/16 v22, 0xe2

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_19

    .line 1244
    if-eqz v8, :cond_20

    if-nez v18, :cond_20

    if-nez v19, :cond_20

    .line 1246
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v20

    .line 1247
    .local v20, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v20, :cond_18

    .line 1248
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/statusbar/IStatusBarService;->toggleNotificationPanel()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1254
    .end local v20    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_18
    :goto_5
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 1250
    :catch_2
    move-exception v10

    .line 1252
    .local v10, "ex":Landroid/os/RemoteException;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_5

    .line 1259
    .end local v10    # "ex":Landroid/os/RemoteException;
    :cond_19
    const/16 v22, 0xdd

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_1a

    const/16 v22, 0xdc

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c

    .line 1261
    :cond_1a
    if-eqz v8, :cond_20

    if-nez v18, :cond_20

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v22

    if-nez v22, :cond_20

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "input_method"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodManager;

    .line 1264
    .local v12, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v12, :cond_1b

    .line 1265
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/view/inputmethod/InputMethodManager;->setBrightnessWithKeyboard(I)V

    .line 1267
    :cond_1b
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 1271
    .end local v12    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1c
    const/16 v22, 0x11c

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_1e

    .line 1272
    if-nez v8, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v22

    if-eqz v22, :cond_1d

    if-nez v18, :cond_1d

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    move-result v22

    if-nez v22, :cond_1d

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleMultiWindowTray()Z

    .line 1277
    :cond_1d
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 1279
    :cond_1e
    const/16 v22, 0x11f

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_20

    .line 1280
    if-nez v8, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v22

    if-eqz v22, :cond_1f

    if-nez v18, :cond_1f

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    move-object/from16 v22, v0

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->handleMenuLongPress()Z
    invoke-static/range {v22 .. v22}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->access$500(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;)Z

    .line 1283
    :cond_1f
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 1287
    :cond_20
    const/16 v17, 0x0

    goto/16 :goto_1
.end method

.method public interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;IZ)V
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1420
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    move v1, v3

    .line 1421
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 1422
    .local v0, "canceled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 1424
    .local v2, "keyCode":I
    sparse-switch v2, :sswitch_data_0

    .line 1635
    :cond_0
    :goto_1
    return-void

    .end local v0    # "canceled":Z
    .end local v1    # "down":Z
    .end local v2    # "keyCode":I
    :cond_1
    move v1, v4

    .line 1420
    goto :goto_0

    .line 1429
    .restart local v0    # "canceled":Z
    .restart local v1    # "down":Z
    .restart local v2    # "keyCode":I
    :sswitch_0
    const/16 v5, 0x19

    if-eq v2, v5, :cond_2

    const/16 v5, 0xa9

    if-ne v2, v5, :cond_5

    .line 1431
    :cond_2
    if-eqz v1, :cond_4

    .line 1432
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_0

    .line 1433
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 1434
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    .line 1435
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1436
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1437
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

    .line 1438
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptSafetyAssuranceChord()V

    .line 1439
    if-eqz p3, :cond_3

    .line 1440
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1441
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByAccessControlChord:Z

    .line 1442
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenshotChord()V

    .line 1443
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptAccessControlChord()V

    goto :goto_1

    .line 1445
    :cond_3
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByQuickShotChord:Z

    .line 1446
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptQuickShotChord()V

    goto :goto_1

    .line 1450
    :cond_4
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 1451
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1452
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1453
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1454
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1455
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingQuickShotChordAction()V

    goto :goto_1

    .line 1457
    :cond_5
    const/16 v5, 0x18

    if-eq v2, v5, :cond_6

    const/16 v5, 0xa8

    if-ne v2, v5, :cond_0

    .line 1459
    :cond_6
    if-eqz v1, :cond_8

    .line 1460
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_0

    .line 1461
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 1462
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    .line 1463
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1464
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1465
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1466
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

    .line 1467
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptSafetyAssuranceChord()V

    .line 1468
    if-eqz p3, :cond_7

    .line 1469
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    .line 1470
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByQuickShotChord:Z

    .line 1471
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenRecordChord()V

    goto/16 :goto_1

    .line 1473
    :cond_7
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByQuickShotChord:Z

    .line 1474
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptQuickShotChord()V

    goto/16 :goto_1

    .line 1478
    :cond_8
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 1479
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1480
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1481
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1482
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    goto/16 :goto_1

    .line 1490
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->addPowerKeyClickAction(I)V

    .line 1493
    if-eqz v1, :cond_a

    .line 1494
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_0

    .line 1495
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    .line 1496
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    .line 1497
    if-eqz p3, :cond_9

    .line 1498
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 1499
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    .line 1500
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByAccessControlChord:Z

    .line 1501
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByFactoryTestChord:Z

    .line 1502
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenshotChord()V

    .line 1503
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenRecordChord()V

    .line 1504
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptAccessControlChord()V

    .line 1505
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptFactoryTestChord()V

    goto/16 :goto_1

    .line 1507
    :cond_9
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByQuickShotChord:Z

    .line 1508
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptQuickShotChord()V

    goto/16 :goto_1

    .line 1512
    :cond_a
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    .line 1513
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1514
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1515
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1516
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingFactoryTestChordAction()V

    .line 1517
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingQuickShotChordAction()V

    goto/16 :goto_1

    .line 1522
    :sswitch_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1523
    if-eqz v1, :cond_b

    .line 1524
    if-eqz p3, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_0

    .line 1526
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    .line 1527
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    .line 1528
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    .line 1529
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    .line 1530
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByAccessControlChord:Z

    .line 1531
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1532
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenshotChord()V

    .line 1533
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenRecordChord()V

    .line 1534
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptAccessControlChord()V

    goto/16 :goto_1

    .line 1537
    :cond_b
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    .line 1538
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1539
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1540
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    goto/16 :goto_1

    .line 1546
    :sswitch_3
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1548
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1549
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "Camera key is blocked by policy"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1552
    :cond_c
    if-eqz v1, :cond_e

    .line 1553
    if-nez p3, :cond_d

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraKeyTriggered:Z

    if-nez v5, :cond_d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_d

    .line 1555
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraKeyTriggered:Z

    .line 1556
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraKeyTime:J

    .line 1557
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraKeyConsumedByQuickShotChord:Z

    .line 1558
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptQuickShotChord()V

    goto/16 :goto_1

    .line 1560
    :cond_d
    if-eqz p3, :cond_0

    .line 1561
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraKeyConsumedByQuickShotChord:Z

    goto/16 :goto_1

    .line 1564
    :cond_e
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraKeyTriggered:Z

    .line 1565
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingQuickShotChordAction()V

    goto/16 :goto_1

    .line 1571
    :sswitch_4
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1572
    if-eqz v1, :cond_f

    .line 1573
    if-eqz p3, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_0

    .line 1575
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    .line 1576
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTime:J

    .line 1577
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1578
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1579
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1580
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1581
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyConsumedByScreenshotChord:Z

    .line 1582
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenshotChord()V

    goto/16 :goto_1

    .line 1585
    :cond_f
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    .line 1586
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1587
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1588
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    goto/16 :goto_1

    .line 1594
    :sswitch_5
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1595
    if-eqz v1, :cond_10

    .line 1596
    if-eqz p3, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_0

    .line 1598
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    .line 1599
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTime:J

    .line 1600
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1601
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1602
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1603
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1604
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyConsumedByAccessControlChord:Z

    .line 1605
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptAccessControlChord()V

    goto/16 :goto_1

    .line 1608
    :cond_10
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    .line 1609
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1610
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1611
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    goto/16 :goto_1

    .line 1617
    :sswitch_6
    if-eqz v1, :cond_11

    .line 1618
    if-eqz p3, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_0

    .line 1620
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    .line 1621
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTime:J

    .line 1622
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

    .line 1623
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptFactoryTestChord()V

    goto/16 :goto_1

    .line 1626
    :cond_11
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    .line 1627
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1628
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1629
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1630
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingFactoryTestChordAction()V

    goto/16 :goto_1

    .line 1424
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_1
        0x1b -> :sswitch_3
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xf5 -> :sswitch_5
        0xfb -> :sswitch_4
        0x109 -> :sswitch_6
    .end sparse-switch
.end method

.method public interceptQuickShotChord()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x15e

    const-wide/16 v7, 0x96

    const/4 v6, 0x1

    .line 2179
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportCameraQuickShot()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2207
    :cond_0
    :goto_0
    return-void

    .line 2181
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2182
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_0

    .line 2183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2184
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraKeyTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-lez v2, :cond_3

    .line 2193
    :cond_2
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptQuickShotChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCameraKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2184
    :cond_3
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v9

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraKeyTime:J

    add-long/2addr v2, v9

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 2187
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptQuickShotChord - success and waiting long press : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCameraKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    :cond_4
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByQuickShotChord:Z

    .line 2189
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraKeyConsumedByQuickShotChord:Z

    .line 2190
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2197
    .end local v0    # "now":J
    :cond_5
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_0

    .line 2198
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2199
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v7

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v7

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 2201
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByQuickShotChord:Z

    .line 2202
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByQuickShotChord:Z

    .line 2203
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public interceptScreenshotChord()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x96

    const/4 v4, 0x1

    .line 1909
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1948
    :cond_0
    :goto_0
    return-void

    .line 1911
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1912
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_2

    .line 1913
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1914
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1916
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1917
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 1918
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1919
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1920
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1921
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1924
    .end local v0    # "now":J
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    .line 1925
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1926
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1928
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyConsumedByScreenshotChord:Z

    .line 1929
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 1930
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1931
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1932
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1936
    .end local v0    # "now":J
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_0

    .line 1937
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1938
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1940
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    .line 1941
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 1942
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1943
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1944
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public isAnyKeyMode()Z
    .locals 4

    .prologue
    .line 4148
    const/4 v0, 0x0

    .line 4149
    .local v0, "isAnyKeyMode":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anykey_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 4150
    const/4 v0, 0x0

    .line 4154
    :goto_0
    return v0

    .line 4152
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBlockCollapseStatusBar()Z
    .locals 1

    .prologue
    .line 2590
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockCollapseStatusBar:Z

    return v0
.end method

.method public isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1717
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 1718
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    .line 1719
    .local v1, "flags":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    .line 1721
    .local v0, "down":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_1

    .line 1729
    :goto_1
    return v3

    .end local v0    # "down":Z
    :cond_0
    move v0, v4

    .line 1719
    goto :goto_0

    .restart local v0    # "down":Z
    :cond_1
    move v3, v4

    .line 1729
    goto :goto_1
.end method

.method public isBlockedPowerKeyByKeyTest()Z
    .locals 3

    .prologue
    .line 3116
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3117
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 3118
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-static {}, Landroid/os/FactoryTest;->needBlockingPowerKey()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.factory.app.ui.UIHardKey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.OneJigBinary.testitem.KeyTest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app.simplefunctiontest.KeypadTest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.factory.app.spcselftest.SpcSelfTestMain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app.latin.tdfnotifier"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3125
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungWindowManager"

    const-string v2, "Skip power key behavior by FactoryTest application"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    :cond_1
    const/4 v1, 0x1

    .line 3129
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCameraOnTop()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3868
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 3877
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 3878
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera.Camcorder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3881
    :cond_0
    const/4 v1, 0x1

    .line 3886
    :cond_1
    return v1
.end method

.method public isCombinationKeyTriggered()Z
    .locals 1

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v0, :cond_2

    .line 1896
    :cond_1
    const/4 v0, 0x1

    .line 1898
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConsumedKeyCombination(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x18

    const/4 v7, 0x3

    const/16 v6, 0x1a

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1734
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 1735
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    .line 1736
    .local v1, "flags":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    move v0, v3

    .line 1741
    .local v0, "down":Z
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_6

    .line 1743
    const/16 v5, 0x19

    if-eq v2, v5, :cond_0

    const/16 v5, 0xa9

    if-ne v2, v5, :cond_3

    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-eqz v5, :cond_3

    .line 1746
    if-nez v0, :cond_1

    .line 1747
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1889
    :cond_1
    :goto_1
    return v3

    .end local v0    # "down":Z
    :cond_2
    move v0, v4

    .line 1736
    goto :goto_0

    .line 1751
    .restart local v0    # "down":Z
    :cond_3
    if-ne v2, v7, :cond_4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    if-eqz v5, :cond_4

    .line 1753
    if-nez v0, :cond_1

    .line 1754
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    goto :goto_1

    .line 1758
    :cond_4
    if-ne v2, v6, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    if-eqz v5, :cond_5

    .line 1760
    if-nez v0, :cond_1

    .line 1761
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    goto :goto_1

    .line 1765
    :cond_5
    const/16 v5, 0xfb

    if-ne v2, v5, :cond_6

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyConsumedByScreenshotChord:Z

    if-eqz v5, :cond_6

    .line 1767
    if-nez v0, :cond_1

    .line 1768
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyConsumedByScreenshotChord:Z

    goto :goto_1

    .line 1774
    :cond_6
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenRecordChordEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_9

    .line 1776
    if-ne v2, v8, :cond_7

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    if-eqz v5, :cond_7

    .line 1778
    if-nez v0, :cond_1

    .line 1779
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    goto :goto_1

    .line 1783
    :cond_7
    if-ne v2, v7, :cond_8

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    if-eqz v5, :cond_8

    .line 1785
    if-nez v0, :cond_1

    .line 1786
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    goto :goto_1

    .line 1790
    :cond_8
    if-ne v2, v6, :cond_9

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    if-eqz v5, :cond_9

    .line 1792
    if-nez v0, :cond_1

    .line 1793
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    goto :goto_1

    .line 1799
    :cond_9
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1801
    :cond_a
    const/16 v5, 0x19

    if-ne v2, v5, :cond_b

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

    if-eqz v5, :cond_b

    .line 1803
    if-nez v0, :cond_1

    .line 1804
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

    goto :goto_1

    .line 1808
    :cond_b
    if-ne v2, v8, :cond_c

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

    if-eqz v5, :cond_c

    .line 1810
    if-nez v0, :cond_1

    .line 1811
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

    goto :goto_1

    .line 1817
    :cond_c
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    if-eqz v5, :cond_10

    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_10

    .line 1818
    if-ne v2, v7, :cond_d

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByAccessControlChord:Z

    if-eqz v5, :cond_d

    .line 1820
    if-nez v0, :cond_1

    .line 1821
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByAccessControlChord:Z

    goto/16 :goto_1

    .line 1825
    :cond_d
    const/16 v5, 0x19

    if-ne v2, v5, :cond_e

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByAccessControlChord:Z

    if-eqz v5, :cond_e

    .line 1827
    if-nez v0, :cond_1

    .line 1828
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByAccessControlChord:Z

    goto/16 :goto_1

    .line 1832
    :cond_e
    if-ne v2, v6, :cond_f

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByAccessControlChord:Z

    if-eqz v5, :cond_f

    .line 1834
    if-nez v0, :cond_1

    .line 1835
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByAccessControlChord:Z

    goto/16 :goto_1

    .line 1839
    :cond_f
    const/16 v5, 0xf5

    if-ne v2, v5, :cond_10

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyConsumedByAccessControlChord:Z

    if-eqz v5, :cond_10

    .line 1841
    if-nez v0, :cond_1

    .line 1842
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyConsumedByAccessControlChord:Z

    goto/16 :goto_1

    .line 1848
    :cond_10
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v5

    if-eqz v5, :cond_12

    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_12

    .line 1849
    if-ne v2, v6, :cond_11

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByFactoryTestChord:Z

    if-eqz v5, :cond_11

    .line 1851
    if-nez v0, :cond_1

    .line 1852
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByFactoryTestChord:Z

    goto/16 :goto_1

    .line 1856
    :cond_11
    const/16 v5, 0x109

    if-ne v2, v5, :cond_12

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

    if-eqz v5, :cond_12

    .line 1858
    if-nez v0, :cond_1

    .line 1859
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

    goto/16 :goto_1

    .line 1865
    :cond_12
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportCameraQuickShot()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1866
    if-ne v2, v8, :cond_13

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByQuickShotChord:Z

    if-eqz v5, :cond_13

    .line 1868
    if-nez v0, :cond_1

    .line 1869
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByQuickShotChord:Z

    goto/16 :goto_1

    .line 1873
    :cond_13
    if-ne v2, v6, :cond_14

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByQuickShotChord:Z

    if-eqz v5, :cond_14

    .line 1875
    if-nez v0, :cond_1

    .line 1876
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByQuickShotChord:Z

    goto/16 :goto_1

    .line 1880
    :cond_14
    const/16 v5, 0x1b

    if-ne v2, v5, :cond_15

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraKeyConsumedByQuickShotChord:Z

    if-eqz v5, :cond_15

    .line 1882
    if-nez v0, :cond_1

    .line 1883
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraKeyConsumedByQuickShotChord:Z

    goto/16 :goto_1

    :cond_15
    move v3, v4

    .line 1889
    goto/16 :goto_1
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1024
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDockHomeEnabled()Z
    .locals 1

    .prologue
    .line 2429
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    return v0
.end method

.method public isDoubleTapOnHomeEnabled()Z
    .locals 1

    .prologue
    .line 1306
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDoubleTapOnPowerEnabled()Z
    .locals 1

    .prologue
    .line 1361
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    return v0
.end method

.method public isEasyModeEnabled()Z
    .locals 1

    .prologue
    .line 2423
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    return v0
.end method

.method public isEnableAccessControl()Z
    .locals 1

    .prologue
    .line 2052
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    return v0
.end method

.method public isGloveModeEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2730
    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGripRotationLocked()Z
    .locals 1

    .prologue
    .line 2435
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGripRotationLocked:Z

    return v0
.end method

.method public isHMTButtonClick(ZIZ)Z
    .locals 4
    .param p1, "down"    # Z
    .param p2, "repeatCount"    # I
    .param p3, "canceled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4026
    if-eqz p1, :cond_4

    .line 4027
    if-nez p2, :cond_1

    .line 4028
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    const-string v3, "HMT button down"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4029
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHMTPressed:Z

    .line 4031
    :cond_1
    const/4 v2, 0x7

    if-ne p2, v2, :cond_6

    if-nez p3, :cond_6

    .line 4032
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHMTPressed:Z

    .line 4033
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "SamsungWindowManager"

    const-string v2, "HMT button long click"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4034
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHMTLongClick()V

    .line 4047
    :cond_3
    :goto_0
    return v0

    .line 4038
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHMTPressed:Z

    if-eqz v2, :cond_6

    .line 4039
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHMTPressed:Z

    .line 4040
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "SamsungWindowManager"

    const-string v3, "HMT button single click"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4041
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHMTSingleClick()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 4044
    goto :goto_0

    :cond_6
    move v0, v1

    .line 4047
    goto :goto_0
.end method

.method public isKidsModeEnabled()Z
    .locals 1

    .prologue
    .line 2417
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    return v0
.end method

.method public isKnoxActivated()Z
    .locals 2

    .prologue
    .line 2441
    const-string v0, "true"

    const-string v1, "dev.knoxapp.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2442
    const/4 v0, 0x1

    .line 2444
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRingingOrOffhook()Z
    .locals 1

    .prologue
    .line 3756
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return v0
.end method

.method public isShowingIncomingPopup()Z
    .locals 6

    .prologue
    .line 4134
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyExtService()Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v2

    .line 4135
    .local v2, "telephonyServiceExt":Lcom/android/internal/telephony/ITelephonyExt;
    const/4 v1, 0x0

    .line 4137
    .local v1, "showingIncomingPopup":Z
    if-eqz v2, :cond_0

    .line 4138
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephonyExt;->showingIncomingPopup()Z

    move-result v1

    .line 4139
    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showingIncomingPopup = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4144
    :cond_0
    :goto_0
    return v1

    .line 4141
    :catch_0
    move-exception v0

    .line 4142
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "RemoteException from showingIncomingPopup()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isSideSyncPresentationRunning()Z
    .locals 1

    .prologue
    .line 3501
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    return v0
.end method

.method public isStatusBarHideOnNormalScreen()Z
    .locals 1

    .prologue
    .line 2568
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarHideOnNormalScreen:Z

    return v0
.end method

.method public isStatusBarShowOnFullScreen()Z
    .locals 1

    .prologue
    .line 2521
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarShowOnFullScreen:Z

    return v0
.end method

.method public isSystemKeyEventRequested(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 3104
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v0

    return v0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 3100
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isTripleTapOnHomeEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1340
    const-string v2, "VZW"

    const-string v3, "CMCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1341
    const-string v2, "persist.sys.vzw_setup_running"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1342
    .local v0, "vzwSetupRunning":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1347
    .end local v0    # "vzwSetupRunning":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUserSetupComplete()Z
    .locals 2

    .prologue
    .line 2955
    const-string v0, "VZW"

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUserSetupComplete:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUvsOrientationRequested()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3659
    const-string v1, "LGT"

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3662
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isVoIPRinging()Z
    .locals 5

    .prologue
    .line 3739
    const/4 v1, 0x0

    .line 3741
    .local v1, "isVoIPRinging":Z
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 3742
    .local v2, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_0

    .line 3743
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    .line 3750
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :goto_0
    return v1

    .line 3745
    .restart local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_0
    const-string v3, "SamsungWindowManager"

    const-string v4, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3747
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_0
    move-exception v0

    .line 3748
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public launchFingerPrint()V
    .locals 4

    .prologue
    .line 1391
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportFingerPrint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1392
    const-string v1, "SamsungWindowManager"

    const-string v2, "launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1401
    :goto_0
    return-void

    .line 1395
    :catch_0
    move-exception v0

    .line 1396
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "SamsungWindowManager"

    const-string v2, "No activity to handle fingerprint."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1399
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    const-string v1, "SamsungWindowManager"

    const-string v2, "Device is not supported, not launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public launchHomeDuringVzwSetup()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2961
    const-string v2, "VZW"

    const-string v3, "CMCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2962
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2963
    :cond_0
    const-string v2, "SamsungWindowManager"

    const-string v3, "Device is in Factory Mode : Verizon Setup running false"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    :cond_1
    :goto_0
    return v0

    .line 2966
    :cond_2
    const-string v2, "persist.sys.setupwizard"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2967
    .local v1, "vzwSetupRunning":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "FINISH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2968
    const-string v2, "persist.sys.enablehomekey"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2969
    .local v0, "isHomeKeyEnabled":Z
    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Verizon Setup Wizard Running, launch home key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public launchVoiceCommand()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1310
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    if-eqz v3, :cond_2

    .line 1311
    const-string v3, "SamsungWindowManager"

    const-string v4, "launch voicecommand"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v4, "homekey"

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 1313
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v1

    .line 1314
    .local v1, "isSecureLock":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v4, "isSecure"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1315
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v4, "AUTO_LISTEN"

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1316
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1318
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    .end local v1    # "isSecureLock":Z
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 1313
    goto :goto_0

    .line 1319
    .restart local v1    # "isSecureLock":Z
    :catch_0
    move-exception v0

    .line 1320
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch voicecommand."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1323
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "isSecureLock":Z
    :cond_2
    const-string v2, "SamsungWindowManager"

    const-string v3, "Device is not provisioned, not launch voicecommand."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public launchingGamekey(Z)Z
    .locals 9
    .param p1, "keyguardOn"    # Z

    .prologue
    const/4 v5, 0x0

    .line 3931
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->endCallByGamekey()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3932
    const/4 v5, 0x1

    .line 3967
    :cond_0
    :goto_0
    return v5

    .line 3933
    :cond_1
    if-nez p1, :cond_0

    .line 3938
    const-string v1, "com.sec.game.sga"

    .line 3939
    .local v1, "gamePkg":Ljava/lang/String;
    const-string v4, "com.sec.android.app.samsungapps"

    .line 3940
    .local v4, "samsungAppsPkg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "samsungapps://ProductDetail/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3942
    .local v3, "pkgUri":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3945
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3950
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 3951
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->startSGA(Ljava/lang/String;)V

    goto :goto_0

    .line 3946
    :catch_0
    move-exception v0

    .line 3947
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist. so try to download the SGA apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3954
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 3959
    :cond_4
    :goto_2
    if-eqz v2, :cond_6

    .line 3960
    sget-boolean v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "SamsungWindowManager"

    const-string v7, "SGA is not installed. so you are moving to Samsung apps."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3961
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->downloadForSGA(Ljava/lang/String;)V

    goto :goto_0

    .line 3955
    :catch_1
    move-exception v0

    .line 3956
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist. so try to download the SGA apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3963
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    sget-boolean v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "SamsungWindowManager"

    const-string v7, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->downloadForSamsungApps()V

    goto/16 :goto_0
.end method

.method public notifyCoverSwitchChanged(JZ)V
    .locals 3
    .param p1, "whenNanos"    # J
    .param p3, "coverOpen"    # Z

    .prologue
    .line 2705
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 2711
    :cond_0
    :goto_0
    return-void

    .line 2705
    :cond_1
    if-nez p3, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2706
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2707
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.daynote"

    const-string v2, "com.sec.android.daynote.DayNoteActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2708
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2709
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public notifyGloveSwitchChanged(JZ)V
    .locals 4
    .param p1, "whenNanos"    # J
    .param p3, "gloveEnable"    # Z

    .prologue
    .line 2717
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 2718
    .local v0, "newGloveState":I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    if-ne v0, v1, :cond_1

    .line 2727
    :goto_1
    return-void

    .line 2717
    .end local v0    # "newGloveState":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2722
    .restart local v0    # "newGloveState":I
    :cond_1
    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    .line 2724
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveModeIntent:Landroid/content/Intent;

    const-string v2, "gloveEnable"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2725
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Glove mode enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , broadcasted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveModeIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1
.end method

.method public notifyPenSwitchChanged(JZ)V
    .locals 12
    .param p1, "whenNanos"    # J
    .param p3, "penInsert"    # Z

    .prologue
    .line 2601
    if-eqz p3, :cond_1

    const/4 v2, 0x1

    .line 2602
    .local v2, "newPenState":I
    :goto_0
    const/4 v3, 0x1

    .line 2603
    .local v3, "playSound":Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v4

    .line 2604
    .local v4, "screenOn":Z
    sget-boolean v7, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "SamsungWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newPenState : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mPenState : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    :cond_0
    iget v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    if-ne v2, v7, :cond_2

    .line 2669
    :goto_1
    return-void

    .line 2601
    .end local v2    # "newPenState":I
    .end local v3    # "playSound":Z
    .end local v4    # "screenOn":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2607
    .restart local v2    # "newPenState":I
    .restart local v3    # "playSound":Z
    .restart local v4    # "screenOn":Z
    :cond_2
    iget v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 2608
    const/4 v3, 0x0

    .line 2610
    :cond_3
    sget-boolean v7, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "SamsungWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "playSound : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", screenOn : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    :cond_4
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    .line 2614
    const/16 v7, 0x2c

    new-array v0, v7, [B

    fill-array-data v0, :array_0

    .line 2624
    .local v0, "attach_noti_ivt":[B
    const/16 v7, 0x12

    new-array v1, v7, [B

    fill-array-data v1, :array_1

    .line 2631
    .local v1, "detach_noti_ivt":[B
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_detachment_notification"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2634
    .local v5, "sound":Ljava/lang/String;
    if-eqz v5, :cond_8

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2636
    .local v6, "soundPath":[Ljava/lang/String;
    :goto_2
    if-eqz p3, :cond_9

    .line 2638
    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    :try_start_0
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_5

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2641
    :cond_5
    :goto_3
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    if-eqz v7, :cond_6

    .line 2642
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v8}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v8

    invoke-virtual {v7, v0, v8}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 2662
    :cond_6
    :goto_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v8, "penInsert"

    invoke-virtual {v7, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2663
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v8, "isScreenOn"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2664
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v8, "isKeyguardLocked"

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2666
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v9, "isBoot"

    const-wide/16 v10, 0x0

    cmp-long v7, p1, v10

    if-nez v7, :cond_d

    const/4 v7, 0x1

    :goto_5
    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2667
    sget-boolean v7, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "SamsungWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pen = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , broadcasted."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    :cond_7
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 2634
    .end local v6    # "soundPath":[Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 2644
    .restart local v6    # "soundPath":[Ljava/lang/String;
    :cond_9
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2645
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 2655
    :goto_6
    if-eqz v3, :cond_a

    if-eqz v5, :cond_a

    :try_start_1
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_a

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2658
    :cond_a
    :goto_7
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    if-eqz v7, :cond_6

    .line 2659
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v8}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v8

    invoke-virtual {v7, v1, v8}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    goto/16 :goto_4

    .line 2647
    :cond_b
    if-eqz v4, :cond_c

    .line 2648
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_6

    .line 2650
    :cond_c
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_6

    .line 2666
    :cond_d
    const/4 v7, 0x0

    goto :goto_5

    .line 2656
    :catch_0
    move-exception v7

    goto :goto_7

    .line 2639
    :catch_1
    move-exception v7

    goto/16 :goto_3

    .line 2614
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x3t
        0x0t
        0x24t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0x15t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0xft
        -0x20t
        0x2t
        -0x1et
        0x0t
        -0x38t
        -0x1t
        0x20t
        0x1t
        0x0t
        0x0t
        0x5ft
        0x0t
        0x0t
        0x42t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x1et
        0x0t
    .end array-data

    .line 2624
    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x3t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x71t
    .end array-data
.end method

.method public onScreenTurnedOff(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->disable()V

    .line 702
    :cond_0
    return-void
.end method

.method public onScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    const/4 v1, 0x0

    .line 706
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->enable()V

    .line 712
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    if-eqz v0, :cond_1

    .line 713
    invoke-virtual {p0, v1, v1, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->processTorchlight(IZZ)V

    .line 716
    :cond_1
    return-void
.end method

.method public onSystemReady(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .locals 0
    .param p1, "keyguardDelegate"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 693
    return-void
.end method

.method public performCPUBoost()V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    .line 4163
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 4164
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "WAKEUP_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 4165
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 4166
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v8

    .line 4167
    .local v8, "supportedCPUFreqTable":[I
    if-eqz v8, :cond_0

    .line 4168
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    aget v2, v8, v9

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 4171
    .end local v8    # "supportedCPUFreqTable":[I
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 4173
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4180
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    .line 4181
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "WAKEUP_CORE_BOOSTER"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 4182
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    .line 4183
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .line 4184
    .local v6, "coreNumTable":[I
    if-eqz v6, :cond_2

    array-length v0, v6

    if-lez v0, :cond_2

    .line 4185
    aget v0, v6, v9

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 4186
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 4190
    .end local v6    # "coreNumTable":[I
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    .line 4192
    :try_start_1
    const-string v0, "SamsungWindowManager"

    const-string v1, "mCoreNumLockHelper.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4193
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4199
    :cond_3
    :goto_1
    return-void

    .line 4174
    :catch_0
    move-exception v7

    .line 4175
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "SamsungWindowManager"

    const-string v1, "mCpuBooster.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4194
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 4195
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "SamsungWindowManager"

    const-string v1, "mCoreNumLockHelper.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4196
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 12
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    .line 2818
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v8}, Landroid/os/SystemVibrator;->hasVibrator()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2819
    const/4 v8, 0x0

    .line 2949
    :goto_0
    return v8

    .line 2822
    :cond_0
    const/4 v2, 0x0

    .line 2824
    .local v2, "hapticsDisabledByPowerSavingMode":Z
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "haptic_feedback_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-nez v8, :cond_6

    const/4 v1, 0x1

    .line 2829
    .local v1, "hapticsDisabled":Z
    :goto_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "psm_switch"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "powersaving_switch"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    const/4 v6, 0x1

    .line 2840
    .local v6, "powerSavingModeEnabled":Z
    :goto_2
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "emergency_mode"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    const/4 v0, 0x1

    .line 2847
    .local v0, "emergencyModeEnabled":Z
    :goto_3
    if-eqz v6, :cond_2

    .line 2848
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "psm_haptic_feedback"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    const/4 v7, 0x1

    .line 2851
    .local v7, "turnOffHapticFeedbackEnabled":Z
    :goto_4
    if-eqz v7, :cond_2

    .line 2852
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "psm_auto_turn_on"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    const/4 v5, 0x1

    .line 2855
    .local v5, "powerSavingAutoModeEnabled":Z
    :goto_5
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "isLowLevel"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    const/4 v3, 0x1

    .line 2857
    .local v3, "isLowLevelBattery":Z
    :goto_6
    sget-boolean v8, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_1

    .line 2858
    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Check haptic disabled policy : powerSavingAutoModeEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isLowLevelBattery = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    :cond_1
    if-eqz v5, :cond_c

    .line 2863
    if-eqz v3, :cond_2

    .line 2864
    const/4 v2, 0x1

    .line 2872
    .end local v3    # "isLowLevelBattery":Z
    .end local v5    # "powerSavingAutoModeEnabled":Z
    .end local v7    # "turnOffHapticFeedbackEnabled":Z
    :cond_2
    :goto_7
    if-nez p3, :cond_d

    if-eqz v6, :cond_3

    if-nez v2, :cond_4

    :cond_3
    if-nez v1, :cond_4

    if-nez v0, :cond_4

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2875
    :cond_4
    sget-boolean v8, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_5

    .line 2876
    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "haptic disabled by policy : hapticsDisabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " EmergencyModeEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " PowerSavingModeEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " TurnOffHapticFeedbackEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2824
    .end local v0    # "emergencyModeEnabled":Z
    .end local v1    # "hapticsDisabled":Z
    .end local v6    # "powerSavingModeEnabled":Z
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2829
    .restart local v1    # "hapticsDisabled":Z
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 2840
    .restart local v6    # "powerSavingModeEnabled":Z
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2848
    .restart local v0    # "emergencyModeEnabled":Z
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 2852
    .restart local v7    # "turnOffHapticFeedbackEnabled":Z
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 2855
    .restart local v5    # "powerSavingAutoModeEnabled":Z
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 2867
    .restart local v3    # "isLowLevelBattery":Z
    :cond_c
    const/4 v2, 0x1

    goto :goto_7

    .line 2884
    .end local v3    # "isLowLevelBattery":Z
    .end local v5    # "powerSavingAutoModeEnabled":Z
    .end local v7    # "turnOffHapticFeedbackEnabled":Z
    :cond_d
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2885
    sparse-switch p2, :sswitch_data_0

    .line 2896
    const/16 v8, 0x9

    if-lt p2, v8, :cond_e

    const/16 v8, 0x16

    if-gt p2, v8, :cond_e

    .line 2898
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v9, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v8, p2, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 2900
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2891
    :sswitch_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    const/16 v9, 0x9

    sget-object v10, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v8, v9, v10}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 2893
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2903
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2905
    :cond_f
    const/4 v8, 0x1

    new-array v4, v8, [J

    .line 2906
    .local v4, "pattern":[J
    sparse-switch p2, :sswitch_data_1

    .line 2939
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2912
    :sswitch_1
    const/4 v8, 0x0

    const-wide/16 v9, 0x32

    aput-wide v9, v4, v8

    .line 2941
    :goto_8
    array-length v8, v4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_10

    .line 2943
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    const/4 v9, 0x0

    aget-wide v9, v4, v9

    invoke-virtual {v8, v9, v10}, Landroid/os/SystemVibrator;->vibrate(J)V

    .line 2949
    :goto_9
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2917
    :sswitch_2
    const/4 v8, 0x0

    const-wide/16 v9, 0x32

    aput-wide v9, v4, v8

    goto :goto_8

    .line 2921
    :sswitch_3
    const/4 v8, 0x0

    const-wide/16 v9, 0x64

    aput-wide v9, v4, v8

    goto :goto_8

    .line 2925
    :sswitch_4
    const/4 v8, 0x0

    const-wide/16 v9, 0x1f4

    aput-wide v9, v4, v8

    goto :goto_8

    .line 2932
    :sswitch_5
    const/4 v8, 0x0

    const-wide/16 v9, 0x5dc

    aput-wide v9, v4, v8

    goto :goto_8

    .line 2936
    :sswitch_6
    const/4 v8, 0x0

    const-wide/16 v9, 0x32

    aput-wide v9, v4, v8

    goto :goto_8

    .line 2946
    :cond_10
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    const/4 v9, -0x1

    invoke-virtual {v8, v4, v9}, Landroid/os/SystemVibrator;->vibrate([JI)V

    goto :goto_9

    .line 2885
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x2710 -> :sswitch_0
        0x2711 -> :sswitch_0
    .end sparse-switch

    .line 2906
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x3 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_6
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x12 -> :sswitch_5
        0x2710 -> :sswitch_1
        0x2711 -> :sswitch_1
    .end sparse-switch
.end method

.method public performHideStatusBarOnNormalScreen(Z)V
    .locals 3
    .param p1, "hide"    # Z

    .prologue
    .line 2561
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ysahn SPWM performHideStatusBarOnNormalScreen hide = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    if-eqz v0, :cond_0

    .line 2563
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performHideStatusBarOnNormalScreen(ZZ)V

    .line 2565
    :cond_0
    return-void
.end method

.method public performShowStatusBarOnFullScreen(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 2554
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ysahn SPWM performShowStatusBarOnFullScreen show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isTopFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2556
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performShowStatusBarOnFullScreen(ZZ)V

    .line 2558
    :cond_0
    return-void
.end method

.method public performSystemKeyFeedback(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xe

    const/4 v2, 0x0

    .line 2774
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "SPC_Remote_Controller"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2799
    :cond_0
    :goto_0
    return-void

    .line 2781
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2785
    :sswitch_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasHardMenuBackKey()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2786
    invoke-virtual {p0, v4, v3, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2788
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    .line 2791
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2792
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2793
    invoke-virtual {p0, v4, v3, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2795
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    .line 2781
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_1
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method public processTorchlight(IZZ)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 4246
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 4247
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 4248
    if-eqz p2, :cond_1

    .line 4249
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4250
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4262
    :cond_0
    :goto_0
    return-void

    .line 4252
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4255
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4256
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    if-eqz v0, :cond_0

    .line 4257
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    .line 4258
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "request"    # Z

    .prologue
    .line 3096
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public sendBroadcastForAccessibility()V
    .locals 4

    .prologue
    .line 1351
    const-string v1, "SamsungWindowManager"

    const-string v2, "sendBroadcastForAccessibility() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.HOME_TRIPLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1354
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.permission.HOME_TRIPLE_CLICK"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1356
    return-void
.end method

.method public sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3485
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_1

    .line 3487
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System key send to sidesync.source keycode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3489
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3490
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.sidesync.source"

    const-string v2, "com.sec.android.sidesync.source.WimpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3491
    const-string v1, "com.sec.android.intent.action.SYSTEM_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3492
    const-string v1, "KEYCODE"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3493
    const-string v1, "ACTION"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3494
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3495
    const/4 v1, 0x1

    .line 3497
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendVoiceWakeUpBroadcast()V
    .locals 5

    .prologue
    .line 1293
    const-string v2, "SamsungWindowManager"

    const-string v3, "launch voice LPSD"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1295
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1297
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1298
    const-string v0, "com.samsung.android.app.sounddetector.VOICE_WAKEUP"

    .line 1299
    .local v0, "SOUND_DETECTOR_WAKEUP":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1300
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1301
    return-void
.end method

.method public setBlockCollapseStatusBar(Z)V
    .locals 0
    .param p1, "block"    # Z

    .prologue
    .line 2594
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockCollapseStatusBar:Z

    .line 2595
    return-void
.end method

.method public setFingerPrintPending()V
    .locals 1

    .prologue
    .line 1404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    .line 1405
    return-void
.end method

.method public setFocusedWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "focusWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 3638
    if-eqz p1, :cond_0

    .line 3639
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFocusedWindowPkgName:Ljava/lang/String;

    .line 3642
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasMultiWindowFeature:Z

    if-eqz v1, :cond_3

    .line 3643
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "spengestureservice"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 3644
    .local v0, "SpenManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    if-eqz p1, :cond_2

    .line 3645
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartclip/SpenGestureManager;->setFocusWindow(I)V

    .line 3654
    .end local v0    # "SpenManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    :cond_2
    :goto_0
    return-void

    .line 3647
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasSPenUspFeature:Z

    if-eqz v1, :cond_2

    .line 3648
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    if-eqz v1, :cond_2

    .line 3649
    if-eqz p1, :cond_2

    .line 3650
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setFocusedWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0
.end method

.method public setOpenByNotification(ZZ)V
    .locals 1
    .param p1, "topIsFullscreen"    # Z
    .param p2, "openByNotification"    # Z

    .prologue
    .line 3507
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOpenByNotification:Z

    .line 3508
    return-void

    .line 3507
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPropertiesToStatusBarWindowController(ZZ)V
    .locals 1
    .param p1, "topIsFullScreen"    # Z
    .param p2, "openByNotification"    # Z

    .prologue
    .line 2515
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    if-eqz v0, :cond_0

    .line 2516
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->setProperties(ZZ)V

    .line 2518
    :cond_0
    return-void
.end method

.method public setRotationLw(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 956
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRotationLw() : rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    .line 960
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateWacomOffset(I)V

    .line 969
    :cond_0
    return-void
.end method

.method public setStatusBarHideOnNormalScreen(ZZ)V
    .locals 4
    .param p1, "hide"    # Z
    .param p2, "relayout"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2572
    const-string v0, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ysahn setStatusBarHideOnNormalScreen mStatusBarHideOnNormalScreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarHideOnNormalScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hide = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    const-string v0, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ysahn setStatusBarHideOnNormalScreen relayout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarHideOnNormalScreen:Z

    if-eq v0, p1, :cond_1

    .line 2576
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarHideOnNormalScreen:Z

    .line 2577
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarShowOnFullScreen:Z

    .line 2578
    if-eqz p2, :cond_0

    .line 2579
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$17;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$17;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2585
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performShowStatusBarOnFullScreen(Z)V

    .line 2587
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 2577
    goto :goto_0
.end method

.method public setStatusBarShowOnFullScreen(ZZ)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "relayout"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2526
    const-string v0, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ysahn setStatusBarShowOnFullScreen mStatusBarShowOnFullScreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarShowOnFullScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " show = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    const-string v0, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ysahn setStatusBarShowOnFullScreen relayout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarShowOnFullScreen:Z

    if-eq v0, p1, :cond_1

    .line 2530
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarShowOnFullScreen:Z

    .line 2531
    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarHideOnNormalScreen:Z

    .line 2532
    if-eqz p2, :cond_0

    .line 2533
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2549
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performShowStatusBarOnFullScreen(Z)V

    .line 2551
    :cond_1
    return-void

    .line 2531
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unmaskingMuicInt()V
    .locals 8

    .prologue
    .line 2979
    const-string v3, "/sys/class/sec/switch/unmasking_muic_int"

    .line 2980
    .local v3, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2983
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/class/sec/switch/unmasking_muic_int"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2984
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 2985
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SamsungWindowManager"

    const-string v5, "unmaskingMuicInt readsysfs path=/sys/class/sec/switch/unmasking_muic_int"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2990
    :cond_0
    if-eqz v1, :cond_1

    .line 2991
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v0, v1

    .line 2997
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return-void

    .line 2993
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 2994
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unmaskingMuicInt IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v1

    .line 2996
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_0

    .line 2986
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 2987
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unmaskingMuicInt IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2990
    :cond_4
    if-eqz v0, :cond_2

    .line 2991
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2993
    :catch_2
    move-exception v2

    .line 2994
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unmaskingMuicInt IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2989
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 2990
    :goto_2
    if-eqz v0, :cond_5

    .line 2991
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2995
    :cond_5
    :goto_3
    throw v4

    .line 2993
    :catch_3
    move-exception v2

    .line 2994
    .restart local v2    # "e":Ljava/io/IOException;
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "SamsungWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unmaskingMuicInt IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2989
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2

    .line 2986
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public updateSettings()V
    .locals 26

    .prologue
    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 817
    .local v18, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 819
    :try_start_0
    const-string v23, "double_tab_launch"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isVoiceTalkDefaultLaunch(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_10

    const/16 v21, 0x1

    :goto_0
    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 823
    .local v4, "doubleTapOnHomeBehavior":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v4, :cond_0

    .line 824
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    move/from16 v21, v0

    if-eqz v21, :cond_11

    .end local v4    # "doubleTapOnHomeBehavior":I
    :goto_1
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 829
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v23, "direct_access"

    const/16 v24, 0x0

    const/16 v25, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    .line 831
    .local v19, "tripleTapOnHomeBehavior":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 832
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    .line 837
    :cond_1
    const-string v21, "lcd_curtain"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    const-string v21, "accessibility_enabled"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    const/16 v21, 0x1

    :goto_2
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    .line 842
    const-string v21, "send_emergency_message"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_13

    const/4 v13, 0x1

    .line 844
    .local v13, "isSafetyAssuranceEnabled":Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v13, :cond_2

    .line 845
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    .line 850
    :cond_2
    const-string v21, "JPN"

    const-string v23, "CHN"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 851
    const-string v21, "emergency_buzzer"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_14

    const/4 v6, 0x1

    .line 853
    .local v6, "isBuzzereEnabled":Z
    :goto_4
    if-eqz v6, :cond_3

    .line 854
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    .line 860
    .end local v6    # "isBuzzereEnabled":Z
    :cond_3
    const-string v21, "access_control_use"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_15

    const/16 v16, 0x1

    .line 862
    .local v16, "isUseAccessControl":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    .line 863
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    .line 866
    :cond_4
    const-string v21, "access_control_enabled"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_16

    const/4 v10, 0x1

    .line 868
    .local v10, "isEnabledAccessControl":Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v10, :cond_5

    .line 869
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    .line 874
    :cond_5
    const-string v21, "kids_home_mode"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_17

    const/4 v11, 0x1

    .line 876
    .local v11, "isKidsMode":Z
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v11, :cond_6

    .line 877
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    .line 882
    :cond_6
    const-string v21, "easy_mode_switch"

    const/16 v23, 0x1

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-nez v21, :cond_18

    const/4 v9, 0x1

    .line 884
    .local v9, "isEasyMode":Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v9, :cond_7

    .line 885
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    .line 890
    :cond_7
    const-string v21, "edit_after_screen_capture"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_19

    const/16 v17, 0x1

    .line 892
    .local v17, "performEditAfterScreenCapture":Z
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 893
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    .line 898
    :cond_8
    const-string v21, "desk_home_screen_display"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_1a

    const/4 v8, 0x1

    .line 900
    .local v8, "isDockHomeEnabled":Z
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v8, :cond_9

    .line 901
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    .line 906
    :cond_9
    const-string v21, "multiverse_grip_to_lock_screen_rotation"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_1b

    const/4 v5, 0x1

    .line 908
    .local v5, "gripRotationLock":Z
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGripRotationLocked:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v5, :cond_a

    .line 909
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGripRotationLocked:Z

    .line 913
    :cond_a
    const-string v21, "torchlight_enable"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_1c

    const/4 v15, 0x1

    .line 915
    .local v15, "isTorchlightEnabled":Z
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v15, :cond_b

    .line 916
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    .line 921
    :cond_b
    const-string v21, "car_mode_on"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_1d

    const/4 v7, 0x1

    .line 923
    .local v7, "isCheckDrivingMode":Z
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v7, :cond_c

    .line 924
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    .line 929
    :cond_c
    const-string v21, "sidesync_source_presentation"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_1e

    const/4 v14, 0x1

    .line 932
    .local v14, "isSideSyncSourcePresentationActived":Z
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v14, :cond_d

    .line 933
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    .line 938
    :cond_d
    const-string v21, "user_setup_complete"

    const/16 v23, 0x1

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f

    const/16 v20, 0x1

    .line 940
    .local v20, "userSetupComplete":Z
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUserSetupComplete:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    .line 941
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUserSetupComplete:Z

    .line 946
    :cond_e
    const-string v21, "pen_attach_detach_vibration"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_20

    const/4 v12, 0x1

    .line 948
    .local v12, "isPenNotifyVibrationChecked":Z
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v12, :cond_f

    .line 949
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    .line 952
    :cond_f
    monitor-exit v22

    .line 953
    return-void

    .line 819
    .end local v5    # "gripRotationLock":Z
    .end local v7    # "isCheckDrivingMode":Z
    .end local v8    # "isDockHomeEnabled":Z
    .end local v9    # "isEasyMode":Z
    .end local v10    # "isEnabledAccessControl":Z
    .end local v11    # "isKidsMode":Z
    .end local v12    # "isPenNotifyVibrationChecked":Z
    .end local v13    # "isSafetyAssuranceEnabled":Z
    .end local v14    # "isSideSyncSourcePresentationActived":Z
    .end local v15    # "isTorchlightEnabled":Z
    .end local v16    # "isUseAccessControl":Z
    .end local v17    # "performEditAfterScreenCapture":Z
    .end local v19    # "tripleTapOnHomeBehavior":I
    .end local v20    # "userSetupComplete":Z
    :cond_10
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 824
    .restart local v4    # "doubleTapOnHomeBehavior":I
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 837
    .end local v4    # "doubleTapOnHomeBehavior":I
    .restart local v19    # "tripleTapOnHomeBehavior":I
    :cond_12
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 842
    :cond_13
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 851
    .restart local v13    # "isSafetyAssuranceEnabled":Z
    :cond_14
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 860
    :cond_15
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 866
    .restart local v16    # "isUseAccessControl":Z
    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 874
    .restart local v10    # "isEnabledAccessControl":Z
    :cond_17
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 882
    .restart local v11    # "isKidsMode":Z
    :cond_18
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 890
    .restart local v9    # "isEasyMode":Z
    :cond_19
    const/16 v17, 0x0

    goto/16 :goto_9

    .line 898
    .restart local v17    # "performEditAfterScreenCapture":Z
    :cond_1a
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 906
    .restart local v8    # "isDockHomeEnabled":Z
    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_b

    .line 913
    .restart local v5    # "gripRotationLock":Z
    :cond_1c
    const/4 v15, 0x0

    goto/16 :goto_c

    .line 921
    .restart local v15    # "isTorchlightEnabled":Z
    :cond_1d
    const/4 v7, 0x0

    goto/16 :goto_d

    .line 929
    .restart local v7    # "isCheckDrivingMode":Z
    :cond_1e
    const/4 v14, 0x0

    goto/16 :goto_e

    .line 938
    .restart local v14    # "isSideSyncSourcePresentationActived":Z
    :cond_1f
    const/16 v20, 0x0

    goto :goto_f

    .line 946
    .restart local v20    # "userSetupComplete":Z
    :cond_20
    const/4 v12, 0x0

    goto :goto_10

    .line 952
    .end local v5    # "gripRotationLock":Z
    .end local v7    # "isCheckDrivingMode":Z
    .end local v8    # "isDockHomeEnabled":Z
    .end local v9    # "isEasyMode":Z
    .end local v10    # "isEnabledAccessControl":Z
    .end local v11    # "isKidsMode":Z
    .end local v13    # "isSafetyAssuranceEnabled":Z
    .end local v14    # "isSideSyncSourcePresentationActived":Z
    .end local v15    # "isTorchlightEnabled":Z
    .end local v16    # "isUseAccessControl":Z
    .end local v17    # "performEditAfterScreenCapture":Z
    .end local v19    # "tripleTapOnHomeBehavior":I
    .end local v20    # "userSetupComplete":Z
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21
.end method

.method public updateTopActivity(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 3112
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->updateTopActivity(Landroid/content/ComponentName;)V

    .line 3113
    return-void
.end method
