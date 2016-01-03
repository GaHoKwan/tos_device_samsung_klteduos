.class public Lcom/android/server/enterprise/kioskmode/KioskModeService;
.super Landroid/app/enterprise/kioskmode/IKioskMode$Stub;
.source "KioskModeService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;
    }
.end annotation


# static fields
.field private static final ACTION_REFRESH_HWKEY:Ljava/lang/String; = "com.android.server.enterprise.kioskmode.REFRESH_HWKEY_CACHE"

.field private static final DEFAULT_APK_NAME:Ljava/lang/String; = "kioskdefault.apk"

.field private static final DEFAULT_ASSET_PATH:Ljava/lang/String; = "/system/preloadedkiosk/kioskdefault.apk"

.field private static final DEFAULT_KIOSK_PKG:Ljava/lang/String; = "com.sec.android.kiosk"

.field private static final DISABLE_KIOSK_MODE:I = 0x2

.field private static final ENABLE_KIOSK_MODE:I = 0x1

.field private static final FORCE_TERMINATE_KIOSK_MODE:I = 0x3

.field private static final SYTEMUI_PACKAGE:Ljava/lang/String; = "android.uid.systemui"

.field private static final TAG:Ljava/lang/String; = "KioskModeService"

.field private static final TERMINATE_KIOSK_ACTION:Ljava/lang/String; = "android.intent.action.enterprise.TERMINATE_KIOSK"

.field private static mLock:Ljava/lang/Object;

.field private static mProcessing:Z

.field private static volatile packageRemoveIntentReceiver:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile terminateIntentReceiver:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private mAvailableKeyCodesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPersona:Lcom/android/server/pm/PersonaManagerService;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mUserManager:Landroid/os/UserManager;

.field private preAdminRemoval_NavigationBar:Z

.field private preAdminRemoval_StatusBar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 152
    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    .line 154
    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    .line 165
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appPolicy"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 178
    invoke-direct {p0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;-><init>()V

    .line 123
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 124
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 134
    iput-boolean v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_StatusBar:Z

    .line 135
    iput-boolean v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_NavigationBar:Z

    .line 162
    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/android/server/enterprise/kioskmode/KioskModeService$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    .line 179
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 180
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 181
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    .line 182
    iput-object p2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 184
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    .line 191
    return-void
.end method

.method private _disableKioskMode(Landroid/app/enterprise/ContextInfo;I)V
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "operation"    # I

    .prologue
    .line 552
    sget-object v13, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 553
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 554
    const/4 v10, 0x0

    .line 555
    .local v10, "isSystem":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 556
    .local v12, "uid":I
    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 557
    const/4 v10, 0x1

    .line 560
    :cond_0
    move-object/from16 v3, p1

    .line 561
    .local v3, "info":Landroid/app/enterprise/ContextInfo;
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 562
    .local v5, "userId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 564
    .local v6, "adminUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 567
    .local v8, "token":J
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 568
    const-string v1, "KioskModeService"

    const-string v2, "Kiosk Mode already disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v1, 0x0

    move/from16 v0, p2

    invoke-direct {p0, v6, v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 629
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 630
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 631
    monitor-exit v13

    .line 632
    :goto_1
    return-void

    .line 570
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin(I)I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 572
    const-string v1, "KioskModeService"

    const-string v2, "Kiosk Mode enabled by different admin"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v1, -0x2

    move/from16 v0, p2

    invoke-direct {p0, v6, v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    goto :goto_0

    .line 631
    .end local v3    # "info":Landroid/app/enterprise/ContextInfo;
    .end local v5    # "userId":I
    .end local v6    # "adminUid":I
    .end local v8    # "token":J
    .end local v10    # "isSystem":Z
    .end local v12    # "uid":I
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 576
    .restart local v3    # "info":Landroid/app/enterprise/ContextInfo;
    .restart local v5    # "userId":I
    .restart local v6    # "adminUid":I
    .restart local v8    # "token":J
    .restart local v10    # "isSystem":Z
    .restart local v12    # "uid":I
    :cond_2
    :try_start_1
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->unregisterTerminationReceiver(I)V

    .line 577
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->unregisterPackageRemoveReceiver(I)V

    .line 579
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "KIOSKMODE"

    const-string v7, "kioskModeKioskPackage"

    invoke-virtual {v1, v6, v2, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 581
    .local v4, "kioskPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "KIOSKMODE"

    const-string v7, "kioskModeDefaultPackage"

    invoke-virtual {v1, v6, v2, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 585
    .local v11, "newHomePackage":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v1, v2, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateDB(IZLjava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-direct {p0, v5, v4, v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z

    .line 590
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v4, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 592
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v4, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 594
    if-eqz v10, :cond_3

    .line 595
    new-instance v14, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;

    move-object v2, p0

    move/from16 v7, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;IIIJ)V

    invoke-direct {v14, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 613
    monitor-exit v13

    goto :goto_1

    .line 617
    :cond_3
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 620
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    .line 623
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity(I)V

    .line 626
    const/4 v1, 0x0

    move/from16 v0, p2

    invoke-direct {p0, v6, v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private _enableKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    .line 457
    sget-object v16, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    monitor-enter v16

    .line 458
    const/4 v15, 0x1

    :try_start_0
    sput-boolean v15, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 461
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v14

    .line 463
    .local v14, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 465
    .local v12, "token":J
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 468
    .local v2, "adminUid":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 469
    const-string v15, "KioskModeService"

    const-string v17, "Kiosk Mode already enabled"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v15, 0x1

    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v2, v15, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 539
    :goto_0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 540
    const/4 v15, 0x0

    sput-boolean v15, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 541
    monitor-exit v16

    .line 542
    return-void

    .line 475
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen(I)Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "currentHomePackage":Ljava/lang/String;
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->initKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v9

    .line 479
    .local v9, "result":I
    if-eqz v9, :cond_1

    .line 480
    const-string v15, "KioskModeService"

    const-string v17, "Kiosk Mode App not validated"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15, v9}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    goto :goto_0

    .line 541
    .end local v2    # "adminUid":I
    .end local v3    # "currentHomePackage":Ljava/lang/String;
    .end local v9    # "result":I
    .end local v12    # "token":J
    .end local v14    # "userId":I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 482
    .restart local v2    # "adminUid":I
    .restart local v3    # "currentHomePackage":Ljava/lang/String;
    .restart local v9    # "result":I
    .restart local v12    # "token":J
    .restart local v14    # "userId":I
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v3, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 483
    const-string v15, "KioskModeService"

    const-string v17, "Cannot find HOME activity"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v15, v2, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 488
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v15, v2, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 490
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 491
    const/4 v15, 0x1

    const/16 v17, -0x7d0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v2, v15, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    goto :goto_0

    .line 495
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v17, "toolbox_onoff"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 498
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v15, v1, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateDB(IZLjava/lang/String;Ljava/lang/String;)V

    .line 501
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity(I)V

    .line 505
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerPackageRemoveReceiver(I)V

    .line 506
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerTerminationReceiver(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    const/4 v5, 0x0

    .line 512
    .local v5, "flag":Z
    const/16 v10, 0x64

    .local v10, "timeoutCount":I
    move v11, v10

    .line 513
    .end local v10    # "timeoutCount":I
    .local v11, "timeoutCount":I
    :goto_1
    if-nez v5, :cond_5

    add-int/lit8 v10, v11, -0x1

    .end local v11    # "timeoutCount":I
    .restart local v10    # "timeoutCount":I
    if-lez v11, :cond_6

    .line 514
    const/4 v8, 0x0

    .line 516
    .local v8, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v15

    const/16 v17, 0xa

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v15, v0, v1, v14}, Landroid/app/IActivityManager;->getRecentTasks(III)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 520
    :goto_2
    if-eqz v8, :cond_3

    .line 521
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    :try_start_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_3

    .line 522
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v15, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 523
    .local v7, "packageName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 525
    const/4 v5, 0x1

    .end local v6    # "i":I
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_3
    move v11, v10

    .line 530
    .end local v10    # "timeoutCount":I
    .restart local v11    # "timeoutCount":I
    goto :goto_1

    .line 517
    .end local v11    # "timeoutCount":I
    .restart local v10    # "timeoutCount":I
    :catch_0
    move-exception v4

    .line 518
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 521
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "i":I
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v6    # "i":I
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v10    # "timeoutCount":I
    .restart local v11    # "timeoutCount":I
    :cond_5
    move v10, v11

    .line 533
    .end local v11    # "timeoutCount":I
    .restart local v10    # "timeoutCount":I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    .line 536
    const/4 v15, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v2, v15, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedList()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/kioskmode/KioskModeService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    return-void
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 119
    sput-boolean p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Lcom/android/server/enterprise/application/ApplicationPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V

    return-void
.end method

.method private addToBlocked(ILjava/lang/String;)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "hwKey"    # Ljava/lang/String;

    .prologue
    .line 1339
    const/4 v1, 0x1

    .line 1340
    .local v1, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 1342
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1343
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1344
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->saveBlockedList(ILjava/util/Set;)Z

    move-result v1

    .line 1346
    :cond_0
    return v1
.end method

.method private applyHideSystemBarPolicy()V
    .locals 6

    .prologue
    .line 1275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1277
    .local v2, "token":J
    :try_start_0
    const-string/jumbo v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1279
    .local v1, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->applyEDMPolicy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    .end local v1    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1284
    return-void

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KioskModeService"

    const-string v5, "applyEDMPolicy failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private broadcastKioskResult(III)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "operation"    # I
    .param p3, "result"    # I

    .prologue
    .line 828
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, "adminPackage":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 861
    :goto_0
    return-void

    .line 834
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 836
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "edm.intent.action.enable.kiosk.mode.result"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 837
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "edm.intent.extra.kiosk.mode.result"

    invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 856
    :goto_1
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 858
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 859
    .local v2, "token":J
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 860
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 842
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "token":J
    .end local v4    # "userId":I
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v5, "edm.intent.action.disable.kiosk.mode.result"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 843
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "edm.intent.extra.kiosk.mode.result"

    invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 844
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 848
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v5, "edm.intent.action.unexpected.kiosk.behavior"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 849
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private cleanUpKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    .line 972
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 974
    .local v0, "token":J
    const-string v2, "com.sec.android.kiosk"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 975
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "com.sec.android.kiosk"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->uninstallApplicationInternalBySystem(ILjava/lang/String;Z)Z

    .line 978
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 979
    return-void
.end method

.method private copyAssets(Ljava/io/File;)Z
    .locals 12
    .param p1, "apkPath"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    const/4 v10, -0x1

    .line 985
    const/4 v3, 0x0

    .line 986
    .local v3, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 988
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 989
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-string v9, "/system/preloadedkiosk/kioskdefault.apk"

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 990
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 991
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_1
    new-array v1, v9, [B

    .line 993
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    if-eq v7, v10, :cond_2

    .line 994
    const/4 v9, 0x0

    invoke-virtual {v6, v1, v9, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 999
    .end local v1    # "buffer":[B
    .end local v7    # "read":I
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 1000
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :goto_1
    const-string v9, "KioskModeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    if-eqz v3, :cond_0

    .line 1003
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1008
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    .line 1009
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1017
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    return v8

    .line 996
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v1    # "buffer":[B
    .restart local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "read":I
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 997
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 998
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1016
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1b4

    invoke-static {v8, v9, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1017
    const/4 v8, 0x1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 1004
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "buffer":[B
    .end local v7    # "read":I
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 1005
    .local v4, "ioe":Ljava/io/IOException;
    const-string v9, "KioskModeService"

    const-string v10, "Error closing inputstream"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1010
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 1011
    .restart local v4    # "ioe":Ljava/io/IOException;
    const-string v9, "KioskModeService"

    const-string v10, "Error closing outputstream"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 999
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private forceTerminateKiosk(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 639
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin(I)I

    move-result v0

    .line 641
    .local v0, "kioskAdminUid":I
    const-string v1, "KioskModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceTerminateKiosk() - uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " /userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(Landroid/app/enterprise/ContextInfo;I)V

    .line 646
    return-void
.end method

.method private getActiveKioskAdmin(I)I
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x1

    .line 884
    const/4 v6, 0x2

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "kioskModeEnabled"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "adminUid"

    aput-object v7, v0, v6

    .line 889
    .local v0, "columns":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KIOSKMODE"

    invoke-virtual {v6, v7, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 892
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 893
    const/4 v1, 0x0

    .line 894
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 896
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 897
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 898
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v6, "kioskModeEnabled"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 899
    const-string v6, "adminUid"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 910
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_0
    return v5

    .line 905
    :catch_0
    move-exception v2

    .line 906
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 909
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getActiveKioskAdmin() failed for user : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/4 v5, -0x1

    goto :goto_0
.end method

.method private getAllBlockedList()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1379
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1380
    .local v7, "token":J
    iget-object v12, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v12}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 1381
    .local v10, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1382
    const/4 v9, 0x0

    .line 1384
    .local v9, "userId":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1385
    .local v0, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1386
    .local v2, "i":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 1388
    iget-object v12, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "KIOSKMODE"

    const-string v14, "blockedHwKeyList"

    invoke-virtual {v12, v13, v14, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 1391
    .local v11, "var":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1393
    .local v6, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1394
    .local v5, "list":Ljava/lang/String;
    const-string v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1395
    .local v1, "array":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1397
    .end local v1    # "array":[Ljava/lang/String;
    .end local v5    # "list":Ljava/lang/String;
    :cond_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1399
    .end local v2    # "i":Landroid/content/pm/UserInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "var":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object v0
.end method

.method private getBlockedList(I)Ljava/util/Set;
    .locals 10
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1407
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KIOSKMODE"

    const-string v9, "blockedHwKeyList"

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1409
    .local v6, "var":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1410
    .local v3, "l":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 1411
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1412
    .local v1, "array":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 1413
    .local v5, "s":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1412
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1416
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private getDefaultHomeScreen(I)Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1026
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    const/4 v0, 0x0

    .line 1031
    .local v0, "cName":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v5, 0x10000

    invoke-virtual {v4, v2, v5, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1033
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 1034
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "cName":Landroid/content/ComponentName;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    .restart local v0    # "cName":Landroid/content/ComponentName;
    :cond_0
    if-nez v0, :cond_2

    .line 1040
    const-string v4, "KioskModeService"

    const-string v5, "getDefaultHomeScreen() fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_1
    :goto_0
    return-object v3

    .line 1044
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1052
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1055
    .local v3, "pkgName":Ljava/lang/String;
    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getHomeActivity(ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "homePackage"    # Ljava/lang/String;

    .prologue
    .line 1162
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1163
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1167
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v7, 0x10000

    invoke-virtual {v6, v1, v7, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 1169
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 1172
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1173
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1174
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1179
    .end local v3    # "pkgName":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 1171
    .restart local v3    # "pkgName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1178
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_1
    const-string v6, "KioskModeService"

    const-string v7, " - cannot find matched home activity"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 3
    .param p1, "callingUid"    # I

    .prologue
    .line 869
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 870
    .local v1, "uid":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    const/16 v2, 0x4e1f

    if-le v1, v2, :cond_1

    .line 872
    :cond_0
    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 875
    :goto_0
    return-object v0

    .line 874
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, "pkgName":Ljava/lang/String;
    goto :goto_0
.end method

.method private getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_0

    .line 174
    const-string v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method private getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1739
    if-nez p1, :cond_0

    .line 1740
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p1, v5}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 1743
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1744
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1745
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1746
    .local v1, "index":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 1747
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1749
    :cond_1
    const-string v5, "android.uid.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1750
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1751
    .local v2, "token":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 1752
    .local v4, "userId":I
    const-string v5, "KioskModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "System UI : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / userId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1757
    .end local v1    # "index":I
    .end local v2    # "token":J
    .end local v4    # "userId":I
    :goto_0
    return v4

    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    goto :goto_0
.end method

.method private initKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v8, -0x3

    const/16 v7, -0x7d0

    const/4 v9, 0x0

    .line 925
    const/4 v3, 0x0

    .line 928
    .local v3, "removeOwner":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 929
    .local v6, "userId":I
    const-string v10, "com.sec.android.kiosk"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 930
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v10, "/system/preloadedkiosk/kioskdefault.apk"

    invoke-virtual {v8, p1, v10, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->installApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v2

    .line 931
    .local v2, "isAppInstalled":Z
    if-nez v2, :cond_4

    .line 963
    .end local v2    # "isAppInstalled":Z
    :cond_0
    :goto_0
    return v7

    .line 937
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    const/16 v11, 0x80

    invoke-interface {v10, p2, v11, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 938
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_2

    move v7, v8

    .line 939
    goto :goto_0

    .line 940
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v10

    .line 944
    :cond_2
    iget-object v10, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v10, p2, v9, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v10

    if-nez v10, :cond_3

    move v7, v8

    .line 945
    goto :goto_0

    .line 948
    :cond_3
    invoke-direct {p0, v6, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getHomeActivity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 949
    .local v1, "homeActivity":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 954
    .end local v1    # "homeActivity":Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 957
    .local v4, "token":J
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8, p2, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 959
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8, p2, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 961
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v9

    .line 963
    goto :goto_0
.end method

.method private initializeKeyCodeLists()V
    .locals 7

    .prologue
    .line 1464
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v2

    .line 1466
    .local v2, "maxKeycode":I
    add-int/lit8 v4, v2, -0x1

    new-array v1, v4, [I

    .line 1467
    .local v1, "keyCodes":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_0

    .line 1468
    add-int/lit8 v4, v0, 0x1

    aput v4, v1, v0

    .line 1467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1470
    :cond_0
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKeys([I)[Z

    move-result-object v3

    .line 1471
    .local v3, "ret":[Z
    if-eqz v3, :cond_3

    .line 1472
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-enter v5

    .line 1473
    const/4 v0, 0x0

    :goto_1
    :try_start_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1474
    aget-boolean v4, v3, v0

    if-eqz v4, :cond_1

    .line 1475
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1478
    :cond_2
    monitor-exit v5

    .line 1480
    :cond_3
    return-void

    .line 1478
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private isHardwareKeyValid(I)Z
    .locals 2
    .param p1, "hwKeyId"    # I

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isNavigationBarHiddenAsUser(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 1677
    const/4 v1, 0x0

    .line 1679
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string/jumbo v6, "systemBarEnabled"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1682
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1683
    .local v2, "value":I
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_0

    .line 1684
    const/4 v1, 0x1

    .line 1691
    .end local v2    # "value":I
    :cond_1
    return v1
.end method

.method private isStatusBarHiddenAsUser(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 1604
    const/4 v1, 0x0

    .line 1606
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string/jumbo v6, "systemBarEnabled"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1609
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1610
    .local v2, "value":I
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    .line 1611
    const/4 v1, 0x1

    .line 1618
    .end local v2    # "value":I
    :cond_1
    return v1
.end method

.method private isSystemBarHiddenAsUser(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 1257
    const/4 v1, 0x0

    .line 1259
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string/jumbo v6, "systemBarEnabled"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1262
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1263
    .local v2, "value":I
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_0

    .line 1265
    const/4 v1, 0x1

    .line 1271
    .end local v2    # "value":I
    :cond_1
    return v1
.end method

.method private isTaskManagerAllowedAsUser(ZI)Z
    .locals 7
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1509
    const/4 v1, 0x1

    .line 1510
    .local v1, "allowed":Z
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string/jumbo v6, "taskManagerEnabled"

    invoke-virtual {v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1512
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1513
    .local v0, "adminValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1514
    const/4 v1, 0x0

    goto :goto_0

    .line 1517
    .end local v0    # "adminValue":Ljava/lang/Boolean;
    :cond_1
    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    .line 1518
    const v4, 0x10402a1

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1522
    :cond_2
    return v1
.end method

.method private launchHomeActivity(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1201
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1202
    .local v1, "homeIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1203
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1205
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    :goto_0
    return-void

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerPackageRemoveReceiver(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 655
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 657
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 658
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 660
    new-instance v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 701
    .local v1, "mReceiver":Landroid/content/BroadcastReceiver;
    if-eqz v1, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_KIOSK_MODE_INTERNAL"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 704
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    .end local v1    # "mReceiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 707
    :catch_0
    move-exception v6

    .line 708
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "KioskModeService"

    const-string v2, "Cannot register packageRemoveIntentReceiver"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerTerminationReceiver(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 732
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 733
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.enterprise.TERMINATE_KIOSK"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 736
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$3;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 775
    .local v1, "mReceiver":Landroid/content/BroadcastReceiver;
    if-eqz v1, :cond_0

    .line 776
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_KIOSK_MODE_INTERNAL"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    .end local v1    # "mReceiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 781
    :catch_0
    move-exception v6

    .line 782
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "KioskModeService"

    const-string v2, "Cannot register terminateIntentReceiver"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeFromBlocked(ILjava/lang/String;)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "hwKey"    # Ljava/lang/String;

    .prologue
    .line 1350
    const/4 v1, 0x1

    .line 1351
    .local v1, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 1352
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1353
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1354
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->saveBlockedList(ILjava/util/Set;)Z

    move-result v1

    .line 1356
    :cond_0
    return v1
.end method

.method private retgisterSwitchingUserReceiver()V
    .locals 6

    .prologue
    .line 801
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 802
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 804
    new-instance v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 812
    .local v2, "switchingUserIntentReceiver":Landroid/content/BroadcastReceiver;
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v2    # "switchingUserIntentReceiver":Landroid/content/BroadcastReceiver;
    :goto_0
    return-void

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KioskModeService"

    const-string v4, "Cannot register retgisterSwitchingUserReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveBlockedList(ILjava/util/Set;)Z
    .locals 8
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1360
    .local p2, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 1362
    .local v1, "ret":Z
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1363
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "blockedHwKeyList"

    const/4 v7, 0x0

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1373
    :goto_0
    return v1

    .line 1366
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1367
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1368
    .local v2, "s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1370
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "blockedHwKeyList"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .param p1, "userId"    # I
    .param p2, "oldHomePackage"    # Ljava/lang/String;
    .param p3, "newHomePackage"    # Ljava/lang/String;

    .prologue
    .line 1070
    new-instance v14, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1071
    .local v14, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1072
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    const/4 v11, 0x0

    .line 1079
    .local v11, "flag":Z
    if-eqz p2, :cond_2

    .line 1080
    const/4 v15, 0x0

    .line 1084
    .local v15, "isAppInstalled":Z
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v5, 0x80

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-interface {v3, v0, v5, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 1085
    .local v10, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v10, :cond_0

    .line 1086
    const/4 v15, 0x1

    .line 1092
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    const-string v3, "com.sec.android.kiosk"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v15, :cond_1

    .line 1093
    const/4 v11, 0x1

    .line 1096
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 1098
    .local v20, "token":J
    :try_start_1
    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v17

    .line 1099
    .local v17, "mIPackageManager":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivitiesAsUser(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1103
    .end local v17    # "mIPackageManager":Landroid/content/pm/IPackageManager;
    :goto_1
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1111
    .end local v15    # "isAppInstalled":Z
    .end local v20    # "token":J
    :cond_2
    if-eqz p3, :cond_7

    .line 1112
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 1113
    .restart local v20    # "token":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v5, 0x10000

    move/from16 v0, p1

    invoke-virtual {v3, v14, v5, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v16

    .line 1115
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1118
    if-eqz v11, :cond_3

    .line 1121
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    .line 1125
    .local v19, "size":I
    :goto_2
    move/from16 v0, v19

    new-array v6, v0, [Landroid/content/ComponentName;

    .line 1126
    .local v6, "components":[Landroid/content/ComponentName;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    move/from16 v0, v19

    if-ge v13, v0, :cond_5

    .line 1127
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1128
    .local v18, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1129
    .local v9, "activity":Ljava/lang/String;
    if-eqz v11, :cond_4

    const-string v3, "com.sec.android.kiosk"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1126
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1103
    .end local v6    # "components":[Landroid/content/ComponentName;
    .end local v9    # "activity":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18    # "pkgName":Ljava/lang/String;
    .end local v19    # "size":I
    .restart local v15    # "isAppInstalled":Z
    :catchall_0
    move-exception v3

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1123
    .end local v15    # "isAppInstalled":Z
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    .restart local v19    # "size":I
    goto :goto_2

    .line 1132
    .restart local v6    # "components":[Landroid/content/ComponentName;
    .restart local v9    # "activity":Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v18    # "pkgName":Ljava/lang/String;
    :cond_4
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    invoke-direct {v3, v0, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v6, v13

    goto :goto_4

    .line 1135
    .end local v9    # "activity":Ljava/lang/String;
    .end local v18    # "pkgName":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getHomeActivity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1136
    .local v12, "homeActivity":Ljava/lang/String;
    if-nez v12, :cond_6

    .line 1137
    const/4 v3, 0x0

    .line 1153
    .end local v6    # "components":[Landroid/content/ComponentName;
    .end local v12    # "homeActivity":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v19    # "size":I
    .end local v20    # "token":J
    :goto_5
    return v3

    .line 1141
    .restart local v6    # "components":[Landroid/content/ComponentName;
    .restart local v12    # "homeActivity":Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v19    # "size":I
    .restart local v20    # "token":J
    :cond_6
    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, p3

    invoke-direct {v7, v0, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    .local v7, "component":Landroid/content/ComponentName;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v4, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1144
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1145
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1147
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 1148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v5, 0x100000

    move/from16 v8, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 1150
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1153
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "components":[Landroid/content/ComponentName;
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v12    # "homeActivity":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v19    # "size":I
    .end local v20    # "token":J
    :cond_7
    const/4 v3, 0x1

    goto :goto_5

    .line 1100
    .restart local v15    # "isAppInstalled":Z
    .restart local v20    # "token":J
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 1088
    .end local v20    # "token":J
    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method

.method private unregisterPackageRemoveReceiver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 717
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 719
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    :goto_0
    return-void

    .line 721
    :cond_0
    const-string v0, "KioskModeService"

    const-string v1, "There\'s no matched key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterTerminationReceiver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 791
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 792
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 793
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    :goto_0
    return-void

    .line 795
    :cond_0
    const-string v0, "KioskModeService"

    const-string v1, "There\'s no matched key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDB(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "enabled"    # Z
    .param p3, "kioskPackage"    # Ljava/lang/String;
    .param p4, "defaultPackage"    # Ljava/lang/String;

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string v2, "kioskModeEnabled"

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1190
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string v2, "kioskModeDefaultPackage"

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1192
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string v2, "kioskModeKioskPackage"

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1194
    return-void
.end method

.method private wipeRecentTasks(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1293
    const/4 v0, 0x1

    .line 1294
    .local v0, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1295
    .local v1, "token":J
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z

    .line 1296
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1297
    return v0
.end method


# virtual methods
.method public allowHardwareKeys(Landroid/app/enterprise/ContextInfo;[IZ)[I
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hwKeyId"    # [I
    .param p3, "allow"    # Z

    .prologue
    .line 1308
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1309
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1310
    .local v0, "callingUid":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1311
    .local v7, "successList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1313
    .local v1, "hwKeyIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    array-length v8, p2

    if-nez v8, :cond_2

    .line 1314
    :cond_0
    const/4 v6, 0x0

    .line 1335
    :cond_1
    return-object v6

    .line 1317
    :cond_2
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    array-length v8, p2

    if-ge v3, v8, :cond_3

    .line 1318
    aget v8, p2, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1317
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1320
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1321
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1322
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1323
    .local v5, "keycode":I
    if-nez p3, :cond_5

    .line 1324
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->addToBlocked(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1325
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1327
    :cond_5
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->removeFromBlocked(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1328
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1331
    .end local v5    # "keycode":I
    :cond_6
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 1332
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v6, v8, [I

    .line 1333
    .local v6, "ret":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v8, v6

    if-ge v2, v8, :cond_1

    .line 1334
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v2

    .line 1333
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public allowMultiWindowMode(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1695
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1696
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1698
    .local v2, "userId":I
    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_0

    .line 1699
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1700
    .local v0, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_window_enabled"

    invoke-static {v3, v4, v5, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1702
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1705
    .end local v0    # "token":J
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v5, "KIOSKMODE"

    const-string v6, "multiWindowEnabled"

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3
.end method

.method public allowTaskManager(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1483
    const/4 v1, 0x1

    .line 1484
    .local v1, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1485
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 1486
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1487
    .local v2, "token":J
    if-nez p2, :cond_0

    .line 1489
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    sget-object v6, Landroid/app/enterprise/kioskmode/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1490
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    sget-object v6, Landroid/app/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1491
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    sget-object v6, Landroid/app/enterprise/kioskmode/KioskMode;->MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1498
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "KIOSKMODE"

    const-string/jumbo v8, "taskManagerEnabled"

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1500
    return v1

    .line 1492
    :catch_0
    move-exception v0

    .line 1493
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "KioskModeService"

    const-string v6, "Fail getting ActivityManager"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearAllNotifications(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1762
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1763
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1764
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1765
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1766
    .local v3, "token":J
    const-string v6, "notification"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 1769
    .local v2, "sService":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v2, v5}, Landroid/app/INotificationManager;->clearAllNotificationsAsUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1775
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1777
    const/4 v6, 0x1

    :goto_0
    return v6

    .line 1771
    :catch_0
    move-exception v1

    .line 1772
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v6, "KioskModeService"

    const-string v7, "Failed to clear notification bar"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1773
    const/4 v6, 0x0

    .line 1775
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public disableKioskMode(Landroid/app/enterprise/ContextInfo;)V
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x2

    .line 313
    const-string v0, "KioskModeService"

    const-string v1, "disableKioskMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 317
    sget-boolean v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 318
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, -0x4

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(Landroid/app/enterprise/ContextInfo;I)V

    goto :goto_0
.end method

.method public enableKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 298
    const-string v0, "KioskModeService"

    const-string v1, "enableKioskMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 302
    sget-boolean v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    if-ne v0, v2, :cond_0

    .line 303
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, -0x4

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_enableKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAllBlockedHardwareKeys(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1425
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1427
    .local v5, "userId":I
    const/4 v2, 0x0

    .line 1428
    .local v2, "blockedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1430
    .local v0, "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedList()Ljava/util/Map;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "blockedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    check-cast v2, Ljava/util/Set;

    .line 1432
    .restart local v2    # "blockedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1434
    .local v1, "blockedListInt":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_1

    .line 1435
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1436
    .restart local v0    # "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1437
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1438
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1439
    .local v4, "next":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1440
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1443
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "next":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getBlockedHwKeysCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    # getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->access$1000(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHardwareKeyList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1301
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1302
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-enter v1

    .line 1303
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 1304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getKioskHomePackage(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 410
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    move-result-object v1

    .line 413
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKioskHomePackageAsUser(I)Ljava/lang/String;
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x1

    .line 419
    const/4 v6, 0x2

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "kioskModeEnabled"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "kioskModeKioskPackage"

    aput-object v7, v0, v6

    .line 424
    .local v0, "columns":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KIOSKMODE"

    invoke-virtual {v6, v7, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 427
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 428
    const/4 v1, 0x0

    .line 430
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 432
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 433
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 434
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v6, "kioskModeEnabled"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 435
    const-string v6, "kioskModeKioskPackage"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 446
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_0
    return-object v4

    .line 442
    :catch_0
    move-exception v2

    .line 443
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getKioskHomePackageAsUser() failed user : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public hideNavigationBar(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hide"    # Z

    .prologue
    .line 1627
    const/4 v8, 0x1

    .line 1628
    .local v8, "result":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1629
    move-object/from16 v0, p1

    iget v1, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1630
    .local v1, "callingUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 1631
    .local v11, "userId":I
    const/4 v2, -0x1

    .line 1632
    .local v2, "curUserId":I
    const/4 v7, 0x0

    .line 1635
    .local v7, "oldVal":I
    :try_start_0
    iget-object v12, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "KIOSKMODE"

    const-string/jumbo v14, "systemBarEnabled"

    invoke-virtual {v12, v1, v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 1641
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1643
    .local v9, "token":J
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v12

    iget v2, v12, Landroid/content/pm/UserInfo;->id:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1647
    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1649
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_1

    or-int/lit8 v7, v7, 0x2

    move v5, v7

    .line 1652
    .end local v7    # "oldVal":I
    .local v5, "newVal":I
    .local v5, "oldVal":I
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    .line 1653
    .local v6, "oldState":Z
    iget-object v12, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "KIOSKMODE"

    const-string/jumbo v14, "systemBarEnabled"

    invoke-virtual {v12, v1, v13, v14, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 1656
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    .line 1657
    .local v4, "newState":Z
    if-ne v11, v2, :cond_0

    .line 1658
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V

    .line 1661
    :cond_0
    return v8

    .line 1644
    .end local v4    # "newState":Z
    .end local v5    # "oldVal":I
    .end local v6    # "oldState":Z
    .restart local v7    # "oldVal":I
    :catch_0
    move-exception v3

    .line 1645
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1649
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    and-int/lit8 v7, v7, -0x3

    move v5, v7

    .end local v7    # "oldVal":I
    .local v5, "oldVal":I
    goto :goto_2

    .line 1637
    .end local v5    # "oldVal":I
    .end local v9    # "token":J
    .restart local v7    # "oldVal":I
    :catch_1
    move-exception v12

    goto :goto_0
.end method

.method public hideStatusBar(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hide"    # Z

    .prologue
    .line 1554
    const/4 v8, 0x1

    .line 1555
    .local v8, "result":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1556
    move-object/from16 v0, p1

    iget v1, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1557
    .local v1, "callingUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 1558
    .local v11, "userId":I
    const/4 v2, -0x1

    .line 1559
    .local v2, "curUserId":I
    const/4 v7, 0x0

    .line 1562
    .local v7, "oldVal":I
    :try_start_0
    iget-object v12, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "KIOSKMODE"

    const-string/jumbo v14, "systemBarEnabled"

    invoke-virtual {v12, v1, v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 1568
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1570
    .local v9, "token":J
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v12

    iget v2, v12, Landroid/content/pm/UserInfo;->id:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1574
    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1576
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_1

    or-int/lit8 v7, v7, 0x1

    move v5, v7

    .line 1579
    .end local v7    # "oldVal":I
    .local v5, "newVal":I
    .local v5, "oldVal":I
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHidden(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    .line 1580
    .local v6, "oldState":Z
    iget-object v12, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "KIOSKMODE"

    const-string/jumbo v14, "systemBarEnabled"

    invoke-virtual {v12, v1, v13, v14, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 1583
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHidden(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    .line 1585
    .local v4, "newState":Z
    if-ne v11, v2, :cond_0

    .line 1586
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V

    .line 1588
    :cond_0
    return v8

    .line 1571
    .end local v4    # "newState":Z
    .end local v5    # "oldVal":I
    .end local v6    # "oldState":Z
    .restart local v7    # "oldVal":I
    :catch_0
    move-exception v3

    .line 1572
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1576
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    and-int/lit8 v7, v7, -0x2

    move v5, v7

    .end local v7    # "oldVal":I
    .local v5, "oldVal":I
    goto :goto_2

    .line 1564
    .end local v5    # "oldVal":I
    .end local v9    # "token":J
    .restart local v7    # "oldVal":I
    :catch_1
    move-exception v12

    goto :goto_0
.end method

.method public hideSystemBar(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hide"    # Z

    .prologue
    .line 1218
    const/4 v5, 0x1

    .line 1219
    .local v5, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1220
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1221
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 1224
    .local v4, "oldVal":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KIOSKMODE"

    const-string/jumbo v8, "systemBarEnabled"

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1230
    :goto_0
    const/4 v6, 0x1

    if-ne p2, v6, :cond_0

    or-int/lit8 v4, v4, 0x3

    move v2, v4

    .line 1233
    .end local v4    # "oldVal":I
    .local v2, "newVal":I
    .local v2, "oldVal":I
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHidden(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    .line 1234
    .local v3, "oldState":Z
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KIOSKMODE"

    const-string/jumbo v8, "systemBarEnabled"

    invoke-virtual {v6, v0, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 1237
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHidden(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    .line 1239
    .local v1, "newState":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V

    .line 1241
    return v5

    .line 1230
    .end local v1    # "newState":Z
    .end local v2    # "oldVal":I
    .end local v3    # "oldState":Z
    .restart local v4    # "oldVal":I
    :cond_0
    and-int/lit8 v4, v4, -0x4

    move v2, v4

    .end local v4    # "oldVal":I
    .local v2, "oldVal":I
    goto :goto_1

    .line 1226
    .end local v2    # "oldVal":I
    .restart local v4    # "oldVal":I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public isHardwareKeyAllowed(Landroid/app/enterprise/ContextInfo;IZ)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hwKeyId"    # I
    .param p3, "showMsg"    # Z

    .prologue
    .line 1447
    const/4 v0, 0x1

    .line 1448
    .local v0, "allowed":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 1450
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    # getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->access$1000(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    # getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->access$1000(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1451
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    # getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->access$1000(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1452
    const/4 v0, 0x0

    .line 1456
    :cond_0
    if-eqz p3, :cond_1

    if-nez v0, :cond_1

    .line 1457
    const v2, 0x104029f

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1460
    :cond_1
    return v0
.end method

.method public isKioskModeEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 330
    const/4 v5, 0x0

    .line 332
    .local v5, "ret":Z
    const/4 v10, 0x1

    :try_start_0
    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "kioskModeEnabled"

    aput-object v11, v0, v10

    .line 336
    .local v0, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "KIOSKMODE"

    invoke-virtual {v10, v11, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 339
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 340
    const/4 v1, 0x0

    .line 341
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 343
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 344
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 345
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v10, "kioskModeEnabled"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-ne v10, v8, :cond_3

    move v5, v8

    .line 346
    :goto_0
    if-ne v5, v8, :cond_0

    .line 357
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    :goto_1
    if-nez v5, :cond_2

    .line 358
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 360
    .local v6, "token":J
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 364
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 367
    .end local v6    # "token":J
    :cond_2
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3
    move v5, v9

    .line 345
    goto :goto_0

    .line 351
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_4
    :try_start_2
    const-string v8, "KioskModeService"

    const-string v9, "There\'s no matched data"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 353
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 354
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "KioskModeService"

    const-string v9, "isKioskModeEnabledAsUser() failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 361
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "token":J
    :catch_1
    move-exception v2

    .line 362
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "KioskModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 364
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public isKioskModeEnabledAsUser(I)Z
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 371
    const/4 v5, 0x0

    .line 373
    .local v5, "ret":Z
    const/4 v8, 0x1

    :try_start_0
    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "kioskModeEnabled"

    aput-object v9, v0, v8

    .line 377
    .local v0, "columns":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KIOSKMODE"

    invoke-virtual {v8, v9, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 380
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 381
    const/4 v1, 0x0

    .line 382
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 384
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 385
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 386
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v8, "kioskModeEnabled"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v6, :cond_2

    move v5, v6

    .line 387
    :goto_0
    if-ne v5, v6, :cond_0

    .line 397
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    :goto_1
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_2
    move v5, v7

    .line 386
    goto :goto_0

    .line 392
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_3
    const-string v6, "KioskModeService"

    const-string v7, "There\'s no matched data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 394
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 395
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KioskModeService"

    const-string v7, "isKioskModeEnabledAsUser() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isMultiWindowModeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1711
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 1713
    .local v1, "userId":I
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v0

    .line 1715
    .local v0, "allowed":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 1716
    const v2, 0x10402c8

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1720
    :cond_0
    return v0
.end method

.method public isMultiWindowModeAllowedAsUser(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 1724
    const/4 v1, 0x1

    .line 1726
    .local v1, "allowed":Z
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "multiWindowEnabled"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1728
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1729
    .local v0, "adminValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1730
    const/4 v1, 0x0

    goto :goto_0

    .line 1734
    .end local v0    # "adminValue":Ljava/lang/Boolean;
    :cond_1
    return v1
.end method

.method public isNavigationBarHidden(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1671
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1673
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHiddenAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isStatusBarHidden(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1598
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1600
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHiddenAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isSystemBarHidden(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1251
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1253
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHiddenAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isTaskManagerAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1504
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1505
    .local v0, "userId":I
    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 240
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 264
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 266
    .local v0, "userId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 271
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 248
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 253
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 254
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk(I)V

    .line 256
    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 7

    .prologue
    .line 208
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 209
    .local v5, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v4, 0x0

    .line 213
    .local v4, "userId":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 214
    .local v1, "i":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 215
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 216
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "kioskPackage":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "currentHomePackage":Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 221
    invoke-direct {p0, v4, v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z

    .line 226
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerPackageRemoveReceiver(I)V

    .line 227
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerTerminationReceiver(I)V

    goto :goto_0

    .line 231
    .end local v0    # "currentHomePackage":Ljava/lang/String;
    .end local v1    # "i":Landroid/content/pm/UserInfo;
    .end local v3    # "kioskPackage":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->retgisterSwitchingUserReceiver()V

    .line 233
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->initializeKeyCodeLists()V

    .line 234
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 235
    return-void
.end method

.method public wipeRecentTasks(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1287
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1289
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    move-result v0

    return v0
.end method
