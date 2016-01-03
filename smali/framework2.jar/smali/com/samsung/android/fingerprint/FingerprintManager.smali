.class public Lcom/samsung/android/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;,
        Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;,
        Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    }
.end annotation


# static fields
.field public static final CLIENTSPEC_KEY_ACCURACY:Ljava/lang/String; = "request_accuracy"

.field public static final CLIENTSPEC_KEY_ALLOW_INDEXES:Ljava/lang/String; = "request_template_index_list"

.field public static final CLIENTSPEC_KEY_APPNAME:Ljava/lang/String; = "appName"

.field public static final CLIENTSPEC_KEY_BACKGROUND:Ljava/lang/String; = "background"

.field public static final CLIENTSPEC_KEY_DEMANDED_PROPERTY_NAME:Ljava/lang/String; = "propertyName"

.field public static final CLIENTSPEC_KEY_DEMAND_EXTRA_EVENT:Ljava/lang/String; = "demandExtraEvent"

.field public static final CLIENTSPEC_KEY_OWN_NAME:Ljava/lang/String; = "ownName"

.field public static final CLIENTSPEC_KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final CLIENTSPEC_KEY_SECURITY_LEVEL:Ljava/lang/String; = "securityLevel"

.field public static final CLIENTSPEC_KEY_USE_MANUAL_TIMEOUT:Ljava/lang/String; = "useManualTimeout"

.field private static final DEBUG:Z

.field private static final ENROLL_FINISHED:Ljava/lang/String; = "com.samsung.android.fingerprint.action.ENROLL_FINISHED"

.field private static final ERROR_MSG_SERVICE_NOT_FOUND:Ljava/lang/String; = "FingerprintService is not running!"

.field public static final EXTRAS_KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final FINGERPRINT_MANAGER_SERVICE:Ljava/lang/String; = "com.sec.feature.fingerprint_manager_service"

.field public static final FINGER_ALL:I = 0x15

.field public static final FINGER_LEFT_INDEX:I = 0x2

.field public static final FINGER_LEFT_INDEX_2ND:I = 0xc

.field public static final FINGER_LEFT_LITTLE:I = 0x5

.field public static final FINGER_LEFT_LITTLE_2ND:I = 0xf

.field public static final FINGER_LEFT_MIDDLE:I = 0x3

.field public static final FINGER_LEFT_MIDDLE_2ND:I = 0xd

.field public static final FINGER_LEFT_RING:I = 0x4

.field public static final FINGER_LEFT_RING_2ND:I = 0xe

.field public static final FINGER_LEFT_THUMB:I = 0x1

.field public static final FINGER_LEFT_THUMB_2ND:I = 0xb

.field public static final FINGER_NOT_SPECIFIED:I = 0x0

.field public static final FINGER_NUMBER_FOR_ONE:I = 0xa

.field public static final FINGER_PERMISSION_DELIMITER:Ljava/lang/String; = ","

.field public static final FINGER_RIGHT_INDEX:I = 0x7

.field public static final FINGER_RIGHT_INDEX_2ND:I = 0x11

.field public static final FINGER_RIGHT_LITTLE:I = 0xa

.field public static final FINGER_RIGHT_LITTLE_2ND:I = 0x14

.field public static final FINGER_RIGHT_MIDDLE:I = 0x8

.field public static final FINGER_RIGHT_MIDDLE_2ND:I = 0x12

.field public static final FINGER_RIGHT_RING:I = 0x9

.field public static final FINGER_RIGHT_RING_2ND:I = 0x13

.field public static final FINGER_RIGHT_THUMB:I = 0x6

.field public static final FINGER_RIGHT_THUMB_2ND:I = 0x10

.field public static final SECURITY_LEVEL_HIGH:I = 0x2

.field public static final SECURITY_LEVEL_LOW:I = 0x0

.field public static final SECURITY_LEVEL_REGULAR:I = 0x1

.field public static final SECURITY_LEVEL_VERY_HIGH:I = 0x3

.field public static final SERVICE_NAME:Ljava/lang/String; = "fingerprint_service"

.field private static final START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "FingerprintManager"

.field private static isEnroll:Z

.field private static mCallerActivity:Landroid/app/Activity;

.field private static mCallerApplication:Landroid/app/Application;

.field private static mContext:Landroid/content/Context;

.field private static mEnrollFinishResult:I

.field private static mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

.field private static mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

.field private static mIndex:I

.field private static mSecurityLevel:I

.field private static mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

.field private static mStringId:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;


# instance fields
.field private mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field final mHandler:Landroid/os/Handler;

.field private mOwnName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 52
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    .line 55
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.activity.StartEnrollActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    .line 148
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 149
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mStringId:Ljava/lang/String;

    .line 151
    sput v6, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    .line 152
    sput v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    .line 155
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .line 158
    sput v6, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollFinishResult:I

    .line 166
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 168
    sput-boolean v2, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnroll:Z

    return-void

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    .line 730
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$2;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1292
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$3;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    .line 206
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 208
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/fingerprint/FingerprintManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/fingerprint/FingerprintManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Exception;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mStringId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    return v0
.end method

.method private clearEnrollStatus()V
    .locals 1

    .prologue
    .line 1535
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnroll:Z

    .line 1536
    return-void
.end method

.method private declared-synchronized ensureServiceConnected()V
    .locals 3

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_2

    .line 248
    const-string v1, "fingerprint_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :try_start_1
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-eqz v1, :cond_1

    .line 251
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 254
    :cond_1
    :try_start_2
    const-string v1, "FingerprintManager"

    const-string v2, "ensureServiceConnected: mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "ensureServiceConnected:"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 247
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 261
    :cond_2
    :try_start_4
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "mService is not valid so retieve the service again."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v1, "fingerprint_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 266
    :try_start_5
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-eqz v1, :cond_3

    .line 267
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 273
    :catch_1
    move-exception v0

    .line 274
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v1, "ensureServiceConnected:"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 270
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_7
    const-string v1, "FingerprintManager"

    const-string v2, "ensureServiceConnected: mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method

.method public static getImageQualityAnimation(ILandroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 8
    .param p0, "quality"    # I
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1660
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1661
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1662
    .local v3, "mRes":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 1663
    .local v4, "result":I
    const/4 v1, 0x0

    .line 1666
    .local v1, "mAni":Landroid/graphics/drawable/AnimationDrawable;
    :try_start_0
    const-string v5, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1671
    :goto_0
    if-nez v3, :cond_0

    .line 1672
    const-string v5, "FingerprintManager"

    const-string/jumbo v6, "mRes is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    const/4 v5, 0x0

    .line 1710
    :goto_1
    return-object v5

    .line 1667
    :catch_0
    move-exception v0

    .line 1668
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "FingerprintManager"

    const-string v6, "getImageQualityAnimation, NameNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1676
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 1704
    const-string/jumbo v5, "spass_errimage_default"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1707
    :goto_2
    if-eqz v4, :cond_1

    .line 1708
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "mAni":Landroid/graphics/drawable/AnimationDrawable;
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .restart local v1    # "mAni":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    move-object v5, v1

    .line 1710
    goto :goto_1

    .line 1678
    :sswitch_0
    const-string/jumbo v5, "spass_errimage_nomatch"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1679
    goto :goto_2

    .line 1681
    :sswitch_1
    const-string/jumbo v5, "spass_errimage_short"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1682
    goto :goto_2

    .line 1685
    :sswitch_2
    const-string/jumbo v5, "spass_errimage_speed"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1686
    goto :goto_2

    .line 1689
    :sswitch_3
    const-string/jumbo v5, "spass_errimage_left"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1690
    goto :goto_2

    .line 1692
    :sswitch_4
    const-string/jumbo v5, "spass_errimage_right"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1693
    goto :goto_2

    .line 1695
    :sswitch_5
    const-string/jumbo v5, "spass_errimage_wet"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1696
    goto :goto_2

    .line 1698
    :sswitch_6
    const-string/jumbo v5, "spass_errimage_diagonal"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1699
    goto :goto_2

    .line 1701
    :sswitch_7
    const-string/jumbo v5, "spass_errimage_homekey"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1702
    goto :goto_2

    .line 1676
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x200 -> :sswitch_7
        0x1000 -> :sswitch_3
        0x8000 -> :sswitch_6
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x1000000 -> :sswitch_5
    .end sparse-switch
.end method

.method public static getImageQualityFeedback(I)I
    .locals 1
    .param p0, "quality"    # I

    .prologue
    .line 1572
    const/4 v0, 0x0

    .line 1573
    .local v0, "result":I
    sparse-switch p0, :sswitch_data_0

    .line 1620
    :goto_0
    return v0

    .line 1575
    :sswitch_0
    const v0, 0x1040025

    .line 1576
    goto :goto_0

    .line 1579
    :sswitch_1
    const v0, 0x1040027

    .line 1580
    goto :goto_0

    .line 1582
    :sswitch_2
    const v0, 0x1040028

    .line 1583
    goto :goto_0

    .line 1585
    :sswitch_3
    const v0, 0x1040029

    .line 1586
    goto :goto_0

    .line 1588
    :sswitch_4
    const v0, 0x104002a

    .line 1589
    goto :goto_0

    .line 1591
    :sswitch_5
    const v0, 0x104002a

    .line 1592
    goto :goto_0

    .line 1594
    :sswitch_6
    const v0, 0x104002b

    .line 1595
    goto :goto_0

    .line 1597
    :sswitch_7
    const v0, 0x104002c

    .line 1598
    goto :goto_0

    .line 1600
    :sswitch_8
    const v0, 0x104002d

    .line 1601
    goto :goto_0

    .line 1603
    :sswitch_9
    const v0, 0x104002e

    .line 1604
    goto :goto_0

    .line 1606
    :sswitch_a
    const v0, 0x104002f

    .line 1607
    goto :goto_0

    .line 1609
    :sswitch_b
    const v0, 0x1040030

    .line 1610
    goto :goto_0

    .line 1612
    :sswitch_c
    const v0, 0x1040031

    .line 1613
    goto :goto_0

    .line 1615
    :sswitch_d
    const v0, 0x1040039

    .line 1616
    goto :goto_0

    .line 1573
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_8
        0x2 -> :sswitch_3
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x200 -> :sswitch_d
        0x1000 -> :sswitch_4
        0x2000 -> :sswitch_1
        0x8000 -> :sswitch_c
        0x10000 -> :sswitch_a
        0x20000 -> :sswitch_5
        0x40000 -> :sswitch_6
        0x80000 -> :sswitch_9
        0x1000000 -> :sswitch_b
        0x2000000 -> :sswitch_7
    .end sparse-switch
.end method

.method public static getImageQualityIcon(I)I
    .locals 1
    .param p0, "quality"    # I

    .prologue
    .line 1624
    const/4 v0, 0x0

    .line 1625
    .local v0, "result":I
    sparse-switch p0, :sswitch_data_0

    .line 1653
    const v0, 0x1080312

    .line 1656
    :goto_0
    return v0

    .line 1627
    :sswitch_0
    const v0, 0x108031c

    .line 1628
    goto :goto_0

    .line 1630
    :sswitch_1
    const v0, 0x1080314

    .line 1631
    goto :goto_0

    .line 1634
    :sswitch_2
    const v0, 0x1080316

    .line 1635
    goto :goto_0

    .line 1638
    :sswitch_3
    const v0, 0x1080315

    .line 1639
    goto :goto_0

    .line 1641
    :sswitch_4
    const v0, 0x108031d

    .line 1642
    goto :goto_0

    .line 1644
    :sswitch_5
    const v0, 0x1080317

    .line 1645
    goto :goto_0

    .line 1647
    :sswitch_6
    const v0, 0x1080313

    .line 1648
    goto :goto_0

    .line 1650
    :sswitch_7
    const v0, 0x108031b

    .line 1651
    goto :goto_0

    .line 1625
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x200 -> :sswitch_7
        0x1000 -> :sswitch_3
        0x8000 -> :sswitch_6
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x1000000 -> :sswitch_5
    .end sparse-switch
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    const-class v0, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {p0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "SecurityLevel"    # I

    .prologue
    .line 179
    const-class v1, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "SecurityLevel"    # I
    .param p2, "ownName"    # Ljava/lang/String;

    .prologue
    .line 183
    const-class v3, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v3

    if-nez p0, :cond_0

    .line 184
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "context must not be null"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 187
    :cond_0
    :try_start_1
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v2, :cond_1

    if-eqz p0, :cond_1

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 189
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_1

    const-string v2, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 191
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;-><init>(Landroid/os/Handler;)V

    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 192
    sput p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    .line 195
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    sput-object p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 196
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_2

    .line 197
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->startFingerprintManagerService()V

    .line 199
    :cond_2
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v2, :cond_3

    .line 200
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {v2, p2}, Lcom/samsung/android/fingerprint/FingerprintManager;->setOwnName(Ljava/lang/String;)V

    .line 202
    :cond_3
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ownName"    # Ljava/lang/String;

    .prologue
    .line 175
    const-class v0, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isEnrolling()Z
    .locals 1

    .prologue
    .line 1539
    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnroll:Z

    return v0
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1129
    return-void
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 1139
    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1140
    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1144
    :goto_1
    return-void

    .line 1140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1142
    :cond_1
    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "extraInfo2"    # Ljava/lang/String;

    .prologue
    .line 1147
    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1148
    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1152
    :goto_1
    return-void

    .line 1148
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1150
    :cond_1
    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private registerActivityLifeCallback()V
    .locals 2

    .prologue
    .line 795
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 796
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "registerActivityLifeCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 799
    :cond_0
    return-void
.end method

.method private setEnrollStatus()V
    .locals 1

    .prologue
    .line 1531
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnroll:Z

    .line 1532
    return-void
.end method

.method private setOwnName(Ljava/lang/String;)V
    .locals 3
    .param p1, "ownName"    # Ljava/lang/String;

    .prologue
    .line 1714
    const-string v0, "FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ownName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    .line 1717
    return-void
.end method

.method private static startFingerprintManagerService()V
    .locals 5

    .prologue
    .line 212
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 215
    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterActivityLifeCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 802
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 803
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "unregisterActivityLifeCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 805
    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    .line 806
    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 808
    :cond_0
    return-void
.end method


# virtual methods
.method public addPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "fingerIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 1017
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1019
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1020
    const-string v2, "addPermission"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1030
    :goto_0
    return v1

    .line 1025
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->addPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "addPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public attachClient(Landroid/os/IBinder;Lcom/samsung/android/fingerprint/IFingerprintClient;)Landroid/os/IBinder;
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;

    .prologue
    const/4 v1, 0x0

    .line 406
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 408
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 409
    const-string v2, "attachClient"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 419
    :goto_0
    return-object v1

    .line 414
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->attachClient(Landroid/os/IBinder;Lcom/samsung/android/fingerprint/IFingerprintClient;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "attachClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public binderDied()V
    .locals 4

    .prologue
    .line 224
    const-string v0, "FingerprintManager"

    const-string v1, "====== binderDied ====="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    .line 226
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$1;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    :cond_0
    return-void
.end method

.method public cancel(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 284
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_1

    .line 285
    const-string v2, "cancel"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 295
    :cond_0
    :goto_0
    return v1

    .line 290
    :cond_1
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->cancel(Landroid/os/IBinder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "cancel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public closeTransaction(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 1104
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1106
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1107
    const-string v2, "closeTransaction"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1117
    :goto_0
    return v1

    .line 1112
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->closeTransaction(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1113
    :catch_0
    move-exception v0

    .line 1114
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "closeTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public detachClient(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 424
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 426
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 427
    const-string v2, "detachClient"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 437
    :goto_0
    return v1

    .line 432
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->detachClient(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "detachClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enroll(Landroid/os/IBinder;Ljava/lang/String;I)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "fingerIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 299
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 301
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 302
    const-string v2, "enroll"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 312
    :goto_0
    return v1

    .line 307
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "enroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enrollForMultiUser(Landroid/os/IBinder;ILjava/lang/String;I)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "fingerIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 350
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 352
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 353
    const-string v2, "enrollForMultiUser"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 363
    :goto_0
    return v1

    .line 358
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->enrollForMultiUser(Landroid/os/IBinder;ILjava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "enrollForMultiUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finishIdentify(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 459
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 461
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 462
    const-string v2, "finishIdentify"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 472
    :goto_0
    return v1

    .line 467
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->finishIdentify(Landroid/os/IBinder;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "finishIdentify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEnrollFinishResult()I
    .locals 1

    .prologue
    .line 1252
    sget v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollFinishResult:I

    return v0
.end method

.method public getEnrolledFingers()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 864
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 866
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 867
    const-string v2, "getEnrolledFingers"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 877
    :goto_0
    return v1

    .line 872
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledFingers(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getEnrolledFingers"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getEnrolledPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 881
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 883
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 884
    const-string v2, "getEnrolledPermissions"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 894
    :goto_0
    return-object v1

    .line 889
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getEnrolledPermissions"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getEnrolledUserCount()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 915
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 917
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 918
    const-string v2, "getEnrolledUserCount"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 928
    :goto_0
    return v1

    .line 923
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledUserCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 924
    :catch_0
    move-exception v0

    .line 925
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getEnrolledUserCount"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getEnrolledUsers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 898
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 900
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 901
    const-string v2, "getEnrolledUsers"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 911
    :goto_0
    return-object v1

    .line 906
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledUsers()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getEnrolledUsers"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getIndexName(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 1543
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1544
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1545
    const-string v2, "getIndexName"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1553
    :goto_0
    return-object v1

    .line 1549
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getIndexName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1550
    :catch_0
    move-exception v0

    .line 1551
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getIndexName"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getLastImageQuality(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 627
    const/4 v1, 0x0

    .line 628
    .local v1, "imageId":I
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 629
    const-string v2, "getLastImageQuality"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 630
    const/4 v2, 0x0

    .line 642
    :goto_0
    return v2

    .line 632
    :cond_0
    if-nez p1, :cond_1

    .line 633
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 636
    :cond_1
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getLastImageQuality(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityIcon(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 641
    :goto_1
    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastImageQuality: return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 642
    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getQualityMessage"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public getLastImageQualityMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 610
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_1

    .line 611
    const-string v2, "getLastImageQualityMessage"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 622
    :cond_0
    :goto_0
    return-object v1

    .line 614
    :cond_1
    if-eqz p1, :cond_0

    .line 618
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getLastImageQualityMessage(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getLastImageQualityMessage"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getSensorServiceVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1068
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1070
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 1071
    const-string v1, "getSensorServiceVersion"

    const/4 v2, 0x0

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1072
    const-string v1, ""

    .line 1081
    :goto_0
    return-object v1

    .line 1076
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getSensorServiceVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "getSensorServiceVersion"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1081
    const-string v1, ""

    goto :goto_0
.end method

.method public getVersion()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1051
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1053
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1054
    const-string v2, "getVersion"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1064
    :goto_0
    return v1

    .line 1059
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getVersion()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getVersion"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public hasPendingCommand()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1034
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1036
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1037
    const-string v2, "hasPendingCommand"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1047
    :goto_0
    return v1

    .line 1042
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->hasPendingCommand()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "hasPendingCommand"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public identify(Landroid/os/IBinder;Ljava/lang/String;)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 505
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 507
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 508
    const-string v2, "identify"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 518
    :goto_0
    return v1

    .line 513
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identify(Landroid/os/IBinder;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "identify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 539
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 541
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 542
    const-string v2, "identifyForMultiUser"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 552
    :goto_0
    return v1

    .line 547
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "identifyForMultiUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public identifyForMultiUser(Landroid/os/IBinder;Ljava/lang/String;)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 522
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 524
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 525
    const-string v2, "identifyForMultiUser"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 535
    :goto_0
    return v1

    .line 530
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    const/4 v3, -0x1

    invoke-interface {v2, p1, v3, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "identifyForMultiUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;
    .param p3, "attribute"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 476
    if-nez p1, :cond_0

    .line 477
    const-string v2, "identifyWithDialog"

    const-string v3, "Context is null"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 501
    :goto_0
    return v1

    .line 480
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 481
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_1

    .line 482
    const-string v2, "identifyWithDialog"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_1
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 486
    check-cast v1, Landroid/app/Activity;

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    move-object v1, p1

    .line 487
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 488
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerActivityLifeCallback()V

    .line 494
    :goto_1
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyWithDialog(Ljava/lang/String;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 490
    :cond_2
    sput-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 491
    sput-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    goto :goto_1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    if-eqz v1, :cond_3

    .line 497
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    .line 499
    :cond_3
    const-string v1, "identifyWithDialog"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 501
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnrolledPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 932
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 934
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 935
    const-string v2, "isEnrolledPermission"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 945
    :goto_0
    return v1

    .line 940
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isEnrolledPermission(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "isEnrolledPermission"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public isSensorReady()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1396
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1398
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1399
    const-string v2, "isSensorReady"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1409
    :goto_0
    return v1

    .line 1404
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isSensorReady()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1405
    :catch_0
    move-exception v0

    .line 1406
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "isSensorReady"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyAlternativePasswordBegin()V
    .locals 4

    .prologue
    .line 1481
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1483
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 1484
    const-string/jumbo v1, "notifyAlternativePasswordBegin"

    const/4 v2, 0x0

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1488
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyAlternativePasswordBegin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1492
    :goto_0
    return-void

    .line 1489
    :catch_0
    move-exception v0

    .line 1490
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "notifyAlternativePasswordBegin"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyAppActivityState(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "extInfo"    # Landroid/os/Bundle;

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 782
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    .line 783
    const-string/jumbo v1, "notifyAppActivityState"

    const/4 v2, 0x0

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 792
    :goto_0
    return-void

    .line 787
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyApplicationState(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "notifyAppActivityState"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyAuthSessionBegin()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1449
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1451
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1452
    const-string/jumbo v2, "notifyAuthSessionBegin"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1461
    :goto_0
    return v1

    .line 1457
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyAuthSessionBegin()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1458
    :catch_0
    move-exception v0

    .line 1459
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "notifyAuthSessionBegin"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyAuthSessionEnd()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1465
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1467
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1468
    const-string/jumbo v2, "notifyAuthSessionEnd"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1477
    :goto_0
    return v1

    .line 1473
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyAuthSessionEnd()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1474
    :catch_0
    move-exception v0

    .line 1475
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "notifyAuthSessionEnd"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyEnrollBegin()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1413
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1415
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1416
    const-string/jumbo v2, "notifyEnrollBegin"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1427
    :goto_0
    return v1

    .line 1421
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->setEnrollStatus()V

    .line 1422
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyEnrollBegin()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1423
    :catch_0
    move-exception v0

    .line 1424
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->clearEnrollStatus()V

    .line 1425
    const-string/jumbo v2, "notifyEnrollBegin"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyEnrollEnd()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1431
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1433
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->clearEnrollStatus()V

    .line 1435
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1436
    const-string/jumbo v2, "notifyEnrollEnd"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1445
    :goto_0
    return v1

    .line 1441
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyEnrollEnd()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1442
    :catch_0
    move-exception v0

    .line 1443
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "notifyEnrollEnd"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public openTransaction(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 1086
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1088
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1089
    const-string/jumbo v2, "openTransaction"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1099
    :goto_0
    return v1

    .line 1094
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->openTransaction(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "openTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processFIDO(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "requestData"    # [B

    .prologue
    .line 646
    const-string v3, "FingerprintManager"

    const-string/jumbo v4, "processFIDO"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v1, 0x0

    .line 651
    .local v1, "responseData":[B
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_0

    .line 652
    const-string/jumbo v3, "processFIDO"

    const/4 v4, 0x0

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v1

    .line 671
    .end local v1    # "responseData":[B
    .local v2, "responseData":[B
    :goto_0
    return-object v2

    .line 657
    .end local v2    # "responseData":[B
    .restart local v1    # "responseData":[B
    :cond_0
    if-eqz p4, :cond_1

    :try_start_0
    array-length v3, p4

    if-eqz v3, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move-object v2, v1

    .line 658
    .end local v1    # "responseData":[B
    .restart local v2    # "responseData":[B
    goto :goto_0

    .line 661
    .end local v2    # "responseData":[B
    .restart local v1    # "responseData":[B
    :cond_2
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p2, v4, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->processFIDO(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_3
    :goto_1
    move-object v2, v1

    .line 671
    .end local v1    # "responseData":[B
    .restart local v2    # "responseData":[B
    goto :goto_0

    .line 662
    .end local v2    # "responseData":[B
    .restart local v1    # "responseData":[B
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "processFIDO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permissionName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 665
    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 666
    const-string/jumbo v4, "processFIDO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", requestData="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p4, :cond_4

    const-string v3, "NULL"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, p4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2
.end method

.method public protect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "unprotectedData"    # [B

    .prologue
    .line 557
    const/4 v1, 0x0

    .line 559
    .local v1, "protectedData":[B
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_0

    .line 560
    const-string/jumbo v3, "protect"

    const/4 v4, 0x0

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v1

    .line 579
    .end local v1    # "protectedData":[B
    .local v2, "protectedData":[B
    :goto_0
    return-object v2

    .line 565
    .end local v2    # "protectedData":[B
    .restart local v1    # "protectedData":[B
    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    array-length v3, p3

    if-nez v3, :cond_2

    :cond_1
    move-object v2, v1

    .line 566
    .end local v1    # "protectedData":[B
    .restart local v2    # "protectedData":[B
    goto :goto_0

    .line 569
    .end local v2    # "protectedData":[B
    .restart local v1    # "protectedData":[B
    :cond_2
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->protect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_3
    :goto_1
    move-object v2, v1

    .line 579
    .end local v1    # "protectedData":[B
    .restart local v2    # "protectedData":[B
    goto :goto_0

    .line 570
    .end local v2    # "protectedData":[B
    .restart local v1    # "protectedData":[B
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "protect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permissionName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 573
    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 574
    const-string/jumbo v4, "protect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unprotectedData="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_4

    const-string v3, ""

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, p3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2
.end method

.method public reEnroll(Landroid/os/IBinder;I)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 316
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 318
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 319
    const-string/jumbo v2, "reenroll"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 329
    :goto_0
    return v1

    .line 324
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->reEnroll(Landroid/os/IBinder;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "reenroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    .locals 5
    .param p1, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;
    .param p2, "clientSpec"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 367
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 369
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 370
    const-string/jumbo v2, "registerClient"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 384
    :goto_0
    return-object v1

    .line 374
    :cond_0
    const-string/jumbo v2, "securityLevel"

    sget v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 375
    const-string/jumbo v2, "packageName"

    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "registerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientSpec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;)Landroid/os/IBinder;
    .locals 5
    .param p1, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;
    .param p2, "clientSpecBuilder"    # Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 389
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 391
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 392
    const-string/jumbo v2, "registerClient"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 402
    :goto_0
    return-object v1

    .line 397
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "registerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientSpec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeAllEnrolledFingers()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1000
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1002
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1003
    const-string/jumbo v2, "removeAllEnrolledFingers"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1013
    :goto_0
    return v1

    .line 1008
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeAllEnrolledFingers(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "removeAllEnrolledFingers"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeEnrolledFinger(I)Z
    .locals 5
    .param p1, "fingerIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 983
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 985
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 986
    const-string/jumbo v2, "removeEnrolledFinger"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 996
    :goto_0
    return v1

    .line 991
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeEnrolledFinger(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "removeEnrolledFinger"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeEnrolledPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "fingerIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 966
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 968
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 969
    const-string/jumbo v2, "removeEnrolledPermission"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 979
    :goto_0
    return v1

    .line 974
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeEnrolledPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "removeEnrolledPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeEnrolledPermissions(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 949
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 951
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 952
    const-string/jumbo v2, "removeEnrolledPermissions"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 962
    :goto_0
    return v1

    .line 957
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeEnrolledPermissions(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "removeEnrolledPermissions"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public secondaryEnroll(Landroid/os/IBinder;I)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 335
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 336
    const-string/jumbo v2, "secondaryEnroll"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 346
    :goto_0
    return v1

    .line 341
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->secondaryEnroll(Landroid/os/IBinder;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "secondaryEnroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnrollFinishResult(I)V
    .locals 0
    .param p1, "set"    # I

    .prologue
    .line 1246
    sput p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollFinishResult:I

    .line 1247
    return-void
.end method

.method public setIndexName(ILjava/lang/String;)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1557
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1559
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1560
    const-string/jumbo v2, "setIndexName"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1568
    :goto_0
    return v1

    .line 1564
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->setIndexName(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1565
    :catch_0
    move-exception v0

    .line 1566
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "setIndexName"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)Z
    .locals 5
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1515
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1517
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1518
    const-string/jumbo v2, "setPassword"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1527
    :goto_0
    return v1

    .line 1523
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->setPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1524
    :catch_0
    move-exception v0

    .line 1525
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "setPassword"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;
    .locals 4
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "enablePassword"    # Z

    .prologue
    const/4 v1, 0x0

    .line 812
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 814
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 815
    const-string/jumbo v2, "showIdentifyDialog"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 860
    :goto_0
    return-object v1

    .line 819
    :cond_0
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 820
    check-cast v1, Landroid/app/Activity;

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    move-object v1, p1

    .line 821
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 822
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerActivityLifeCallback()V

    .line 846
    :goto_1
    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    sget v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .line 851
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->showIdentifyDialog(Landroid/os/IBinder;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :goto_2
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    goto :goto_0

    .line 824
    :cond_1
    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 825
    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    goto :goto_1

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    if-eqz v1, :cond_2

    .line 855
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    .line 857
    :cond_2
    const-string/jumbo v1, "showIdentifyDialog"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)Z
    .locals 1
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 1356
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1361
    if-nez p1, :cond_0

    .line 1362
    const-string v1, "FingerprintManager"

    const-string v2, "ActivityContext is null!! startEnrollActivity need activityContext"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :goto_0
    return v0

    .line 1365
    :cond_0
    if-nez p2, :cond_1

    .line 1366
    const-string v1, "FingerprintManager"

    const-string v2, "Listener is null!! startEnrollActivity need EnrollFinishListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1369
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1370
    :cond_2
    const-string v1, "FingerprintManager"

    const-string v2, "Id parameter is needed. Please give a correct id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1374
    :cond_3
    sput-object p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1375
    sput-object p2, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    .line 1376
    sput-object p3, Lcom/samsung/android/fingerprint/FingerprintManager;->mStringId:Ljava/lang/String;

    .line 1378
    sput p4, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    .line 1380
    const-string v0, "FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startEnrollActivity: previousStage(mStringId)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ownName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    .line 1385
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1386
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;

    move v0, v1

    .line 1387
    goto :goto_0

    .line 1390
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/fingerprint/FingerprintManager;->startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V

    move v0, v1

    .line 1391
    goto :goto_0
.end method

.method public startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V
    .locals 5
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    .line 1341
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)V

    .line 1342
    .local v0, "enrollFinishBroadcastReceiver":Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.fingerprint.action.ENROLL_FINISHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1343
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1345
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1346
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1347
    const-string/jumbo v3, "previousStage"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1348
    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1349
    const-string/jumbo v3, "ownName"

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1351
    :cond_0
    const-string v3, "index"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1352
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1353
    return-void
.end method

.method public unprotect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "protectedData"    # [B

    .prologue
    .line 583
    const/4 v1, 0x0

    .line 585
    .local v1, "unprotectedData":[B
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_0

    .line 586
    const-string/jumbo v3, "unprotect"

    const/4 v4, 0x0

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v1

    .line 605
    .end local v1    # "unprotectedData":[B
    .local v2, "unprotectedData":[B
    :goto_0
    return-object v2

    .line 591
    .end local v2    # "unprotectedData":[B
    .restart local v1    # "unprotectedData":[B
    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    array-length v3, p3

    if-nez v3, :cond_2

    :cond_1
    move-object v2, v1

    .line 592
    .end local v1    # "unprotectedData":[B
    .restart local v2    # "unprotectedData":[B
    goto :goto_0

    .line 595
    .end local v2    # "unprotectedData":[B
    .restart local v1    # "unprotectedData":[B
    :cond_2
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->unprotect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_3
    :goto_1
    move-object v2, v1

    .line 605
    .end local v1    # "unprotectedData":[B
    .restart local v2    # "unprotectedData":[B
    goto :goto_0

    .line 596
    .end local v2    # "unprotectedData":[B
    .restart local v1    # "unprotectedData":[B
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "unprotect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permissionName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 599
    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 600
    const-string/jumbo v4, "unprotect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", protectedData="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_4

    const-string v3, "NULL"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, p3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2
.end method

.method public unregisterClient(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 441
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 443
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 444
    const-string/jumbo v2, "unregisterClient"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 454
    :goto_0
    return v1

    .line 449
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "unregisterClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public verifyPassword(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1495
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1497
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    .line 1498
    const-string/jumbo v2, "verifyPassword"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1507
    :goto_0
    return v1

    .line 1503
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, p1, p2, v3, v4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->verifyPassword(Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1504
    :catch_0
    move-exception v0

    .line 1505
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "verifyPassword"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1511
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->verifyPassword(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
