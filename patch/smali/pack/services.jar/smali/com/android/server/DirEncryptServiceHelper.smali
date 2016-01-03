.class public Lcom/android/server/DirEncryptServiceHelper;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;,
        Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;,
        Lcom/android/server/DirEncryptServiceHelper$Notify;,
        Lcom/android/server/DirEncryptServiceHelper$VoldResponse;,
        Lcom/android/server/DirEncryptServiceHelper$VoldCommand;,
        Lcom/android/server/DirEncryptServiceHelper$Command;,
        Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;,
        Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    }
.end annotation


# static fields
.field private static final APPLIED_POLICIES:Ljava/lang/String; = "applied_sdcard_policies"

.field private static final DELAY:I = 0x1f4

.field private static final FIPS_EDK_PATH_SD:Ljava/lang/String; = "edk_p_sd"

.field private static final LOCAL_LOGD:Z

.field private static final LOCAL_LOGE:Z

.field private static final SECURE_MOUNT_PATH:Ljava/lang/String; = "/mnt/secure/staging"

.field private static final TAG:Ljava/lang/String; = "DirEncryptService"

.field private static final UNMOUNT_POLICY_INTENT:Ljava/lang/String; = "android.dirEncryption.DirEncryptionManager.UNMOUNT_POLICY"

.field private static mNeedToCreateKey:Z

.field private static mSaveProgressNotification:Landroid/app/Notification;


# instance fields
.field demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

.field private mAnimateSync:Ljava/lang/Object;

.field private mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

.field private mBootCompleted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field mContainerEncryption:Z

.field private mContext:Landroid/content/Context;

.field private mDecryptDialog:Landroid/app/AlertDialog;

.field private mDep:Lcom/android/server/DirEncryptPrefs;

.field private mDew:Landroid/dirEncryption/DirEncryptionWrapper;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mErrAdditionalSpace:I

.field private mFirstUnlockLockscreen:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastError:I

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPassword:Z

.field private mProgressTime:J

.field private mRemoteProgressView:Landroid/widget/RemoteViews;

.field private mSelfSDMountRequested:Z

.field private mServiceStatus:I

.field private mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

.field private mSync:Ljava/lang/Object;

.field private mUnnmountRequested:Z

.field private mWasEncryptedCard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGE:Z

    .line 76
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGD:Z

    .line 102
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    .line 90
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-direct {v1, p0, v4}, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;Lcom/android/server/DirEncryptServiceHelper$1;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    .line 91
    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 92
    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    .line 93
    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 94
    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    .line 97
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 98
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 99
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    .line 100
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    .line 101
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    .line 105
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Z

    .line 108
    iput v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 109
    iput v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 110
    iput v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    .line 116
    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 117
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    .line 121
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    .line 126
    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    .line 131
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    .line 150
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/DirEncryptServiceHelper$1;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 374
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 375
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 376
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 377
    new-instance v1, Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/dirEncryption/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    .line 379
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 380
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.dirEncryption.DirEncryptionManager.UNMOUNT_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 382
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DirEncryptServiceHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DirEncryptServiceHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DirEncryptServiceHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DirEncryptServiceHelper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DirEncryptServiceHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DirEncryptServiceHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/DirEncryptServiceHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DirEncryptServiceHelper;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    return v0
.end method

.method private clearNotification()V
    .locals 3

    .prologue
    .line 1427
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1429
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    sget v1, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1430
    return-void
.end method

.method private doChangeEncryptPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "containerId"    # I

    .prologue
    .line 1387
    if-nez p1, :cond_0

    const-string p1, ""

    .line 1388
    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 1390
    :cond_1
    const-string v0, "dir_crypto"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "changeEcryptfsPassword"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, p3}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-virtual {p0, p2}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1391
    return-void
.end method

.method private doCheckEncMeta()V
    .locals 4

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    const-string v0, "dir_crypto"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "encMetaCheck"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/mnt/secure/staging"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1332
    :cond_0
    return-void
.end method

.method private doEncryption()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1294
    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v7}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v2

    .line 1296
    .local v2, "reqPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget v7, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v7, v10, :cond_0

    move v3, v5

    .line 1297
    .local v3, "requiredEnc":I
    :goto_0
    iget v7, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v7, v12, :cond_1

    move v4, v5

    .line 1298
    .local v4, "requiredFullEnc":I
    :goto_1
    iget v7, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_2

    move v1, v5

    .line 1300
    .local v1, "excludeMedia":I
    :goto_2
    iget-boolean v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Z

    if-nez v7, :cond_3

    .line 1303
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v7, "Assert!!! SD card encryption doesn\'t work in factory mode"

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1327
    :goto_3
    return-void

    .end local v1    # "excludeMedia":I
    .end local v3    # "requiredEnc":I
    .end local v4    # "requiredFullEnc":I
    :cond_0
    move v3, v6

    .line 1296
    goto :goto_0

    .restart local v3    # "requiredEnc":I
    :cond_1
    move v4, v6

    .line 1297
    goto :goto_1

    .restart local v4    # "requiredFullEnc":I
    :cond_2
    move v1, v6

    .line 1298
    goto :goto_2

    .line 1309
    .restart local v1    # "excludeMedia":I
    :cond_3
    const-wide/16 v7, 0xbb8

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    :goto_4
    const-string v7, ""

    invoke-direct {p0, v5, v3, v7}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 1318
    if-ne v3, v5, :cond_4

    .line 1319
    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 1320
    const-string v7, "free"

    invoke-direct {p0, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 1326
    :goto_5
    const-string v7, "dir_crypto"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "encrypt"

    aput-object v9, v8, v6

    const-string v6, ""

    aput-object v6, v8, v5

    const-string v5, "/mnt/secure/staging"

    aput-object v5, v8, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v12

    const/4 v5, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-direct {p0, v7, v8}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 1310
    :catch_0
    move-exception v0

    .line 1312
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doEncryption Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 1322
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0, v11}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 1323
    const-string v7, "free"

    invoke-direct {p0, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto :goto_5
.end method

.method private doMountEcryptfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIII)V
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "mountPoint"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "mountAndEncrypt"    # Z
    .param p5, "excludeMediaTypes"    # I
    .param p6, "containerId"    # I
    .param p7, "state"    # I

    .prologue
    .line 1341
    const-string v1, "dir_crypto"

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "mount"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object p2, v2, v0

    const/4 v0, 0x3

    new-instance v3, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-virtual {p0, p3}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x6

    if-eqz p4, :cond_0

    const-string v0, "1"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1342
    return-void

    .line 1341
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private doMountPointMounted(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1395
    const-string v0, "dir_crypto"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "isPathMounted"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1396
    return-void
.end method

.method private doUnMountEcryptfs(Ljava/lang/String;II)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uninstallOrStop"    # I
    .param p3, "containerId"    # I

    .prologue
    .line 1372
    const-string v0, "dir_crypto"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "unmount"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1373
    return-void
.end method

.method private doUnMountEcryptfs(Ljava/lang/String;IIZ)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uninstallOrStop"    # I
    .param p3, "containerId"    # I
    .param p4, "force"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1377
    if-nez p4, :cond_0

    .line 1378
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DirEncryptServiceHelper;->doUnMountEcryptfs(Ljava/lang/String;II)V

    .line 1382
    :goto_0
    return-void

    .line 1381
    :cond_0
    const-string v0, "dir_crypto"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "unmount"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private doWorkForPassword(Ljava/lang/String;)V
    .locals 13
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1003
    if-nez p1, :cond_0

    .line 1004
    const-string p1, ""

    .line 1006
    :cond_0
    const-string v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1008
    iput-boolean v11, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Z

    .line 1009
    const-string v6, "dir_crypto"

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "password"

    aput-object v8, v7, v11

    invoke-direct {p0, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1048
    :goto_0
    return-void

    .line 1010
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Z

    if-nez v6, :cond_9

    .line 1013
    new-instance v1, Ljava/io/File;

    const-string v6, "/efs/"

    const-string v7, "edk_p_sd"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    .local v1, "f":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/system/"

    const-string v7, "edk_p_sd"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    .local v2, "f2":Ljava/io/File;
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v3

    .line 1016
    .local v3, "lockPasswordEnabled":Z
    const-string v6, "security.mdpp"

    const-string v7, "None"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1017
    .local v0, "MDPP_PROPERTY":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1019
    .local v4, "mdppUsable":Z
    const-string v6, "Ready"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Enforcing"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Enabled"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1020
    :cond_2
    const/4 v4, 0x1

    .line 1023
    :cond_3
    if-eqz v3, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    if-eqz v4, :cond_8

    .line 1024
    :cond_5
    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Z

    .line 1026
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getNeedToCreateKey()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1028
    const-string v6, "dir_crypto"

    new-array v7, v12, [Ljava/lang/Object;

    const-string/jumbo v8, "ssMigration"

    aput-object v8, v7, v11

    new-instance v8, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1029
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v6}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v5

    .line 1030
    .local v5, "state":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "mounted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1031
    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    .line 1032
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCard()V

    .line 1042
    .end local v5    # "state":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v11}, Lcom/android/server/DirEncryptServiceHelper;->setNeedToCreateKey(Z)V

    goto/16 :goto_0

    .line 1034
    .restart local v5    # "state":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1037
    .end local v5    # "state":Ljava/lang/String;
    :cond_7
    const-string v6, "dir_crypto"

    new-array v7, v12, [Ljava/lang/Object;

    const-string v8, "password"

    aput-object v8, v7, v11

    new-instance v8, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1040
    :cond_8
    const-string v6, "dir_crypto"

    new-array v7, v12, [Ljava/lang/Object;

    const-string v8, "password"

    aput-object v8, v7, v11

    new-instance v8, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1045
    .end local v0    # "MDPP_PROPERTY":Ljava/lang/String;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "f2":Ljava/io/File;
    .end local v3    # "lockPasswordEnabled":Z
    .end local v4    # "mdppUsable":Z
    :cond_9
    const-string v6, "dir_crypto"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "password"

    aput-object v8, v7, v11

    const-string v8, ""

    aput-object v8, v7, v10

    new-instance v8, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v8, v7, v12

    invoke-direct {p0, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1046
    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Z

    goto/16 :goto_0
.end method

.method private doWorkForUSBState(Ljava/lang/String;)V
    .locals 10
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 1146
    const-string/jumbo v5, "vold.decrypt"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1147
    .local v1, "encryptBoot":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1148
    const-string v3, "Do not work if encryption lock page"

    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1291
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    const-string/jumbo v5, "unmounted"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v5}, Landroid/dirEncryption/DirEncryptionWrapper;->getUserDiff()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1157
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    if-ne v5, v3, :cond_3

    .line 1158
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    .line 1159
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1162
    :cond_3
    const-string v3, "clearNotification"

    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1163
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 1165
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v3, v4}, Landroid/dirEncryption/DirEncryptionWrapper;->setUserDiff(Z)V

    .line 1168
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1172
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v5, "checking"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1185
    const-string v3, "clearNotification"

    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1186
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 1188
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    .line 1190
    .local v2, "lockPasswordEnabled":Z
    iget-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    if-eqz v3, :cond_5

    .line 1191
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1193
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1194
    :cond_5
    if-eqz v2, :cond_6

    iget-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Z

    if-eqz v3, :cond_0

    .line 1195
    :cond_6
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v3}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1196
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1198
    :cond_7
    const-string v3, "encPrefs Not found"

    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1201
    .end local v2    # "lockPasswordEnabled":Z
    :cond_8
    const-string v5, "MoveMount"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1210
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal()I

    move-result v5

    if-ne v5, v8, :cond_b

    .line 1211
    iget-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    if-eqz v5, :cond_9

    .line 1212
    const-string v3, "looks like encryption policies were received while SD card decryption was on going!!"

    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1213
    const-string/jumbo v3, "success"

    invoke-direct {p0, v8, v4, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 1214
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    .line 1215
    invoke-direct {p0, v4}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 1216
    const-string v3, "Mount"

    invoke-direct {p0, v9, v3}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1218
    :cond_9
    const-string v5, "Since encrypt is ON: final mount command"

    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1219
    const-string v5, "dir_crypto"

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "mount"

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v7}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, ""

    aput-object v7, v6, v8

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardMediaExclusionInternal()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_a

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v9

    invoke-direct {p0, v5, v6}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    move v3, v4

    goto :goto_1

    .line 1223
    :cond_b
    const-string v3, "Since encrypt is OFF: no final mount command"

    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1224
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesApplied()Z

    .line 1226
    invoke-direct {p0, v4}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 1227
    const-string v3, "Mount"

    invoke-direct {p0, v9, v3}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 1229
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v3}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    if-eqz v3, :cond_0

    .line 1230
    const-string/jumbo v3, "success"

    invoke-direct {p0, v8, v4, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 1231
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto/16 :goto_0

    .line 1234
    :cond_c
    const-string v5, "mounted"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1235
    const-string v3, "Update SD card encryption status"

    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1236
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal()I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 1237
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesApplied()Z

    .line 1238
    invoke-direct {p0, v4}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 1239
    const-string v3, "free"

    invoke-direct {p0, v9, v3}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 1241
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v3}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    if-eqz v3, :cond_0

    .line 1242
    const-string/jumbo v3, "success"

    invoke-direct {p0, v8, v4, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 1243
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto/16 :goto_0

    .line 1246
    :cond_d
    const-string v5, "removed"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1250
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 1251
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1252
    iput v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1253
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    .line 1255
    const-string v3, "SD card removed"

    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1256
    const-string v3, "clearNotification"

    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1257
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 1259
    invoke-direct {p0, v4}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 1260
    const-string v3, "free"

    invoke-direct {p0, v4, v3}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 1263
    :try_start_1
    const-string v3, "SD card removed, removing the hidden drive if any"

    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1264
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountHiddenVolume()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1265
    :catch_1
    move-exception v0

    .line 1266
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1269
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e
    const-string/jumbo v5, "unmounted"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1270
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    .line 1271
    const-string v5, "SD card unmounted"

    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1272
    iget v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v5, :cond_f

    .line 1273
    const-string v5, "clearNotification"

    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1274
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 1277
    :cond_f
    iget-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    if-ne v5, v3, :cond_0

    .line 1278
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 1280
    const/16 v3, 0xa

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1282
    :cond_10
    const-string v3, "bad_removal"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1283
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 1284
    const-string v3, "SD card bad removed"

    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1285
    iget v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v3, :cond_0

    .line 1286
    const-string v3, "clearNotification"

    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1287
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 1288
    const-string v3, "free"

    invoke-direct {p0, v4, v3}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getFullStorageCardEncryptionInternal()I
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    return v0
.end method

.method private getRemoteProgressView(Ljava/lang/String;II)Landroid/widget/RemoteViews;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "reqEnc"    # I
    .param p3, "progress"    # I

    .prologue
    const v4, 0x10203bc

    .line 1402
    const-string v0, ""

    .line 1403
    .local v0, "progressText":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    if-nez v1, :cond_0

    .line 1404
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x10900b6

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    .line 1407
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 1408
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x108032b

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1409
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10408e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1414
    :goto_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x10203bd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1415
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x10203be

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 1417
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    return-object v1

    .line 1411
    :cond_1
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x10802b8

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1412
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10408ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 2

    .prologue
    .line 1115
    const/4 v0, 0x0

    .line 1117
    .local v0, "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1118
    const-string v1, "EncPrefs found"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1119
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 1124
    :goto_0
    return-object v0

    .line 1121
    :cond_0
    const-string v1, "EncPrefs not found"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSecurityIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1421
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1422
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "adminStart"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1423
    return-object v0
.end method

.method private getStorageCardEncryptionInternal()I
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    return v0
.end method

.method private getStorageCardMediaExclusionInternal()I
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    return v0
.end method

.method private isAdminApplied()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 1087
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 1088
    .local v0, "adminPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1089
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    .line 1091
    .local v2, "isDisabledByAdmin":Z
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1092
    iput v5, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 1093
    const/4 v3, 0x4

    iput v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 1096
    :cond_0
    iget v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v5, v3, :cond_1

    .line 1097
    const/4 v2, 0x1

    .line 1100
    :cond_1
    return v2
.end method

.method private isEncryptionApplied()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1104
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 1106
    .local v0, "pol":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v2

    if-ne v2, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->getDefaultEnc()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1111
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 954
    sget-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_0
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 957
    sget-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGE:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_0
    return-void
.end method

.method private notifyEncryptionStatusChanged(ILjava/lang/String;)V
    .locals 7
    .param p1, "operation"    # I
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 986
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyEncryptionStatusChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 987
    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 988
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 989
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    .local v0, "bl":Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    :try_start_1
    iget-object v4, v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;->mListener:Landroid/os/storage/IDirEncryptServiceListener;

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v6}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, p1, p2}, Landroid/os/storage/IDirEncryptServiceListener;->onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 988
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 992
    :catch_0
    move-exception v3

    .line 993
    .local v3, "rex":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "Listener dead"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 994
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 999
    .end local v0    # "bl":Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    .end local v2    # "i":I
    .end local v3    # "rex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 995
    .restart local v0    # "bl":Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    .restart local v2    # "i":I
    :catch_1
    move-exception v1

    .line 996
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener failed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 999
    .end local v0    # "bl":Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1000
    return-void
.end method

.method private varargs sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 976
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v1, :cond_0

    .line 978
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :cond_0
    :goto_0
    return-void

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "DirEncryptService"

    const-string v2, "Failed to send command"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 415
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 416
    return-void
.end method

.method private showNotification(IILjava/lang/String;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "encType"    # I
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    .line 1434
    const/4 v1, 0x0

    .line 1435
    .local v1, "notification":Landroid/app/Notification;
    const/4 v3, 0x0

    .line 1436
    .local v3, "pending":Landroid/app/PendingIntent;
    const-string v5, ""

    .line 1437
    .local v5, "tickerText":Ljava/lang/String;
    const-string v0, ""

    .line 1439
    .local v0, "contentText":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1614
    :goto_0
    :pswitch_0
    const/4 v6, 0x5

    if-eq p1, v6, :cond_0

    .line 1615
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1616
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    .line 1617
    const/4 v6, 0x0

    sput-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    .line 1621
    :cond_0
    if-eqz v1, :cond_1

    .line 1622
    iget v6, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v1, Landroid/app/Notification;->flags:I

    .line 1623
    iget v6, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v1, Landroid/app/Notification;->flags:I

    .line 1624
    iget v6, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v1, Landroid/app/Notification;->flags:I

    .line 1625
    iget v6, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v1, Landroid/app/Notification;->defaults:I

    .line 1626
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1627
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    sget v6, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v2, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1629
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_1
    return-void

    .line 1442
    :pswitch_1
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408e5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1443
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408e6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1445
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getSecurityIntent()Landroid/content/Intent;

    move-result-object v8

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1446
    new-instance v1, Landroid/app/Notification;

    .end local v1    # "notification":Landroid/app/Notification;
    const v6, 0x108032b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v1, v6, v5, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1448
    .restart local v1    # "notification":Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 1453
    :pswitch_2
    const/4 v6, 0x1

    if-ne p2, v6, :cond_3

    .line 1455
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408e9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1456
    const-string/jumbo v6, "success"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1457
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408eb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1458
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1459
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1460
    new-instance v1, Landroid/app/Notification;

    .end local v1    # "notification":Landroid/app/Notification;
    const v6, 0x108032b

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1481
    .restart local v1    # "notification":Landroid/app/Notification;
    :goto_1
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1462
    :cond_2
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1463
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408ec

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1464
    const/4 v6, 0x5

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1465
    new-instance v1, Landroid/app/Notification;

    .end local v1    # "notification":Landroid/app/Notification;
    const v6, 0x108032a

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v1    # "notification":Landroid/app/Notification;
    goto :goto_1

    .line 1468
    :cond_3
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408ed

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1469
    const-string/jumbo v6, "success"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1470
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408ef

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1471
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1472
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1473
    new-instance v1, Landroid/app/Notification;

    .end local v1    # "notification":Landroid/app/Notification;
    const v6, 0x10802b8

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v1    # "notification":Landroid/app/Notification;
    goto :goto_1

    .line 1475
    :cond_4
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1476
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408f0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1477
    const/4 v6, 0x6

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1478
    new-instance v1, Landroid/app/Notification;

    .end local v1    # "notification":Landroid/app/Notification;
    const v6, 0x10802b7

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v1    # "notification":Landroid/app/Notification;
    goto/16 :goto_1

    .line 1485
    :pswitch_3
    const/4 v6, 0x1

    if-ne p2, v6, :cond_5

    .line 1486
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408e9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1487
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408ea

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1488
    new-instance v1, Landroid/app/Notification;

    .end local v1    # "notification":Landroid/app/Notification;
    const v6, 0x108032b

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1494
    .restart local v1    # "notification":Landroid/app/Notification;
    :goto_2
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1495
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1490
    :cond_5
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408ed

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1491
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408ee

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1492
    new-instance v1, Landroid/app/Notification;

    .end local v1    # "notification":Landroid/app/Notification;
    const v6, 0x10802b8

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v1    # "notification":Landroid/app/Notification;
    goto :goto_2

    .line 1499
    :pswitch_4
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1500
    .local v4, "progress":I
    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    monitor-enter v7

    .line 1502
    :try_start_0
    iget-wide v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-nez v6, :cond_6

    .line 1503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    .line 1505
    :cond_6
    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    if-nez v6, :cond_7

    .line 1506
    const/4 v6, 0x1

    if-ne p2, v6, :cond_9

    .line 1507
    new-instance v6, Landroid/app/Notification;

    const v8, 0x1080329

    const-string v9, ""

    iget-wide v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    sput-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    .line 1508
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x10408ea

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1514
    :cond_7
    :goto_3
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const/high16 v10, 0x8000000

    invoke-static {v6, v8, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1516
    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8, v0, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1517
    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    invoke-direct {p0, v0, p2, v4}, Lcom/android/server/DirEncryptServiceHelper;->getRemoteProgressView(Ljava/lang/String;II)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1518
    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    iget v8, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroid/app/Notification;->flags:I

    .line 1520
    if-nez v4, :cond_a

    .line 1522
    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    const/4 v8, 0x0

    iput v8, v6, Landroid/app/Notification;->iconLevel:I

    .line 1523
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->start()V

    .line 1524
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1529
    :cond_8
    :goto_4
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1510
    :cond_9
    :try_start_1
    new-instance v6, Landroid/app/Notification;

    const v8, 0x10802b6

    const-string v9, ""

    iget-wide v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    sput-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    .line 1511
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x10408ee

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1525
    :cond_a
    const/16 v6, 0x64

    if-ne v6, v4, :cond_8

    .line 1526
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    .line 1527
    const/4 v6, 0x0

    sput-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 1534
    .end local v4    # "progress":I
    :pswitch_5
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 1535
    const/4 v6, 0x1

    if-ne p2, v6, :cond_b

    .line 1536
    new-instance v1, Landroid/app/Notification;

    .end local v1    # "notification":Landroid/app/Notification;
    const v6, 0x108032a

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1537
    .restart local v1    # "notification":Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408e9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1538
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1539
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408ec

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1546
    :goto_5
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1547
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1541
    :cond_b
    new-instance v1, Landroid/app/Notification;

    .end local v1    # "notification":Landroid/app/Notification;
    const v6, 0x10802b7

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1542
    .restart local v1    # "notification":Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408ed

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1543
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1544
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408f0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1551
    :pswitch_6
    const/4 v6, 0x1

    if-ne p2, v6, :cond_c

    .line 1552
    new-instance v1, Landroid/app/Notification;

    .end local v1    # "notification":Landroid/app/Notification;
    const v6, 0x108032a

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1553
    .restart local v1    # "notification":Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408e9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1554
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1555
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408ec

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1562
    :goto_6
    const/16 v6, 0xb

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1563
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1557
    :cond_c
    new-instance v1, Landroid/app/Notification;

    .end local v1    # "notification":Landroid/app/Notification;
    const v6, 0x10802b7

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1558
    .restart local v1    # "notification":Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408ed

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1559
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1560
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408f0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1567
    :pswitch_7
    const/4 v6, 0x1

    if-ne p2, v6, :cond_d

    .line 1568
    new-instance v1, Landroid/app/Notification;

    .end local v1    # "notification":Landroid/app/Notification;
    const v6, 0x108032a

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1570
    .restart local v1    # "notification":Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408e9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1571
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1572
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408ec

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1579
    :goto_7
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1574
    :cond_d
    new-instance v1, Landroid/app/Notification;

    .end local v1    # "notification":Landroid/app/Notification;
    const v6, 0x108032a

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1575
    .restart local v1    # "notification":Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408ed

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1576
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1577
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408f0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 1583
    :pswitch_8
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408e7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1584
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408e8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1585
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.dirEncryption.DirEncryptionManager.UNMOUNT_POLICY"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1586
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1587
    new-instance v1, Landroid/app/Notification;

    .end local v1    # "notification":Landroid/app/Notification;
    const v6, 0x108007b

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1588
    .restart local v1    # "notification":Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method

.method private unmountSDCard()V
    .locals 2

    .prologue
    .line 1051
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1054
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    :goto_0
    return-void

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addEscapeChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 1134
    if-nez p1, :cond_0

    .line 1135
    const-string v0, ""

    .line 1138
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public doHandleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 462
    iget-object v11, p0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    monitor-enter v11

    .line 463
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceHelper: command received:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 472
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 549
    const-string v0, "Invalid command!!!"

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    .line 551
    :cond_0
    :goto_0
    monitor-exit v11

    .line 552
    return-void

    .line 474
    :pswitch_0
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 475
    .local v9, "password":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForPassword(Ljava/lang/String;)V

    .line 476
    if-eqz v9, :cond_0

    .line 477
    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    goto :goto_0

    .line 551
    .end local v9    # "password":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 481
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCard()V

    goto :goto_0

    .line 485
    :pswitch_2
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 486
    .local v10, "state":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command.USB_STATE:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 487
    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_0

    .line 491
    .end local v10    # "state":Ljava/lang/String;
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->doEncryption()V

    goto :goto_0

    .line 495
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->doCheckEncMeta()V

    goto :goto_0

    .line 499
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z

    goto :goto_0

    .line 506
    :pswitch_6
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/EcryptfsMountParams;

    .line 507
    .local v8, "mountParams":Lcom/android/server/EcryptfsMountParams;
    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->callback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    .line 510
    iget-object v1, v8, Lcom/android/server/EcryptfsMountParams;->sourcePath:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/server/EcryptfsMountParams;->mountPath:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/server/EcryptfsMountParams;->password:Ljava/lang/String;

    iget-boolean v4, v8, Lcom/android/server/EcryptfsMountParams;->mountAndEncrypt:Z

    iget v5, v8, Lcom/android/server/EcryptfsMountParams;->excludeMediaTypes:I

    iget v6, v8, Lcom/android/server/EcryptfsMountParams;->containerId:I

    iget v7, v8, Lcom/android/server/EcryptfsMountParams;->state:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/DirEncryptServiceHelper;->doMountEcryptfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIII)V

    goto :goto_0

    .line 521
    .end local v8    # "mountParams":Lcom/android/server/EcryptfsMountParams;
    :pswitch_7
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/EcryptfsMountParams;

    .line 522
    .restart local v8    # "mountParams":Lcom/android/server/EcryptfsMountParams;
    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->callback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    .line 524
    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->sourcePath:Ljava/lang/String;

    iget v1, v8, Lcom/android/server/EcryptfsMountParams;->uninstallOrStop:I

    iget v2, v8, Lcom/android/server/EcryptfsMountParams;->containerId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->doUnMountEcryptfs(Ljava/lang/String;II)V

    goto :goto_0

    .line 529
    .end local v8    # "mountParams":Lcom/android/server/EcryptfsMountParams;
    :pswitch_8
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/EcryptfsMountParams;

    .line 530
    .restart local v8    # "mountParams":Lcom/android/server/EcryptfsMountParams;
    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->newPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->callback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    .line 533
    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->password:Ljava/lang/String;

    iget-object v1, v8, Lcom/android/server/EcryptfsMountParams;->newPassword:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/server/EcryptfsMountParams;->mountPath:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/EcryptfsMountParams;->containerId:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->doChangeEncryptPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 539
    .end local v8    # "mountParams":Lcom/android/server/EcryptfsMountParams;
    :pswitch_9
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/EcryptfsMountParams;

    .line 540
    .restart local v8    # "mountParams":Lcom/android/server/EcryptfsMountParams;
    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->callback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    .line 542
    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->sourcePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->doMountPointMounted(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public getAdditionalSpaceRequired()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    return v0
.end method

.method public getCurrentStatus()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    return v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    return v0
.end method

.method public getNeedToCreateKey()Z
    .locals 1

    .prologue
    .line 398
    sget-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    return v0
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .locals 1

    .prologue
    .line 435
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->checkPoliciesApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 24
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 557
    packed-switch p1, :pswitch_data_0

    .line 948
    :cond_0
    :goto_0
    :pswitch_0
    :try_start_0
    monitor-exit v20

    .line 949
    const/16 v19, 0x1

    return v19

    .line 559
    :pswitch_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 560
    const/16 v19, 0x2

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 562
    .local v18, "status":I
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 563
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 564
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    goto :goto_0

    .line 948
    .end local v18    # "status":I
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 565
    .restart local v18    # "status":I
    :cond_1
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 566
    const/16 v19, 0x0

    :try_start_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 567
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Z

    goto :goto_0

    .line 570
    :cond_2
    const-string/jumbo v19, "unable to save DEK"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 571
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_0

    .line 574
    .end local v18    # "status":I
    :cond_3
    const-string v19, "RESP_PWD extra data recvd, please fix!!"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :pswitch_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 579
    const/16 v19, 0x1

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 581
    .restart local v18    # "status":I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 583
    const-string v19, "Unable to update DEK"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 584
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto/16 :goto_0

    .line 586
    :cond_4
    const-string v19, "DEK successfully updated"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 587
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto/16 :goto_0

    .line 590
    .end local v18    # "status":I
    :cond_5
    const-string v19, "RESP_PWD extra data recvd, please fix!!"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 596
    :pswitch_3
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 597
    const/16 v19, 0x1

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 599
    .restart local v18    # "status":I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 601
    const-string v19, "Unable to delete DEK"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 602
    const/16 v19, 0x3

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto/16 :goto_0

    .line 604
    :cond_6
    const-string v19, "DEK successfully deleted"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/DirEncryptPrefs;->clearPrefs()V

    .line 606
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto/16 :goto_0

    .line 609
    .end local v18    # "status":I
    :cond_7
    const-string v19, "RESP_PWD extra data recvd, please fix!!"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 614
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v21, "notification"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 616
    .local v12, "notificationManager":Landroid/app/NotificationManager;
    sget v19, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 617
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto/16 :goto_0

    .line 621
    .end local v12    # "notificationManager":Landroid/app/NotificationManager;
    :pswitch_5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v21, 0x5

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 622
    const/16 v19, 0x2

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 623
    .local v17, "reqEnc":I
    const/16 v19, 0x3

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 624
    .local v5, "containerId":I
    const/16 v19, 0x4

    aget-object v18, p3, v19

    .line 626
    .local v18, "status":Ljava/lang/String;
    const-string/jumbo v19, "success"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 627
    const-string v19, "RESP_ENCRYPT success"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v19, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    const/16 v19, 0x1

    move/from16 v0, v19

    if-lt v5, v0, :cond_8

    .line 634
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v19, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 635
    :catch_0
    move-exception v6

    .line 636
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 640
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 642
    if-nez v17, :cond_9

    const/16 v19, 0x2ab

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 643
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    .line 648
    :goto_1
    new-instance v9, Landroid/content/Intent;

    const-string v19, "android.intent.action.SDCARD_ENCRYPTION_COMPLETED"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v9, "intentEncCompleted":Landroid/content/Intent;
    const-string/jumbo v21, "what"

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const-string v19, "encryption"

    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v21, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 654
    if-nez v17, :cond_b

    const/16 v19, 0x3

    :goto_3
    const-string v21, "done"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 645
    .end local v9    # "intentEncCompleted":Landroid/content/Intent;
    :cond_9
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto :goto_1

    .line 649
    .restart local v9    # "intentEncCompleted":Landroid/content/Intent;
    :cond_a
    const-string v19, "decryption"

    goto :goto_2

    .line 654
    :cond_b
    const/16 v19, 0x2

    goto :goto_3

    .line 659
    .end local v9    # "intentEncCompleted":Landroid/content/Intent;
    :cond_c
    const-string v19, "RESP_ENCRYPT failed"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v19, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    const/16 v19, 0x1

    move/from16 v0, v19

    if-lt v5, v0, :cond_e

    .line 664
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 666
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    const/16 v22, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 677
    :goto_4
    const/16 v19, 0x0

    :try_start_5
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    goto/16 :goto_0

    .line 667
    :catch_1
    move-exception v6

    .line 668
    .restart local v6    # "e":Landroid/os/RemoteException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 672
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    const/16 v22, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 673
    :catch_2
    move-exception v6

    .line 674
    .restart local v6    # "e":Landroid/os/RemoteException;
    :try_start_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_4

    .line 681
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_e
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 682
    const/16 v19, 0x5

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 686
    :goto_5
    const/16 v19, 0x3

    const-string v21, ""

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 687
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 691
    const-string v19, "dir_crypto"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "unmount"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "/mnt/secure/staging"

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 684
    :cond_f
    const/16 v19, 0x6

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_5

    .line 695
    .end local v5    # "containerId":I
    .end local v17    # "reqEnc":I
    .end local v18    # "status":Ljava/lang/String;
    :cond_10
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RESP_ENCRYPT extra data recvd["

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "], please fix!!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 699
    :pswitch_6
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 700
    const-string v19, "DirEncryptServiceVoldResponse.PROGRESS inside"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 701
    const/16 v19, 0x1

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 702
    .restart local v17    # "reqEnc":I
    const/16 v19, 0x2

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 703
    .local v16, "percentage":I
    const/16 v19, 0x5

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 705
    .end local v16    # "percentage":I
    .end local v17    # "reqEnc":I
    :cond_11
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RESP_PROGRESS extra data recvd["

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "], please fix!!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 709
    :pswitch_7
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v21, 0x8

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 710
    const/16 v19, 0x2

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 711
    .restart local v17    # "reqEnc":I
    const/16 v19, 0x5

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 712
    .local v7, "encType":I
    const/16 v19, 0x6

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 714
    .local v11, "needed":I
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 715
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 716
    const/16 v19, 0x6

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 718
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 719
    if-nez v17, :cond_12

    const/16 v19, 0x3

    :goto_6
    const-string v21, "free"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const/16 v19, 0x2

    goto :goto_6

    .line 721
    .end local v7    # "encType":I
    .end local v11    # "needed":I
    .end local v17    # "reqEnc":I
    :cond_13
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RESP_PRESCAN_FULL_ERR extra data recvd["

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "], please fix!!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 725
    :pswitch_8
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v21, 0x8

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 726
    const/16 v19, 0x2

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 727
    .restart local v17    # "reqEnc":I
    const/16 v19, 0x5

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 728
    .restart local v7    # "encType":I
    const/16 v19, 0xb

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 729
    const/16 v19, 0xb

    const-string v21, ""

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 730
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 731
    if-nez v17, :cond_14

    const/16 v19, 0x3

    :goto_7
    const-string v21, "free"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const/16 v19, 0x2

    goto :goto_7

    .line 733
    .end local v7    # "encType":I
    .end local v17    # "reqEnc":I
    :cond_15
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RESP_FILE_OPEN_ERR extra data recvd["

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "], please fix!!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 737
    :pswitch_9
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 738
    const/16 v19, 0x1

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 739
    .local v18, "status":I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_16

    .line 741
    const-string v19, "Unable to ss_migration"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 742
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto/16 :goto_0

    .line 744
    :cond_16
    const-string/jumbo v19, "ss_migration successfully updated"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 745
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto/16 :goto_0

    .line 748
    .end local v18    # "status":I
    :cond_17
    const-string v19, "RESP_SS_MIGRATION extra data recvd, please fix!!"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 752
    :pswitch_a
    const/4 v13, -0x1

    .line 753
    .local v13, "operation":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v21, 0x5

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 754
    const/16 v19, 0x3

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 755
    .restart local v18    # "status":I
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 756
    const/4 v13, 0x2

    .line 757
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesApplied()Z

    move-result v19

    if-eqz v19, :cond_18

    .line 758
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 759
    const/16 v19, 0x2

    const/16 v21, 0x1

    const-string/jumbo v22, "success"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 760
    const-string v19, "Mount"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 762
    :cond_18
    const/16 v19, 0x7

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 763
    const/16 v19, 0x2

    const/16 v21, 0x1

    const-string v22, ""

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 764
    const-string v19, "free"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 766
    .end local v18    # "status":I
    :cond_19
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v21, 0x4

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c

    .line 767
    const/16 v19, 0x3

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 769
    .restart local v5    # "containerId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1a

    if-gtz v5, :cond_0

    .line 770
    :cond_1a
    const/16 v19, 0x2

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 772
    .restart local v17    # "reqEnc":I
    const/16 v19, 0x7

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 773
    if-nez v17, :cond_1b

    const/4 v13, 0x3

    .line 775
    :goto_8
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 776
    const-string v19, "free"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 773
    :cond_1b
    const/4 v13, 0x2

    goto :goto_8

    .line 779
    .end local v5    # "containerId":I
    .end local v17    # "reqEnc":I
    :cond_1c
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RESP_MOUNT extra data recvd["

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "], please fix!!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 783
    .end local v13    # "operation":I
    :pswitch_b
    const/4 v15, -0x1

    .line 784
    .local v15, "operationUnmount":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v21, 0x4

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_20

    .line 785
    const/16 v19, 0x3

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 786
    .restart local v18    # "status":I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1f

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1e

    const/16 v19, 0x1

    aget-object v19, p3, v19

    const-string v21, "/mnt/secure/staging"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v19, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e

    .line 789
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v19, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V

    .line 790
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 807
    :cond_1d
    :goto_9
    const/4 v15, 0x3

    .line 808
    goto/16 :goto_0

    .line 791
    :catch_3
    move-exception v6

    .line 792
    .restart local v6    # "e":Landroid/os/RemoteException;
    :try_start_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_9

    .line 795
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_1e
    const/16 v19, 0x4

    const/16 v21, 0x0

    const-string v22, ""

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto :goto_9

    .line 798
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v19, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    .line 800
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    const/16 v22, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V

    .line 801
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_9

    .line 802
    :catch_4
    move-exception v6

    .line 803
    .restart local v6    # "e":Landroid/os/RemoteException;
    :try_start_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 809
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v18    # "status":I
    :cond_20
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RESP_UNMOUNT extra data recvd["

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "], please fix!!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 814
    .end local v15    # "operationUnmount":I
    :pswitch_c
    const/4 v14, -0x1

    .line 815
    .local v14, "operationChangePassword":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_24

    .line 816
    const/16 v19, 0x1

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 817
    .restart local v18    # "status":I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_23

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v19, v0

    if-eqz v19, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v19, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_22

    .line 820
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v19, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V

    .line 821
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 838
    :cond_21
    :goto_a
    const/16 v14, 0xb

    .line 839
    goto/16 :goto_0

    .line 822
    :catch_5
    move-exception v6

    .line 823
    .restart local v6    # "e":Landroid/os/RemoteException;
    :try_start_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_a

    .line 826
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_22
    const/16 v19, 0x8

    const/16 v21, 0x0

    const-string v22, ""

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto :goto_a

    .line 829
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v19, v0

    if-eqz v19, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v19, v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_21

    .line 831
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    const/16 v22, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V

    .line 832
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_a

    .line 833
    :catch_6
    move-exception v6

    .line 834
    .restart local v6    # "e":Landroid/os/RemoteException;
    :try_start_f
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 840
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v18    # "status":I
    :cond_24
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RESP_CHANGE_ECRYPTFS_PASSWORD extra data recvd["

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "], please fix!!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 845
    .end local v14    # "operationChangePassword":I
    :pswitch_d
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_27

    .line 846
    const/16 v19, 0x1

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 847
    .restart local v18    # "status":I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_26

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v19, v0

    if-eqz v19, :cond_25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v19, v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_25

    .line 850
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v19, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V

    .line 851
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    .line 852
    :catch_7
    move-exception v6

    .line 853
    .restart local v6    # "e":Landroid/os/RemoteException;
    :try_start_11
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 856
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_25
    const/16 v19, 0x9

    const/16 v21, 0x0

    const-string v22, ""

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 859
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v19, v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 861
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    const/16 v22, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V

    .line 862
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    .line 863
    :catch_8
    move-exception v6

    .line 864
    .restart local v6    # "e":Landroid/os/RemoteException;
    :try_start_13
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 869
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v18    # "status":I
    :cond_27
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RESP_MOUNT_PATH_STATUS extra data recvd["

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "], please fix!!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 875
    :pswitch_e
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_2d

    .line 876
    const/16 v19, 0x1

    aget-object v19, p3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 877
    .restart local v18    # "status":I
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 878
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 880
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2a

    .line 881
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    .line 882
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal()I

    move-result v19

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_28

    .line 883
    new-instance v8, Landroid/content/Intent;

    const-string v19, "android.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 884
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v19, 0x10400000

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 887
    new-instance v10, Landroid/content/Intent;

    const-string v19, "android.intent.action.SDCARD_ENCRYPTION_REQUIRED"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 888
    .local v10, "intentEncRequired":Landroid/content/Intent;
    const-string v19, "required"

    const-string v21, "decryption"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v21, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 892
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "intentEncRequired":Landroid/content/Intent;
    :cond_28
    const-string v19, "security.mdpp"

    const-string v21, "None"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 893
    .local v4, "MDPP_PROPERTY":Ljava/lang/String;
    const-string v19, "Enabled"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_29

    .line 894
    const-string v19, "CC mode - Pop up SD card encryption"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 895
    new-instance v8, Landroid/content/Intent;

    const-string v19, "android.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 896
    .restart local v8    # "intent":Landroid/content/Intent;
    const/high16 v19, 0x10400000

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 899
    new-instance v10, Landroid/content/Intent;

    const-string v19, "android.intent.action.SDCARD_ENCRYPTION_REQUIRED"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 900
    .restart local v10    # "intentEncRequired":Landroid/content/Intent;
    const-string v19, "required"

    const-string v21, "encryption"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v21, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 904
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "intentEncRequired":Landroid/content/Intent;
    :cond_29
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 909
    .end local v4    # "MDPP_PROPERTY":Ljava/lang/String;
    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal()I

    move-result v19

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_2b

    .line 910
    new-instance v8, Landroid/content/Intent;

    const-string v19, "android.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 911
    .restart local v8    # "intent":Landroid/content/Intent;
    const/high16 v19, 0x10400000

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 914
    new-instance v10, Landroid/content/Intent;

    const-string v19, "android.intent.action.SDCARD_ENCRYPTION_REQUIRED"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 915
    .restart local v10    # "intentEncRequired":Landroid/content/Intent;
    const-string v19, "required"

    const-string v21, "encryption"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v21, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 919
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "intentEncRequired":Landroid/content/Intent;
    :cond_2b
    const-string v19, "security.mdpp"

    const-string v21, "None"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 920
    .restart local v4    # "MDPP_PROPERTY":Ljava/lang/String;
    const-string v19, "Enabled"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2c

    .line 921
    const-string v19, "CC mode - Pop up SD card decryption"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 922
    new-instance v8, Landroid/content/Intent;

    const-string v19, "android.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 923
    .restart local v8    # "intent":Landroid/content/Intent;
    const/high16 v19, 0x10400000

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 926
    new-instance v10, Landroid/content/Intent;

    const-string v19, "android.intent.action.SDCARD_ENCRYPTION_REQUIRED"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 927
    .restart local v10    # "intentEncRequired":Landroid/content/Intent;
    const-string v19, "required"

    const-string v21, "decryption"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v21, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 932
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "intentEncRequired":Landroid/content/Intent;
    :cond_2c
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 933
    const/16 v19, 0x3

    const-string v21, "done"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 934
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto/16 :goto_0

    .line 939
    .end local v4    # "MDPP_PROPERTY":Ljava/lang/String;
    .end local v18    # "status":I
    :cond_2d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RESP_ENC_META_CHECK extra data recvd["

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "], please fix!!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 940
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 941
    const/16 v19, 0x3

    const-string v21, "free"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x2a8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_4
        :pswitch_e
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method ready()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 424
    return-void
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 439
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 440
    :try_start_0
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    .local v0, "bl":Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    :try_start_1
    invoke-interface {p1}, Landroid/os/storage/IDirEncryptServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 443
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 448
    return-void

    .line 444
    :catch_0
    move-exception v1

    .line 445
    .local v1, "rex":Landroid/os/RemoteException;
    const-string v2, "Failed to link to listener death"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    .end local v0    # "bl":Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    .end local v1    # "rex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public registerStorageEventListener()Z
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;->registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    const-string v0, "RegisterStorageEventListner fail"

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 387
    const/4 v0, 0x0

    .line 390
    :goto_0
    return v0

    .line 389
    :cond_0
    const-string v0, "RegisterStorageEventListner success"

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 390
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBootComplted(Z)V
    .locals 0
    .param p1, "in"    # Z

    .prologue
    .line 419
    iput-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    .line 420
    return-void
.end method

.method public setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    .locals 0
    .param p1, "connector"    # Lcom/android/server/NativeDaemonConnector;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 428
    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 431
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    .line 432
    return-void
.end method

.method public setNeedToCreateKey(Z)V
    .locals 0
    .param p1, "in"    # Z

    .prologue
    .line 394
    sput-boolean p1, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    .line 395
    return-void
.end method

.method public unmountSDCardByAdmin()V
    .locals 4

    .prologue
    .line 1067
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, "state":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1069
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SD card  : State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / Admin policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / Encrypted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isEncryptionApplied()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1070
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isEncryptionApplied()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1071
    const-string v2, "Unmount SD Card By Admin"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1076
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 1078
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 451
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 452
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;

    .line 453
    .local v0, "bl":Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;->mListener:Landroid/os/storage/IDirEncryptServiceListener;

    if-ne v2, p1, :cond_0

    .line 454
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 455
    monitor-exit v3

    .line 459
    .end local v0    # "bl":Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    :goto_0
    return-void

    .line 458
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
