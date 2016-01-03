.class public Lcom/android/server/DevicePolicyManagerService;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DevicePolicyManagerService$DeviceOwner;,
        Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;,
        Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    }
.end annotation


# static fields
.field protected static final ACTION_EXPIRED_PASSWORD_NOTIFICATION:Ljava/lang/String; = "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

.field private static final DBG:Z = false

.field private static final DEVICE_POLICIES_BACKUP_XML:Ljava/lang/String; = "device_policies_backup.xml"

.field private static final DEVICE_POLICIES_XML:Ljava/lang/String; = "device_policies.xml"

.field private static final EXPIRATION_GRACE_PERIOD_MS:J = 0x19bfcc00L

.field private static final EXTERNAL_STORAGE_PATH:Ljava/lang/String; = "/storage/extSdCard"

.field private static final FOOTER_PROP_MAX_PASSWORD_ATTEMPTS:Ljava/lang/String; = "security.ode.maxattempts"

.field private static final MONITORING_CERT_NOTIFICATION_ID:I = 0x10401c4

.field private static final MS_PER_DAY:J = 0x5265c00L

.field private static final REQUEST_EXPIRE_PASSWORD:I = 0x15c3

.field public static final SYSTEM_PROP_DISABLE_CAMERA:Ljava/lang/String; = "sys.secpolicy.camera.disabled"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final is3LMAllowed:Z

.field private static mHM:Landroid/content/IHarmonyEAS;

.field private static mStorageManager:Landroid/os/storage/StorageManager;


# instance fields
.field private allowLock:Ljava/lang/Object;

.field private mCheckLoadSettingsLocked:Z

.field final mContext:Landroid/content/Context;

.field private mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

.field mHandler:Landroid/os/Handler;

.field private mHasFeature:Z

.field mIPowerManager:Landroid/os/IPowerManager;

.field mIWindowManager:Landroid/view/IWindowManager;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mNotifyChanges:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;",
            ">;"
        }
    .end annotation
.end field

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 804
    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    .line 191
    iput-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    .line 241
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    .line 243
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 245
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DevicePolicyManagerService$1;-><init>(Lcom/android/server/DevicePolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 4580
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->allowLock:Ljava/lang/Object;

    .line 805
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 806
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    .line 808
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "DPM"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 810
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 830
    :goto_0
    return-void

    .line 814
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 815
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    const-string v0, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 817
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    const-string v0, "android.security.STORAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 820
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 821
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 822
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 823
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 824
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 825
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 826
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 827
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->handlePasswordExpirationNotification(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DevicePolicyManagerService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->manageMonitoringCertificateNotification(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DevicePolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->handlePackagesChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DevicePolicyManagerService;)Landroid/app/enterprise/IEnterpriseDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEDMService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DevicePolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->resetAppPolicies(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/DevicePolicyManagerService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    return-void
.end method

.method private enableIfNecessary(Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3610
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 3611
    .local v0, "ipm":Landroid/content/pm/IPackageManager;
    const v1, 0x8000

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 3615
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_1

    .line 3627
    .end local v0    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 3619
    .restart local v0    # "ipm":Landroid/content/pm/IPackageManager;
    .restart local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget v1, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 3621
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v5, "DevicePolicyManager"

    move-object v1, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3625
    .end local v0    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private enforceCrossUserPermission(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 3596
    if-gez p1, :cond_0

    .line 3597
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3599
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3600
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 3606
    :cond_1
    :goto_0
    return-void

    .line 3601
    :cond_2
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 3602
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "Must be system or have INTERACT_ACROSS_USERS_FULL permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private formatExternSdCard()V
    .locals 8

    .prologue
    .line 2892
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "formatExternSdCard() called"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    sget-object v5, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 2894
    .local v4, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/storage/extSdCard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2896
    const-string v5, "DevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending FORMAT_ONLY for  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2898
    .local v2, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2899
    const-string/jumbo v5, "storage_volume"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2900
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2893
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2903
    .end local v4    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    return-void
.end method

.method private getEDMService()Landroid/app/enterprise/IEnterpriseDeviceManager;
    .locals 1

    .prologue
    .line 5148
    const-string v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptionStatus()I
    .locals 3

    .prologue
    .line 3399
    const-string v1, "ro.crypto.state"

    const-string/jumbo v2, "unencrypted"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3400
    .local v0, "status":Ljava/lang/String;
    const-string v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3401
    const/4 v1, 0x3

    .line 3405
    :goto_0
    return v1

    .line 3402
    :cond_0
    const-string/jumbo v1, "unsupported"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3403
    const/4 v1, 0x0

    goto :goto_0

    .line 3405
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getExternalSD()Landroid/os/storage/StorageVolume;
    .locals 8

    .prologue
    .line 2781
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->initializeStorageManager()V

    .line 2782
    const/4 v0, 0x0

    .line 2783
    .local v0, "extStorageVolume":Landroid/os/storage/StorageVolume;
    sget-object v7, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 2784
    .local v5, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v3, v5

    .line 2786
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 2787
    aget-object v4, v5, v1

    .line 2788
    .local v4, "storageVolume":Landroid/os/storage/StorageVolume;
    const/4 v6, 0x0

    .line 2789
    .local v6, "subsystem":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    .line 2791
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "sd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2793
    move-object v0, v4

    .line 2797
    .end local v4    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v6    # "subsystem":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 2786
    .restart local v4    # "storageVolume":Landroid/os/storage/StorageVolume;
    .restart local v6    # "subsystem":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getHarmonyEAS()Landroid/content/IHarmonyEAS;
    .locals 2

    .prologue
    .line 5001
    sget-object v1, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    if-nez v1, :cond_0

    .line 5002
    const-string v1, "harmony_eas_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5003
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IHarmonyEAS$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IHarmonyEAS;

    move-result-object v1

    sput-object v1, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    .line 5005
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v1, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    return-object v1
.end method

.method private getIPowerManager()Landroid/os/IPowerManager;
    .locals 2

    .prologue
    .line 930
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_0

    .line 931
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 932
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    .line 934
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    return-object v1
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPasswordExpirationLocked(Landroid/content/ComponentName;I)J
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 2040
    if-eqz p1, :cond_1

    .line 2041
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2042
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2055
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    :goto_0
    return-wide v6

    .line 2045
    :cond_1
    const-wide/16 v4, 0x0

    .line 2046
    .local v4, "timeout":J
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2047
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2048
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 2049
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2050
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_3

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    .line 2052
    :cond_2
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2048
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    move-wide v6, v4

    .line 2055
    goto :goto_0
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 938
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 939
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 940
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 942
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private handlePackagesChanged(I)V
    .locals 8
    .param p1, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    .line 767
    const/4 v4, 0x0

    .line 769
    .local v4, "removed":Z
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 770
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 771
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 772
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 775
    .local v0, "aa":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :try_start_0
    iget-object v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->isProxy()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 771
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 780
    :cond_1
    iget-object v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-nez v5, :cond_0

    .line 782
    :cond_2
    const/4 v4, 0x1

    .line 783
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 785
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 787
    iget v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 790
    :catch_0
    move-exception v5

    goto :goto_1

    .line 794
    .end local v0    # "aa":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    if-eqz v4, :cond_4

    .line 795
    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 796
    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 797
    iget v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-direct {p0, v5, v7}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 799
    :cond_4
    return-void
.end method

.method private handlePasswordExpirationNotification(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 12
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    const-wide/16 v10, 0x0

    .line 1585
    monitor-enter p0

    .line 1586
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1587
    .local v4, "now":J
    iget-object v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1588
    .local v0, "N":I
    if-gtz v0, :cond_0

    .line 1589
    monitor-exit p0

    .line 1610
    :goto_0
    return-void

    .line 1591
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1592
    iget-object v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1593
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_1

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_1

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/32 v8, 0x19bfcc00

    sub-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    .line 1597
    const-string v6, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p0, v1, v6}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 1599
    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.email"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1600
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.server.MDM_PASSWORD_EXPIRING_NOTIFICATION"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1601
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "pkgName"

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1602
    const-string v6, "expiration"

    iget-wide v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1603
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    iget v8, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1591
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1608
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, p1}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1609
    monitor-exit p0

    goto :goto_0

    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "now":J
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private ifExternalSdPresent()Z
    .locals 4

    .prologue
    .line 2879
    const-string v1, "DevicePolicyManagerService"

    const-string v2, "ifExternalSdPresent() called"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    sget-object v1, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v2, "/storage/extSdCard"

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2882
    .local v0, "status":Ljava/lang/String;
    const-string v1, "DevicePolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External SD card status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2886
    :cond_0
    const/4 v1, 0x1

    .line 2888
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initialiseStorageManager()V
    .locals 2

    .prologue
    .line 2874
    sget-object v0, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 2875
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 2876
    :cond_0
    return-void
.end method

.method private initializeStorageManager()V
    .locals 2

    .prologue
    .line 2776
    sget-object v0, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 2777
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 2778
    :cond_0
    return-void
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3591
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isEncryptionSupported()Z
    .locals 1

    .prologue
    .line 3388
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 2701
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2702
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)Z
    .locals 23
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .param p2, "userHandle"    # I

    .prologue
    .line 1319
    const/4 v14, 0x1

    .line 1321
    .local v14, "result":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v9

    .line 1322
    .local v9, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v15, 0x0

    .line 1323
    .local v15, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v7

    .line 1325
    .local v7, "file":Ljava/io/File;
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1326
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v16, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 1327
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1331
    :cond_0
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .local v18, "type":I
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 1333
    :cond_1
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1334
    .local v17, "tag":Ljava/lang/String;
    const-string v20, "policies"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v20

    if-nez v20, :cond_3

    .line 1336
    if-eqz v16, :cond_2

    .line 1337
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1340
    :cond_2
    :goto_0
    :try_start_3
    new-instance v20, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Settings do not start with policies tag: found "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1435
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_0
    move-exception v6

    move-object/from16 v15, v16

    .line 1436
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/NullPointerException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :goto_1
    const/4 v14, 0x0

    .line 1437
    :try_start_4
    const-string v20, "DevicePolicyManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1453
    if-nez v14, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_16

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    .local v8, "i":I
    :goto_2
    if-ltz v8, :cond_16

    .line 1455
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1456
    .local v4, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1454
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 1343
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "i":I
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_3
    :try_start_5
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .line 1344
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    .line 1346
    .local v11, "outerDepth":I
    :cond_4
    :goto_3
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_1a

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    move/from16 v0, v20

    if-le v0, v11, :cond_1a

    .line 1347
    :cond_5
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    const/16 v20, 0x4

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 1350
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1351
    const-string v20, "admin"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1352
    const/16 v20, 0x0

    const-string v21, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v10

    .line 1354
    .local v10, "name":Ljava/lang/String;
    :try_start_6
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v5

    .line 1362
    .local v5, "dai":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v5, :cond_4

    .line 1364
    const/4 v3, 0x0

    .line 1365
    .local v3, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    new-instance v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v4, v5}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 1366
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v4, v12}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1367
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1368
    .restart local v3    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_4

    .line 1370
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 1375
    .end local v3    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v5    # "dai":Landroid/app/admin/DeviceAdminInfo;
    :catch_1
    move-exception v6

    .line 1376
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_7
    const-string v20, "DevicePolicyManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed loading admin "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3

    .line 1438
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_2
    move-exception v6

    move-object/from16 v15, v16

    .line 1439
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :goto_4
    const/4 v14, 0x0

    .line 1440
    :try_start_8
    const-string v20, "DevicePolicyManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1453
    if-nez v14, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_16

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    .restart local v8    # "i":I
    :goto_5
    if-ltz v8, :cond_16

    .line 1455
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1456
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1454
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 1378
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "i":I
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_6
    :try_start_9
    const-string v20, "failed-password-attempts"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1379
    const/16 v20, 0x0

    const-string/jumbo v21, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_7

    .line 1380
    const/16 v20, 0x0

    const-string/jumbo v21, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 1383
    :cond_7
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3

    .line 1441
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_3
    move-exception v6

    move-object/from16 v15, v16

    .line 1442
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :goto_6
    const/4 v14, 0x0

    .line 1443
    :try_start_a
    const-string v20, "DevicePolicyManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1453
    if-nez v14, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_16

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    .restart local v8    # "i":I
    :goto_7
    if-ltz v8, :cond_16

    .line 1455
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1456
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1454
    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    .line 1384
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v8    # "i":I
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_8
    :try_start_b
    const-string v20, "password-owner"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1385
    const/16 v20, 0x0

    const-string/jumbo v21, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_9

    .line 1386
    const/16 v20, 0x0

    const-string/jumbo v21, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 1389
    :cond_9
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_3

    .line 1444
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_4
    move-exception v20

    move-object/from16 v15, v16

    .line 1453
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :goto_8
    if-nez v14, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_16

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    .restart local v8    # "i":I
    :goto_9
    if-ltz v8, :cond_16

    .line 1455
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1456
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1454
    add-int/lit8 v8, v8, -0x1

    goto :goto_9

    .line 1390
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "i":I
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_a
    :try_start_c
    const-string v20, "active-password"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 1391
    const/16 v20, 0x0

    const-string v21, "quality"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_b

    .line 1392
    const/16 v20, 0x0

    const-string v21, "quality"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 1395
    :cond_b
    const/16 v20, 0x0

    const-string v21, "length"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_c

    .line 1396
    const/16 v20, 0x0

    const-string v21, "length"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 1399
    :cond_c
    const/16 v20, 0x0

    const-string/jumbo v21, "uppercase"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_d

    .line 1400
    const/16 v20, 0x0

    const-string/jumbo v21, "uppercase"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 1403
    :cond_d
    const/16 v20, 0x0

    const-string v21, "lowercase"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_e

    .line 1404
    const/16 v20, 0x0

    const-string v21, "lowercase"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 1407
    :cond_e
    const/16 v20, 0x0

    const-string v21, "letters"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_f

    .line 1408
    const/16 v20, 0x0

    const-string v21, "letters"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 1411
    :cond_f
    const/16 v20, 0x0

    const-string v21, "numeric"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_10

    .line 1412
    const/16 v20, 0x0

    const-string v21, "numeric"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 1415
    :cond_10
    const/16 v20, 0x0

    const-string/jumbo v21, "symbols"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_11

    .line 1416
    const/16 v20, 0x0

    const-string/jumbo v21, "symbols"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 1419
    :cond_11
    const/16 v20, 0x0

    const-string v21, "nonletter"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_12

    .line 1420
    const/16 v20, 0x0

    const-string v21, "nonletter"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 1424
    :cond_12
    const/16 v20, 0x0

    const-string v21, "recoverable"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_13

    .line 1425
    const/16 v20, 0x0

    const-string v21, "recoverable"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordRecoverable:Z

    .line 1429
    :cond_13
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_3

    .line 1446
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_5
    move-exception v6

    move-object/from16 v15, v16

    .line 1447
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/io/IOException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :goto_a
    const/4 v14, 0x0

    .line 1448
    :try_start_d
    const-string v20, "DevicePolicyManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1453
    if-nez v14, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_16

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    .restart local v8    # "i":I
    :goto_b
    if-ltz v8, :cond_16

    .line 1455
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1456
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1454
    add-int/lit8 v8, v8, -0x1

    goto :goto_b

    .line 1431
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "i":I
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_14
    :try_start_e
    const-string v20, "DevicePolicyManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown tag: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_3

    .line 1449
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_6
    move-exception v6

    move-object/from16 v15, v16

    .line 1450
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :goto_c
    const/4 v14, 0x0

    .line 1451
    :try_start_f
    const-string v20, "DevicePolicyManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1453
    if-nez v14, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_16

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    .restart local v8    # "i":I
    :goto_d
    if-ltz v8, :cond_16

    .line 1455
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1456
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1454
    add-int/lit8 v8, v8, -0x1

    goto :goto_d

    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v8    # "i":I
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_15
    move-object/from16 v15, v16

    .line 1462
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :cond_16
    if-eqz v15, :cond_17

    .line 1463
    :try_start_10
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 1473
    :cond_17
    :goto_e
    new-instance v19, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1474
    .local v19, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_18

    .line 1475
    const-string v20, "DevicePolicyManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Active password quality 0x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " does not match actual quality 0x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "persona"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PersonaManager;

    .line 1481
    .local v13, "persona":Landroid/os/PersonaManager;
    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v20

    if-nez v20, :cond_18

    .line 1483
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 1484
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 1485
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 1486
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 1487
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 1488
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 1489
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 1490
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 1494
    .end local v13    # "persona":Landroid/os/PersonaManager;
    :cond_18
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1495
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1496
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1498
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->initiateTempList(ILcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1501
    return v14

    .line 1453
    .end local v19    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_19
    throw v20

    .line 1339
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :catch_7
    move-exception v20

    goto/16 :goto_0

    .line 1465
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v20

    goto/16 :goto_e

    .line 1453
    :catchall_0
    move-exception v20

    :goto_f
    if-nez v14, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v21, v0

    if-nez v21, :cond_19

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v8, v21, -0x1

    .restart local v8    # "i":I
    :goto_10
    if-ltz v8, :cond_19

    .line 1455
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1456
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1454
    add-int/lit8 v8, v8, -0x1

    goto :goto_10

    .line 1453
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "i":I
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_1a
    if-nez v14, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_15

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    .restart local v8    # "i":I
    :goto_11
    if-ltz v8, :cond_15

    .line 1455
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1456
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1454
    add-int/lit8 v8, v8, -0x1

    goto :goto_11

    .line 1453
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "i":I
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catchall_1
    move-exception v20

    move-object/from16 v15, v16

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_f

    .line 1449
    :catch_9
    move-exception v6

    goto/16 :goto_c

    .line 1446
    :catch_a
    move-exception v6

    goto/16 :goto_a

    .line 1444
    :catch_b
    move-exception v20

    goto/16 :goto_8

    .line 1441
    :catch_c
    move-exception v6

    goto/16 :goto_6

    .line 1438
    :catch_d
    move-exception v6

    goto/16 :goto_4

    .line 1435
    :catch_e
    move-exception v6

    goto/16 :goto_1
.end method

.method private lockNowUnchecked()V
    .locals 6

    .prologue
    .line 2687
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2690
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/os/IPowerManager;->goToSleep(JI)V

    .line 2693
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2696
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2698
    return-void

    .line 2696
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2694
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p0, "userHandle"    # I

    .prologue
    .line 1197
    if-nez p0, :cond_0

    const-string v0, "/data/system/device_policies.xml"

    .line 1201
    .local v0, "base":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1

    .line 1197
    .end local v0    # "base":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private manageMonitoringCertificateNotification(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1613
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v12

    .line 1615
    .local v12, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->hasAnyCaCertsInstalled()Z

    move-result v8

    .line 1616
    .local v8, "hasCert":Z
    if-nez v8, :cond_0

    .line 1617
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.security.STORAGE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1618
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 1619
    .local v15, "um":Landroid/os/UserManager;
    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    .line 1620
    .local v16, "user":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    const v2, 0x10401c4

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v12, v1, v2, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0

    .line 1626
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "um":Landroid/os/UserManager;
    .end local v16    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v10, 0x1

    .line 1629
    .local v10, "isManaged":Z
    :goto_1
    if-eqz v10, :cond_2

    .line 1630
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10401c6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1632
    .local v7, "contentText":Ljava/lang/String;
    const v14, 0x1080897

    .line 1638
    .local v14, "smallIconId":I
    :goto_2
    new-instance v3, Landroid/content/Intent;

    const-string v1, "com.android.settings.MONITORING_CERT_INFO"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1639
    .local v3, "dialogIntent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1640
    const-string v1, "com.android.settings"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1643
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    .line 1646
    .local v13, "notifyIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10401c4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    .line 1657
    .local v11, "noti":Landroid/app/Notification;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.security.STORAGE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1658
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 1659
    .restart local v15    # "um":Landroid/os/UserManager;
    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    .line 1660
    .restart local v16    # "user":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    const v2, 0x10401c4

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v12, v1, v2, v11, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_3

    .line 1626
    .end local v3    # "dialogIntent":Landroid/content/Intent;
    .end local v7    # "contentText":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "isManaged":Z
    .end local v11    # "noti":Landroid/app/Notification;
    .end local v13    # "notifyIntent":Landroid/app/PendingIntent;
    .end local v14    # "smallIconId":I
    .end local v15    # "um":Landroid/os/UserManager;
    .end local v16    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1634
    .restart local v10    # "isManaged":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10401c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1635
    .restart local v7    # "contentText":Ljava/lang/String;
    const v14, 0x108008a

    .restart local v14    # "smallIconId":I
    goto/16 :goto_2

    .line 1664
    .restart local v3    # "dialogIntent":Landroid/content/Intent;
    .restart local v11    # "noti":Landroid/app/Notification;
    .restart local v13    # "notifyIntent":Landroid/app/PendingIntent;
    :cond_3
    const/4 v1, 0x0

    const v2, 0x10401c4

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v12, v1, v2, v11, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1667
    .end local v3    # "dialogIntent":Landroid/content/Intent;
    .end local v7    # "contentText":Ljava/lang/String;
    .end local v10    # "isManaged":Z
    .end local v11    # "noti":Landroid/app/Notification;
    .end local v13    # "notifyIntent":Landroid/app/PendingIntent;
    .end local v14    # "smallIconId":I
    :cond_4
    return-void
.end method

.method private static moveFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 5093
    const/4 v3, 0x1

    .line 5095
    .local v3, "result":Z
    if-nez p2, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5100
    .local v0, "base_source":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5106
    .local v1, "base_target":Ljava/lang/String;
    :goto_1
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5107
    .local v4, "sourceFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5109
    .local v5, "targetFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5110
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 5111
    :cond_0
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5119
    .end local v4    # "sourceFile":Ljava/io/File;
    .end local v5    # "targetFile":Ljava/io/File;
    :cond_1
    :goto_2
    return v3

    .line 5095
    .end local v0    # "base_source":Ljava/lang/String;
    .end local v1    # "base_target":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5100
    .restart local v0    # "base_source":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5113
    .restart local v1    # "base_target":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 5114
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 5115
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "moveFile() : Cannot move file"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5116
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static parseCert([B)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2739
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 2740
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private removePackageFromHarmonyEAS(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 5070
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    .line 5072
    :try_start_0
    sget-object v0, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/IHarmonyEAS;->removeInstallationPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5075
    :goto_0
    return-void

    .line 5073
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resetAppPolicies(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 5063
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->manageBlockedApplications(I)V

    .line 5064
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->manageAllowThirdPartyApps(I)V

    .line 5065
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService;->handleAllowUnsignedApp(ZI)V

    .line 5066
    return-void
.end method

.method private resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 5
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    const/4 v4, 0x0

    .line 3242
    iget-object v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3243
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3244
    iget-object v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3245
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v3, :cond_0

    .line 3246
    iget-object v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 3252
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return-void

    .line 3243
    .restart local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3251
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-direct {p0, v4, v4}, Lcom/android/server/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "proxySpec"    # Ljava/lang/String;
    .param p2, "exclusionList"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3255
    if-nez p2, :cond_0

    .line 3256
    const-string p2, ""

    .line 3258
    :cond_0
    if-nez p1, :cond_1

    .line 3259
    const-string p1, ""

    .line 3262
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3263
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3264
    .local v0, "data":[Ljava/lang/String;
    const/16 v1, 0x1f90

    .line 3265
    .local v1, "proxyPort":I
    array-length v4, v0

    if-le v4, v6, :cond_2

    .line 3267
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3270
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 3272
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3274
    .local v3, "res":Landroid/content/ContentResolver;
    new-instance v2, Landroid/net/ProxyProperties;

    aget-object v4, v0, v5

    invoke-direct {v2, v4, v1, p2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3275
    .local v2, "proxyProperties":Landroid/net/ProxyProperties;
    invoke-virtual {v2}, Landroid/net/ProxyProperties;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3276
    const-string v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid proxy properties, ignoring: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    :goto_1
    return-void

    .line 3279
    :cond_3
    const-string v4, "global_http_proxy_host"

    aget-object v5, v0, v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3280
    const-string v4, "global_http_proxy_port"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3281
    const-string v4, "global_http_proxy_exclusion_list"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 3268
    .end local v2    # "proxyProperties":Landroid/net/ProxyProperties;
    .end local v3    # "res":Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private saveSettingsLocked(IZ)V
    .locals 14
    .param p1, "userHandle"    # I
    .param p2, "isNotiFromLockScreen"    # Z

    .prologue
    .line 1205
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 1206
    .local v7, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    .line 1207
    .local v4, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v8, 0x0

    .line 1209
    .local v8, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v9, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1211
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v10, "utf-8"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1212
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1214
    const/4 v10, 0x0

    const-string v11, "policies"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1216
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1217
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1218
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1219
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 1220
    const/4 v10, 0x0

    const-string v11, "admin"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1221
    const/4 v10, 0x0

    const-string v11, "name"

    iget-object v12, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v12}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1222
    invoke-virtual {v1, v6}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1223
    const/4 v10, 0x0

    const-string v11, "admin"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1217
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1227
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v10, :cond_2

    .line 1228
    const/4 v10, 0x0

    const-string v11, "password-owner"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1229
    const/4 v10, 0x0

    const-string/jumbo v11, "value"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1230
    const/4 v10, 0x0

    const-string v11, "password-owner"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1233
    :cond_2
    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-eqz v10, :cond_3

    .line 1234
    const/4 v10, 0x0

    const-string v11, "failed-password-attempts"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1235
    const/4 v10, 0x0

    const-string/jumbo v11, "value"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1236
    const/4 v10, 0x0

    const-string v11, "failed-password-attempts"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1239
    :cond_3
    if-nez p1, :cond_4

    .line 1240
    const/4 v10, 0x0

    invoke-virtual {p0, v10, p1}, Lcom/android/server/DevicePolicyManagerService;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v5

    .line 1241
    .local v5, "maxFailedAllowed":I
    const/4 v10, 0x0

    const-string v11, "security.ode.maxattempts"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->setPropertyIntoFooter(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1244
    .end local v5    # "maxFailedAllowed":I
    :cond_4
    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-nez v10, :cond_5

    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-nez v10, :cond_5

    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-nez v10, :cond_5

    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-nez v10, :cond_5

    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-nez v10, :cond_5

    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-nez v10, :cond_5

    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-nez v10, :cond_5

    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-nez v10, :cond_5

    iget-boolean v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordRecoverable:Z

    if-eqz v10, :cond_6

    .line 1252
    :cond_5
    const/4 v10, 0x0

    const-string v11, "active-password"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1253
    const/4 v10, 0x0

    const-string v11, "quality"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1254
    const/4 v10, 0x0

    const-string v11, "length"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1255
    const/4 v10, 0x0

    const-string/jumbo v11, "uppercase"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1256
    const/4 v10, 0x0

    const-string v11, "lowercase"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1257
    const/4 v10, 0x0

    const-string v11, "letters"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1258
    const/4 v10, 0x0

    const-string v11, "numeric"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1260
    const/4 v10, 0x0

    const-string/jumbo v11, "symbols"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1261
    const/4 v10, 0x0

    const-string v11, "nonletter"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1263
    const/4 v10, 0x0

    const-string v11, "recoverable"

    iget-boolean v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordRecoverable:Z

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1265
    const/4 v10, 0x0

    const-string v11, "active-password"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1268
    :cond_6
    const/4 v10, 0x0

    const-string v11, "policies"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1270
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1272
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 1273
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1275
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1276
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->commit()V

    .line 1277
    invoke-direct/range {p0 .. p2}, Lcom/android/server/DevicePolicyManagerService;->sendChangedNotification(IZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v8, v9

    .line 1288
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 1278
    :catch_0
    move-exception v2

    .line 1280
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    if-eqz v8, :cond_7

    .line 1281
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1286
    :cond_7
    :goto_3
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_1

    .line 1283
    :catch_1
    move-exception v10

    goto :goto_3

    .line 1278
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private sendChangedNotification(IZ)V
    .locals 6
    .param p1, "userHandle"    # I
    .param p2, "isNotiFromLockScreen"    # Z

    .prologue
    .line 1295
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    if-nez v3, :cond_0

    .line 1315
    :goto_0
    return-void

    .line 1299
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1300
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1303
    const-string/jumbo v3, "userhandle"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1306
    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendChangedNotification : isNotiFromLockScreen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    if-eqz p2, :cond_1

    .line 1308
    const-string v3, "isNotiFromLockScreen"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1309
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1311
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setEncryptionRequested(Z)V
    .locals 0
    .param p1, "encrypt"    # Z

    .prologue
    .line 3414
    return-void
.end method

.method private updatePasswordExpirationsLocked(I)V
    .locals 12
    .param p1, "userHandle"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 3095
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 3096
    .local v5, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v5, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3097
    .local v0, "N":I
    if-lez v0, :cond_3

    .line 3098
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 3099
    iget-object v10, v5, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3100
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v10, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3101
    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 3102
    .local v6, "timeout":J
    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long v2, v6, v10

    .line 3103
    .local v2, "expiration":J
    :goto_1
    iput-wide v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 3098
    .end local v2    # "expiration":J
    .end local v6    # "timeout":J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .restart local v6    # "timeout":J
    :cond_1
    move-wide v2, v8

    .line 3102
    goto :goto_1

    .line 3106
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "timeout":J
    :cond_2
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 3108
    .end local v4    # "i":I
    :cond_3
    return-void
.end method

.method static validateQualityConstant(I)V
    .locals 3
    .param p0, "quality"    # I

    .prologue
    .line 1505
    sparse-switch p0, :sswitch_data_0

    .line 1519
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid quality constant: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1517
    :sswitch_0
    return-void

    .line 1505
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8000 -> :sswitch_0
        0x9000 -> :sswitch_0
        0x9100 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x11000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
        0x90000 -> :sswitch_0
    .end sparse-switch
.end method

.method private wipeDeviceOrUserLocked(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 2933
    if-nez p2, :cond_0

    .line 2934
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDataLocked(I)V

    .line 2962
    :goto_0
    return-void

    .line 2936
    :cond_0
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->lockNowUnchecked()V

    .line 2937
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/DevicePolicyManagerService$4;

    invoke-direct {v1, p0, p2}, Lcom/android/server/DevicePolicyManagerService$4;-><init>(Lcom/android/server/DevicePolicyManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private wipeDeviceOrUserLocked(IILcom/android/server/DevicePolicyManagerService$ActiveAdmin;)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I
    .param p3, "admin"    # Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .prologue
    .line 2966
    const-string v0, "DevicePolicyManagerService"

    const-string v1, "Overloaded wipeDeviceOrUserLocked called"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    if-nez p2, :cond_2

    .line 2972
    const-string v0, "DevicePolicyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller package name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value of flags is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    iget-object v0, p3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.threelm.dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.nttdocomo.android.anmane"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.nttdocomo.android.wipe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2975
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDataLockedFor3LM(I)V

    .line 3005
    :goto_0
    return-void

    .line 2977
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDataLocked(I)V

    goto :goto_0

    .line 2979
    :cond_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->lockNowUnchecked()V

    .line 2980
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/DevicePolicyManagerService$5;

    invoke-direct {v1, p0, p2}, Lcom/android/server/DevicePolicyManagerService$5;-><init>(Lcom/android/server/DevicePolicyManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public checkPassword(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 4328
    monitor-enter p0

    .line 4329
    if-nez p1, :cond_0

    .line 4330
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4344
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4332
    :cond_0
    const/16 v5, 0xa

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4335
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 4337
    .local v1, "ident":J
    :try_start_2
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 4338
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v4

    .line 4340
    .local v4, "mRecoveryPassword":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    .line 4342
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4340
    monitor-exit p0

    return v5

    .line 4342
    .end local v3    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v4    # "mRecoveryPassword":Ljava/lang/String;
    :catchall_1
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public deleteBackupFile(Ljava/lang/String;I)V
    .locals 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 5079
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5084
    .local v0, "base_target":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5085
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5086
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5090
    .end local v1    # "targetFile":Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 5079
    .end local v0    # "base_target":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5087
    .restart local v0    # "base_target":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method disableThirdPartyApps(ZI)V
    .locals 15
    .param p1, "disableOnlyEnabledByPolicy"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 4633
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v12

    .line 4635
    .local v12, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v14, p0, Lcom/android/server/DevicePolicyManagerService;->allowLock:Ljava/lang/Object;

    monitor-enter v14

    .line 4636
    if-eqz p1, :cond_2

    .line 4639
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4640
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$700(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 4641
    .local v11, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4642
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4643
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 4646
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_1
    const-string v6, "DevicePolicyManager"

    move/from16 v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4652
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4654
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "s":Ljava/lang/String;
    .end local v11    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    .line 4655
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4678
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_2
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4679
    return-void

    .line 4647
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v2    # "s":Ljava/lang/String;
    .restart local v11    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_1
    move-exception v9

    .line 4648
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    invoke-direct {p0, v2}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 4678
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "s":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 4659
    :cond_2
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    .line 4660
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4661
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    sget-object v3, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    if-eqz v3, :cond_1

    .line 4662
    sget-object v3, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    move/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/content/IHarmonyEAS;->getThirdPartyApps(I)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 4664
    .local v13, "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4667
    .local v4, "app":Ljava/lang/String;
    const/4 v5, 0x2

    const/4 v6, 0x0

    :try_start_7
    const-string v8, "DevicePolicyManager"

    move-object v3, v1

    move/from16 v7, p2

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 4668
    :catch_2
    move-exception v9

    .line 4669
    .restart local v9    # "e":Ljava/lang/IllegalArgumentException;
    :try_start_8
    invoke-direct {p0, v4}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 4674
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v4    # "app":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_3
    move-exception v9

    .line 4675
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_9
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3631
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 3634
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump DevicePolicyManagerService from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3663
    :goto_0
    return-void

    .line 3640
    :cond_0
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 3642
    .local v3, "p":Landroid/util/Printer;
    monitor-enter p0

    .line 3643
    :try_start_0
    const-string v7, "Current Device Policy Manager state:"

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3645
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 3646
    .local v6, "userCount":I
    const/4 v5, 0x0

    .local v5, "u":I
    :goto_1
    if-ge v5, v6, :cond_3

    .line 3647
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 3648
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Enabled Device Admins (User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3649
    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3650
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 3651
    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3652
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    .line 3653
    const-string v7, "  "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3654
    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3655
    const-string v7, "    "

    invoke-virtual {v1, v7, p2}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3650
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3659
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3660
    const-string v7, "  mPasswordOwner="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 3646
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3662
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_3
    monitor-exit p0

    goto/16 :goto_0

    .end local v5    # "u":I
    .end local v6    # "userCount":I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method enableAllBlockedListApps(I)V
    .locals 9
    .param p1, "userHandle"    # I

    .prologue
    .line 4817
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v8

    .line 4819
    .local v8, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mBlockListRecordInRom:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$800(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 4821
    .local v7, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4823
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    :try_start_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4824
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4827
    .local v1, "s":Ljava/lang/String;
    :try_start_1
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 4828
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4833
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 4835
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 4836
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4838
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void

    .line 4830
    .restart local v1    # "s":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method enableAllThirdPartyApps(I)V
    .locals 14
    .param p1, "userHandle"    # I

    .prologue
    const/4 v13, 0x2

    const/4 v6, 0x1

    .line 4682
    iget-object v12, p0, Lcom/android/server/DevicePolicyManagerService;->allowLock:Ljava/lang/Object;

    monitor-enter v12

    .line 4684
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    .line 4685
    sget-object v2, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    if-eqz v2, :cond_1

    .line 4687
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4689
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    sget-object v2, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    invoke-interface {v2, p1}, Landroid/content/IHarmonyEAS;->getThirdPartyApps(I)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 4691
    .local v10, "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/DevicePolicyManagerService;->getAllowUnsignedApp(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4692
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/content/IHarmonyEAS;->getUnknownSourcesPackages(I)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 4693
    .local v11, "unknownList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4695
    .local v1, "unknown":Ljava/lang/String;
    :try_start_1
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 4696
    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4698
    :catch_0
    move-exception v8

    .line 4699
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4716
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "unknown":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "unknownList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v8

    .line 4717
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4719
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_1
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4720
    return-void

    .line 4702
    .restart local v0    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "unknownList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_4
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 4704
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "unknownList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4707
    .local v3, "app":Ljava/lang/String;
    :try_start_5
    invoke-interface {v0, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v13, :cond_4

    .line 4708
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v7, "DevicePolicyManager"

    move-object v2, v0

    move v6, p1

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 4710
    :catch_2
    move-exception v8

    .line 4711
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    invoke-direct {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 4719
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "app":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v2
.end method

.method public findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;
    .locals 11
    .param p1, "adminName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    .line 1148
    iget-boolean v7, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v7, :cond_0

    move-object v7, v8

    .line 1192
    :goto_0
    return-object v7

    .line 1151
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1152
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1153
    .local v6, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1154
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const v9, 0x8080

    invoke-virtual {v7, v6, v9, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 1158
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_4

    .line 1162
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEDMService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v4

    .line 1163
    .local v4, "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1164
    .local v3, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v3}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    if-eqz v7, :cond_2

    .line 1166
    :try_start_1
    new-instance v7, Landroid/app/admin/DeviceAdminInfo;

    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9, v3}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/app/admin/ProxyDeviceAdminInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v7, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad device admin requested for user="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v8

    .line 1170
    goto :goto_0

    .line 1171
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 1172
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad device admin requested for user="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v8

    .line 1174
    goto/16 :goto_0

    .line 1178
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v4    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :catch_2
    move-exception v5

    .line 1179
    .local v5, "re":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1182
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown admin: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1186
    :cond_4
    :try_start_3
    new-instance v9, Landroid/app/admin/DeviceAdminInfo;

    iget-object v10, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-direct {v9, v10, v7}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v7, v9

    goto/16 :goto_0

    .line 1187
    :catch_3
    move-exception v0

    .line 1188
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad device admin requested for user="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v8

    .line 1189
    goto/16 :goto_0

    .line 1190
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v0

    .line 1191
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad device admin requested for user="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v8

    .line 1192
    goto/16 :goto_0
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 966
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 967
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 969
    .local v1, "userHandle":I
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    return-object v2
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3e8

    .line 976
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 978
    .local v2, "callingUid":I
    if-eq v2, v6, :cond_0

    .line 979
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 983
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 984
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-eqz p1, :cond_4

    .line 985
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 986
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v1, :cond_1

    .line 987
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No active admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 991
    :cond_1
    if-ne v2, v6, :cond_2

    .line 992
    iget-object v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 993
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " did not specify uses-policy for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7, p2}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1001
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v5

    if-eq v5, v2, :cond_3

    .line 1002
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not owned by uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1005
    :cond_3
    iget-object v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1006
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " did not specify uses-policy for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7, p2}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1012
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1013
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_8

    .line 1014
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1016
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v2, v6, :cond_6

    iget-object v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1019
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_5
    return-object v1

    .line 1018
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v5

    if-ne v5, v2, :cond_7

    iget-object v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1013
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1023
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_8
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No active admin owned by uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for policy #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 954
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 955
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return-object v0

    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1745
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    .line 1746
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1760
    :goto_0
    return-object v3

    .line 1749
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1750
    monitor-enter p0

    .line 1751
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 1752
    .local v2, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1753
    .local v0, "N":I
    if-gtz v0, :cond_1

    .line 1754
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1761
    .end local v0    # "N":I
    .end local v2    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1756
    .restart local v0    # "N":I
    .restart local v2    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1757
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1758
    iget-object v4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v4, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1757
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1760
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAllowAppListThirdParty(Landroid/content/ComponentName;I)Ljava/lang/String;
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4529
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 4531
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4532
    .local v3, "allowList":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 4533
    .local v5, "multipleAdmin":Z
    monitor-enter p0

    .line 4534
    :try_start_0
    iget-object v7, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4535
    .local v0, "N":I
    iget-object v2, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 4537
    .local v2, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    const/4 v7, 0x1

    if-le v0, v7, :cond_0

    .line 4538
    const/4 v5, 0x1

    .line 4540
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4541
    .local v1, "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowThirdPartyList:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v5, :cond_1

    const-string v7, ","

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4543
    .end local v0    # "N":I
    .end local v1    # "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 4541
    .restart local v0    # "N":I
    .restart local v1    # "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v7, ""

    goto :goto_1

    .line 4543
    .end local v1    # "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4544
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getAllowBluetoothMode(Landroid/content/ComponentName;I)I
    .locals 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v11, 0x2

    .line 4194
    monitor-enter p0

    .line 4195
    const/4 v8, 0x2

    .line 4196
    .local v8, "value":I
    const/4 v9, 0x2

    .line 4198
    .local v9, "value_root":I
    if-eqz p1, :cond_1

    .line 4199
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 4200
    .local v2, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_0

    iget v10, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    :goto_0
    monitor-exit p0

    .line 4227
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v10

    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v10, v8

    .line 4200
    goto :goto_0

    .line 4203
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 4204
    .local v7, "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4205
    .local v1, "N_ROOT":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v1, :cond_3

    .line 4206
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4207
    .local v3, "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v9, v11, :cond_2

    .line 4208
    iget v9, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    .line 4205
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4212
    .end local v3    # "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    if-eq v9, v11, :cond_4

    .line 4213
    const-string v10, "DevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAllowBluetoothMode - value_root retunrs : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4214
    monitor-exit p0

    move v10, v9

    goto :goto_1

    .line 4217
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 4218
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4219
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v0, :cond_6

    .line 4220
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4221
    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v8, v11, :cond_5

    .line 4222
    iget v8, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    .line 4219
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 4226
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_6
    const-string v10, "DevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAllowBluetoothMode - value retunrs : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4227
    monitor-exit p0

    move v10, v8

    goto :goto_1

    .line 4228
    .end local v0    # "N":I
    .end local v1    # "N_ROOT":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method public getAllowBrowser(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4097
    monitor-enter p0

    .line 4098
    const/4 v4, 0x1

    .line 4100
    .local v4, "value":Z
    if-eqz p1, :cond_1

    .line 4101
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4102
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    :goto_0
    monitor-exit p0

    .line 4113
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v5, v4

    .line 4102
    goto :goto_0

    .line 4105
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4106
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4107
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 4108
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4109
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 4110
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    .line 4107
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4113
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v5, v4

    goto :goto_1

    .line 4114
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getAllowCamera(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3932
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllowDesktopSync(Landroid/content/ComponentName;I)Z
    .locals 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v11, 0x1

    .line 4252
    monitor-enter p0

    .line 4253
    const/4 v8, 0x1

    .line 4254
    .local v8, "value":Z
    const/4 v9, 0x1

    .line 4256
    .local v9, "value_root":Z
    if-eqz p1, :cond_1

    .line 4257
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 4258
    .local v2, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_0

    iget-boolean v10, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    :goto_0
    monitor-exit p0

    .line 4281
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v10

    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v10, v8

    .line 4258
    goto :goto_0

    .line 4261
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 4262
    .local v7, "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4263
    .local v0, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v0, :cond_3

    .line 4264
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4265
    .local v3, "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v9, v11, :cond_2

    .line 4266
    iget-boolean v9, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    .line 4263
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4270
    .end local v3    # "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    if-nez v9, :cond_4

    .line 4271
    monitor-exit p0

    move v10, v9

    goto :goto_1

    .line 4273
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 4274
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4275
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v1, :cond_6

    .line 4276
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4277
    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v8, v11, :cond_5

    .line 4278
    iget-boolean v8, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    .line 4275
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 4281
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_6
    monitor-exit p0

    move v10, v8

    goto :goto_1

    .line 4282
    .end local v0    # "M":I
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method public getAllowInternetSharing(Landroid/content/ComponentName;I)Z
    .locals 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v11, 0x1

    .line 4139
    monitor-enter p0

    .line 4140
    const/4 v8, 0x1

    .line 4141
    .local v8, "value":Z
    const/4 v9, 0x1

    .line 4143
    .local v9, "value_root":Z
    if-eqz p1, :cond_1

    .line 4144
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 4145
    .local v2, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_0

    iget-boolean v10, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    :goto_0
    monitor-exit p0

    .line 4168
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v10

    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v10, v8

    .line 4145
    goto :goto_0

    .line 4148
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 4149
    .local v7, "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4150
    .local v0, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v0, :cond_3

    .line 4151
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4152
    .local v3, "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v9, v11, :cond_2

    .line 4153
    iget-boolean v9, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    .line 4150
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4157
    .end local v3    # "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    if-nez v9, :cond_4

    .line 4158
    monitor-exit p0

    move v10, v9

    goto :goto_1

    .line 4160
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 4161
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4162
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v1, :cond_6

    .line 4163
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4164
    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v8, v11, :cond_5

    .line 4165
    iget-boolean v8, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    .line 4162
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 4168
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_6
    monitor-exit p0

    move v10, v8

    goto :goto_1

    .line 4169
    .end local v0    # "M":I
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method public getAllowIrDA(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4307
    monitor-enter p0

    .line 4308
    const/4 v4, 0x1

    .line 4310
    .local v4, "value":Z
    if-eqz p1, :cond_1

    .line 4311
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4312
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    :goto_0
    monitor-exit p0

    .line 4323
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v5, v4

    .line 4312
    goto :goto_0

    .line 4315
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4316
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4317
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 4318
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4319
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 4320
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    .line 4317
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4323
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v5, v4

    goto :goto_1

    .line 4324
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getAllowPOPIMAPEmail(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4055
    monitor-enter p0

    .line 4056
    const/4 v4, 0x1

    .line 4058
    .local v4, "value":Z
    if-eqz p1, :cond_1

    .line 4059
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4060
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    :goto_0
    monitor-exit p0

    .line 4071
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v5, v4

    .line 4060
    goto :goto_0

    .line 4063
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4064
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4065
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 4066
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4067
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 4068
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    .line 4065
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4071
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v5, v4

    goto :goto_1

    .line 4072
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getAllowStorageCard(Landroid/content/ComponentName;I)Z
    .locals 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v11, 0x1

    .line 3851
    monitor-enter p0

    .line 3852
    const/4 v8, 0x1

    .line 3853
    .local v8, "value":Z
    const/4 v9, 0x1

    .line 3855
    .local v9, "value_root":Z
    if-eqz p1, :cond_1

    .line 3856
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 3857
    .local v2, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_0

    iget-boolean v10, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    :goto_0
    monitor-exit p0

    .line 3880
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v10

    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v10, v8

    .line 3857
    goto :goto_0

    .line 3860
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 3861
    .local v7, "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3862
    .local v0, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v0, :cond_3

    .line 3863
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3864
    .local v3, "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v9, v11, :cond_2

    .line 3865
    iget-boolean v9, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    .line 3862
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3869
    .end local v3    # "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    if-nez v9, :cond_4

    .line 3870
    monitor-exit p0

    move v10, v9

    goto :goto_1

    .line 3872
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 3873
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3874
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v1, :cond_6

    .line 3875
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3876
    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v8, v11, :cond_5

    .line 3877
    iget-boolean v8, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    .line 3874
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3880
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_6
    monitor-exit p0

    move v10, v8

    goto :goto_1

    .line 3881
    .end local v0    # "M":I
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method public getAllowTextMessaging(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4013
    monitor-enter p0

    .line 4014
    const/4 v4, 0x1

    .line 4016
    .local v4, "value":Z
    if-eqz p1, :cond_1

    .line 4017
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4018
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    :goto_0
    monitor-exit p0

    .line 4029
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v5, v4

    .line 4018
    goto :goto_0

    .line 4021
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4022
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4023
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 4024
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4025
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 4026
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    .line 4023
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4029
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v5, v4

    goto :goto_1

    .line 4030
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getAllowUnsignedApp(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4928
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4930
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 4932
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    monitor-enter p0

    .line 4933
    const/4 v4, 0x1

    .line 4934
    .local v4, "value":Z
    if-eqz p1, :cond_1

    .line 4935
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4936
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    iget-boolean v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    :goto_0
    monitor-exit p0

    .line 4944
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v5

    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v5, v4

    .line 4936
    goto :goto_0

    .line 4939
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4940
    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 4941
    iget-boolean v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    goto :goto_2

    .line 4944
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v5, v4

    goto :goto_1

    .line 4945
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getAllowUnsignedInstallationPkg(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4980
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4981
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 4983
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    monitor-enter p0

    .line 4984
    const/4 v4, 0x1

    .line 4986
    .local v4, "value":Z
    if-eqz p1, :cond_1

    .line 4987
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4988
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    iget-boolean v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    :goto_0
    monitor-exit p0

    .line 4996
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v5

    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v5, v4

    .line 4988
    goto :goto_0

    .line 4991
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4992
    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 4993
    iget-boolean v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    goto :goto_2

    .line 4996
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v5, v4

    goto :goto_1

    .line 4997
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getAllowWifi(Landroid/content/ComponentName;I)Z
    .locals 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v11, 0x1

    .line 3957
    monitor-enter p0

    .line 3958
    const/4 v8, 0x1

    .line 3959
    .local v8, "value":Z
    const/4 v9, 0x1

    .line 3961
    .local v9, "value_root":Z
    if-eqz p1, :cond_1

    .line 3962
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 3963
    .local v2, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_0

    iget-boolean v10, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    :goto_0
    monitor-exit p0

    .line 3987
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v10

    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v10, v8

    .line 3963
    goto :goto_0

    .line 3967
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 3968
    .local v7, "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3969
    .local v0, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v0, :cond_3

    .line 3970
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3971
    .local v3, "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v9, v11, :cond_2

    .line 3972
    iget-boolean v9, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    .line 3969
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3976
    .end local v3    # "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    if-nez v9, :cond_4

    .line 3977
    monitor-exit p0

    move v10, v9

    goto :goto_1

    .line 3979
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 3980
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3981
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v1, :cond_6

    .line 3982
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3983
    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v8, v11, :cond_5

    .line 3984
    iget-boolean v8, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    .line 3981
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3987
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_6
    monitor-exit p0

    move v10, v8

    goto :goto_1

    .line 3988
    .end local v0    # "M":I
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method public getBlockListInRom(Landroid/content/ComponentName;I)Ljava/lang/String;
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4724
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 4726
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v2, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 4728
    .local v2, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4729
    .local v3, "blockList":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 4730
    .local v5, "multipleAdmin":Z
    monitor-enter p0

    .line 4731
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4732
    .local v0, "N":I
    const/4 v7, 0x1

    if-le v0, v7, :cond_0

    .line 4733
    const/4 v5, 0x1

    .line 4735
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4736
    .local v1, "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->blockInRomList:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v5, :cond_1

    const-string v7, ","

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4738
    .end local v0    # "N":I
    .end local v1    # "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 4736
    .restart local v0    # "N":I
    .restart local v1    # "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v7, ""

    goto :goto_1

    .line 4738
    .end local v1    # "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4739
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .locals 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3449
    iget-boolean v10, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v10, :cond_0

    .line 3476
    :goto_0
    return v8

    .line 3452
    :cond_0
    monitor-enter p0

    .line 3453
    if-eqz p1, :cond_2

    .line 3454
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 3455
    .local v2, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_1

    iget-boolean v8, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 3477
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 3458
    :cond_2
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {p0, v10}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 3459
    .local v7, "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3460
    .local v0, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v0, :cond_4

    .line 3461
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3462
    .local v3, "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v10, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v10, :cond_3

    .line 3463
    monitor-exit p0

    move v8, v9

    goto :goto_0

    .line 3460
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3467
    .end local v3    # "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 3469
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3470
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v1, :cond_6

    .line 3471
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3472
    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v10, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v10, :cond_5

    .line 3473
    monitor-exit p0

    move v8, v9

    goto :goto_0

    .line 3470
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3476
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 2383
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2384
    monitor-enter p0

    .line 2391
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    monitor-exit p0

    return v0

    .line 2392
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3565
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 3573
    :goto_0
    return-object v0

    .line 3568
    :cond_0
    monitor-enter p0

    .line 3569
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v1, :cond_1

    .line 3570
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 3572
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDeviceOwnerName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3578
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 3587
    :goto_0
    return-object v0

    .line 3581
    :cond_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3582
    monitor-enter p0

    .line 3583
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v1, :cond_1

    .line 3584
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 3586
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 3219
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 3238
    :goto_0
    return-object v4

    .line 3222
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3223
    monitor-enter p0

    .line 3224
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3227
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3228
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 3229
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3230
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v5, :cond_1

    .line 3233
    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    monitor-exit p0

    goto :goto_0

    .line 3236
    .end local v0    # "N":I
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3228
    .restart local v0    # "N":I
    .restart local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "i":I
    .restart local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3236
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 3507
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 3525
    :goto_0
    return v4

    .line 3510
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3511
    monitor-enter p0

    .line 3512
    if-eqz p1, :cond_2

    .line 3513
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3514
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 3526
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3518
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3519
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3520
    .local v0, "N":I
    const/4 v4, 0x0

    .line 3521
    .local v4, "which":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 3522
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3523
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    or-int/2addr v4, v5

    .line 3521
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3525
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2417
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 2418
    const/4 v2, 0x0

    .line 2440
    :goto_0
    return v2

    .line 2420
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2421
    monitor-enter p0

    .line 2422
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2423
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v2, 0x0

    .line 2425
    .local v2, "count":I
    if-eqz p1, :cond_2

    .line 2426
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2427
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .end local v2    # "count":I
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 2441
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2430
    .restart local v2    # "count":I
    .restart local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_2
    :try_start_1
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2431
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 2432
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2433
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v2, :cond_4

    .line 2434
    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 2431
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2435
    :cond_4
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v5, :cond_3

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-le v2, v5, :cond_3

    .line 2437
    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto :goto_2

    .line 2440
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 2646
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    move-wide v4, v6

    .line 2669
    :goto_0
    return-wide v4

    .line 2649
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2650
    monitor-enter p0

    .line 2651
    const-wide/16 v4, 0x0

    .line 2653
    .local v4, "time":J
    if-eqz p1, :cond_2

    .line 2654
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2655
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    :goto_1
    monitor-exit p0

    move-wide v4, v6

    goto :goto_0

    :cond_1
    move-wide v6, v4

    goto :goto_1

    .line 2658
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2659
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2660
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 2661
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2662
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    .line 2663
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 2660
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2664
    :cond_4
    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_3

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    .line 2666
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto :goto_3

    .line 2669
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2670
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5144
    const-string v0, ""

    return-object v0
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;I)J
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2059
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 2060
    const-wide/16 v0, 0x0

    .line 2064
    :goto_0
    return-wide v0

    .line 2062
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2063
    monitor-enter p0

    .line 2064
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 2065
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 2011
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    move-wide v4, v6

    .line 2031
    :goto_0
    return-wide v4

    .line 2014
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2015
    monitor-enter p0

    .line 2016
    if-eqz p1, :cond_2

    .line 2017
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2018
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 2032
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    move-wide v4, v6

    .line 2018
    goto :goto_1

    .line 2021
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    const-wide/16 v4, 0x0

    .line 2022
    .local v4, "timeout":J
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2023
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2024
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 2025
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2026
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_4

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_4

    .line 2028
    :cond_3
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 2024
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2031
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1951
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1952
    const/4 v3, 0x0

    .line 1971
    :goto_0
    return v3

    .line 1954
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1955
    monitor-enter p0

    .line 1956
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1957
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 1959
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 1960
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1961
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .end local v3    # "length":I
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1972
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1964
    .restart local v3    # "length":I
    .restart local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_2
    :try_start_1
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1965
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1966
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1967
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-ge v3, v5, :cond_3

    .line 1968
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 1965
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1971
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1906
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1907
    const/4 v3, 0x0

    .line 1926
    :goto_0
    return v3

    .line 1909
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1910
    monitor-enter p0

    .line 1911
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1912
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 1914
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 1915
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1916
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .end local v3    # "length":I
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1927
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1919
    .restart local v3    # "length":I
    .restart local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_2
    :try_start_1
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1920
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1921
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1922
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-ge v3, v5, :cond_3

    .line 1923
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 1920
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1926
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2176
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 2177
    const/4 v3, 0x0

    .line 2196
    :goto_0
    return v3

    .line 2179
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2180
    monitor-enter p0

    .line 2181
    const/4 v3, 0x0

    .line 2183
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 2184
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2185
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 2188
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2189
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2190
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 2191
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2192
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-ge v3, v5, :cond_3

    .line 2193
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 2190
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2196
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 2197
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2131
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 2132
    const/4 v3, 0x0

    .line 2151
    :goto_0
    return v3

    .line 2134
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2135
    monitor-enter p0

    .line 2136
    const/4 v3, 0x0

    .line 2138
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 2139
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2140
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 2143
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2144
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2145
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 2146
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2147
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-ge v3, v5, :cond_3

    .line 2148
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 2145
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2151
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 2152
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2311
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 2312
    const/4 v3, 0x0

    .line 2331
    :goto_0
    return v3

    .line 2314
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2315
    monitor-enter p0

    .line 2316
    const/4 v3, 0x0

    .line 2318
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 2319
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2320
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 2323
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2324
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2325
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 2326
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2327
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-ge v3, v5, :cond_3

    .line 2328
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 2325
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2331
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 2332
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2221
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 2222
    const/4 v3, 0x0

    .line 2241
    :goto_0
    return v3

    .line 2224
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2225
    monitor-enter p0

    .line 2226
    const/4 v3, 0x0

    .line 2228
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 2229
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2230
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 2233
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2234
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2235
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 2236
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2237
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-ge v3, v5, :cond_3

    .line 2238
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 2235
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2241
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 2242
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2266
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 2267
    const/4 v3, 0x0

    .line 2286
    :goto_0
    return v3

    .line 2269
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2270
    monitor-enter p0

    .line 2271
    const/4 v3, 0x0

    .line 2273
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 2274
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2275
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 2278
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2279
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2280
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 2281
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2282
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-ge v3, v5, :cond_3

    .line 2283
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 2280
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2286
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 2287
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2089
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 2090
    const/4 v3, 0x0

    .line 2109
    :goto_0
    return v3

    .line 2092
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2093
    monitor-enter p0

    .line 2094
    const/4 v3, 0x0

    .line 2096
    .local v3, "length":I
    if-eqz p1, :cond_2

    .line 2097
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2098
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 2101
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2102
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2103
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 2104
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2105
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-ge v3, v5, :cond_3

    .line 2106
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 2103
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2109
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 2110
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1860
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1861
    const/4 v3, 0x0

    .line 1881
    :goto_0
    return v3

    .line 1863
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1864
    monitor-enter p0

    .line 1865
    const/4 v3, 0x0

    .line 1866
    .local v3, "mode":I
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1868
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-eqz p1, :cond_2

    .line 1869
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1870
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 1873
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1874
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1875
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1876
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v3, v5, :cond_3

    .line 1877
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 1874
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1881
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 1882
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordRecoverable(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3809
    monitor-enter p0

    .line 3810
    const/4 v4, 0x0

    .line 3812
    .local v4, "value":Z
    if-eqz p1, :cond_1

    .line 3813
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3814
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    :goto_0
    monitor-exit p0

    .line 3825
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v5, v4

    .line 3814
    goto :goto_0

    .line 3817
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3818
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3819
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 3820
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3821
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v4, :cond_2

    .line 3822
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    .line 3819
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3825
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v5, v4

    goto :goto_1

    .line 3826
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPropertyFromFooter(Landroid/content/ComponentName;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 5351
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    .line 5375
    :goto_0
    return-object v3

    .line 5354
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 5355
    const/4 v1, 0x0

    .line 5357
    .local v1, "mountService":Landroid/os/storage/IMountService;
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 5358
    .local v2, "service":Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 5359
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 5360
    if-nez v1, :cond_2

    .line 5361
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Can\'t get mount interface"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5365
    :cond_1
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Can\'t get mount service"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5370
    :cond_2
    :try_start_0
    invoke-interface {v1, p2}, Landroid/os/storage/IMountService;->getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 5371
    :catch_0
    move-exception v0

    .line 5372
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    .locals 10
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 3009
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 3038
    :goto_0
    return-void

    .line 3012
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3013
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3016
    monitor-enter p0

    .line 3017
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3018
    .local v9, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v9, :cond_1

    .line 3020
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3023
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 3037
    .end local v9    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3025
    .restart local v9    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3026
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, v9, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3027
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/DevicePolicyManagerService$6;

    invoke-direct {v4, p0, p2}, Lcom/android/server/DevicePolicyManagerService$6;-><init>(Lcom/android/server/DevicePolicyManagerService;Landroid/os/RemoteCallback;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3037
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3021
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getRequireStorageCardEncryption(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4426
    monitor-enter p0

    .line 4427
    const/4 v4, 0x0

    .line 4429
    .local v4, "value":Z
    if-eqz p1, :cond_1

    .line 4430
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4431
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    :goto_0
    monitor-exit p0

    .line 4442
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v5, v4

    .line 4431
    goto :goto_0

    .line 4434
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4435
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4436
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 4437
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4438
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v4, :cond_2

    .line 4439
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    .line 4436
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4442
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v5, v4

    goto :goto_1

    .line 4443
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getSamsungEncryptionStatus(Landroid/content/ComponentName;I)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 5191
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_1

    .line 5212
    :cond_0
    :goto_0
    return v2

    .line 5195
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 5196
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 5197
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v1

    .line 5199
    .local v1, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v1, :cond_2

    .line 5200
    new-instance v1, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v1    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v1}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 5203
    .restart local v1    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_2
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v3

    if-nez v3, :cond_0

    .line 5205
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getRequireStorageCardEncryption(Landroid/content/ComponentName;I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v3, 0x2

    iget v4, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v3, v4, :cond_0

    .line 5209
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getSamsungEncryptionStatusForCC(Landroid/content/ComponentName;I)I
    .locals 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v7, -0x1

    const/4 v8, 0x1

    .line 5223
    iget-boolean v10, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v10, :cond_1

    .line 5285
    :cond_0
    :goto_0
    return v7

    .line 5226
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 5228
    const/4 v3, -0x1

    .line 5229
    .local v3, "internalStorage":I
    const/4 v2, -0x1

    .line 5230
    .local v2, "externalStorage":I
    const/4 v4, 0x0

    .line 5234
    .local v4, "mountService":Landroid/os/storage/IMountService;
    const-string v10, "mount"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 5235
    .local v6, "service":Landroid/os/IBinder;
    if-eqz v6, :cond_2

    .line 5236
    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 5237
    if-nez v4, :cond_3

    .line 5238
    const-string v8, "DevicePolicyManagerService"

    const-string v9, "Can\'t get mount interface"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5242
    :cond_2
    const-string v8, "DevicePolicyManagerService"

    const-string v9, "Can\'t get mount service"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5247
    :cond_3
    :try_start_0
    invoke-interface {v4}, Landroid/os/storage/IMountService;->isStorageFullyEncrypted()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 5254
    :goto_1
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v10, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 5255
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v5

    .line 5257
    .local v5, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v5, :cond_4

    .line 5258
    new-instance v5, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v5    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v5}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 5261
    .restart local v5    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_4
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v10

    if-eqz v10, :cond_5

    .line 5262
    const/4 v2, -0x1

    .line 5273
    :goto_2
    if-eq v3, v7, :cond_0

    if-eq v2, v7, :cond_0

    .line 5275
    if-eq v3, v8, :cond_9

    if-eq v2, v8, :cond_9

    .line 5276
    const/4 v7, 0x0

    goto :goto_0

    .line 5248
    .end local v0    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v5    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :catch_0
    move-exception v1

    .line 5249
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 5263
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .restart local v5    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_5
    iget v10, v5, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v9, v10, :cond_6

    .line 5264
    const/4 v2, 0x0

    goto :goto_2

    .line 5265
    :cond_6
    const/4 v10, 0x5

    iget v11, v5, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v10, v11, :cond_7

    .line 5266
    const/4 v2, 0x2

    goto :goto_2

    .line 5267
    :cond_7
    const/4 v10, 0x6

    iget v11, v5, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v10, v11, :cond_8

    .line 5268
    const/4 v2, 0x2

    goto :goto_2

    .line 5270
    :cond_8
    const/4 v2, 0x1

    goto :goto_2

    .line 5277
    :cond_9
    if-ne v3, v8, :cond_a

    if-ne v2, v8, :cond_a

    move v7, v8

    .line 5278
    goto :goto_0

    .line 5279
    :cond_a
    if-ne v3, v8, :cond_b

    if-eq v2, v8, :cond_b

    .line 5280
    const/4 v7, 0x2

    goto :goto_0

    .line 5281
    :cond_b
    if-eq v3, v8, :cond_0

    if-ne v2, v8, :cond_0

    move v7, v9

    .line 5282
    goto :goto_0
.end method

.method public getSimplePasswordEnabled(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3906
    monitor-enter p0

    .line 3907
    const/4 v4, 0x1

    .line 3909
    .local v4, "value":Z
    if-eqz p1, :cond_1

    .line 3910
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3911
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    :goto_0
    monitor-exit p0

    .line 3922
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v5, v4

    .line 3911
    goto :goto_0

    .line 3914
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3915
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3916
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 3917
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3918
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 3919
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    .line 3916
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3922
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v5, v4

    goto :goto_1

    .line 3923
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 3344
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    move v4, v5

    .line 3365
    :goto_0
    return v4

    .line 3347
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3348
    monitor-enter p0

    .line 3350
    if-eqz p1, :cond_2

    .line 3352
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3353
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 3366
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    move v4, v5

    .line 3353
    goto :goto_1

    .line 3358
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3359
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3360
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 3361
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v4, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eqz v4, :cond_3

    .line 3362
    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_0

    .line 3360
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3365
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    goto :goto_0
.end method

.method public getStorageEncryptionStatus(I)I
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 3373
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 3376
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3377
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    return v0
.end method

.method getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 838
    monitor-enter p0

    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .line 840
    .local v0, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-nez v0, :cond_0

    .line 841
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .end local v0    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-direct {v0, p1}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;-><init>(I)V

    .line 842
    .restart local v0    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 843
    invoke-direct {p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)Z

    .line 845
    :cond_0
    monitor-exit p0

    return-object v0

    .line 846
    .end local v0    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method handleAllowUnsignedApp(ZI)V
    .locals 14
    .param p1, "handle"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 4877
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v12

    .line 4879
    .local v12, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 4880
    .local v13, "unsignedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4882
    .local v8, "ident":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    move-result-object v3

    move/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/content/IHarmonyEAS;->getUnknownSourcesPackages(I)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v13, v0

    .line 4883
    if-eqz p1, :cond_1

    .line 4884
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$700(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 4885
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 4886
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 4887
    .local v10, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4888
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4889
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4893
    .local v2, "pkgName":Ljava/lang/String;
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_1
    const-string v6, "DevicePolicyManager"

    move/from16 v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4894
    :catch_0
    move-exception v7

    .line 4895
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4918
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_1
    move-exception v7

    .line 4919
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Exception +"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4921
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4924
    return-void

    .line 4900
    :cond_1
    :try_start_4
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$700(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4902
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 4903
    .local v11, "itr2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4904
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4905
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4908
    .restart local v2    # "pkgName":Ljava/lang/String;
    :try_start_5
    move/from16 v0, p2

    invoke-interface {v1, v2, v0}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 4909
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v6, "DevicePolicyManager"

    move/from16 v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4915
    :cond_2
    :goto_2
    :try_start_6
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 4921
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v11    # "itr2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4911
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v11    # "itr2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_2
    move-exception v7

    .line 4912
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_7
    invoke-direct {p0, v2}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .locals 4
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1730
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1731
    const/4 v1, 0x0

    .line 1739
    :goto_0
    return v1

    .line 1733
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1734
    monitor-enter p0

    .line 1735
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1736
    .local v0, "administrator":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    .line 1737
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1740
    .end local v0    # "administrator":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1739
    .restart local v0    # "administrator":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method initiateTempList(ILcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 11
    .param p1, "userHandle"    # I
    .param p2, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 5010
    iget-object v1, p2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 5011
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {p2}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$700(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v6

    .line 5012
    .local v6, "mAllowListRecord":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mBlockListRecordInRom:Ljava/util/HashSet;
    invoke-static {p2}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$800(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v7

    .line 5015
    .local v7, "mBlockListRecordInRom":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 5016
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 5019
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 5022
    .local v8, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 5025
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const-string v9, "com.android.email.SecurityPolicy$PolicyAdmin"

    iget-object v10, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v10}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 5027
    iget-object v9, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowListRecord:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 5028
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    iget-object v9, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowListRecord:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-direct {v2, v9}, Ljava/util/HashSet;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5031
    .local v2, "allowListRecordWithPkgName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 5032
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v10, v9, p1}, Landroid/content/IHarmonyEAS;->getPackageNameFromHash(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5034
    :catch_0
    move-exception v3

    .line 5035
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5037
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5039
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 5040
    iget-object v9, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->blockListRecordInRom:Ljava/util/HashSet;

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 5043
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 5044
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    if-eqz v9, :cond_2

    .line 5047
    :try_start_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8, v9, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 5048
    :catch_1
    move-exception v3

    .line 5050
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 5056
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "allowListRecordWithPkgName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_2
    move-exception v3

    .line 5057
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5059
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    return-void
.end method

.method public installCaCert([B)Z
    .locals 11
    .param p1, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2706
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.MANAGE_CA_CERTIFICATES"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    const/4 v4, 0x0

    .line 2710
    .local v4, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_0
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 2711
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/security/cert/Certificate;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v8}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 2720
    .local v5, "pemCert":[B
    :try_start_1
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 2722
    :try_start_2
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2725
    if-eqz v4, :cond_0

    .line 2726
    :try_start_3
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2727
    const/4 v4, 0x0

    .line 2734
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "pemCert":[B
    :cond_0
    :goto_0
    return v6

    .line 2712
    :catch_0
    move-exception v0

    .line 2713
    .local v0, "ce":Ljava/security/cert/CertificateException;
    const-string v6, "DevicePolicyManagerService"

    const-string v8, "Problem converting cert"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 2714
    goto :goto_0

    .line 2715
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v3

    .line 2716
    .local v3, "ioe":Ljava/io/IOException;
    const-string v6, "DevicePolicyManagerService"

    const-string v8, "Problem reading cert"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 2717
    goto :goto_0

    .line 2725
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "pemCert":[B
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_1

    .line 2726
    :try_start_4
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2727
    const/4 v4, 0x0

    .line 2725
    :cond_1
    throw v6
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2730
    :catch_2
    move-exception v2

    .line 2731
    .local v2, "e1":Ljava/lang/InterruptedException;
    const-string v6, "DevicePolicyManagerService"

    const-string v8, "installCaCertsToKeyChain(): "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2732
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    move v6, v7

    .line 2734
    goto :goto_0
.end method

.method public isActivePasswordSufficient(I)Z
    .locals 8
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2336
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2338
    .local v0, "ident":J
    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v6, :cond_0

    .line 2378
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2370
    :goto_1
    return v4

    .line 2341
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2342
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2343
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2347
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2350
    iget v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/4 v7, 0x0

    invoke-virtual {p0, v7, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v7

    if-lt v6, v7, :cond_1

    iget v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/4 v7, 0x0

    invoke-virtual {p0, v7, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 2352
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2378
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v5

    .line 2352
    goto :goto_1

    .line 2355
    :cond_2
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {p0, v6, p1}, Lcom/android/server/DevicePolicyManagerService;->getSimplePasswordEnabled(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2356
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_3

    .line 2357
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2358
    .local v2, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isDevicePasswordSimple(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2359
    const-string v4, "DevicePolicyManagerService"

    const-string v6, "isActivePasswordSufficient() : simple password is not allowed"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2378
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v5

    .line 2360
    goto :goto_1

    .line 2363
    .end local v2    # "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_3
    :try_start_4
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "isActivePasswordSufficient() : fail to get isDevicePasswordSimple() due to mContext == null"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v6

    const/high16 v7, 0x60000

    if-eq v6, v7, :cond_5

    .line 2368
    monitor-exit p0

    goto :goto_0

    .line 2376
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2378
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2370
    .restart local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_5
    :try_start_6
    iget v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    const/4 v7, 0x0

    invoke-virtual {p0, v7, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v7

    if-lt v6, v7, :cond_6

    iget v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    const/4 v7, 0x0

    invoke-virtual {p0, v7, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v7

    if-lt v6, v7, :cond_6

    iget v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    const/4 v7, 0x0

    invoke-virtual {p0, v7, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v7

    if-lt v6, v7, :cond_6

    iget v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    const/4 v7, 0x0

    invoke-virtual {p0, v7, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v7

    if-lt v6, v7, :cond_6

    iget v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    const/4 v7, 0x0

    invoke-virtual {p0, v7, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v7

    if-lt v6, v7, :cond_6

    iget v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    const/4 v7, 0x0

    invoke-virtual {p0, v7, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v7

    if-lt v6, v7, :cond_6

    :goto_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_6
    move v4, v5

    goto :goto_2
.end method

.method public isAdminActive(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 1720
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1725
    :goto_0
    return v0

    .line 1723
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1724
    monitor-enter p0

    .line 1725
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1726
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDeviceOwner(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3554
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 3558
    :goto_0
    return v0

    .line 3557
    :cond_0
    monitor-enter p0

    .line 3558
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 3560
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSupportTrustZoneForODE(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 5293
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_1

    .line 5306
    :cond_0
    :goto_0
    return v3

    .line 5296
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 5298
    const-string v4, "ro.securestorage.support"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5299
    .local v2, "ssStatus":Ljava/lang/String;
    const-string v4, "ro.securestorage.knox"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5300
    .local v1, "ssKnoxStatus":Ljava/lang/String;
    const-string v4, "security.mdpp"

    const-string v5, "None"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5302
    .local v0, "mdppStatus":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Enabled"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Ready"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Enforcing"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5304
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method loadDeviceOwner()V
    .locals 1

    .prologue
    .line 881
    monitor-enter p0

    .line 882
    :try_start_0
    invoke-static {}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-direct {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    .line 885
    :cond_0
    monitor-exit p0

    .line 886
    return-void

    .line 885
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lockNow()V
    .locals 2

    .prologue
    .line 2674
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 2684
    :goto_0
    return-void

    .line 2677
    :cond_0
    monitor-enter p0

    .line 2680
    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2682
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->lockNowUnchecked()V

    .line 2683
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method manageAllowThirdPartyApps(I)V
    .locals 13
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4584
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v11

    .line 4585
    .local v11, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$700(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v7

    .line 4587
    .local v7, "allowListRecord":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/DevicePolicyManagerService;->getAllowAppListThirdParty(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v6

    .line 4589
    .local v6, "allowList":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 4590
    .local v8, "arr":[Ljava/lang/String;
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 4591
    .local v12, "thirdPartyList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v12, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4592
    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4594
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    .line 4596
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4597
    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->disableThirdPartyApps(ZI)V

    .line 4606
    :goto_0
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 4609
    .local v10, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4610
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4611
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4612
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    invoke-interface {v2, v1, p1}, Landroid/content/IHarmonyEAS;->getPackageNameFromHash(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4613
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    .line 4616
    :try_start_1
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 4617
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 4618
    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4620
    :catch_0
    move-exception v9

    .line 4621
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 4626
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "s":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v9

    .line 4627
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4629
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v10    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_2
    return-void

    .line 4598
    :cond_2
    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4599
    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->disableThirdPartyApps(ZI)V

    goto :goto_0

    .line 4601
    :cond_3
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 4602
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enableAllThirdPartyApps(I)V

    goto :goto_2
.end method

.method manageBlockedApplications(I)V
    .locals 13
    .param p1, "userHandle"    # I

    .prologue
    .line 4775
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/DevicePolicyManagerService;->getBlockListInRom(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v8

    .line 4776
    .local v8, "blockedList":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v12

    .line 4777
    .local v12, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mBlockListRecordInRom:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$800(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v7

    .line 4780
    .local v7, "blockListInROM":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4781
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enableAllBlockedListApps(I)V

    .line 4783
    :cond_0
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4785
    .local v6, "arr":[Ljava/lang/String;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 4786
    .local v11, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v11, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4787
    const-string v2, ""

    invoke-virtual {v11, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4789
    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4790
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 4813
    :cond_1
    :goto_0
    return-void

    .line 4796
    :cond_2
    :try_start_0
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 4797
    .local v10, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4798
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4799
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4800
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_3

    .line 4802
    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_1
    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 4803
    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4804
    :catch_0
    move-exception v2

    goto :goto_1

    .line 4810
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "s":Ljava/lang/String;
    .end local v10    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_1
    move-exception v9

    .line 4811
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyChanges(Landroid/content/ComponentName;ZI)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "notifyChanges"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4504
    const/4 v1, 0x0

    .line 4506
    .local v1, "enforceNotification":Z
    if-nez p1, :cond_1

    .line 4526
    :cond_0
    :goto_0
    return-void

    .line 4510
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4511
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "notifyChanges(): Not Email Admin not proceeding."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4515
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4516
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    .line 4519
    if-eqz p2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    if-nez v2, :cond_3

    .line 4520
    const/4 v1, 0x1

    .line 4522
    :cond_3
    iput-boolean p2, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    .line 4523
    if-eqz v1, :cond_0

    .line 4524
    const/4 v2, 0x0

    invoke-direct {p0, p3, v2}, Lcom/android/server/DevicePolicyManagerService;->sendChangedNotification(IZ)V

    goto :goto_0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 1765
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    move v3, v4

    .line 1777
    :goto_0
    return v3

    .line 1768
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1769
    monitor-enter p0

    .line 1770
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 1771
    .local v2, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1772
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1773
    iget-object v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1774
    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1778
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1772
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1777
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    goto :goto_0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 5125
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_SECURITY"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5128
    .local v1, "ident":J
    const v3, 0x10402eb

    :try_start_0
    invoke-static {v3}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 5130
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5131
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, p1, v5}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5135
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5137
    return-void

    .line 5132
    :catch_0
    move-exception v0

    .line 5133
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "Failure talking with power manager"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5135
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public recoverPassword(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 4448
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4451
    monitor-enter p0

    .line 4452
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 4454
    .local v0, "ident":J
    :try_start_1
    const-string v2, "android.app.action.ACTION_RECOVERY_PASSWORD_REQUESTED"

    const/16 v3, 0xa

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4458
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4460
    monitor-exit p0

    .line 4461
    return-void

    .line 4458
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4460
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1782
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_1

    .line 1816
    :cond_0
    :goto_0
    return-void

    .line 1785
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1788
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEDMService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->isAdminRemovableInternal(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1795
    :goto_1
    monitor-enter p0

    .line 1796
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1797
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_2

    .line 1798
    monitor-exit p0

    goto :goto_0

    .line 1815
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1800
    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 1802
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v4}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1804
    monitor-exit p0

    goto :goto_0

    .line 1806
    :cond_3
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v1

    .line 1811
    .local v1, "ident":J
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1813
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1815
    monitor-exit p0

    goto :goto_0

    .line 1813
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1791
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "ident":J
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1101
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1102
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    .line 1103
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    new-instance v2, Lcom/android/server/DevicePolicyManagerService$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService$2;-><init>(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 1145
    :cond_0
    return-void
.end method

.method removeUserData(I)V
    .locals 8
    .param p1, "userHandle"    # I

    .prologue
    .line 850
    monitor-enter p0

    .line 851
    if-nez p1, :cond_0

    .line 852
    :try_start_0
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Tried to remove device policy file for user 0! Ignoring."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    monitor-exit p0

    .line 878
    :goto_0
    return-void

    .line 855
    :cond_0
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .line 856
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v3, :cond_2

    .line 858
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 859
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEDMService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 863
    :catch_0
    move-exception v1

    .line 864
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "DevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to remove active admin from edm database "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 877
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 871
    .restart local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 873
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v5

    const-string v6, "device_policies.xml"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 875
    .local v4, "policyFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 876
    const-string v5, "DevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed device policy file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    .line 3111
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3112
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    monitor-enter p0

    .line 3116
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3117
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 3119
    .local v0, "ident":J
    :try_start_1
    iget v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 3120
    const/4 v2, 0x1

    .line 3121
    .local v2, "isNotiFromLockScreen":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 3122
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-eqz v4, :cond_0

    .line 3130
    const-string v4, "android.app.action.ACTION_PASSWORD_FAILED"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3134
    :cond_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3136
    monitor-exit p0

    .line 3137
    return-void

    .line 3134
    .end local v2    # "isNotiFromLockScreen":Z
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3136
    .end local v0    # "ident":J
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    .line 3140
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3141
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3144
    monitor-enter p0

    .line 3145
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3146
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v4, :cond_0

    iget v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v4, :cond_2

    .line 3147
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 3149
    .local v0, "ident":J
    const/4 v4, 0x0

    :try_start_1
    iput v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 3150
    const/4 v4, -0x1

    iput v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 3151
    const/4 v2, 0x1

    .line 3152
    .local v2, "isNotiFromLockScreen":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 3153
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-eqz v4, :cond_1

    .line 3154
    const-string v4, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3158
    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3161
    .end local v0    # "ident":J
    .end local v2    # "isNotiFromLockScreen":Z
    :cond_2
    monitor-exit p0

    .line 3162
    return-void

    .line 3158
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3161
    .end local v0    # "ident":J
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method public resetPassword(Ljava/lang/String;II)Z
    .locals 32
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2445
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    move/from16 v29, v0

    if-nez v29, :cond_0

    .line 2446
    const/16 v29, 0x0

    .line 2583
    :goto_0
    return v29

    .line 2448
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2450
    monitor-enter p0

    .line 2454
    const/16 v29, 0x0

    const/16 v30, 0x2

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2457
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v24

    .line 2458
    .local v24, "quality":I
    if-eqz v24, :cond_2

    .line 2459
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v25

    .line 2460
    .local v25, "realQuality":I
    move/from16 v0, v25

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    const/high16 v29, 0x60000

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    .line 2462
    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: password quality 0x"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required quality 0x"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    const/16 v29, 0x0

    monitor-exit p0

    goto :goto_0

    .line 2545
    .end local v24    # "quality":I
    .end local v25    # "realQuality":I
    :catchall_0
    move-exception v29

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v29

    .line 2468
    .restart local v24    # "quality":I
    .restart local v25    # "realQuality":I
    :cond_1
    :try_start_1
    move/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 2471
    .end local v25    # "realQuality":I
    :cond_2
    const/high16 v29, 0x70000

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 2472
    const-string v29, "DevicePolicyManagerService"

    const-string v30, "resetPassword: current password quality is smartcard numeric and can\'t set reset password"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2475
    :cond_3
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v11

    .line 2476
    .local v11, "length":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v29

    if-ge v0, v11, :cond_4

    .line 2477
    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: password length "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required length "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2481
    :cond_4
    const/high16 v29, 0x60000

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    .line 2482
    const/4 v12, 0x0

    .line 2483
    .local v12, "letters":I
    const/16 v27, 0x0

    .line 2484
    .local v27, "uppercase":I
    const/4 v13, 0x0

    .line 2485
    .local v13, "lowercase":I
    const/16 v22, 0x0

    .line 2486
    .local v22, "numbers":I
    const/16 v26, 0x0

    .line 2487
    .local v26, "symbols":I
    const/16 v21, 0x0

    .line 2488
    .local v21, "nonletter":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v29

    if-ge v7, v0, :cond_8

    .line 2489
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2490
    .local v5, "c":C
    const/16 v29, 0x41

    move/from16 v0, v29

    if-lt v5, v0, :cond_5

    const/16 v29, 0x5a

    move/from16 v0, v29

    if-gt v5, v0, :cond_5

    .line 2491
    add-int/lit8 v12, v12, 0x1

    .line 2492
    add-int/lit8 v27, v27, 0x1

    .line 2488
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2493
    :cond_5
    const/16 v29, 0x61

    move/from16 v0, v29

    if-lt v5, v0, :cond_6

    const/16 v29, 0x7a

    move/from16 v0, v29

    if-gt v5, v0, :cond_6

    .line 2494
    add-int/lit8 v12, v12, 0x1

    .line 2495
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2496
    :cond_6
    const/16 v29, 0x30

    move/from16 v0, v29

    if-lt v5, v0, :cond_7

    const/16 v29, 0x39

    move/from16 v0, v29

    if-gt v5, v0, :cond_7

    .line 2497
    add-int/lit8 v22, v22, 0x1

    .line 2498
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 2500
    :cond_7
    add-int/lit8 v26, v26, 0x1

    .line 2501
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 2504
    .end local v5    # "c":C
    :cond_8
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v14

    .line 2505
    .local v14, "neededLetters":I
    if-ge v12, v14, :cond_9

    .line 2506
    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: number of letters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required number of letters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2510
    :cond_9
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v17

    .line 2511
    .local v17, "neededNumbers":I
    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 2512
    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: number of numerical digits "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required number of numerical digits "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2517
    :cond_a
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v15

    .line 2518
    .local v15, "neededLowerCase":I
    if-ge v13, v15, :cond_b

    .line 2519
    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: number of lowercase letters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required number of lowercase letters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2524
    :cond_b
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v19

    .line 2525
    .local v19, "neededUpperCase":I
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 2526
    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: number of uppercase letters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required number of uppercase letters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2531
    :cond_c
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v18

    .line 2532
    .local v18, "neededSymbols":I
    move/from16 v0, v26

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    .line 2533
    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: number of special symbols "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required number of special symbols "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2537
    :cond_d
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v16

    .line 2538
    .local v16, "neededNonLetter":I
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_e

    .line 2539
    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: number of non-letter characters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required number of non-letter characters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2545
    .end local v7    # "i":I
    .end local v12    # "letters":I
    .end local v13    # "lowercase":I
    .end local v14    # "neededLetters":I
    .end local v15    # "neededLowerCase":I
    .end local v16    # "neededNonLetter":I
    .end local v17    # "neededNumbers":I
    .end local v18    # "neededSymbols":I
    .end local v19    # "neededUpperCase":I
    .end local v21    # "nonletter":I
    .end local v22    # "numbers":I
    .end local v26    # "symbols":I
    .end local v27    # "uppercase":I
    :cond_e
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2547
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2548
    .local v6, "callingUid":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v23

    .line 2549
    .local v23, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v29, v0

    if-ltz v29, :cond_f

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v6, :cond_f

    .line 2550
    const-string v29, "DevicePolicyManagerService"

    const-string v30, "resetPassword: already set by another uid and not entered by user"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 2556
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2558
    .local v8, "ident":J
    :try_start_2
    new-instance v28, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2560
    .local v28, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v29

    if-eqz v29, :cond_10

    .line 2561
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->resetHard(I)Z

    .line 2564
    :cond_10
    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v29

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    .line 2565
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2566
    and-int/lit8 v29, p2, 0x1

    if-eqz v29, :cond_12

    move/from16 v20, v6

    .line 2568
    .local v20, "newOwner":I
    :goto_3
    :try_start_3
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    .line 2569
    move/from16 v0, v20

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 2570
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2572
    :cond_11
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2574
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2578
    new-instance v10, Landroid/content/Intent;

    const-string v29, "android.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2579
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2583
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 2566
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v20    # "newOwner":I
    :cond_12
    const/16 v20, -0x1

    goto :goto_3

    .line 2572
    .restart local v20    # "newOwner":I
    :catchall_1
    move-exception v29

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v29
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2574
    .end local v20    # "newOwner":I
    .end local v28    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :catchall_2
    move-exception v29

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v29
.end method

.method public satisfyFIPSPassword(I)Z
    .locals 8
    .param p1, "userHandle"    # I

    .prologue
    .line 5157
    iget-boolean v6, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v6, :cond_0

    .line 5158
    const/4 v5, 0x0

    .line 5183
    :goto_0
    return v5

    .line 5161
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 5162
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 5163
    .local v3, "mode":I
    const/4 v5, 0x0

    .line 5165
    .local v5, "ret":Z
    monitor-enter p0

    .line 5166
    :try_start_0
    iget-object v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5167
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 5168
    iget-object v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 5169
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v3, v6, :cond_1

    .line 5170
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 5167
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5174
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    const/high16 v6, 0x20000

    if-lt v3, v6, :cond_4

    .line 5175
    iget v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-lt v6, v3, :cond_3

    .line 5176
    const/4 v5, 0x1

    .line 5182
    :cond_3
    :goto_2
    monitor-exit p0

    goto :goto_0

    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 5178
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_4
    :try_start_1
    iget v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/high16 v7, 0x50000

    if-lt v6, v7, :cond_3

    iget v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x6

    if-lt v6, v7, :cond_3

    .line 5180
    const/4 v5, 0x1

    goto :goto_2
.end method

.method sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1029
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 1030
    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 16
    .param p1, "admin"    # Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1033
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v2, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1035
    const-string v1, "android.app.action.ACTION_PASSWORD_EXPIRING"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1036
    const-string v1, "expiration"

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1038
    :cond_0
    if-eqz p3, :cond_3

    .line 1040
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PersonaManager;

    .line 1041
    .local v12, "persona":Landroid/os/PersonaManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1042
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1044
    .local v13, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z

    move-result v11

    .line 1045
    .local v11, "isUserRunning":Z
    const-string v1, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUserRunning -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    if-nez v11, :cond_1

    .line 1047
    const-string v1, "DevicePolicyManagerService"

    const-string v3, "result.onReceive called"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1085
    .end local v11    # "isUserRunning":Z
    .end local v13    # "token":J
    :goto_0
    return-void

    .line 1051
    .restart local v13    # "token":J
    :catch_0
    move-exception v10

    .line 1052
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1058
    .end local v13    # "token":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1054
    .restart local v13    # "token":J
    :catchall_0
    move-exception v1

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1065
    .end local v12    # "persona":Landroid/os/PersonaManager;
    .end local v13    # "token":J
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v15

    .line 1067
    .local v15, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PersonaManager;

    .line 1068
    .restart local v12    # "persona":Landroid/os/PersonaManager;
    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1070
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z

    move-result v11

    .line 1071
    .restart local v11    # "isUserRunning":Z
    const-string v1, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUserRunning -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    if-nez v11, :cond_4

    .line 1073
    sget-object v15, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1080
    .end local v11    # "isUserRunning":Z
    :cond_4
    :goto_1
    const-string v1, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending admin enabled broadcast intent to user -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1075
    :catch_1
    move-exception v10

    .line 1076
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v1, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method sendAdminCommandLocked(Ljava/lang/String;II)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1088
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 1089
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1090
    .local v1, "count":I
    if-lez v1, :cond_1

    .line 1091
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1092
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1093
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1094
    invoke-virtual {p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 1091
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1098
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .locals 12
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 1674
    iget-boolean v9, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v9, :cond_0

    .line 1717
    :goto_0
    return-void

    .line 1677
    :cond_0
    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1681
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 1682
    .local v7, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v4

    .line 1683
    .local v4, "info":Landroid/app/admin/DeviceAdminInfo;
    if-nez v4, :cond_1

    .line 1684
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad admin: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1686
    :cond_1
    monitor-enter p0

    .line 1687
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 1689
    .local v2, "ident":J
    if-nez p2, :cond_2

    :try_start_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1690
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Admin is already added"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1714
    :catchall_0
    move-exception v9

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 1716
    .end local v2    # "ident":J
    :catchall_1
    move-exception v9

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    .line 1692
    .restart local v2    # "ident":J
    :cond_2
    :try_start_3
    new-instance v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v5, v4}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 1693
    .local v5, "newAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    const/4 v8, -0x1

    .line 1695
    .local v8, "replaceIndex":I
    if-eqz p2, :cond_3

    .line 1696
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1697
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1698
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1699
    .local v6, "oldAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v9, v6, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1700
    move v8, v1

    .line 1705
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v6    # "oldAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    .line 1706
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1707
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, p3}, Lcom/android/server/DevicePolicyManagerService;->enableIfNecessary(Ljava/lang/String;I)V

    .line 1711
    :goto_2
    const/4 v9, 0x0

    invoke-direct {p0, p3, v9}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 1712
    const-string v9, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {p0, v5, v9}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1714
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1716
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 1697
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v6    # "oldAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1709
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v6    # "oldAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_5
    :try_start_5
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public setActivePasswordState(IIIIIIIII)V
    .locals 6
    .param p1, "quality"    # I
    .param p2, "length"    # I
    .param p3, "letters"    # I
    .param p4, "uppercase"    # I
    .param p5, "lowercase"    # I
    .param p6, "numbers"    # I
    .param p7, "symbols"    # I
    .param p8, "nonletter"    # I
    .param p9, "userHandle"    # I

    .prologue
    .line 3042
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    .line 3089
    :goto_0
    return-void

    .line 3045
    :cond_0
    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3046
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3048
    invoke-virtual {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 3052
    .local v2, "p":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/high16 v3, 0x70000

    if-ne p1, v3, :cond_1

    .line 3053
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3054
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid quality constant: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3058
    :cond_1
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 3062
    :cond_2
    monitor-enter p0

    .line 3063
    :try_start_0
    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-ne v3, p1, :cond_3

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-ne v3, p2, :cond_3

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_3

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-ne v3, p3, :cond_3

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-ne v3, p4, :cond_3

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-ne v3, p5, :cond_3

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-ne v3, p6, :cond_3

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-ne v3, p7, :cond_3

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-eq v3, p8, :cond_4

    .line 3068
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 3070
    .local v0, "ident":J
    :try_start_1
    iput p1, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 3071
    iput p2, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 3072
    iput p3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 3073
    iput p5, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 3074
    iput p4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 3075
    iput p6, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 3076
    iput p7, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 3077
    iput p8, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 3078
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 3079
    const/4 v3, 0x1

    invoke-direct {p0, p9, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 3080
    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->updatePasswordExpirationsLocked(I)V

    .line 3081
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 3082
    const-string v3, "android.app.action.ACTION_PASSWORD_CHANGED"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p9}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3085
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3088
    .end local v0    # "ident":J
    :cond_4
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 3085
    .restart local v0    # "ident":J
    :catchall_1
    move-exception v3

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAdminPermissions(Landroid/content/ComponentName;I)V
    .locals 7
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3765
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3766
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_0

    .line 3785
    :goto_0
    return-void

    .line 3771
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v3

    .line 3772
    .local v3, "info":Landroid/app/admin/DeviceAdminInfo;
    if-nez v3, :cond_1

    .line 3773
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad admin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3776
    :cond_1
    monitor-enter p0

    .line 3777
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 3779
    .local v1, "ident":J
    :try_start_1
    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPermissions()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo;->setPermissions(J)V

    .line 3780
    const/4 v4, 0x0

    invoke-direct {p0, p2, v4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3782
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3784
    monitor-exit p0

    goto :goto_0

    .end local v1    # "ident":J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 3782
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v4

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowAppListThirdParty(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 4549
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4551
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    monitor-enter p0

    .line 4553
    if-nez p1, :cond_0

    .line 4554
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4577
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4558
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4559
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Not Email Admin not proceeding."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4560
    monitor-exit p0

    .line 4578
    :goto_0
    return-void

    .line 4563
    :cond_1
    const/16 v4, 0x16

    invoke-virtual {p0, p1, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4566
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowThirdPartyList:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4567
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowThirdPartyList:Ljava/lang/String;

    .line 4568
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 4571
    .local v1, "ident":J
    const/4 v4, 0x0

    :try_start_2
    invoke-direct {p0, p3, v4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 4572
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->manageAllowThirdPartyApps(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4574
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4577
    .end local v1    # "ident":J
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 4574
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowBluetoothMode(Landroid/content/ComponentName;II)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 4173
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4174
    monitor-enter p0

    .line 4175
    if-nez p1, :cond_0

    .line 4176
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4190
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4178
    :cond_0
    const/16 v3, 0x11

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4180
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    if-eq v3, p2, :cond_1

    .line 4181
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    .line 4183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 4185
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4187
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4190
    .end local v1    # "ident":J
    :cond_1
    monitor-exit p0

    .line 4191
    return-void

    .line 4187
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowBrowser(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4076
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4077
    monitor-enter p0

    .line 4078
    if-nez p1, :cond_0

    .line 4079
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4093
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4081
    :cond_0
    const/16 v3, 0xf

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4083
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    if-eq v3, p2, :cond_1

    .line 4084
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    .line 4086
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 4088
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4090
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4093
    .end local v1    # "ident":J
    :cond_1
    monitor-exit p0

    .line 4094
    return-void

    .line 4090
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowCamera(Landroid/content/ComponentName;ZI)V
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3928
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/DevicePolicyManagerService;->setCameraDisabled(Landroid/content/ComponentName;ZI)V

    .line 3929
    return-void

    .line 3928
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAllowDesktopSync(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4231
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4232
    monitor-enter p0

    .line 4233
    if-nez p1, :cond_0

    .line 4234
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4248
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4236
    :cond_0
    const/16 v3, 0x12

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4238
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    if-eq v3, p2, :cond_1

    .line 4239
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    .line 4241
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 4243
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4245
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4248
    .end local v1    # "ident":J
    :cond_1
    monitor-exit p0

    .line 4249
    return-void

    .line 4245
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowInternetSharing(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4118
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4119
    monitor-enter p0

    .line 4120
    if-nez p1, :cond_0

    .line 4121
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4135
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4123
    :cond_0
    const/16 v3, 0x10

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4125
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    if-eq v3, p2, :cond_1

    .line 4126
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    .line 4128
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 4130
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4132
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4135
    .end local v1    # "ident":J
    :cond_1
    monitor-exit p0

    .line 4136
    return-void

    .line 4132
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowIrDA(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4286
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4287
    monitor-enter p0

    .line 4288
    if-nez p1, :cond_0

    .line 4289
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4303
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4291
    :cond_0
    const/16 v3, 0x13

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4293
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    if-eq v3, p2, :cond_1

    .line 4294
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    .line 4296
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 4298
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4300
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4303
    .end local v1    # "ident":J
    :cond_1
    monitor-exit p0

    .line 4304
    return-void

    .line 4300
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowPOPIMAPEmail(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4034
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4035
    monitor-enter p0

    .line 4036
    if-nez p1, :cond_0

    .line 4037
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4051
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4039
    :cond_0
    const/16 v3, 0xe

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4041
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    if-eq v3, p2, :cond_1

    .line 4042
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    .line 4044
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 4046
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4048
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4051
    .end local v1    # "ident":J
    :cond_1
    monitor-exit p0

    .line 4052
    return-void

    .line 4048
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowStorageCard(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3830
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3831
    monitor-enter p0

    .line 3832
    if-nez p1, :cond_0

    .line 3833
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3847
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3835
    :cond_0
    const/16 v3, 0xb

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3837
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    if-eq v3, p2, :cond_1

    .line 3838
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    .line 3840
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 3842
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3844
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3847
    .end local v1    # "ident":J
    :cond_1
    monitor-exit p0

    .line 3848
    return-void

    .line 3844
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowTextMessaging(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3992
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3993
    monitor-enter p0

    .line 3994
    if-nez p1, :cond_0

    .line 3995
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4009
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3997
    :cond_0
    const/16 v3, 0xd

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3999
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    if-eq v3, p2, :cond_1

    .line 4000
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    .line 4002
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 4004
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4006
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4009
    .end local v1    # "ident":J
    :cond_1
    monitor-exit p0

    .line 4010
    return-void

    .line 4006
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowUnsignedApp(Landroid/content/ComponentName;ZI)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4842
    monitor-enter p0

    .line 4843
    if-nez p1, :cond_0

    .line 4844
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4872
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4847
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4848
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Not Email Admin not proceeding."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4849
    monitor-exit p0

    .line 4873
    :goto_0
    return-void

    .line 4851
    :cond_1
    const/4 v1, 0x0

    .line 4852
    .local v1, "handle":Z
    const/16 v4, 0x19

    invoke-virtual {p0, p1, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4854
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    if-eq v4, p2, :cond_3

    .line 4855
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    .line 4856
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 4858
    .local v2, "ident":J
    if-nez p2, :cond_2

    .line 4860
    :try_start_2
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "install_non_market_apps"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4863
    const/4 v1, 0x1

    .line 4865
    :cond_2
    invoke-virtual {p0, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->handleAllowUnsignedApp(ZI)V

    .line 4867
    const/4 v4, 0x0

    invoke-direct {p0, p3, v4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4869
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4872
    .end local v2    # "ident":J
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 4869
    .restart local v2    # "ident":J
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowUnsignedInstallationPkg(Landroid/content/ComponentName;ZI)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4950
    monitor-enter p0

    .line 4951
    if-nez p1, :cond_0

    .line 4952
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4975
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4955
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4956
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "Not Email Admin not proceeding."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4957
    monitor-exit p0

    .line 4976
    :goto_0
    return-void

    .line 4959
    :cond_1
    const/16 v3, 0x1a

    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4962
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    if-eq v3, p2, :cond_3

    .line 4963
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    .line 4964
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4966
    .local v1, "ident":J
    if-nez p2, :cond_2

    .line 4967
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "install_non_market_apps"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4970
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4972
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4975
    .end local v1    # "ident":J
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 4972
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowWifi(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3936
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3937
    monitor-enter p0

    .line 3938
    if-nez p1, :cond_0

    .line 3939
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3953
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3941
    :cond_0
    const/16 v3, 0xc

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3943
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    if-eq v3, p2, :cond_1

    .line 3944
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    .line 3946
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 3948
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3950
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3953
    .end local v1    # "ident":J
    :cond_1
    monitor-exit p0

    .line 3954
    return-void

    .line 3950
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setBlockListInRom(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 4744
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4746
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    monitor-enter p0

    .line 4747
    if-nez p1, :cond_0

    .line 4748
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4770
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4752
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4753
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Not Email Admin not proceeding."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    monitor-exit p0

    .line 4771
    :goto_0
    return-void

    .line 4756
    :cond_1
    const/16 v4, 0x17

    invoke-virtual {p0, p1, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4758
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->blockInRomList:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4760
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->blockInRomList:Ljava/lang/String;

    .line 4762
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 4764
    .local v1, "ident":J
    const/4 v4, 0x0

    :try_start_2
    invoke-direct {p0, p3, v4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 4765
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->manageBlockedApplications(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4767
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4770
    .end local v1    # "ident":J
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 4767
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;ZI)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3426
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 3442
    :goto_0
    return-void

    .line 3429
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3430
    monitor-enter p0

    .line 3431
    if-nez p1, :cond_1

    .line 3432
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3441
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3434
    :cond_1
    const/16 v1, 0x8

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3436
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eq v1, p2, :cond_2

    .line 3437
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    .line 3438
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 3440
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 3441
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;

    .prologue
    .line 3531
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 3532
    const/4 v0, 0x0

    .line 3543
    :goto_0
    return v0

    .line 3534
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3536
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for device owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3539
    :cond_2
    monitor-enter p0

    .line 3540
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3541
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-direct {v0, p1, p2}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    .line 3542
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->writeOwnerFile()V

    .line 3543
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 3549
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3545
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set device owner to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", owner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", device_provisioned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method protected setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 893
    const/16 v19, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v10

    .line 894
    .local v10, "expiration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 895
    .local v12, "now":J
    sub-long v15, v10, v12

    .line 897
    .local v15, "timeToExpire":J
    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-nez v19, :cond_1

    .line 899
    const-wide/16 v7, 0x0

    .line 913
    .local v7, "alarmTime":J
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 915
    .local v17, "token":J
    :try_start_0
    const-string v19, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    .line 916
    .local v9, "am":Landroid/app/AlarmManager;
    const/16 v19, 0x15c3

    new-instance v20, Landroid/content/Intent;

    const-string v21, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v21, 0x48000000    # 131072.0f

    new-instance v22, Landroid/os/UserHandle;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v14

    .line 920
    .local v14, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v9, v14}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 921
    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-eqz v19, :cond_0

    .line 922
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0, v7, v8, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    :cond_0
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 927
    return-void

    .line 900
    .end local v7    # "alarmTime":J
    .end local v9    # "am":Landroid/app/AlarmManager;
    .end local v14    # "pi":Landroid/app/PendingIntent;
    .end local v17    # "token":J
    :cond_1
    const-wide/16 v19, 0x0

    cmp-long v19, v15, v19

    if-gtz v19, :cond_2

    .line 902
    const-wide/32 v19, 0x5265c00

    add-long v7, v12, v19

    .restart local v7    # "alarmTime":J
    goto :goto_0

    .line 906
    .end local v7    # "alarmTime":J
    :cond_2
    const-wide/32 v19, 0x5265c00

    rem-long v5, v15, v19

    .line 907
    .local v5, "alarmInterval":J
    const-wide/16 v19, 0x0

    cmp-long v19, v5, v19

    if-nez v19, :cond_3

    .line 908
    const-wide/32 v5, 0x5265c00

    .line 910
    :cond_3
    add-long v7, v12, v5

    .restart local v7    # "alarmTime":J
    goto :goto_0

    .line 925
    .end local v5    # "alarmInterval":J
    .restart local v17    # "token":J
    :catchall_0
    move-exception v19

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/lang/String;
    .param p3, "exclusionList"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    .line 3166
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 3167
    const/4 v3, 0x0

    .line 3214
    :goto_0
    return-object v3

    .line 3169
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3170
    monitor-enter p0

    .line 3171
    if-nez p1, :cond_1

    .line 3172
    :try_start_0
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "ComponentName is null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3215
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 3176
    :cond_1
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p0, v8}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 3177
    .local v7, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v8, 0x5

    invoke-virtual {p0, p1, v8}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3182
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 3183
    .local v2, "compSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 3184
    .local v3, "component":Landroid/content/ComponentName;
    iget-object v8, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3185
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v8, :cond_2

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3188
    monitor-exit p0

    goto :goto_0

    .line 3193
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    if-eqz v8, :cond_4

    .line 3194
    const-string v8, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Only the owner is allowed to set the global proxy. User "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not permitted."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 3198
    :cond_4
    if-nez p2, :cond_5

    .line 3199
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 3200
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 3201
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 3211
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3212
    .local v5, "origId":J
    invoke-direct {p0, v7}, Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 3213
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3214
    const/4 v3, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 3204
    .end local v5    # "origId":J
    :cond_5
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 3205
    iput-object p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 3206
    iput-object p3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 3484
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 3500
    :goto_0
    return-void

    .line 3487
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3488
    monitor-enter p0

    .line 3489
    if-nez p1, :cond_1

    .line 3490
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3499
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3492
    :cond_1
    const/16 v1, 0x9

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3494
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    if-eq v1, p2, :cond_2

    .line 3495
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    .line 3496
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 3498
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 3499
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "num"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2396
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2414
    :goto_0
    return-void

    .line 2399
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2400
    monitor-enter p0

    .line 2404
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2406
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2409
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eq v1, p2, :cond_1

    .line 2410
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 2411
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2413
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;JI)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 2587
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2605
    :goto_0
    return-void

    .line 2590
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2591
    monitor-enter p0

    .line 2592
    if-nez p1, :cond_1

    .line 2593
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2604
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2596
    :cond_1
    const/4 v1, 0x3

    :try_start_1
    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2599
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-wide v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v1, v1, p2

    if-eqz v1, :cond_2

    .line 2600
    iput-wide p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 2601
    const/4 v1, 0x0

    invoke-direct {p0, p4, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2602
    invoke-virtual {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2604
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J
    .param p4, "userHandle"    # I

    .prologue
    const-wide/16 v3, 0x0

    .line 1976
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 2004
    :goto_0
    return-void

    .line 1979
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1980
    monitor-enter p0

    .line 1981
    if-nez p1, :cond_1

    .line 1982
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2003
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1984
    :cond_1
    cmp-long v5, p2, v3

    if-gez v5, :cond_2

    .line 1985
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Timeout must be >= 0 ms"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1988
    :cond_2
    const/4 v5, 0x6

    invoke-virtual {p0, p1, v5, p4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1992
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v5, p2, v3

    if-lez v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long v1, p2, v5

    .line 1993
    .local v1, "expiration":J
    :goto_1
    iput-wide v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 1994
    iput-wide p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 1995
    cmp-long v3, p2, v3

    if-lez v3, :cond_3

    .line 1996
    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordExpiration(): password will expire on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, p4, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2002
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2003
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "expiration":J
    :cond_4
    move-wide v1, v3

    .line 1992
    goto :goto_1
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1931
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1948
    :goto_0
    return-void

    .line 1934
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1935
    monitor-enter p0

    .line 1936
    if-nez p1, :cond_1

    .line 1937
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1947
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1940
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1943
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eq v1, p2, :cond_2

    .line 1944
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 1945
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 1947
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1886
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1903
    :goto_0
    return-void

    .line 1889
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1890
    monitor-enter p0

    .line 1891
    if-nez p1, :cond_1

    .line 1892
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1902
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1895
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1898
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-eq v1, p2, :cond_2

    .line 1899
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 1900
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 1902
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2156
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2173
    :goto_0
    return-void

    .line 2159
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2160
    monitor-enter p0

    .line 2161
    if-nez p1, :cond_1

    .line 2162
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2172
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2165
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2168
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-eq v1, p2, :cond_2

    .line 2169
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 2170
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2172
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2114
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2115
    monitor-enter p0

    .line 2116
    if-nez p1, :cond_0

    .line 2117
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2127
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2120
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2123
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-eq v1, p2, :cond_1

    .line 2124
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 2125
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2127
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2128
    return-void
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2291
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2308
    :goto_0
    return-void

    .line 2294
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2295
    monitor-enter p0

    .line 2296
    if-nez p1, :cond_1

    .line 2297
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2307
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2300
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2303
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-eq v1, p2, :cond_2

    .line 2304
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 2305
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2307
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2201
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2218
    :goto_0
    return-void

    .line 2204
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2205
    monitor-enter p0

    .line 2206
    if-nez p1, :cond_1

    .line 2207
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2217
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2210
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2213
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-eq v1, p2, :cond_2

    .line 2214
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 2215
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2217
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2246
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2263
    :goto_0
    return-void

    .line 2249
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2250
    monitor-enter p0

    .line 2251
    if-nez p1, :cond_1

    .line 2252
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2262
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2255
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2258
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-eq v1, p2, :cond_2

    .line 2259
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 2260
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2262
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2069
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2086
    :goto_0
    return-void

    .line 2072
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2073
    monitor-enter p0

    .line 2074
    if-nez p1, :cond_1

    .line 2075
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2085
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2078
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2081
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-eq v1, p2, :cond_2

    .line 2082
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 2083
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2085
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;II)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1819
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    .line 1857
    :goto_0
    return-void

    .line 1825
    :cond_0
    const/high16 v4, 0x70000

    if-ne p2, v4, :cond_2

    .line 1826
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1827
    .local v3, "scLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1829
    .local v1, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isCACCardRegistered()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1831
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid quality constant: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1834
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1838
    .end local v1    # "ident":J
    .end local v3    # "scLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    invoke-static {p2}, Lcom/android/server/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 1842
    :goto_1
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1844
    monitor-enter p0

    .line 1845
    if-nez p1, :cond_3

    .line 1846
    :try_start_1
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1856
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 1849
    :cond_3
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v4, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1852
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-eq v4, p2, :cond_4

    .line 1853
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 1854
    const/4 v4, 0x0

    invoke-direct {p0, p3, v4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 1856
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 1834
    .end local v0    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .restart local v1    # "ident":J
    .restart local v3    # "scLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1
.end method

.method public setPasswordRecoverable(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3788
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3789
    monitor-enter p0

    .line 3790
    if-nez p1, :cond_0

    .line 3791
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3805
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3793
    :cond_0
    const/16 v3, 0xa

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3795
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    if-eq v3, p2, :cond_1

    .line 3796
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    .line 3798
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 3800
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3802
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3805
    .end local v1    # "ident":J
    :cond_1
    monitor-exit p0

    .line 3806
    return-void

    .line 3802
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setPropertyIntoFooter(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 5315
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_1

    .line 5345
    :cond_0
    :goto_0
    return v4

    .line 5318
    :cond_1
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 5319
    const/4 v1, 0x0

    .line 5322
    .local v1, "mountService":Landroid/os/storage/IMountService;
    const-string v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 5323
    .local v3, "service":Landroid/os/IBinder;
    if-eqz v3, :cond_2

    .line 5324
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 5325
    if-nez v1, :cond_3

    .line 5326
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Can\'t get mount interface"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5330
    :cond_2
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Can\'t get mount service"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5335
    :cond_3
    :try_start_0
    invoke-interface {v1, p2, p3}, Landroid/os/storage/IMountService;->setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 5336
    .local v2, "ret":I
    if-nez v2, :cond_0

    .line 5337
    const/4 v4, 0x1

    goto :goto_0

    .line 5341
    .end local v2    # "ret":I
    :catch_0
    move-exception v0

    .line 5342
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setRecoveryPasswordState(Landroid/content/ComponentName;ZI)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4464
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4465
    monitor-enter p0

    .line 4466
    if-nez p1, :cond_0

    .line 4467
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4491
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4469
    :cond_0
    const/16 v5, 0xa

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4472
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne p2, v5, :cond_2

    .line 4473
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 4475
    .local v1, "ident":J
    :try_start_2
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 4477
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4478
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->resetHard(I)Z

    .line 4481
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v4

    .line 4482
    .local v4, "mRecoveryPassword":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4488
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4491
    .end local v1    # "ident":J
    .end local v3    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v4    # "mRecoveryPassword":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    .line 4493
    return-void

    .line 4488
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setRequireStorageCardEncryption(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4348
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4349
    monitor-enter p0

    .line 4350
    if-nez p1, :cond_0

    .line 4351
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4365
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4353
    :cond_0
    const/16 v3, 0x14

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4355
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    if-eq v3, p2, :cond_1

    .line 4356
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    .line 4358
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 4360
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4362
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4365
    .end local v1    # "ident":J
    :cond_1
    monitor-exit p0

    .line 4366
    return-void

    .line 4362
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setSimplePasswordEnabled(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3885
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3886
    monitor-enter p0

    .line 3887
    if-nez p1, :cond_0

    .line 3888
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3902
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3890
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3892
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    if-eq v3, p2, :cond_1

    .line 3893
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    .line 3895
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 3897
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3899
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3902
    .end local v1    # "ident":J
    :cond_1
    monitor-exit p0

    .line 3903
    return-void

    .line 3899
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;ZI)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 3290
    iget-boolean v6, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v6, :cond_0

    .line 3333
    :goto_0
    return v5

    .line 3293
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3294
    monitor-enter p0

    .line 3296
    if-nez p1, :cond_1

    .line 3297
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3336
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3300
    :cond_1
    if-nez p3, :cond_2

    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    if-eqz v6, :cond_3

    .line 3302
    :cond_2
    const-string v6, "DevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Only owner is allowed to set storage encryption. User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not permitted."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    monitor-exit p0

    goto :goto_0

    .line 3307
    :cond_3
    const/4 v6, 0x7

    invoke-virtual {p0, p1, v6}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3311
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isEncryptionSupported()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3312
    monitor-exit p0

    goto :goto_0

    .line 3316
    :cond_4
    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eq v5, p2, :cond_5

    .line 3317
    iput-boolean p2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    .line 3318
    const/4 v5, 0x0

    invoke-direct {p0, p3, v5}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 3321
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 3323
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 3324
    .local v3, "newRequested":Z
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3325
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 3326
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v5, v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    or-int/2addr v3, v5

    .line 3325
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3330
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->setEncryptionRequested(Z)V

    .line 3333
    if-eqz v3, :cond_7

    const/4 v5, 0x3

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_7
    const/4 v5, 0x1

    goto :goto_2
.end method

.method syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 7
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 1547
    const-string/jumbo v5, "sys.secpolicy.camera.disabled"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1548
    .local v1, "systemState":Z
    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/DevicePolicyManagerService;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1549
    .local v0, "cameraDisabled":Z
    if-eq v0, v1, :cond_0

    .line 1550
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1552
    .local v2, "token":J
    if-eqz v0, :cond_1

    :try_start_0
    const-string v4, "1"

    .line 1555
    .local v4, "value":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, "sys.secpolicy.camera.disabled"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1557
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1560
    .end local v2    # "token":J
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    return-void

    .line 1552
    .restart local v2    # "token":J
    :cond_1
    :try_start_1
    const-string v4, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1557
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 1563
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1582
    :goto_0
    return-void

    .line 1566
    :cond_0
    monitor-enter p0

    .line 1567
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1569
    const-string v1, "device_policies_backup.xml"

    const-string v2, "device_policies.xml"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/DevicePolicyManagerService;->moveFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1570
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    .line 1571
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)Z

    .line 1572
    invoke-virtual {p0}, Lcom/android/server/DevicePolicyManagerService;->loadDeviceOwner()V

    .line 1573
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    .line 1577
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    .line 1578
    .local v0, "maximumFailedPasswordsForWipe":I
    if-eqz v0, :cond_2

    .line 1579
    const/4 v1, 0x0

    const-string v2, "security.ode.maxattempts"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->setPropertyIntoFooter(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1581
    :cond_2
    monitor-exit p0

    goto :goto_0

    .end local v0    # "maximumFailedPasswordsForWipe":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public uninstallCaCert([B)V
    .locals 12
    .param p1, "certBuffer"    # [B

    .prologue
    .line 2745
    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.MANAGE_CA_CERTIFICATES"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    new-instance v3, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 2747
    .local v3, "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    const/4 v0, 0x0

    .line 2749
    .local v0, "alias":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 2750
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2759
    :try_start_1
    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v7

    .line 2760
    .local v7, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v8

    .line 2762
    .local v8, "service":Landroid/security/IKeyChainService;
    :try_start_2
    invoke-interface {v8, v0}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2766
    :try_start_3
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2767
    :goto_0
    const/4 v7, 0x0

    .line 2773
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v8    # "service":Landroid/security/IKeyChainService;
    :goto_1
    return-void

    .line 2751
    :catch_0
    move-exception v1

    .line 2752
    .local v1, "ce":Ljava/security/cert/CertificateException;
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "Problem creating X509Certificate"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2754
    .end local v1    # "ce":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v6

    .line 2755
    .local v6, "ioe":Ljava/io/IOException;
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "Problem reading certificate"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2763
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v8    # "service":Landroid/security/IKeyChainService;
    :catch_2
    move-exception v4

    .line 2764
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "from CaCertUninstaller: "

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2766
    :try_start_5
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 2769
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v8    # "service":Landroid/security/IKeyChainService;
    :catch_3
    move-exception v5

    .line 2770
    .local v5, "ie":Ljava/lang/InterruptedException;
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "CaCertUninstaller: "

    invoke-static {v9, v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2771
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 2766
    .end local v5    # "ie":Ljava/lang/InterruptedException;
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v8    # "service":Landroid/security/IKeyChainService;
    :catchall_0
    move-exception v9

    :try_start_6
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2767
    const/4 v7, 0x0

    .line 2766
    throw v9
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
.end method

.method updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 9
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 2608
    const/4 v6, 0x0

    iget v7, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v6, v7}, Lcom/android/server/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v4

    .line 2609
    .local v4, "timeMs":J
    iget-wide v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_0

    .line 2643
    :goto_0
    return-void

    .line 2613
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2615
    .local v1, "ident":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    .line 2616
    const-wide/32 v4, 0x7fffffff

    .line 2624
    :goto_1
    :try_start_0
    iput-wide v4, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2628
    :try_start_1
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 2629
    .local v3, "persona":Landroid/os/PersonaManager;
    if-eqz v3, :cond_2

    iget v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v3, v6}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2630
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Setting a timeout in personamanager manager this time"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    iget v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PersonaManager;->setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2641
    .end local v3    # "persona":Landroid/os/PersonaManager;
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2620
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "stay_on_while_plugged_in"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2641
    :catchall_0
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 2634
    .restart local v3    # "persona":Landroid/os/PersonaManager;
    :cond_2
    :try_start_3
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Setting a timeout in power manager this time"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v6

    long-to-int v7, v4

    invoke-interface {v6, v7}, Landroid/os/IPowerManager;->setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2637
    .end local v3    # "persona":Landroid/os/PersonaManager;
    :catch_0
    move-exception v0

    .line 2638
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Failure talking with power manager"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 5
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 1524
    iget v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v2, :cond_1

    .line 1525
    const/4 v0, 0x0

    .line 1526
    .local v0, "haveOwner":Z
    iget-object v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1527
    iget-object v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v2}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v2

    iget v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ne v2, v3, :cond_2

    .line 1528
    const/4 v0, 0x1

    .line 1532
    :cond_0
    if-nez v0, :cond_1

    .line 1533
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous password owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " no longer active; disabling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    const/4 v2, -0x1

    iput v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 1538
    .end local v0    # "haveOwner":Z
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 1526
    .restart local v0    # "haveOwner":Z
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public wipeData(II)V
    .locals 5
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 2907
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    .line 2930
    :goto_0
    return-void

    .line 2910
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2911
    monitor-enter p0

    .line 2914
    const/4 v3, 0x0

    const/4 v4, 0x4

    :try_start_0
    invoke-virtual {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2916
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 2925
    .local v1, "ident":J
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->wipeDeviceOrUserLocked(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2927
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2929
    monitor-exit p0

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "ident":J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2927
    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method wipeDataLocked(I)V
    .locals 8
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2802
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isExtStorageEncrypted()Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v5

    .line 2803
    .local v2, "forceExtWipe":Z
    :goto_0
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_0

    move v4, v5

    .line 2806
    .local v4, "wipeExtRequested":Z
    :cond_0
    if-nez v2, :cond_1

    if-eqz v4, :cond_3

    .line 2807
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2808
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "always_reset"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2809
    sget-object v5, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2810
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getExternalSD()Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 2811
    .local v1, "extSD":Landroid/os/storage/StorageVolume;
    const-string/jumbo v5, "storage_volume"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2812
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2813
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2821
    .end local v1    # "extSD":Landroid/os/storage/StorageVolume;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .end local v2    # "forceExtWipe":Z
    .end local v4    # "wipeExtRequested":Z
    :cond_2
    move v2, v4

    .line 2802
    goto :goto_0

    .line 2816
    .restart local v2    # "forceExtWipe":Z
    .restart local v4    # "wipeExtRequested":Z
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2817
    :catch_0
    move-exception v0

    .line 2818
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed requesting data wipe"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method wipeDataLockedFor3LM(I)V
    .locals 6
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2828
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isExtStorageEncrypted()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 2829
    .local v0, "forceExtWipe":Z
    :goto_0
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_2

    .line 2832
    .local v2, "wipeExtRequested":Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2834
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2835
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2836
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2837
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2871
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2
    return-void

    .end local v0    # "forceExtWipe":Z
    .end local v2    # "wipeExtRequested":Z
    :cond_1
    move v0, v3

    .line 2828
    goto :goto_0

    .restart local v0    # "forceExtWipe":Z
    :cond_2
    move v2, v3

    .line 2829
    goto :goto_1

    .line 2857
    .restart local v2    # "wipeExtRequested":Z
    :cond_3
    const-string v3, "DevicePolicyManagerService"

    const-string/jumbo v4, "wipeDataLockedFor3LM() called"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/DevicePolicyManagerService$3;

    invoke-direct {v4, p0}, Lcom/android/server/DevicePolicyManagerService$3;-><init>(Lcom/android/server/DevicePolicyManagerService;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method
