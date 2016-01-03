.class public Lcom/android/server/enterprise/application/ApplicationPolicy;
.super Landroid/app/enterprise/IApplicationPolicy$Stub;
.source "ApplicationPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/application/ApplicationPolicy$4;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDeleteObserver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDataObserver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    }
.end annotation


# static fields
.field private static final ALL_PACKAGES:Ljava/lang/String; = "*"

.field private static final APPS_TO_RECONCILE:Ljava/lang/String; = "appToReconcile"

.field private static final BACKUP_RESTORE_TIMEOUT:J = 0x493e0L

.field private static final COMPONENTS_TO_RECONCILE:Ljava/lang/String; = "componentsToReconcile"

.field private static final EXTRA_APPSTATE:Ljava/lang/String; = "application_state_disable_enable"

.field private static final INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final INTENT_SAMSUNG_WIDGET_ACTION:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

.field private static final INTENT_SAMSUNG_WIDGET_CATEGORY:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

.field private static final INTENT_SURFACE_WIDGET_ACTION:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET_ACTION"

.field private static final INTENT_SURFACE_WIDGET_CATEGORY:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET"

.field private static final MY_PID:I

.field private static final PERMISSION_INSTALLATION_BLACKLIST:Ljava/lang/String; = "PermissionInstallationBlacklist"

.field private static final PKGNAME_CLEARCACHE_BLACKLIST:Ljava/lang/String; = "PackageNameClearCacheBlacklist"

.field private static final PKGNAME_CLEARCACHE_WHITELIST:Ljava/lang/String; = "PackageNameClearCacheWhitelist"

.field private static final PKGNAME_CLEARDATA_BLACKLIST:Ljava/lang/String; = "PackageNameClearDataBlacklist"

.field private static final PKGNAME_CLEARDATA_WHITELIST:Ljava/lang/String; = "PackageNameClearDataWhitelist"

.field private static final PKGNAME_CLIPBOARD_BLACKLIST:Ljava/lang/String; = "PackageNameDisableClipboardBlackList"

.field private static final PKGNAME_CLIPBOARD_WHITELIST:Ljava/lang/String; = "PackageNameDisableClipboardWhitelist"

.field private static final PKGNAME_INSTALLATION_BLACKLIST:Ljava/lang/String; = "PackageNameInstallationBlacklist"

.field private static final PKGNAME_INSTALLATION_WHITELIST:Ljava/lang/String; = "PackageNameInstallationWhitelist"

.field private static final PKGNAME_NOTIFICATION_BLACKLIST:Ljava/lang/String; = "PackageNameNotificationBlacklist"

.field private static final PKGNAME_NOTIFICATION_WHITELIST:Ljava/lang/String; = "PackageNameNotificationWhitelist"

.field private static final PKGNAME_OCSP_CHECK:Ljava/lang/String; = "OcspCheck"

.field private static final PKGNAME_REVOCATION_CHECK:Ljava/lang/String; = "RevocationCheck"

.field private static final PKGNAME_START_BLACKLIST:Ljava/lang/String; = "PackageNameStartBlacklist"

.field private static final PKGNAME_START_WHITELIST:Ljava/lang/String; = "PackageNameStartWhitelist"

.field private static final PKGNAME_STOP_BLACKLIST:Ljava/lang/String; = "PackageNameStopBlacklist"

.field private static final PKGNAME_STOP_WHITELIST:Ljava/lang/String; = "PackageNameStopWhitelist"

.field private static final PKGNAME_UPDATE_BLACKLIST:Ljava/lang/String; = "PackageNameUpdateBlacklist"

.field private static final PKGNAME_UPDATE_WHITELIST:Ljava/lang/String; = "PackageNameUpdateWhitelist"

.field private static final PKGNAME_WIDGET_BLACKLIST:Ljava/lang/String; = "PackageNameWidgetBlacklist"

.field private static final PKGNAME_WIDGET_WHITELIST:Ljava/lang/String; = "PackageNameWidgetWhitelist"

.field private static final SIGNATURE_INSTALLATION_BLACKLIST:Ljava/lang/String; = "SignatureInstallationBlacklist"

.field private static final SIGNATURE_INSTALLATION_WHITELIST:Ljava/lang/String; = "SignatureInstallationWhitelist"

.field private static final TAG:Ljava/lang/String; = "ApplicationPolicy"

.field private static final UNINSTALLATION_BLACKLIST:Ljava/lang/String; = "UninstallationBlacklist"

.field private static final UNINSTALLATION_WHITELIST:Ljava/lang/String; = "UninstallationWhitelist"

.field private static final UNINSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.UNINSTALL_SHORTCUT"

.field private static mAppControlState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static mAppIconChangedPkgNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mAppNameChangedPkgNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mAppStartOnUserSwitch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

.field private static volatile packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private volatile isBackupRunning:Z

.field private volatile isRestoreRunning:Z

.field private final mAppControlStateLock:Ljava/lang/Object;

.field private mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

.field private mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

.field final mBackupLock:Ljava/lang/Object;

.field private mBackupManagerService:Landroid/app/backup/IBackupManager;

.field private mBackupReturnCode:I

.field mContext:Landroid/content/Context;

.field private mCurrentBackupPackage:Ljava/lang/String;

.field private mCurrentRestorePackage:Ljava/lang/String;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mNotificationMode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private final mProcessStats:Lcom/android/internal/os/ProcessStats;

.field final mRefreshWidgetStatusLock:Ljava/lang/Object;

.field final mRestoreLock:Ljava/lang/Object;

.field private mRestoreReturnCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 217
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    .line 223
    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    .line 225
    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    .line 231
    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    .line 234
    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    .line 298
    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 363
    invoke-direct {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;-><init>()V

    .line 219
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 221
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 229
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    .line 232
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    .line 292
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    .line 293
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    .line 294
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRefreshWidgetStatusLock:Ljava/lang/Object;

    .line 295
    iput-boolean v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 296
    iput-boolean v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 299
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    .line 302
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    .line 303
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    .line 304
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    .line 308
    new-instance v1, Lcom/android/internal/os/ProcessStats;

    invoke-direct {v1, v2}, Lcom/android/internal/os/ProcessStats;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    .line 364
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 365
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 366
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 367
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 368
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->registerPackageChangeReceiver()V

    .line 369
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationIconDb;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/application/ApplicationIconDb;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    .line 370
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getApplicationIconChangedMap()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    .line 371
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getApplicationNameChangedMap()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    .line 372
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 375
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    invoke-direct {v1, p0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/application/ApplicationPolicy$1;)V

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    .line 376
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 377
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "edm.intent.action.backup.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    const-string v1, "edm.intent.action.restore.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 380
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->registerBootCompletedListener()V

    .line 382
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->registerUserSwitchedReceiver()V

    .line 383
    return-void
.end method

.method private _installApplication(ILjava/lang/String;ZLcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 17
    .param p1, "callingUid"    # I
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .param p3, "installOnSDCard"    # Z
    .param p4, "callback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 1722
    const/4 v11, 0x0

    .line 1724
    .local v11, "success":Z
    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1725
    const-string v2, "ApplicationPolicy"

    const-string v3, "installApplication : External Storage Emulated"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    const/4 v2, 0x0

    .line 1822
    :goto_0
    return v2

    .line 1729
    :cond_0
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_installApplication : apkFilePath = "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, " callingUid = "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1733
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v2, v11

    .line 1735
    goto :goto_0

    .line 1737
    :cond_2
    const/16 v5, 0x82

    .line 1739
    .local v5, "installFlags":I
    if-eqz p3, :cond_4

    .line 1740
    or-int/lit8 v5, v5, 0x8

    .line 1744
    :goto_1
    new-instance v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 1746
    .local v4, "obs":Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1748
    .local v12, "token":J
    const/4 v14, 0x0

    .line 1753
    .local v14, "verificationDisabled":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "package_verifier_enable"

    const/4 v15, 0x1

    invoke-static {v2, v3, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "package_verifier_enable"

    const/4 v15, 0x0

    invoke-static {v2, v3, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1757
    const/4 v14, 0x1

    .line 1761
    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1762
    .local v6, "userId":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    .line 1763
    .local v7, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->installPackageForMDM(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;IILjava/lang/String;)V

    .line 1769
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1770
    :goto_2
    :try_start_1
    iget-boolean v2, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_5

    .line 1772
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1773
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1742
    .end local v4    # "obs":Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;
    .end local v6    # "userId":I
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v12    # "token":J
    .end local v14    # "verificationDisabled":Z
    :cond_4
    or-int/lit8 v5, v5, 0x10

    goto :goto_1

    .line 1776
    .restart local v4    # "obs":Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;
    .restart local v6    # "userId":I
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v12    # "token":J
    .restart local v14    # "verificationDisabled":Z
    :cond_5
    :try_start_3
    iget v2, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->result:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 1777
    const/4 v11, 0x1

    .line 1778
    iget-object v2, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalledInternal(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1779
    iget-object v2, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->installExistingApplication(Ljava/lang/String;I)I

    move-result v10

    .line 1780
    .local v10, "result":I
    const/4 v2, 0x1

    if-ne v10, v2, :cond_a

    const/4 v11, 0x1

    .line 1782
    .end local v10    # "result":I
    :cond_6
    :goto_3
    if-eqz p4, :cond_7

    .line 1783
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1784
    .local v8, "bundle":Landroid/os/Bundle;
    const-string v2, "packageName"

    iget-object v3, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    const/16 v2, 0x3ee

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v8}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    .line 1802
    .end local v8    # "bundle":Landroid/os/Bundle;
    :cond_7
    :goto_4
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1807
    if-eqz v11, :cond_8

    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_8

    .line 1810
    iget-object v2, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1811
    iget-object v2, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    .line 1815
    :cond_8
    if-eqz v14, :cond_9

    .line 1816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "package_verifier_enable"

    const/4 v15, 0x1

    invoke-static {v2, v3, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1820
    .end local v6    # "userId":I
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_9
    :goto_5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v11

    .line 1822
    goto/16 :goto_0

    .line 1780
    .restart local v6    # "userId":I
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v10    # "result":I
    :cond_a
    const/4 v11, 0x0

    goto :goto_3

    .line 1791
    .end local v10    # "result":I
    :cond_b
    const/4 v11, 0x0

    .line 1792
    if-eqz p4, :cond_7

    .line 1793
    :try_start_4
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1794
    .restart local v8    # "bundle":Landroid/os/Bundle;
    const-string v2, "pmerrorcode"

    iget v3, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->result:I

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1797
    const/16 v2, 0x3ef

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v8}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    goto :goto_4

    .line 1802
    .end local v8    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1803
    .end local v6    # "userId":I
    .end local v7    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 1804
    .local v9, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1807
    if-eqz v11, :cond_c

    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_c

    .line 1810
    iget-object v2, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1811
    iget-object v2, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    .line 1815
    :cond_c
    if-eqz v14, :cond_9

    .line 1816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "package_verifier_enable"

    const/4 v15, 0x1

    invoke-static {v2, v3, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    .line 1807
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v11, :cond_d

    const/4 v3, -0x1

    move/from16 v0, p1

    if-eq v0, v3, :cond_d

    .line 1810
    iget-object v3, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v15}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1811
    iget-object v3, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v15}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    .line 1815
    :cond_d
    if-eqz v14, :cond_e

    .line 1816
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v15, "package_verifier_enable"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v3, v15, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1820
    :cond_e
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1807
    throw v2
.end method

.method private _setApplicationInstallationDisabled(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "disableAppInstallation"    # Z

    .prologue
    .line 2215
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2216
    if-eqz p2, :cond_0

    .line 2218
    const/4 v1, 0x4

    :try_start_0
    invoke-direct {p0, p2, p1, v1, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2221
    const/16 v2, 0x8

    if-nez p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2228
    :cond_0
    :goto_1
    return-void

    .line 2221
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2224
    :catch_0
    move-exception v0

    .line 2225
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private _setApplicationUninstallationDisabled(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "disableAppUninstallation"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2426
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2427
    if-eqz p2, :cond_0

    .line 2429
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p2, p1, v2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2431
    const/16 v2, 0x400

    if-nez p3, :cond_1

    :goto_0
    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2437
    :cond_0
    :goto_1
    return-void

    .line 2431
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2433
    :catch_0
    move-exception v0

    .line 2434
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private _uninstallApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "keepDataAndCache"    # Z

    .prologue
    .line 1919
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1920
    .local v0, "userId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_uninstallApplicationInternal(IILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private _uninstallApplicationInternal(IILjava/lang/String;Z)Z
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "keepDataAndCache"    # Z

    .prologue
    .line 1931
    invoke-static {p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1932
    if-nez p3, :cond_0

    .line 1933
    const/4 v1, 0x0

    .line 1956
    :goto_0
    return v1

    .line 1934
    :cond_0
    const/4 v4, 0x0

    .line 1935
    .local v4, "unInstallFlags":I
    if-eqz p4, :cond_1

    .line 1936
    const/4 v4, 0x1

    .line 1939
    :cond_1
    const/4 v1, 0x0

    .line 1940
    .local v1, "result":Z
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_uninstallApplication : userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1943
    .local v2, "token":J
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_uninstallApplication : callingUid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v5, p3, p2, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackageAsUser(Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1954
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1951
    :catch_0
    move-exception v0

    .line 1952
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1954
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 203
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateSystemAppDisableState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getProvidersFromPackage(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(Ljava/util/List;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1700()Ljava/util/Map;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/server/enterprise/application/ApplicationPolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupReturnCode:I

    return p1
.end method

.method static synthetic access$2002(Lcom/android/server/enterprise/application/ApplicationPolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreReturnCode:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "bitMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 4953
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4954
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 4955
    .local v2, "callingUid":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4956
    .local v3, "containerId":I
    if-eqz p4, :cond_0

    if-nez p2, :cond_1

    .line 4969
    :cond_0
    monitor-exit p0

    return v7

    .line 4958
    :cond_1
    const/4 v7, 0x1

    .line 4960
    .local v7, "result":Z
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p4, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->arrangePackageList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p4

    .line 4963
    if-eqz p4, :cond_0

    .line 4964
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4965
    .local v1, "pkg":Ljava/lang/String;
    const/4 v5, 0x1

    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    and-int/2addr v7, v0

    goto :goto_0

    .line 4953
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "callingUid":I
    .end local v3    # "containerId":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "result":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private addUsbDeviceForDefaultAccess(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/app/enterprise/UsbDeviceConfig;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deviceConfig"    # Landroid/app/enterprise/UsbDeviceConfig;

    .prologue
    .line 7281
    if-eqz p3, :cond_0

    .line 7282
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addDevice: USBD vendorId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p3, Landroid/app/enterprise/UsbDeviceConfig;->vendorId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", product Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p3, Landroid/app/enterprise/UsbDeviceConfig;->productId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7284
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7285
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7286
    const-string v3, "containerID"

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7287
    const-string v3, "packageName"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7288
    const-string/jumbo v3, "usbDeviceProductId"

    iget v4, p3, Landroid/app/enterprise/UsbDeviceConfig;->productId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7289
    const-string/jumbo v3, "usbDeviceVendorId"

    iget v4, p3, Landroid/app/enterprise/UsbDeviceConfig;->vendorId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7291
    const/4 v2, 0x0

    .line 7293
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "UsbApplicationPermissionDetailsTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 7301
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ret":Z
    :goto_0
    return v2

    .line 7296
    :catch_0
    move-exception v1

    .line 7297
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addDevice: Failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p3, Landroid/app/enterprise/UsbDeviceConfig;->vendorId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7298
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7301
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private arrangePackageList(Ljava/util/List;Z)Ljava/util/List;
    .locals 4
    .param p2, "removeWildCard"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6740
    .local p1, "originalPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6742
    .local v0, "arrangedPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    .line 6743
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6744
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6745
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6746
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 6747
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p2, :cond_0

    .line 6750
    :cond_1
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6751
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6757
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private changeApplicationIconForUser(Ljava/lang/String;[BI)Z
    .locals 16
    .param p1, "aPackageName"    # Ljava/lang/String;
    .param p2, "aImageData"    # [B
    .param p3, "userId"    # I

    .prologue
    .line 3567
    const-string v13, "ApplicationPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "changeApplicationIcon:packageName "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "called from :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3569
    const/4 v8, 0x0

    .line 3571
    .local v8, "success":Z
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_1

    .line 3572
    :cond_0
    const-string v13, "ApplicationPolicy"

    const-string v14, "changeApplicationIcon: packageName can\'t be null :"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v8

    .line 3637
    .end local v8    # "success":Z
    .local v9, "success":I
    :goto_0
    return v9

    .line 3576
    .end local v9    # "success":I
    .restart local v8    # "success":Z
    :cond_1
    if-nez p2, :cond_6

    .line 3577
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v13, v0, v1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->deleteApplicationIcon(Ljava/lang/String;I)Z

    move-result v8

    .line 3582
    :goto_1
    if-eqz v8, :cond_5

    .line 3583
    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    if-nez v13, :cond_2

    .line 3584
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    sput-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    .line 3586
    :cond_2
    if-nez p2, :cond_7

    .line 3587
    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 3588
    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3601
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalledInternal(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 3603
    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.PACKAGE_CHANGED"

    if-eqz p1, :cond_9

    const-string v13, "package"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v13, v0, v15}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    :goto_3
    invoke-direct {v6, v14, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3605
    .local v6, "intent":Landroid/content/Intent;
    const/4 v7, 0x0

    .line 3607
    .local v7, "packageUid":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 3608
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3613
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v14, "android"

    const/4 v15, 0x0

    move/from16 v0, p3

    invoke-static {v13, v14, v15, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v12

    .line 3615
    .local v12, "userCtx":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3616
    .local v10, "token":J
    const-string v13, "android.intent.extra.user_handle"

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3617
    if-eqz v12, :cond_4

    .line 3618
    const/4 v13, 0x1

    new-array v5, v13, [Ljava/lang/String;

    .line 3619
    .local v5, "extraList":[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object p1, v5, v13

    .line 3620
    const-string v13, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v6, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3621
    invoke-virtual {v12, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3623
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v13

    if-nez v13, :cond_4

    .line 3625
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v13

    const-string v14, "com.android.settings"

    move/from16 v0, p3

    invoke-interface {v13, v14, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3633
    .end local v5    # "extraList":[Ljava/lang/String;
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3634
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "packageUid":I
    .end local v10    # "token":J
    .end local v12    # "userCtx":Landroid/content/Context;
    :cond_5
    move v9, v8

    .line 3637
    .restart local v9    # "success":I
    goto/16 :goto_0

    .line 3579
    .end local v9    # "success":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationIconDb;->updateApplicationIcon(Ljava/lang/String;[BI)Z

    move-result v8

    goto/16 :goto_1

    .line 3591
    :cond_7
    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_8

    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 3593
    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3594
    :cond_8
    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_3

    .line 3595
    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3596
    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3603
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 3627
    .restart local v5    # "extraList":[Ljava/lang/String;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v7    # "packageUid":I
    .restart local v10    # "token":J
    .restart local v12    # "userCtx":Landroid/content/Context;
    :catch_0
    move-exception v4

    .line 3628
    .local v4, "e":Landroid/os/RemoteException;
    const-string v13, "ApplicationPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail getting ActivityManager "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3610
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "extraList":[Ljava/lang/String;
    .end local v10    # "token":J
    .end local v12    # "userCtx":Landroid/content/Context;
    :catch_1
    move-exception v13

    goto/16 :goto_4
.end method

.method private changeApplicationNameForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 6893
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeApplicationName:packageName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "called from :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6895
    const/4 v0, 0x0

    .line 6896
    .local v0, "success":Z
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 6897
    .local v2, "userId":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 6898
    :cond_0
    const-string v3, "ApplicationPolicy"

    const-string v4, "changeApplicationName: packageName can\'t be null :"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 6930
    .end local v0    # "success":Z
    .local v1, "success":I
    :goto_0
    return v1

    .line 6902
    .end local v1    # "success":I
    .restart local v0    # "success":Z
    :cond_1
    if-nez p2, :cond_5

    .line 6903
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/enterprise/application/ApplicationIconDb;->deleteApplicationName(Ljava/lang/String;I)Z

    move-result v0

    .line 6907
    :goto_1
    if-eqz v0, :cond_4

    .line 6908
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 6909
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    .line 6911
    :cond_2
    if-nez p2, :cond_6

    .line 6912
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6913
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6926
    :cond_3
    :goto_2
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalledInternal(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6927
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->notifyApplicationChanged(Ljava/lang/String;I)V

    :cond_4
    move v1, v0

    .line 6930
    .restart local v1    # "success":I
    goto :goto_0

    .line 6905
    .end local v1    # "success":I
    :cond_5
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationIconDb;->updateApplicationName(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_1

    .line 6916
    :cond_6
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 6918
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 6919
    :cond_7
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 6920
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6921
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private checkApplicationsStateToBeReconciled(I)V
    .locals 11
    .param p1, "uid"    # I

    .prologue
    .line 6053
    const/4 v1, 0x0

    .line 6056
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "appToReconcile"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6058
    .local v3, "exist":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 6060
    .local v5, "pkgs":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 6061
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6064
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "APPLICATION"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "packageName"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "controlState"

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, p1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6067
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6068
    const-string v6, "packageName"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 6070
    .local v4, "pkgName":Ljava/lang/String;
    const-string v6, "controlState"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 6073
    .local v0, "controlState":I
    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_1

    .line 6074
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6075
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6084
    .end local v0    # "controlState":I
    .end local v3    # "exist":Ljava/lang/String;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgs":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 6085
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "ApplicationPolicy"

    const-string v7, "error in changeUidOnAppReconcileNeeded"

    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6088
    if-eqz v1, :cond_2

    .line 6089
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6092
    :cond_2
    return-void

    .line 6079
    .restart local v3    # "exist":Ljava/lang/String;
    .restart local v5    # "pkgs":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 6080
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "appToReconcile"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6088
    :cond_4
    if-eqz v1, :cond_2

    goto :goto_1

    .end local v3    # "exist":Ljava/lang/String;
    .end local v5    # "pkgs":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_5

    .line 6089
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6088
    :cond_5
    throw v6
.end method

.method private checkComponentsStateToBeReconciled(I)V
    .locals 11
    .param p1, "uid"    # I

    .prologue
    .line 6096
    const/4 v3, 0x0

    .line 6099
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "componentsToReconcile"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6101
    .local v5, "exist":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6103
    .local v1, "components":Ljava/lang/StringBuilder;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 6104
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6107
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "APPLICATION_COMPONENT"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "component"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "componentControlState"

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, p1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 6110
    :cond_1
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6111
    const-string v6, "component"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6113
    .local v0, "compName":Ljava/lang/String;
    const-string v6, "componentControlState"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 6116
    .local v2, "controlState":I
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_1

    .line 6117
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6118
    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6127
    .end local v0    # "compName":Ljava/lang/String;
    .end local v1    # "components":Ljava/lang/StringBuilder;
    .end local v2    # "controlState":I
    .end local v5    # "exist":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 6128
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "ApplicationPolicy"

    const-string v7, "error in changeUidOnComponentReconcileNeeded"

    invoke-static {v6, v7, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6131
    if-eqz v3, :cond_2

    .line 6132
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 6135
    :cond_2
    return-void

    .line 6122
    .restart local v1    # "components":Ljava/lang/StringBuilder;
    .restart local v5    # "exist":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 6123
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "componentsToReconcile"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6131
    :cond_4
    if-eqz v3, :cond_2

    goto :goto_1

    .end local v1    # "components":Ljava/lang/StringBuilder;
    .end local v5    # "exist":Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_5

    .line 6132
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 6131
    :cond_5
    throw v6
.end method

.method private checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 2936
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2937
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2939
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2940
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2941
    const/4 v1, 0x1

    monitor-exit v2

    .line 2945
    :goto_0
    return v1

    .line 2944
    :cond_1
    monitor-exit v2

    .line 2945
    const/4 v1, 0x0

    goto :goto_0

    .line 2944
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkRegex(Ljava/lang/String;)Z
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 3980
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3985
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 3981
    :catch_0
    move-exception v0

    .line 3982
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3983
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private cleanCmdline(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "aRawData"    # Ljava/lang/String;

    .prologue
    .line 4588
    if-nez p1, :cond_1

    .line 4589
    const-string p1, "<invalid>"

    .line 4596
    .end local p1    # "aRawData":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 4591
    .restart local p1    # "aRawData":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4592
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isIdentifierIgnorable(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4593
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4591
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private clearApplicationIconDbForUser(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 6992
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 6993
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isUserManagedByEnterpriseAdmin(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6996
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 6997
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6998
    .local v0, "icons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6999
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7000
    .local v1, "iconsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7001
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->changeApplicationIconForUser(Ljava/lang/String;[BI)Z

    .line 7003
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "icons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v0, Ljava/util/List;

    .line 7004
    .restart local v0    # "icons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 7007
    .end local v0    # "icons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "iconsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationNameForUid(I)V

    .line 7008
    return-void
.end method

.method private clearApplicationNameForUid(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 6934
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 6935
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->clearChangedApplicationName(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 6937
    .local v0, "deletedPkgNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 6938
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    .line 6940
    :cond_0
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 6941
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 6942
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6943
    .local v3, "pkgName":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6944
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->notifyApplicationChanged(Ljava/lang/String;I)V

    goto :goto_0

    .line 6946
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6947
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6951
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 6949
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "bitMask"    # I

    .prologue
    .line 5008
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5009
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 5010
    .local v8, "containerId":I
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 5012
    .local v7, "callingUid":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5013
    .local v9, "currentPkgListForAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 5015
    .local v13, "result":Z
    invoke-static {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v5

    .line 5017
    .local v5, "adminUid":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v15

    .line 5018
    :try_start_0
    sget-object v14, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 5019
    .local v4, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v4, :cond_0

    .line 5020
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 5021
    .local v11, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 5022
    .local v12, "pkg":Ljava/lang/String;
    invoke-static {v8, v12}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5025
    .end local v4    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .restart local v4    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_0
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5027
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 5028
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v13

    .line 5030
    :cond_1
    return v13
.end method

.method private clearApplicationStateList(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitMask"    # I

    .prologue
    .line 5004
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private clearUsbDevicesForDefaultAccessAsUser(IILjava/lang/String;)Z
    .locals 11
    .param p1, "containerId"    # I
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 7209
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearUsbDevicesforDefaultAccessAsUser for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", container: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", userId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7211
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7212
    .local v6, "outList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 7214
    .local v7, "ret":Z
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 7215
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 7216
    .local v0, "adminId":Ljava/lang/Long;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 7217
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v8, "adminUid"

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7218
    const-string v8, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7219
    const-string v8, "packageName"

    invoke-virtual {v3, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7220
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UsbApplicationPermissionDetailsTable"

    invoke-virtual {v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 7222
    .local v2, "cnt":I
    if-lez v2, :cond_0

    .line 7223
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearUsbDevicesforDefaultAccessAsUser for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "has got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " results"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7225
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "UsbApplicationPermissionDetailsTable"

    invoke-virtual {v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-lez v8, :cond_0

    .line 7227
    const/4 v7, 0x1

    goto :goto_0

    .line 7231
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v1    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v2    # "cnt":I
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 7232
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "ApplicationPolicy"

    const-string v9, "clearUsbDevicesforDefaultAccessAsUser failed!!"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7233
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 7235
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    return v7
.end method

.method private createAdminMap(J)V
    .locals 4
    .param p1, "adminUid"    # J

    .prologue
    .line 626
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 627
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 629
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 630
    .local v0, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v1, "PackageNameInstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string v1, "PackageNameInstallationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string v1, "PermissionInstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string v1, "SignatureInstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string v1, "SignatureInstallationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const-string v1, "UninstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    const-string v1, "UninstallationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const-string v1, "PackageNameStopBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    const-string v1, "PackageNameStopWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string v1, "PackageNameWidgetBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string v1, "PackageNameWidgetWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const-string v1, "PackageNameNotificationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string v1, "PackageNameNotificationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string v1, "RevocationCheck"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string v1, "OcspCheck"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const-string v1, "PackageNameClearDataBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string v1, "PackageNameClearDataWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string v1, "PackageNameClearCacheBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string v1, "PackageNameClearCacheWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    const-string v1, "PackageNameUpdateBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const-string v1, "PackageNameUpdateWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v1, "PackageNameStartBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string v1, "PackageNameStartWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string v1, "PackageNameDisableClipboardBlackList"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string v1, "PackageNameDisableClipboardWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    .end local v0    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_0
    monitor-exit v2

    .line 670
    return-void

    .line 669
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createContextForCurrentUser(Ljava/lang/String;I)Landroid/content/Context;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 6853
    const/4 v0, 0x0

    .line 6854
    .local v0, "context":Landroid/content/Context;
    const/4 v4, 0x0

    .line 6855
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6857
    .local v2, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 6858
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, p1, p2, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 6867
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6869
    return-object v0

    .line 6860
    :catch_0
    move-exception v1

    .line 6861
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v5, "ApplicationPolicy"

    const-string v6, "Couldn\'t create user context"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6862
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 6863
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 6864
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "ApplicationPolicy"

    const-string v6, "Couldn\'t get user info"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6865
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6867
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private createContextForSpecifiedUser(Ljava/lang/String;II)Landroid/content/Context;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 6873
    const/4 v0, 0x0

    .line 6874
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6876
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, p2, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 6882
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6884
    return-object v0

    .line 6878
    :catch_0
    move-exception v1

    .line 6879
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v4, "ApplicationPolicy"

    const-string v5, "Couldn\'t create user context"

    invoke-static {v4, v5, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6880
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6882
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v1, p1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 335
    :try_start_0
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    return-object p1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enforceAppPermission exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforceBackupAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_BACKUP"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 355
    return-object p1
.end method

.method private enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 6171
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 6172
    return-object p1
.end method

.method private enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getActualApplicationComponentStateEnabled(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cmpName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 1475
    const/4 v1, 0x0

    .line 1476
    .local v1, "enabled":Z
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1477
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1479
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1480
    .local v5, "userid":I
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1500
    :goto_0
    return v7

    .line 1483
    :cond_0
    if-eqz v2, :cond_1

    .line 1484
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1487
    .local v3, "token":J
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v8, p2, v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1492
    .local v6, "value":I
    const/4 v8, 0x2

    if-eq v6, v8, :cond_2

    move v1, v7

    .line 1497
    .end local v6    # "value":I
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1499
    .end local v3    # "token":J
    :cond_1
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getActualApplicationComponentStateEnabled() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v1

    .line 1500
    goto :goto_0

    .line 1492
    .restart local v3    # "token":J
    .restart local v6    # "value":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1493
    .end local v6    # "value":I
    :catch_0
    move-exception v0

    .line 1494
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1495
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getActualApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1446
    const/4 v1, 0x0

    .line 1447
    .local v1, "enabled":Z
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1449
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 1450
    .local v4, "userid":I
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1471
    :goto_0
    return v6

    .line 1453
    :cond_0
    if-eqz p2, :cond_1

    .line 1454
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1457
    .local v2, "token":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v7, p2, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1463
    .local v5, "value":I
    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    move v1, v6

    .line 1468
    .end local v5    # "value":I
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1470
    .end local v2    # "token":J
    :cond_1
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getActualApplicationStateEnabled() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v1

    .line 1471
    goto :goto_0

    .line 1463
    .restart local v2    # "token":J
    .restart local v5    # "value":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1464
    .end local v5    # "value":I
    :catch_0
    move-exception v0

    .line 1465
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1466
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4179
    const/4 v1, 0x0

    .line 4180
    .local v1, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4181
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 4182
    .local v4, "userId":I
    if-eqz p2, :cond_0

    .line 4183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4186
    .local v2, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4197
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4199
    .end local v2    # "token":J
    :cond_0
    return-object v1

    .line 4192
    .restart local v2    # "token":J
    :catch_0
    move-exception v0

    .line 4193
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppInfo() : Exception when retrieving package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getApplicationControlState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 6144
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 6145
    :try_start_0
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 6147
    .local v5, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v5, :cond_1

    .line 6148
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 6149
    .local v3, "uid":J
    invoke-static {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v6

    if-nez v6, :cond_0

    .line 6152
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 6153
    .local v0, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    .line 6154
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 6155
    .local v2, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6156
    const/4 v6, 0x1

    monitor-exit v7

    .line 6162
    .end local v0    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "uid":J
    :goto_0
    return v6

    .line 6161
    :cond_1
    monitor-exit v7

    .line 6162
    const/4 v6, 0x0

    goto :goto_0

    .line 6161
    .end local v5    # "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkgInst"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 2858
    new-instance v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 2860
    .local v4, "pkg":Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    if-eqz p2, :cond_2

    .line 2862
    :try_start_0
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 2863
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 2864
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 2866
    :cond_0
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_1

    .line 2867
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 2868
    .local v6, "sig":Landroid/content/pm/Signature;
    iget-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2867
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2871
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "sig":Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    .line 2872
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "ApplicationPolicy"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2873
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v4

    .line 2877
    :cond_2
    if-nez p1, :cond_4

    const-string p1, ""

    .line 2878
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 2880
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x1040

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 2882
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_1

    .line 2883
    iput-object p1, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 2884
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v7, :cond_3

    .line 2885
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 2887
    :cond_3
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_1

    .line 2888
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .restart local v0    # "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 2889
    .restart local v6    # "sig":Landroid/content/pm/Signature;
    iget-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2888
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2877
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "sig":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 2893
    :catch_1
    move-exception v1

    .line 2894
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2895
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getApplicationPackageStats(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3512
    const/4 v1, 0x0

    .line 3513
    .local v1, "pkgst":Landroid/content/pm/PackageStats;
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 3514
    .local v4, "userId":I
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3515
    if-eqz p2, :cond_0

    .line 3516
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 3517
    .local v0, "obs":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3520
    .local v2, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v5, p2, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageSizeInfo(Ljava/lang/String;I)Landroid/content/pm/PackageStats;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 3540
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3543
    .end local v0    # "obs":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    .end local v2    # "token":J
    :cond_0
    return-object v1

    .line 3540
    .restart local v0    # "obs":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    .restart local v2    # "token":J
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 3537
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private getApplicationStateList(ILjava/lang/String;I)Ljava/util/List;
    .locals 12
    .param p1, "containerId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5042
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v10

    .line 5043
    :try_start_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 5044
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 5046
    .local v8, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v8, :cond_2

    .line 5047
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 5049
    .local v6, "uid":J
    invoke-static {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne p3, v9, :cond_0

    .line 5054
    if-lez p1, :cond_1

    const/4 v9, 0x1

    if-gt p1, v9, :cond_1

    invoke-static {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v9

    if-ne v9, p1, :cond_0

    .line 5060
    :cond_1
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 5061
    .local v0, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    .line 5062
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 5063
    .local v3, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5064
    .local v4, "pkg":Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5070
    .end local v0    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "uid":J
    .end local v8    # "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 5069
    .restart local v5    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_2
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v9
.end method

.method private getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5034
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5035
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 5036
    .local v1, "userId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 5038
    .local v0, "containerId":I
    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getApplicationUninstallationEnabledInternal(ILjava/lang/String;)Z
    .locals 10
    .param p1, "userID"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3118
    const/4 v4, 0x1

    .line 3120
    .local v4, "uninstall":Z
    const-string v6, "ApplicationPolicy"

    const-string v7, "getApplicationUninstallationEnabled"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3122
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3123
    if-nez p2, :cond_0

    .line 3124
    :try_start_0
    const-string v7, "ApplicationPolicy"

    const-string v8, "getApplicationUninstallationEnabled() : packageName is null"

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    monitor-exit v6

    .line 3167
    :goto_0
    return v5

    .line 3127
    :cond_0
    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3128
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v4

    goto :goto_0

    .line 3131
    :cond_2
    :try_start_1
    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3133
    .local v3, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3134
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 3135
    .local v2, "uid":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-int v7, v7

    const v8, 0x186a0

    div-int v0, v7, v8

    .line 3136
    .local v0, "AdminUserID":I
    if-eq p1, v0, :cond_5

    .line 3137
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAppSignaturesAllBlackLists() :  userID :   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  != AdminUserID  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3161
    .end local v0    # "AdminUserID":I
    .end local v2    # "uid":Ljava/lang/Long;
    .end local v3    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catch_0
    move-exception v1

    .line 3162
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3164
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3166
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getApplicationUninstallationEnabled :  enabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 3167
    goto :goto_0

    .line 3140
    .restart local v0    # "AdminUserID":I
    .restart local v2    # "uid":Ljava/lang/Long;
    .restart local v3    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_5
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v7

    if-nez v7, :cond_3

    .line 3145
    const-string v7, "UninstallationWhitelist"

    invoke-direct {p0, v2, v7, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 3147
    if-nez v4, :cond_3

    .line 3152
    const-string v7, "UninstallationBlacklist"

    invoke-direct {p0, v2, v7, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v4, 0x1

    .line 3154
    :goto_2
    if-nez v4, :cond_3

    .line 3155
    const-string v5, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getApplicationUninstallationEnabled :  enabled "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3156
    :try_start_4
    monitor-exit v6

    move v5, v4

    goto/16 :goto_0

    :cond_6
    move v4, v5

    .line 3152
    goto :goto_2

    .line 3164
    .end local v0    # "AdminUserID":I
    .end local v2    # "uid":Ljava/lang/Long;
    .end local v3    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5
.end method

.method private getApplicationsListInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2699
    const/4 v7, 0x0

    .line 2700
    .local v7, "appInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/ManagedAppInfo;>;"
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2701
    const/4 v0, 0x6

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "packageName"

    aput-object v0, v5, v9

    const-string v0, "applicationInstallationCount"

    aput-object v0, v5, v10

    const/4 v0, 0x2

    const-string v1, "applicationUninstallationCount"

    aput-object v1, v5, v0

    const/4 v0, 0x3

    const-string v1, "managedApp"

    aput-object v1, v5, v0

    const/4 v0, 0x4

    const-string v1, "install_sourceMDM"

    aput-object v1, v5, v0

    const/4 v0, 0x5

    const-string v1, "controlState"

    aput-object v1, v5, v0

    .line 2706
    .local v5, "columns":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "packageName"

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2709
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_5

    .line 2710
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "appInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/ManagedAppInfo;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2711
    .restart local v7    # "appInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/ManagedAppInfo;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2712
    new-instance v6, Landroid/app/enterprise/ManagedAppInfo;

    invoke-direct {v6}, Landroid/app/enterprise/ManagedAppInfo;-><init>()V

    .line 2713
    .local v6, "appInfo":Landroid/app/enterprise/ManagedAppInfo;
    const-string v0, "packageName"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    .line 2715
    const-string v0, "applicationInstallationCount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    .line 2717
    const-string v0, "applicationUninstallationCount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallCount:I

    .line 2719
    const-string v0, "managedApp"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mIsEnterpriseApp:I

    .line 2721
    const-string v0, "install_sourceMDM"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mIsInstallSourceMDM:I

    .line 2723
    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    :goto_1
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppDisabled:I

    .line 2726
    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallationEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v9

    :goto_2
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallationDisabled:I

    .line 2728
    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v9

    :goto_3
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallationDisabled:I

    .line 2730
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v0, v10

    .line 2723
    goto :goto_1

    :cond_1
    move v0, v9

    goto :goto_1

    :cond_2
    move v0, v10

    .line 2726
    goto :goto_2

    :cond_3
    move v0, v10

    .line 2728
    goto :goto_3

    .line 2732
    .end local v6    # "appInfo":Landroid/app/enterprise/ManagedAppInfo;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2735
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 2736
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/app/enterprise/ManagedAppInfo;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/enterprise/ManagedAppInfo;

    check-cast v0, [Landroid/app/enterprise/ManagedAppInfo;

    .line 2738
    :goto_4
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "containerId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 6218
    invoke-static {p0, p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getDebugMemoryInfo(ILandroid/app/ActivityManager;)J
    .locals 4
    .param p1, "pid"    # I
    .param p2, "am"    # Landroid/app/ActivityManager;

    .prologue
    const/4 v3, 0x0

    .line 3451
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 3452
    .local v1, "pidArray":[I
    aput p1, v1, v3

    .line 3453
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 3454
    .local v0, "memInfoArray":[Landroid/os/Debug$MemoryInfo;
    if-nez v0, :cond_0

    .line 3455
    const-wide/16 v2, 0x0

    .line 3457
    :goto_0
    return-wide v2

    :cond_0
    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    int-to-long v2, v2

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getMutuallyExclusiveDevices(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/UsbDeviceConfig;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/UsbDeviceConfig;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/UsbDeviceConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7307
    .local p1, "inList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/UsbDeviceConfig;>;"
    .local p2, "storedList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/UsbDeviceConfig;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 7308
    :cond_0
    const/4 v1, 0x0

    .line 7325
    :cond_1
    return-object v1

    .line 7310
    :cond_2
    const-string v3, "ApplicationPolicy"

    const-string v4, "getMutuallyExclusiveDevices"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7314
    .local v1, "outList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/UsbDeviceConfig;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/UsbDeviceConfig;

    .line 7317
    .local v2, "usba":Landroid/app/enterprise/UsbDeviceConfig;
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 7320
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMutuallyExclusiveDevices: Adding to mutually exclusive device list , USBD vendorId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/app/enterprise/UsbDeviceConfig;->vendorId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", productId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/app/enterprise/UsbDeviceConfig;->productId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7322
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1504
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1505
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1506
    .local v0, "pkg":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1505
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 4946
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2
    .param p1, "uid"    # Ljava/lang/Long;

    .prologue
    .line 4942
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPidList(I)Ljava/util/ArrayList;
    .locals 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4605
    new-instance v3, Ljava/io/File;

    const-string v6, "/proc/"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4606
    .local v3, "lProcDir":Ljava/io/File;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4607
    .local v2, "lPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 4609
    .local v1, "lFiles":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 4626
    :cond_0
    return-object v2

    .line 4613
    :cond_1
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPidList: process count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4614
    const/4 v5, 0x0

    .line 4615
    .local v5, "uid":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_0

    .line 4617
    const/4 v6, 0x1

    aget-object v7, v1, v0

    const-string v8, "[0-9]+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-ne v6, v7, :cond_2

    .line 4618
    aget-object v6, v1, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4619
    .local v4, "pid":I
    invoke-static {v4}, Landroid/os/Process;->getUidForPid(I)I

    move-result v5

    .line 4620
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eq p1, v6, :cond_3

    .line 4615
    .end local v4    # "pid":I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4622
    .restart local v4    # "pid":I
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getPkgInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4206
    const/4 v1, 0x0

    .line 4207
    .local v1, "mpkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4208
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 4209
    .local v4, "userId":I
    if-eqz p2, :cond_0

    .line 4210
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4213
    .local v2, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4223
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4225
    .end local v2    # "token":J
    :cond_0
    return-object v1

    .line 4219
    .restart local v2    # "token":J
    :catch_0
    move-exception v0

    .line 4220
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppInfo() : Exception when retrieving package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getProvidersFromPackage(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkgMngr"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5289
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5290
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5291
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5292
    const/16 v6, 0x80

    invoke-virtual {p2, v3, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 5295
    .local v1, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 5296
    .local v0, "N":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 5297
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 5298
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5296
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5295
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 5301
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    return-object v4
.end method

.method private getSamsungWidgets(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 10
    .param p1, "pkgMngr"    # Landroid/content/pm/PackageManager;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5366
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5367
    .local v4, "retList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5368
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5369
    const-string v7, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5370
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 5371
    .local v5, "token":J
    const/16 v7, 0x80

    invoke-virtual {p1, v2, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 5373
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5374
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 5375
    .local v3, "r":Landroid/content/pm/ResolveInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5377
    .end local v3    # "r":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v4
.end method

.method private getService()Landroid/app/enterprise/IEnterpriseDeviceManager;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 320
    const-string v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    return-object v0
.end method

.method private getSurfaceWidgets(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 10
    .param p1, "pkgMngr"    # Landroid/content/pm/PackageManager;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5382
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5383
    .local v4, "retList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5384
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "com.samsung.sec.android.SURFACE_WIDGET_ACTION"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5385
    const-string v7, "com.samsung.sec.android.SURFACE_WIDGET"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5386
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 5387
    .local v5, "token":J
    const/16 v7, 0x80

    invoke-virtual {p1, v2, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 5389
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5390
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 5391
    .local v3, "r":Landroid/content/pm/ResolveInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5393
    .end local v3    # "r":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v4
.end method

.method private getUsbDevicesForDefaultAccessAsUser(IILjava/lang/String;)Ljava/util/List;
    .locals 16
    .param p1, "containerId"    # I
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/UsbDeviceConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7240
    const-string v13, "ApplicationPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getUsbDevicesforDefaultAccessAsUser for package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", container: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", userId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7242
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 7245
    .local v9, "outList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/UsbDeviceConfig;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 7246
    .local v2, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 7247
    .local v1, "adminId":Ljava/lang/Long;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 7248
    .local v5, "cvWhere":Landroid/content/ContentValues;
    const-string v13, "adminUid"

    invoke-virtual {v5, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7249
    const-string v13, "containerID"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7250
    const-string v13, "packageName"

    move-object/from16 v0, p3

    invoke-virtual {v5, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7252
    const/4 v13, 0x2

    new-array v3, v13, [Ljava/lang/String;

    .line 7253
    .local v3, "columns":[Ljava/lang/String;
    const/4 v13, 0x0

    const-string/jumbo v14, "usbDeviceVendorId"

    aput-object v14, v3, v13

    .line 7254
    const/4 v13, 0x1

    const-string/jumbo v14, "usbDeviceProductId"

    aput-object v14, v3, v13

    .line 7256
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "UsbApplicationPermissionDetailsTable"

    invoke-virtual {v13, v14, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v11

    .line 7258
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 7261
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 7262
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 7263
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 7264
    .local v4, "cv":Landroid/content/ContentValues;
    const-string/jumbo v13, "usbDeviceVendorId"

    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 7265
    .local v12, "vendorId":Ljava/lang/Integer;
    const-string/jumbo v13, "usbDeviceProductId"

    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 7266
    .local v10, "productId":Ljava/lang/Integer;
    const-string v13, "ApplicationPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getUsbDevicesforDefaultAccessAsUser for package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". Found a device with vendorId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", product Id: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". Adding to the list"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7268
    new-instance v13, Landroid/app/enterprise/UsbDeviceConfig;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/app/enterprise/UsbDeviceConfig;-><init>(II)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7272
    .end local v1    # "adminId":Ljava/lang/Long;
    .end local v2    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v3    # "columns":[Ljava/lang/String;
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v10    # "productId":Ljava/lang/Integer;
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v12    # "vendorId":Ljava/lang/Integer;
    :catch_0
    move-exception v6

    .line 7273
    .local v6, "e":Ljava/lang/Exception;
    const-string v13, "ApplicationPolicy"

    const-string v14, "getUsbDevicesforDefaultAccessAsUser failed!!"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7274
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 7276
    const/4 v9, 0x0

    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "outList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/UsbDeviceConfig;>;"
    :cond_1
    return-object v9
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 4245
    if-nez p0, :cond_1

    .line 4249
    :cond_0
    :goto_0
    return-object v1

    .line 4245
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 4246
    :catch_0
    move-exception v0

    .line 4247
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getWidgetProviderDisabledList(I)Ljava/util/Set;
    .locals 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5489
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 5490
    .local v6, "ret":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "disabledWidgetComponents"

    invoke-virtual {v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 5492
    .local v5, "list":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 5493
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5494
    .local v2, "components":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 5495
    .local v1, "component":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 5496
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5494
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5500
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "component":Ljava/lang/String;
    .end local v2    # "components":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    return-object v6
.end method

.method private installExistingApplication(Ljava/lang/String;I)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1864
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->installExistingPackageAsUserForMDM(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1869
    :goto_0
    return v1

    .line 1865
    :catch_0
    move-exception v0

    .line 1866
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1869
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private isActiveAdmin(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4930
    if-nez p1, :cond_1

    .line 4938
    :cond_0
    :goto_0
    return v0

    .line 4934
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 4935
    goto :goto_0
.end method

.method private isApplicationInstallationEnabledInternal(ILjava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z
    .locals 15
    .param p1, "userID"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pkgInst"    # Landroid/content/pm/PackageParser$Package;
    .param p4, "showMsg"    # Z

    .prologue
    .line 2972
    const/4 v7, 0x1

    .line 2974
    .local v7, "install":Z
    const-string v11, "ApplicationPolicy"

    const-string v12, "isApplicationInstallationEnabled"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2976
    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2977
    :try_start_0
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2978
    :cond_0
    monitor-exit v12

    move v8, v7

    .line 3077
    .end local v7    # "install":Z
    .local v8, "install":I
    :goto_0
    return v8

    .line 2980
    .end local v8    # "install":I
    .restart local v7    # "install":Z
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 2983
    .local v4, "appPkgInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    :try_start_1
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2985
    .local v10, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2986
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 2987
    .local v9, "uid":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    long-to-int v11, v13

    const v13, 0x186a0

    div-int v2, v11, v13

    .line 2988
    .local v2, "AdminUserID":I
    move/from16 v0, p1

    if-eq v0, v2, :cond_4

    .line 2989
    const-string v11, "ApplicationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isApplicationInstallationEnabled() :  userID :   "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  != AdminUserID  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3067
    .end local v2    # "AdminUserID":I
    .end local v9    # "uid":Ljava/lang/Long;
    .end local v10    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catch_0
    move-exception v6

    .line 3068
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 3069
    const-string v11, "ApplicationPolicy"

    const-string v13, "Could not retrieve permissions & signature for package"

    invoke-static {v11, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3071
    if-eqz p4, :cond_3

    if-nez v7, :cond_3

    .line 3072
    const v11, 0x10402da

    :try_start_3
    invoke-static {v11}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3075
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3076
    const-string v11, "ApplicationPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 3077
    .restart local v8    # "install":I
    goto/16 :goto_0

    .line 2992
    .end local v8    # "install":I
    .restart local v2    # "AdminUserID":I
    .restart local v9    # "uid":Ljava/lang/Long;
    .restart local v10    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_4
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v11

    if-nez v11, :cond_2

    .line 3000
    const-string v11, "PackageNameInstallationWhitelist"

    move-object/from16 v0, p2

    invoke-direct {p0, v9, v11, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 3002
    const-string v11, "ApplicationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isApplicationInstallationEnabled :  Checking PKG WL - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3004
    if-nez v7, :cond_2

    .line 3011
    const-string v11, "PackageNameInstallationBlacklist"

    move-object/from16 v0, p2

    invoke-direct {p0, v9, v11, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    const/4 v7, 0x1

    .line 3013
    :goto_3
    const-string v11, "ApplicationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isApplicationInstallationEnabled :  Checking PKG BL - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    if-nez v7, :cond_7

    .line 3016
    const-string v11, "ApplicationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3071
    if-eqz p4, :cond_5

    if-nez v7, :cond_5

    .line 3072
    const v11, 0x10402da

    :try_start_5
    invoke-static {v11}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3017
    :cond_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v8, v7

    .restart local v8    # "install":I
    goto/16 :goto_0

    .line 3011
    .end local v8    # "install":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 3021
    :cond_7
    :try_start_6
    new-instance v3, Ljava/util/ArrayList;

    iget-object v11, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3024
    .local v3, "appPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    const-string v13, "PermissionInstallationBlacklist"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v3, v11}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 3026
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    .line 3028
    const-string v11, "ApplicationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isApplicationInstallationEnabled :  Checking PERM BL - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3030
    if-nez v7, :cond_9

    .line 3031
    const-string v11, "ApplicationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3071
    if-eqz p4, :cond_8

    if-nez v7, :cond_8

    .line 3072
    const v11, 0x10402da

    :try_start_7
    invoke-static {v11}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3032
    :cond_8
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move v8, v7

    .restart local v8    # "install":I
    goto/16 :goto_0

    .line 3038
    .end local v8    # "install":I
    :cond_9
    :try_start_8
    new-instance v5, Ljava/util/ArrayList;

    iget-object v11, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3041
    .local v5, "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    const-string v13, "SignatureInstallationWhitelist"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v5, v11}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 3043
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    const-string v13, "SignatureInstallationWhitelist"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v11, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 3048
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3051
    .restart local v5    # "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    const-string v13, "SignatureInstallationBlacklist"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v5, v11}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 3052
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    const-string v13, "SignatureInstallationBlacklist"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v11, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b

    .line 3054
    :cond_a
    const/4 v7, 0x0

    .line 3058
    :cond_b
    const-string v11, "ApplicationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isApplicationInstallationEnabled :  Checking SIG BL - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3060
    if-nez v7, :cond_2

    .line 3061
    const-string v11, "ApplicationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3071
    if-eqz p4, :cond_c

    if-nez v7, :cond_c

    .line 3072
    const v11, 0x10402da

    :try_start_9
    invoke-static {v11}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3062
    :cond_c
    monitor-exit v12

    move v8, v7

    .restart local v8    # "install":I
    goto/16 :goto_0

    .line 3071
    .end local v2    # "AdminUserID":I
    .end local v3    # "appPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "install":I
    .end local v9    # "uid":Ljava/lang/Long;
    .end local v10    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v11

    if-eqz p4, :cond_d

    if-nez v7, :cond_d

    .line 3072
    const v13, 0x10402da

    invoke-static {v13}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3071
    :cond_d
    throw v11

    .line 3075
    .end local v4    # "appPkgInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v11

    .line 3071
    .restart local v4    # "appPkgInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    .restart local v10    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_e
    if-eqz p4, :cond_3

    if-nez v7, :cond_3

    .line 3072
    const v11, 0x10402da

    :try_start_a
    invoke-static {v11}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_2
.end method

.method private isApplicationInstalledInternal(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1600
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1601
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isApplicationInstalled : pkgName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1605
    .local v1, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1607
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 1615
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1618
    return v3

    .line 1615
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1612
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "keyBlack"    # Ljava/lang/String;
    .param p3, "keyWhite"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5090
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 14
    .param p1, "containerId"    # I
    .param p2, "keyBlack"    # Ljava/lang/String;
    .param p3, "keyWhite"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    .line 5094
    monitor-enter p0

    :try_start_0
    const-string v11, "ApplicationPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isApplicationStateBlocked userId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pkgname "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5095
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v11

    if-eqz v11, :cond_0

    .line 5096
    const/4 v1, 0x0

    .line 5134
    :goto_0
    monitor-exit p0

    return v1

    .line 5099
    :cond_0
    :try_start_1
    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5100
    :try_start_2
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-nez v11, :cond_1

    .line 5101
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_0

    .line 5135
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5094
    :catchall_1
    move-exception v11

    monitor-exit p0

    throw v11

    .line 5103
    :cond_1
    :try_start_4
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 5104
    .local v10, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 5105
    .local v1, "blocked":Z
    if-eqz v10, :cond_8

    .line 5108
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 5110
    .local v8, "uid":J
    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    move/from16 v0, p5

    if-ne v0, v11, :cond_2

    .line 5113
    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v11

    if-ne v11, p1, :cond_2

    .line 5116
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 5117
    .local v4, "packagesBlack":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 5118
    .local v5, "packagesWhite":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5119
    .local v6, "pkgB":Ljava/lang/String;
    const-string v11, "*"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 5121
    :cond_4
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5122
    .local v7, "pkgW":Ljava/lang/String;
    const-string v11, "*"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 5123
    :cond_6
    const/4 v1, 0x0

    .line 5124
    goto/16 :goto_1

    .line 5128
    .end local v7    # "pkgW":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x1

    .line 5134
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packagesBlack":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "packagesWhite":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "pkgB":Ljava/lang/String;
    .end local v8    # "uid":J
    :cond_8
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "keyBlack"    # Ljava/lang/String;
    .param p2, "keyWhite"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 5086
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1437
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1438
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1442
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v1

    .line 1439
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private isUserManagedByEnterpriseAdmin(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 7011
    const/4 v1, 0x0

    .line 7012
    .local v1, "adminsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7014
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v4, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 7019
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 7020
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 7021
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7022
    const/4 v4, 0x1

    .line 7026
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    return v4

    .line 7015
    :catch_0
    move-exception v2

    .line 7016
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "ApplicationPolicy"

    const-string v5, "Failed talking with enterprise policy service"

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7026
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isWidgetAllowed(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 5260
    const-string v0, "PackageNameWidgetBlacklist"

    const-string v1, "PackageNameWidgetWhitelist"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadApplicationBlacklistWhitelist()V
    .locals 23

    .prologue
    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 425
    :try_start_0
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    sput-object v17, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidList()Ljava/util/ArrayList;

    move-result-object v16

    .line 430
    .local v16, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v19, "packageName"

    aput-object v19, v6, v17

    const/16 v17, 0x1

    const-string v19, "controlState"

    aput-object v19, v6, v17

    .line 431
    .local v6, "columns":[Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v7, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string/jumbo v19, "signature"

    aput-object v19, v7, v17

    const/16 v17, 0x1

    const-string v19, "controlState"

    aput-object v19, v7, v17

    .line 434
    .local v7, "columnsSignTbl":[Ljava/lang/String;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    .line 437
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 438
    .local v4, "adminUid":J
    invoke-static {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v14

    .line 439
    .local v14, "storedUid":I
    invoke-static {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v8

    .line 441
    .local v8, "containerId":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 442
    .local v3, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v17, "PackageNameInstallationBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v17, "PackageNameInstallationWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v17, "PermissionInstallationBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v17, "SignatureInstallationBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v17, "SignatureInstallationWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v17, "UninstallationBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v17, "UninstallationWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string v17, "PackageNameStopBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string v17, "PackageNameStopWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v17, "PackageNameWidgetWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v17, "PackageNameWidgetBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v17, "PackageNameNotificationWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const-string v17, "PackageNameNotificationBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string v17, "RevocationCheck"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string v17, "OcspCheck"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v17, "PackageNameClearDataBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string v17, "PackageNameClearDataWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string v17, "PackageNameClearCacheBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string v17, "PackageNameClearCacheWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string v17, "PackageNameUpdateBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string v17, "PackageNameUpdateWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string v17, "PackageNameStartBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v17, "PackageNameStartWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string v17, "PackageNameDisableClipboardBlackList"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string v17, "PackageNameDisableClipboardWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v19, "APPLICATION"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 482
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_16

    .line 483
    :cond_0
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_15

    .line 484
    const-string v17, "packageName"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 485
    .local v13, "pkgName":Ljava/lang/String;
    const-string v17, "controlState"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 487
    .local v9, "controlState":I
    const/16 v17, 0x4

    and-int/lit8 v19, v9, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 488
    const-string v17, "PackageNameInstallationBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_1
    const/16 v17, 0x8

    and-int/lit8 v19, v9, 0x8

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 491
    const-string v17, "PackageNameInstallationWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_2
    const/16 v17, 0x1

    and-int/lit8 v19, v9, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 494
    const-string v17, "UninstallationBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_3
    const/16 v17, 0x400

    and-int/lit16 v0, v9, 0x400

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 497
    const-string v17, "UninstallationWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_4
    const/16 v17, 0x10

    and-int/lit8 v19, v9, 0x10

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 502
    const-string v17, "PackageNameStopBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_5
    const/16 v17, 0x20

    and-int/lit8 v19, v9, 0x20

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 505
    const-string v17, "PackageNameStopWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_6
    const/16 v17, 0x40

    and-int/lit8 v19, v9, 0x40

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 508
    const-string v17, "PackageNameWidgetBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_7
    const/16 v17, 0x80

    and-int/lit16 v0, v9, 0x80

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 512
    const-string v17, "PackageNameWidgetWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_8
    const/16 v17, 0x100

    and-int/lit16 v0, v9, 0x100

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 516
    const-string v17, "PackageNameNotificationBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_9
    const/16 v17, 0x200

    and-int/lit16 v0, v9, 0x200

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 520
    const-string v17, "PackageNameNotificationWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_a
    const/16 v17, 0x800

    and-int/lit16 v0, v9, 0x800

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 527
    const-string v17, "RevocationCheck"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_b
    const/16 v17, 0x1000

    and-int/lit16 v0, v9, 0x1000

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 531
    const-string v17, "OcspCheck"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_c
    const/16 v17, 0x2000

    and-int/lit16 v0, v9, 0x2000

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 537
    const-string v17, "PackageNameClearDataBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_d
    const/16 v17, 0x4000

    and-int/lit16 v0, v9, 0x4000

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 540
    const-string v17, "PackageNameClearDataWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_e
    const v17, 0x8000

    const v19, 0x8000

    and-int v19, v19, v9

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 545
    const-string v17, "PackageNameClearCacheBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_f
    const/high16 v17, 0x10000

    const/high16 v19, 0x10000

    and-int v19, v19, v9

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 548
    const-string v17, "PackageNameClearCacheWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_10
    const/high16 v17, 0x20000

    const/high16 v19, 0x20000

    and-int v19, v19, v9

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 552
    const-string v17, "PackageNameUpdateBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_11
    const/high16 v17, 0x40000

    const/high16 v19, 0x40000

    and-int v19, v19, v9

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 556
    const-string v17, "PackageNameUpdateWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_12
    const/high16 v17, 0x80000

    const/high16 v19, 0x80000

    and-int v19, v19, v9

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 561
    const-string v17, "PackageNameStartBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_13
    const/high16 v17, 0x200000

    const/high16 v19, 0x200000

    and-int v19, v19, v9

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 565
    const-string v17, "PackageNameDisableClipboardBlackList"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_14
    const/high16 v17, 0x400000

    const/high16 v19, 0x400000

    and-int v19, v19, v9

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 569
    const-string v17, "PackageNameDisableClipboardWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 620
    .end local v3    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v4    # "adminUid":J
    .end local v6    # "columns":[Ljava/lang/String;
    .end local v7    # "columnsSignTbl":[Ljava/lang/String;
    .end local v8    # "containerId":I
    .end local v9    # "controlState":I
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "pkgName":Ljava/lang/String;
    .end local v14    # "storedUid":I
    .end local v16    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 573
    .restart local v3    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v4    # "adminUid":J
    .restart local v6    # "columns":[Ljava/lang/String;
    .restart local v7    # "columnsSignTbl":[Ljava/lang/String;
    .restart local v8    # "containerId":I
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v14    # "storedUid":I
    .restart local v16    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_15
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 577
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v19, "APPLICATION_PERMISSION"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "permission"

    aput-object v22, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v14, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 581
    if-eqz v10, :cond_18

    .line 582
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_17

    .line 583
    const-string v17, "PermissionInstallationBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    const-string v19, "permission"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 586
    :cond_17
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 590
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v19, "APPLICATION_SIGNATURE2"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14, v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 591
    if-eqz v10, :cond_1c

    .line 592
    :cond_19
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 593
    const-string/jumbo v17, "signature"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 594
    .local v15, "str":Ljava/lang/String;
    const-string v17, "controlState"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 596
    .restart local v9    # "controlState":I
    const/16 v17, 0x1

    and-int/lit8 v19, v9, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 598
    const-string v17, "SignatureInstallationBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_1a
    const/16 v17, 0x2

    and-int/lit8 v19, v9, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_19

    .line 602
    const-string v17, "SignatureInstallationWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 605
    .end local v9    # "controlState":I
    .end local v15    # "str":Ljava/lang/String;
    :cond_1b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    :cond_1c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "APPLICATION_MISC"

    const-string v22, "appNotificationMode"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v14, v8, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 618
    :goto_4
    :try_start_3
    sget-object v17, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 613
    :catch_0
    move-exception v11

    .line 614
    .local v11, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    invoke-virtual {v11}, Lcom/android/server/enterprise/storage/SettingNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 620
    .end local v3    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v4    # "adminUid":J
    .end local v8    # "containerId":I
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    .end local v14    # "storedUid":I
    :cond_1d
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 623
    return-void
.end method

.method private manageHomeShorcut(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 26
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "homePkgName"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;

    .prologue
    .line 5628
    const/16 v17, 0x0

    .line 5630
    .local v17, "ret":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 5631
    .local v13, "pMgr":Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v23

    .line 5632
    .local v23, "userId":I
    new-instance v14, Landroid/content/Intent;

    const-string v24, "android.intent.action.MAIN"

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5633
    .local v14, "pickAppShortcut":Landroid/content/Intent;
    const-string v24, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5634
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 5635
    .local v21, "token1":J
    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v13, v14, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v16

    .line 5637
    .local v16, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5638
    if-eqz v16, :cond_1

    .line 5639
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 5640
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 5641
    const/16 v17, 0x1

    .line 5648
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-eqz v17, :cond_2

    .line 5649
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 5651
    .local v19, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-object/from16 v24, v0

    const/16 v25, 0x80

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move/from16 v2, v25

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 5653
    .local v4, "app":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_3

    .line 5654
    const/16 v17, 0x0

    .line 5684
    .end local v17    # "ret":Z
    :goto_0
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5687
    .end local v4    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "token":J
    :cond_2
    return v17

    .line 5656
    .restart local v4    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v17    # "ret":Z
    .restart local v19    # "token":J
    :cond_3
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    .line 5657
    .local v18, "shortcutIntent":Landroid/content/Intent;
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5658
    .local v11, "installAppShorcut":Landroid/content/Intent;
    const-string v24, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5659
    const-string v24, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v13, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 5661
    invoke-virtual {v13, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 5662
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_4

    .line 5663
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 5664
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    const-string v24, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5666
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    const-string v24, "duplicate"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5667
    if-eqz p3, :cond_7

    .line 5668
    new-instance v8, Landroid/content/Intent;

    const-string v24, "android.intent.action.MAIN"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5669
    .local v8, "homeIntent":Landroid/content/Intent;
    const-string v24, "android.intent.category.HOME"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5670
    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v13, v8, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    .line 5671
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    .line 5672
    .local v7, "flag":Z
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 5673
    .local v15, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 5674
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5675
    const/4 v7, 0x1

    .line 5679
    .end local v15    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_6
    if-nez v7, :cond_7

    .line 5680
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 5682
    .end local v7    # "flag":Z
    .end local v8    # "homeIntent":Landroid/content/Intent;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/UserHandle;

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 5684
    .end local v4    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "installAppShorcut":Landroid/content/Intent;
    .end local v18    # "shortcutIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v24

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v24
.end method

.method private notifyApplicationChanged(Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 6954
    const-string v7, "ApplicationPolicy"

    const-string v8, "notifyApplicationChanged"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6955
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    if-eqz p1, :cond_0

    const-string v8, "package"

    invoke-static {v8, p1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :cond_0
    invoke-direct {v2, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6957
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v7, "android"

    invoke-static {v6, v7, v9, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v5

    .line 6959
    .local v5, "userCtx":Landroid/content/Context;
    if-eqz v5, :cond_2

    .line 6960
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 6961
    .local v1, "extraList":[Ljava/lang/String;
    aput-object p1, v1, v9

    .line 6962
    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6963
    const-string v6, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 6964
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 6965
    .local v3, "token":J
    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6967
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v6

    if-nez v6, :cond_1

    .line 6969
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    const-string v7, "com.android.settings"

    invoke-interface {v6, v7, p2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6975
    :cond_1
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6977
    .end local v1    # "extraList":[Ljava/lang/String;
    .end local v3    # "token":J
    :cond_2
    return-void

    .line 6971
    .restart local v1    # "extraList":[Ljava/lang/String;
    .restart local v3    # "token":J
    :catch_0
    move-exception v0

    .line 6972
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail getting ActivityManager "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private putWidgetProviderDisabledList(Ljava/util/Set;I)V
    .locals 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 5479
    .local p1, "componentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5480
    .local v2, "list":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 5481
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5483
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "disabledWidgetComponents"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5485
    return-void
.end method

.method private readAppMemoryInfo(ZI)Ljava/util/List;
    .locals 26
    .param p1, "bShowAllProcess"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4298
    const-string v23, "ApplicationPolicy"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "readAppMemoryInfo start bShowAllProcess:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4300
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 4302
    .local v21, "lStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "activity"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 4304
    .local v4, "activityManager":Landroid/app/ActivityManager;
    const/4 v14, 0x0

    .line 4306
    .local v14, "lPidArray":[I
    if-nez p1, :cond_4

    .line 4307
    const-string v23, "ApplicationPolicy"

    const-string v24, "readAppMemoryInfo : show only installed application"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4308
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v20

    .line 4310
    .local v20, "lRunningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v14, v0, [I

    .line 4311
    const/4 v8, 0x0

    .line 4312
    .local v8, "k":I
    const/16 v22, 0x0

    .line 4313
    .local v22, "uid":I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    move v9, v8

    .end local v8    # "k":I
    .local v9, "k":I
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4314
    .local v19, "lRunningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/os/Process;->getUidForPid(I)I

    move-result v22

    .line 4315
    invoke-static/range {v22 .. v22}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 4318
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "k":I
    .restart local v8    # "k":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v23, v0

    aput v23, v14, v9

    move v9, v8

    .end local v8    # "k":I
    .restart local v9    # "k":I
    goto :goto_0

    .end local v19    # "lRunningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    move v8, v9

    .line 4329
    .end local v9    # "k":I
    .end local v20    # "lRunningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v22    # "uid":I
    .restart local v8    # "k":I
    :goto_1
    invoke-virtual {v4, v14}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v12

    .line 4330
    .local v12, "lMemInfoArray":[Landroid/os/Debug$MemoryInfo;
    if-eqz v12, :cond_2

    if-eqz v14, :cond_2

    .line 4331
    const-string v23, "ApplicationPolicy"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "memory length : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    array-length v0, v12

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "pids length"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    array-length v0, v14

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4334
    :cond_2
    if-eqz v12, :cond_5

    .line 4335
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v0, v12

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_5

    .line 4336
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/proc/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget v24, v14, v6

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/cmdline"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4337
    .local v16, "lPkgName":Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 4338
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->cleanCmdline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4339
    .local v10, "lCmdLine":Ljava/lang/String;
    aget-object v11, v12, v6

    .line 4340
    .local v11, "lMemInfo":Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v11}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v23

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v17, v0

    .line 4341
    .local v17, "lRamSize":J
    new-instance v23, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4335
    .end local v10    # "lCmdLine":Ljava/lang/String;
    .end local v11    # "lMemInfo":Landroid/os/Debug$MemoryInfo;
    .end local v17    # "lRamSize":J
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 4321
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "k":I
    .end local v12    # "lMemInfoArray":[Landroid/os/Debug$MemoryInfo;
    .end local v16    # "lPkgName":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPidList(I)Ljava/util/ArrayList;

    move-result-object v15

    .line 4322
    .local v15, "lPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v14, v0, [I

    .line 4323
    const/4 v8, 0x0

    .line 4324
    .restart local v8    # "k":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    move v9, v8

    .end local v8    # "k":I
    .restart local v9    # "k":I
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 4325
    .local v13, "lPid":I
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "k":I
    .restart local v8    # "k":I
    aput v13, v14, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v8

    .end local v8    # "k":I
    .restart local v9    # "k":I
    goto :goto_3

    .line 4345
    .end local v4    # "activityManager":Landroid/app/ActivityManager;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "k":I
    .end local v13    # "lPid":I
    .end local v14    # "lPidArray":[I
    .end local v15    # "lPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v5

    .line 4346
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 4349
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v23, "ApplicationPolicy"

    const-string v24, "readAppMemoryInfo end"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4350
    return-object v21

    .restart local v4    # "activityManager":Landroid/app/ActivityManager;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "k":I
    .restart local v14    # "lPidArray":[I
    .restart local v15    # "lPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    move v8, v9

    .end local v9    # "k":I
    .restart local v8    # "k":I
    goto/16 :goto_1
.end method

.method private readAppSizeInfo(I)Ljava/util/List;
    .locals 16
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4396
    const-string v12, "ApplicationPolicy"

    const-string v13, "readAppSizeInfo start"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4398
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4399
    .local v10, "token":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v4

    .line 4400
    .local v4, "lPkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4403
    .local v7, "lStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;>;"
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 4404
    .local v3, "lPkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4405
    .local v5, "lPkgName":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 4406
    new-instance v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 4407
    .local v6, "lPkgSizeObserver":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move/from16 v0, p1

    invoke-virtual {v12, v5, v0, v6}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 4408
    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4409
    :goto_1
    :try_start_1
    iget-boolean v12, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v12, :cond_1

    .line 4411
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 4412
    :catch_0
    move-exception v12

    goto :goto_1

    .line 4415
    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4416
    :try_start_4
    iget-boolean v12, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v12, :cond_0

    .line 4417
    iget-object v12, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    if-eqz v12, :cond_0

    .line 4418
    iget-object v12, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v12, v12, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v14, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v14, v14, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v12, v14

    iget-object v14, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v14, v14, Landroid/content/pm/PackageStats;->dataSize:J

    add-long v8, v12, v14

    .line 4422
    .local v8, "lTotalSize":J
    new-instance v12, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v5, v8, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;J)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 4427
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "lPkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "lPkgName":Ljava/lang/String;
    .end local v6    # "lPkgSizeObserver":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    .end local v8    # "lTotalSize":J
    :catch_1
    move-exception v1

    .line 4428
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4430
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4433
    const-string v12, "ApplicationPolicy"

    const-string v13, "readAppSizeInfo end"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4434
    return-object v7

    .line 4415
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "lPkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "lPkgName":Ljava/lang/String;
    .restart local v6    # "lPkgSizeObserver":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    :catchall_0
    move-exception v12

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 4430
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "lPkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "lPkgName":Ljava/lang/String;
    .end local v6    # "lPkgSizeObserver":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    :catchall_1
    move-exception v12

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
.end method

.method private readData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "aFileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4550
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4557
    .local v2, "lFstream":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x1f4

    invoke-direct {v1, v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 4559
    .local v1, "lBufReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 4566
    if-eqz v2, :cond_0

    .line 4567
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 4568
    const/4 v2, 0x0

    .line 4570
    :cond_0
    if-eqz v1, :cond_1

    .line 4571
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 4572
    :goto_0
    const/4 v1, 0x0

    .line 4563
    .end local v1    # "lBufReader":Ljava/io/BufferedReader;
    .end local v2    # "lFstream":Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-object v3

    .line 4551
    :catch_0
    move-exception v0

    .line 4552
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 4553
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File access error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4560
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "lBufReader":Ljava/io/BufferedReader;
    .restart local v2    # "lFstream":Ljava/io/FileReader;
    :catch_1
    move-exception v0

    .line 4561
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4562
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read error on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4566
    if-eqz v2, :cond_2

    .line 4567
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 4568
    const/4 v2, 0x0

    .line 4570
    :cond_2
    if-eqz v1, :cond_1

    .line 4571
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 4574
    :catch_2
    move-exception v0

    .line 4575
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 4565
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 4566
    if-eqz v2, :cond_3

    .line 4567
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 4568
    const/4 v2, 0x0

    .line 4570
    :cond_3
    if-eqz v1, :cond_4

    .line 4571
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 4572
    const/4 v1, 0x0

    .line 4565
    :cond_4
    :goto_3
    throw v3

    .line 4574
    :catch_3
    move-exception v0

    .line 4575
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 4574
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method private reconcileApplicationsState()V
    .locals 10

    .prologue
    .line 6008
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "appToReconcile"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6010
    .local v0, "apps":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 6011
    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 6012
    .local v5, "list":[Ljava/lang/String;
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v1, v3

    .line 6013
    .local v6, "pkgName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v7, 0x0

    invoke-direct {p0, v7, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v7, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6016
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 6012
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6020
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "appToReconcile"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6027
    .end local v0    # "apps":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "list":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 6024
    :catch_0
    move-exception v2

    .line 6025
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "ApplicationPolicy"

    const-string v8, "error in reconcileApplicationsState"

    invoke-static {v7, v8, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private reconcileComponentsState()V
    .locals 11

    .prologue
    .line 6031
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "componentsToReconcile"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6033
    .local v0, "apps":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 6034
    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 6035
    .local v6, "list":[Ljava/lang/String;
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v1, v4

    .line 6036
    .local v7, "pkgName":Ljava/lang/String;
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 6037
    .local v2, "compName":Landroid/content/ComponentName;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    const/4 v8, 0x0

    invoke-direct {p0, v8, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationComponentStateEnabled(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 6039
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v2, v9, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 6035
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6043
    .end local v2    # "compName":Landroid/content/ComponentName;
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "componentsToReconcile"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6050
    .end local v0    # "apps":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "list":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 6047
    :catch_0
    move-exception v3

    .line 6048
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "ApplicationPolicy"

    const-string v9, "error in reconcileComponentsState"

    invoke-static {v8, v9, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private refreshWidgetStatus(I)V
    .locals 24
    .param p1, "userId"    # I

    .prologue
    .line 5401
    const-string v20, "ApplicationPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "refresh widget status for user "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRefreshWidgetStatusLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 5404
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v22, "android"

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v6

    .line 5405
    .local v6, "ctx":Landroid/content/Context;
    if-nez v6, :cond_0

    .line 5406
    const-string v20, "ApplicationPolicy"

    const-string v22, "Could not create context for current user!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5407
    monitor-exit v21

    .line 5475
    :goto_0
    return-void

    .line 5411
    :cond_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 5414
    .local v19, "widgetProviders":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v13, 0x0

    .line 5415
    .local v13, "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v17

    .line 5417
    .local v17, "token1":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledWidgetProviders(I)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    .line 5422
    :try_start_2
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5425
    :goto_1
    if-nez v13, :cond_1

    .line 5426
    const-string v20, "ApplicationPolicy"

    const-string v22, "providerInfoList == null"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5427
    monitor-exit v21

    goto :goto_0

    .line 5474
    .end local v6    # "ctx":Landroid/content/Context;
    .end local v13    # "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v17    # "token1":J
    .end local v19    # "widgetProviders":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v20

    .line 5418
    .restart local v6    # "ctx":Landroid/content/Context;
    .restart local v13    # "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .restart local v17    # "token1":J
    .restart local v19    # "widgetProviders":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_0
    move-exception v8

    .line 5419
    .local v8, "ex":Landroid/os/RemoteException;
    const/4 v13, 0x0

    .line 5420
    :try_start_3
    const-string v20, "ApplicationPolicy"

    const-string v22, "Failed to get widget providers"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5422
    :try_start_4
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v8    # "ex":Landroid/os/RemoteException;
    :catchall_1
    move-exception v20

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20

    .line 5430
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 5431
    .local v4, "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v0, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5434
    .end local v4    # "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getSamsungWidgets(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5437
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getSurfaceWidgets(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5439
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getWidgetProviderDisabledList(I)Ljava/util/Set;

    move-result-object v7

    .line 5440
    .local v7, "disabledList":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 5441
    .local v14, "toRemove":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 5442
    .local v5, "cn":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 5443
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 5444
    .local v15, "token":J
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 5446
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5447
    invoke-interface {v14, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5450
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v15    # "token":J
    :cond_4
    invoke-interface {v7, v14}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 5452
    const/4 v9, 0x0

    .line 5454
    .local v9, "hasDisabled":Z
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ComponentName;

    .line 5455
    .local v12, "p":Landroid/content/ComponentName;
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;I)Z

    move-result v20

    if-nez v20, :cond_5

    .line 5456
    invoke-interface {v7, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5457
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 5458
    .restart local v15    # "token":J
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const/16 v22, 0x2

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 5460
    const/4 v9, 0x1

    .line 5461
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .line 5465
    .end local v12    # "p":Landroid/content/ComponentName;
    .end local v15    # "token":J
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->putWidgetProviderDisabledList(Ljava/util/Set;I)V

    .line 5468
    if-eqz v9, :cond_7

    .line 5469
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 5470
    .restart local v15    # "token":J
    new-instance v11, Landroid/content/Intent;

    const-string v20, "edm.intent.action.FORCE_LAUNCHER_REFRESH"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5471
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v22, Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5472
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5474
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v15    # "token":J
    :cond_7
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private refreshWidgetStatus(Ljava/util/List;Landroid/content/Context;)V
    .locals 11
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5344
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5362
    :goto_0
    return-void

    .line 5347
    :cond_0
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRefreshWidgetStatusLock:Ljava/lang/Object;

    monitor-enter v8

    .line 5348
    :try_start_0
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v0, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 5349
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 5350
    .local v6, "userId":I
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v0, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isWidgetAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 5351
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getWidgetProviderDisabledList(I)Ljava/util/Set;

    move-result-object v1

    .line 5352
    .local v1, "disabledList":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5353
    .local v3, "p":Landroid/content/ComponentName;
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5354
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5355
    .local v4, "token":J
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v7, v3, v9, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 5357
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 5361
    .end local v0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v1    # "disabledList":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "p":Landroid/content/ComponentName;
    .end local v4    # "token":J
    .end local v6    # "userId":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 5359
    .restart local v0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .restart local v1    # "disabledList":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "userId":I
    :cond_1
    :try_start_1
    invoke-direct {p0, v1, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->putWidgetProviderDisabledList(Ljava/util/Set;I)V

    .line 5361
    .end local v1    # "disabledList":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private registerBootCompletedListener()V
    .locals 3

    .prologue
    .line 5265
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5266
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5268
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$3;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 5284
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5285
    return-void
.end method

.method private registerPackageChangeReceiver()V
    .locals 7

    .prologue
    .line 1333
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1334
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1335
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1336
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1337
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1338
    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1339
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1341
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1398
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1399
    const-string v0, "ApplicationPolicy"

    const-string v1, "registerPackageChangeReceiver() : Done"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1404
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 1401
    :catch_0
    move-exception v6

    .line 1402
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerUserSwitchedReceiver()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 4828
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 4829
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4831
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$2;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 4876
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 4877
    return-void
.end method

.method private declared-synchronized removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "bitMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 4974
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4975
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 4976
    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4978
    .local v2, "callingUid":I
    if-nez p4, :cond_1

    .line 5000
    :cond_0
    monitor-exit p0

    return v8

    .line 4982
    :cond_1
    const/4 v8, 0x1

    .line 4984
    .local v8, "result":Z
    if-eqz p4, :cond_4

    .line 4985
    :try_start_1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 4986
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4987
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4988
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4989
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4974
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "callingUid":I
    .end local v3    # "containerId":I
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8    # "result":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4994
    .restart local v2    # "callingUid":I
    .restart local v3    # "containerId":I
    .restart local v8    # "result":Z
    :cond_4
    if-eqz p4, :cond_0

    .line 4995
    :try_start_2
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4996
    .restart local v1    # "pkg":Ljava/lang/String;
    const/4 v5, 0x0

    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    and-int/2addr v8, v0

    goto :goto_1
.end method

.method private declared-synchronized setApplicationComponentNameControlState(ILandroid/content/ComponentName;IIZ)Z
    .locals 8
    .param p1, "adminUid"    # I
    .param p2, "compName"    # Landroid/content/ComponentName;
    .param p3, "containerId"    # I
    .param p4, "controlStateMask"    # I
    .param p5, "enableMask"    # Z

    .prologue
    .line 887
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_COMPONENT"

    const-string v4, "component"

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "componentControlState"

    move v2, p1

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 891
    .local v7, "controlState":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    .line 892
    const/4 v7, 0x0

    .line 894
    :cond_0
    if-eqz p5, :cond_1

    .line 895
    or-int/2addr v7, p4

    .line 899
    :goto_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 900
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v0, "componentControlState"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 901
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_COMPONENT"

    const-string v4, "component"

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    move v2, p1

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 897
    .end local v6    # "cv":Landroid/content/ContentValues;
    :cond_1
    xor-int/lit8 v0, p4, -0x1

    and-int/2addr v7, v0

    goto :goto_0

    .line 887
    .end local v7    # "controlState":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setApplicationComponentNameControlState(ILandroid/content/ComponentName;IZ)Z
    .locals 6
    .param p1, "adminUid"    # I
    .param p2, "compName"    # Landroid/content/ComponentName;
    .param p3, "controlStateMask"    # I
    .param p4, "enableMask"    # Z

    .prologue
    .line 877
    monitor-enter p0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationComponentNameControlState(ILandroid/content/ComponentName;IIZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setApplicationPermissionControlState(Ljava/lang/String;IZ)Z
    .locals 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "adminUid"    # I
    .param p3, "add"    # Z

    .prologue
    .line 914
    int-to-long v0, p2

    .line 915
    .local v0, "callingUid":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createAdminMap(J)V

    .line 917
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 918
    if-eqz p3, :cond_0

    .line 919
    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "PermissionInstallationBlacklist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 920
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 921
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v3, "permission"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const-string v3, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 923
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "APPLICATION_PERMISSION"

    invoke-virtual {v3, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    monitor-exit v4

    .line 927
    .end local v2    # "cv":Landroid/content/ContentValues;
    :goto_0
    return v3

    .line 925
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "PermissionInstallationBlacklist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 927
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "APPLICATION_PERMISSION"

    const-string v6, "permission"

    invoke-virtual {v3, v5, p2, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    monitor-exit v4

    goto :goto_0

    .line 930
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private declared-synchronized setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "adminUid"    # I
    .param p3, "containerId"    # I
    .param p4, "controlStateMask"    # I
    .param p5, "enableMask"    # Z

    .prologue
    .line 688
    monitor-enter p0

    int-to-long v7, p2

    .line 689
    .local v7, "callingUid":J
    if-lez p3, :cond_0

    .line 690
    :try_start_0
    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v7

    .line 691
    invoke-static {p3, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v4, "packageName"

    const-string v6, "controlState"

    move v2, p2

    move v3, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 699
    .local v9, "controlState":I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_1

    .line 700
    const/4 v9, 0x0

    .line 702
    :cond_1
    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createAdminMap(J)V

    .line 704
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 706
    sparse-switch p4, :sswitch_data_0

    .line 852
    :goto_0
    :sswitch_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 854
    if-eqz p5, :cond_17

    .line 855
    or-int/2addr v9, p4

    .line 867
    :goto_1
    :try_start_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 868
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v0, "controlState"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 871
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v4, "packageName"

    move v2, p2

    move v3, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    monitor-exit p0

    return v0

    .line 709
    .end local v6    # "cv":Landroid/content/ContentValues;
    :sswitch_1
    if-eqz p5, :cond_2

    .line 710
    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameInstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 688
    .end local v9    # "controlState":I
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 712
    .restart local v9    # "controlState":I
    :cond_2
    :try_start_5
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameInstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 716
    :sswitch_2
    if-eqz p5, :cond_3

    .line 717
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameInstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 719
    :cond_3
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameInstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 723
    :sswitch_3
    if-eqz p5, :cond_4

    .line 724
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "UninstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 726
    :cond_4
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "UninstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 730
    :sswitch_4
    if-eqz p5, :cond_5

    .line 731
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "UninstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 733
    :cond_5
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "UninstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 737
    :sswitch_5
    if-eqz p5, :cond_6

    .line 738
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameStopBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 740
    :cond_6
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameStopBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 743
    :sswitch_6
    if-eqz p5, :cond_7

    .line 744
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameStopWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 746
    :cond_7
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameStopWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 749
    :sswitch_7
    if-eqz p5, :cond_8

    .line 750
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameWidgetWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 752
    :cond_8
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameWidgetWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 755
    :sswitch_8
    if-eqz p5, :cond_9

    .line 756
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameWidgetBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 758
    :cond_9
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameWidgetBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 761
    :sswitch_9
    if-eqz p5, :cond_a

    .line 762
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameNotificationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 764
    :cond_a
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameNotificationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 768
    :sswitch_a
    if-eqz p5, :cond_b

    .line 769
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameNotificationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 771
    :cond_b
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameNotificationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 777
    :sswitch_b
    if-eqz p5, :cond_c

    .line 778
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "RevocationCheck"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 780
    :cond_c
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "RevocationCheck"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 783
    :sswitch_c
    if-eqz p5, :cond_d

    .line 784
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "OcspCheck"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 786
    :cond_d
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "OcspCheck"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 791
    :sswitch_d
    if-eqz p5, :cond_e

    .line 792
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearDataBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 794
    :cond_e
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearDataBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 797
    :sswitch_e
    if-eqz p5, :cond_f

    .line 798
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearDataWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 800
    :cond_f
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearDataWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 803
    :sswitch_f
    if-eqz p5, :cond_10

    .line 804
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearCacheBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 806
    :cond_10
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearCacheBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 809
    :sswitch_10
    if-eqz p5, :cond_11

    .line 810
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearCacheWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 812
    :cond_11
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearCacheWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 816
    :sswitch_11
    if-eqz p5, :cond_12

    .line 817
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameUpdateBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 819
    :cond_12
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameUpdateBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 822
    :sswitch_12
    if-eqz p5, :cond_13

    .line 823
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameUpdateWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 825
    :cond_13
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameUpdateWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 829
    :sswitch_13
    if-eqz p5, :cond_14

    .line 830
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameStartBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 832
    :cond_14
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameStartBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 839
    :sswitch_14
    if-eqz p5, :cond_15

    .line 840
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameDisableClipboardBlackList"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 842
    :cond_15
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameDisableClipboardBlackList"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 845
    :sswitch_15
    if-eqz p5, :cond_16

    .line 846
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameDisableClipboardWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 848
    :cond_16
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameDisableClipboardWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 857
    :cond_17
    xor-int/lit8 v0, p4, -0x1

    and-int/2addr v9, v0

    goto/16 :goto_1

    .line 706
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_5
        0x20 -> :sswitch_6
        0x40 -> :sswitch_8
        0x80 -> :sswitch_7
        0x100 -> :sswitch_9
        0x200 -> :sswitch_a
        0x400 -> :sswitch_4
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_e
        0x8000 -> :sswitch_f
        0x10000 -> :sswitch_10
        0x20000 -> :sswitch_11
        0x40000 -> :sswitch_12
        0x80000 -> :sswitch_13
        0x100000 -> :sswitch_0
        0x200000 -> :sswitch_14
        0x400000 -> :sswitch_15
    .end sparse-switch
.end method

.method private declared-synchronized setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "controlStateMask"    # I
    .param p4, "enableMask"    # Z

    .prologue
    .line 678
    monitor-enter p0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z
    .locals 10
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "adminUid"    # I
    .param p3, "controlStateMask"    # I
    .param p4, "enableMask"    # Z

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_SIGNATURE2"

    const-string/jumbo v3, "signature"

    const-string v5, "controlState"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 942
    .local v8, "controlState":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_0

    .line 943
    const/4 v8, 0x0

    .line 946
    :cond_0
    if-nez p4, :cond_1

    and-int v0, v8, p3

    if-eq v0, p3, :cond_1

    .line 948
    const/4 v9, 0x1

    .line 989
    :goto_0
    return v9

    .line 951
    :cond_1
    int-to-long v6, p2

    .line 952
    .local v6, "callingUid":J
    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createAdminMap(J)V

    .line 954
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 956
    packed-switch p3, :pswitch_data_0

    .line 971
    :goto_1
    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    if-eqz p4, :cond_4

    .line 974
    or-int/2addr v8, p3

    .line 978
    :goto_2
    const/4 v9, 0x1

    .line 979
    .local v9, "result":Z
    if-lez v8, :cond_5

    .line 980
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 981
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v0, "controlState"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 982
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_SIGNATURE2"

    const-string/jumbo v3, "signature"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v9

    .line 984
    goto :goto_0

    .line 958
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v9    # "result":Z
    :pswitch_0
    if-eqz p4, :cond_2

    .line 959
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "SignatureInstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 971
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 961
    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "SignatureInstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 965
    :pswitch_1
    if-eqz p4, :cond_3

    .line 966
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "SignatureInstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 968
    :cond_3
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "SignatureInstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 976
    :cond_4
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr v8, v0

    goto/16 :goto_2

    .line 985
    .restart local v9    # "result":Z
    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_SIGNATURE2"

    const-string/jumbo v2, "signature"

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_0

    .line 956
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setInstallSourceMDM(ILjava/lang/String;Z)V
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "stateValue"    # Z

    .prologue
    const/4 v6, 0x1

    .line 2162
    if-ne p3, v6, :cond_0

    .line 2163
    .local v6, "state":I
    :goto_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2164
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v0, "install_sourceMDM"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2165
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 2169
    return-void

    .line 2162
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "state":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private setManagedApp(ILjava/lang/String;Z)V
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "stateValue"    # Z

    .prologue
    const/4 v6, 0x1

    .line 2152
    if-ne p3, v6, :cond_0

    .line 2153
    .local v6, "state":I
    :goto_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2154
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v0, "managedApp"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2155
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 2159
    return-void

    .line 2152
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "state":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private storeAppInfoForLateStart(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "adminLuid"    # J
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .prologue
    .line 4805
    move-object v1, p3

    .line 4807
    .local v1, "componentName":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 4808
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4811
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 4812
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    .line 4815
    :cond_1
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 4816
    .local v0, "componentList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 4817
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4825
    :goto_0
    return-void

    .line 4821
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4822
    .local v2, "newComponentList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4823
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateCount(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "contentName"    # Ljava/lang/String;

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1409
    .local v6, "count":I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1410
    .local v5, "cv":Landroid/content/ContentValues;
    if-gtz v6, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1411
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 1413
    return-void

    .line 1410
    :cond_0
    add-int/lit8 v0, v6, 0x1

    goto :goto_0
.end method

.method private updateSystemAppDisableState(Ljava/lang/String;)V
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1416
    const/4 v8, 0x0

    .line 1417
    .local v8, "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    .line 1418
    .local v9, "userManager":Landroid/os/UserManager;
    if-eqz v9, :cond_0

    .line 1419
    invoke-virtual {v9, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v8

    .end local v8    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    check-cast v8, Ljava/util/ArrayList;

    .line 1422
    .restart local v8    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_0
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1423
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 1424
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v4, v7, Landroid/content/pm/UserInfo;->id:I

    .line 1425
    .local v4, "currentUserHandle":I
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1426
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)Z

    goto :goto_0

    .line 1432
    .end local v4    # "currentUserHandle":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    return-void
.end method


# virtual methods
.method public addAppNotificationBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5511
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationBlacklist"

    const/16 v1, 0x100

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addAppNotificationWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5534
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationWhitelist"

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addAppPackageNameToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3989
    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAppPackageNameToBlackList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3990
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3991
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3992
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3993
    const/4 v0, 0x0

    .line 3996
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public addAppPackageNameToWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4053
    const-string v0, "ApplicationPolicy"

    const-string v1, "addAppPackageNameToWhiteList"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4054
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4055
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4057
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4058
    const/4 v0, 0x0

    .line 4061
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public addAppPermissionToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appPermission"    # Ljava/lang/String;

    .prologue
    .line 3668
    if-nez p2, :cond_0

    .line 3669
    const/4 v0, 0x0

    .line 3671
    :goto_0
    return v0

    .line 3670
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3671
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPermissionControlState(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public addAppSignatureToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appSignature"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 3761
    if-nez p2, :cond_0

    .line 3762
    const/4 v0, 0x0

    .line 3764
    :goto_0
    return v0

    .line 3763
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3764
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, p2, v0, v1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public addAppSignatureToWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 3857
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3858
    if-eqz p2, :cond_0

    .line 3859
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    .line 3862
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addHomeShortcut(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "homePkgName"    # Ljava/lang/String;

    .prologue
    .line 5618
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5619
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->manageHomeShorcut(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addPackageToInstallWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 6228
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6229
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 6230
    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 6231
    .local v2, "adminUid":I
    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPackageToInstallList :  pkgName: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " containerId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6232
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6233
    const-string v0, "ApplicationPolicy"

    const-string v1, "addPackageToInstallList() Package name is invalid"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6234
    const/4 v0, 0x0

    .line 6274
    :goto_0
    return v0

    .line 6237
    :cond_0
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6239
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v7

    .line 6240
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v0, "2.0"

    const-string/jumbo v1, "version"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6241
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 6242
    .local v9, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 6245
    .local v11, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PersonaManager;

    .line 6248
    .local v10, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v10, p2, v9}, Landroid/os/PersonaManager;->addPackageToInstallWhiteList(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6249
    const/4 v0, 0x1

    .line 6255
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 6251
    .end local v10    # "pm":Landroid/os/PersonaManager;
    :catch_0
    move-exception v8

    .line 6252
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPackageToInstallList() - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6255
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6258
    const/4 v0, 0x0

    goto :goto_0

    .line 6255
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 6261
    .end local v9    # "pid":I
    .end local v11    # "token":J
    :cond_1
    invoke-static {v3, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6263
    if-eqz v5, :cond_2

    .line 6264
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 6265
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v0, "containerID"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6266
    const-string v0, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6267
    const-string v0, "packageName"

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6269
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WhiteListInstallApps"

    const-string v4, "packageName"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    goto/16 :goto_0

    .line 6273
    .end local v6    # "cv":Landroid/content/ContentValues;
    :cond_2
    const-string v0, "ApplicationPolicy"

    const-string v1, "Package name is null. Failed to add the package to White list"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6274
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public addPackagesToClearCacheBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6503
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearCacheBlacklist"

    const v1, 0x8000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToClearCacheWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6523
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearCacheWhitelist"

    const/high16 v1, 0x10000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToClearDataBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6446
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearDataBlacklist"

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToClearDataWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6466
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearDataWhitelist"

    const/16 v1, 0x4000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToDisableClipboardBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6761
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameDisableClipboardBlackList"

    const/high16 v1, 0x200000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToDisableClipboardWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6775
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameDisableClipboardWhitelist"

    const/high16 v1, 0x400000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToDisableUpdateBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 7056
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 7057
    const-string v1, "PackageNameUpdateBlacklist"

    const/high16 v2, 0x20000

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 7059
    .local v0, "ret":Z
    return v0
.end method

.method public addPackagesToDisableUpdateWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 7034
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 7035
    const-string v1, "PackageNameUpdateWhitelist"

    const/high16 v2, 0x40000

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 7037
    .local v0, "ret":Z
    return v0
.end method

.method public addPackagesToForceStopBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5142
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopBlacklist"

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToForceStopWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5162
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopWhitelist"

    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToPreventStartBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 6630
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6631
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 6632
    .local v2, "callingUid":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6634
    .local v6, "addedPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 6662
    :cond_0
    return-object v6

    .line 6638
    :cond_1
    invoke-direct {p0, p2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->arrangePackageList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p2

    .line 6641
    const-string v0, "PackageNameStartBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 6642
    .local v7, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6643
    .local v1, "pkg":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6644
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6649
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    .line 6650
    .local v9, "result":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6651
    .restart local v1    # "pkg":Ljava/lang/String;
    const/4 v3, 0x0

    const/high16 v4, 0x80000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z

    move-result v9

    .line 6656
    if-eqz v9, :cond_4

    .line 6657
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6658
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->stopApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public addPackagesToWidgetBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5228
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetBlacklist"

    const/16 v2, 0x40

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 5230
    .local v0, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 5231
    return v0
.end method

.method public addPackagesToWidgetWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5201
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetWhitelist"

    const/16 v2, 0x80

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 5203
    .local v0, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 5204
    return v0
.end method

.method public addUsbDevicesForDefaultAccess(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/UsbDeviceConfig;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "deviceConfig":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/UsbDeviceConfig;>;"
    const/4 v7, 0x0

    .line 7135
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 7136
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 7137
    .local v0, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 7138
    .local v6, "userId":I
    const/4 v3, 0x0

    .line 7140
    .local v3, "result":Z
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 7169
    :cond_0
    :goto_0
    return v7

    .line 7143
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 7146
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addUsbDevicesforDefaultAccess for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7148
    invoke-direct {p0, v0, v6, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getUsbDevicesForDefaultAccessAsUser(IILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 7151
    .local v4, "storedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/UsbDeviceConfig;>;"
    const/4 v1, 0x0

    .line 7152
    .local v1, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/UsbDeviceConfig;>;"
    if-eqz v4, :cond_3

    .line 7153
    const-string v7, "ApplicationPolicy"

    const-string v8, "addUsbDevicesforDefaultAccess: Storeddevices exist already. So store only the ones which are mutually exclusive among both lists"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7154
    invoke-direct {p0, p3, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getMutuallyExclusiveDevices(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 7160
    :goto_1
    if-eqz v1, :cond_4

    .line 7161
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/UsbDeviceConfig;

    .line 7163
    .local v5, "ua":Landroid/app/enterprise/UsbDeviceConfig;
    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addUsbDeviceForDefaultAccess(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/app/enterprise/UsbDeviceConfig;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7164
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addUsbDeviceforDefaultAccess: Successfully stored USBD name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7165
    const/4 v3, 0x1

    goto :goto_2

    .line 7156
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "ua":Landroid/app/enterprise/UsbDeviceConfig;
    :cond_3
    const-string v7, "ApplicationPolicy"

    const-string v8, "addUsbDevicesforDefaultAccess: Storeddevices doesnt exist"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7157
    move-object v1, p3

    goto :goto_1

    :cond_4
    move v7, v3

    .line 7169
    goto :goto_0
.end method

.method public backupApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .locals 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 5746
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceBackupAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5747
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 5748
    .local v19, "userId":I
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 5749
    .local v20, "validPkgName":Ljava/lang/String;
    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPkgInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 5751
    :cond_0
    const/4 v3, -0x2

    .line 5801
    :goto_0
    return v3

    .line 5752
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5754
    :cond_2
    const/4 v3, -0x3

    goto :goto_0

    .line 5757
    :cond_3
    :try_start_0
    new-instance v16, Ljava/lang/SecurityManager;

    invoke-direct/range {v16 .. v16}, Ljava/lang/SecurityManager;-><init>()V

    .line 5758
    .local v16, "sm":Ljava/lang/SecurityManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 5764
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v17

    .line 5766
    .local v17, "token":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v3, :cond_4

    .line 5767
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    .line 5768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v3, :cond_4

    .line 5769
    const-string v3, "ApplicationPolicy"

    const-string v4, "failed to get backup manager service"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5770
    const/4 v3, -0x2

    .line 5795
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 5797
    new-instance v13, Landroid/content/Intent;

    const-string v4, "edm.intent.action.backup.service.available"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5798
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5799
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5770
    monitor-exit v21

    goto :goto_0

    .line 5802
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v17    # "token":J
    :catchall_0
    move-exception v3

    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 5759
    .end local v16    # "sm":Ljava/lang/SecurityManager;
    :catch_0
    move-exception v12

    .line 5760
    .local v12, "ex":Ljava/lang/SecurityException;
    const-string v3, "ApplicationPolicy"

    const-string v4, "can\'t write to file descriptor"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5761
    const/4 v3, -0x2

    goto :goto_0

    .line 5774
    .end local v12    # "ex":Ljava/lang/SecurityException;
    .restart local v16    # "sm":Ljava/lang/SecurityManager;
    .restart local v17    # "token":J
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    const/4 v4, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v3, v4, v0, v1}, Landroid/app/backup/IBackupManager;->setupEdmBackupRestore(ZLjava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v3

    if-nez v3, :cond_5

    .line 5775
    const/4 v3, -0x3

    .line 5795
    const/4 v4, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 5797
    new-instance v13, Landroid/content/Intent;

    const-string v4, "edm.intent.action.backup.service.available"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5798
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5799
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5775
    monitor-exit v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 5777
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v3, 0x1

    :try_start_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 5778
    const/4 v3, -0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupReturnCode:I

    .line 5779
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    .line 5780
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5781
    .local v15, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v14, v3, [Ljava/lang/String;

    .line 5782
    .local v14, "packArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5784
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    move-object/from16 v4, p3

    invoke-interface/range {v3 .. v10}, Landroid/app/backup/IBackupManager;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZ[Ljava/lang/String;)V

    .line 5786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5795
    const/4 v3, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 5797
    new-instance v13, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5798
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5799
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5801
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupReturnCode:I

    monitor-exit v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 5787
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "packArray":[Ljava/lang/String;
    .end local v15    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v11

    .line 5788
    .local v11, "e":Ljava/lang/InterruptedException;
    :try_start_8
    const-string v3, "ApplicationPolicy"

    const-string v4, "backupApplicationData interrupted"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 5789
    const/4 v3, -0x2

    .line 5795
    const/4 v4, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 5797
    new-instance v13, Landroid/content/Intent;

    const-string v4, "edm.intent.action.backup.service.available"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5798
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5799
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5789
    monitor-exit v21
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 5790
    .end local v11    # "e":Ljava/lang/InterruptedException;
    .end local v13    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v12

    .line 5791
    .local v12, "ex":Landroid/os/RemoteException;
    :try_start_a
    const-string v3, "ApplicationPolicy"

    const-string v4, "Failed to get backup manager service"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 5792
    const/4 v3, -0x2

    .line 5795
    const/4 v4, 0x0

    :try_start_b
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 5797
    new-instance v13, Landroid/content/Intent;

    const-string v4, "edm.intent.action.backup.service.available"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5798
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5799
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5792
    monitor-exit v21

    goto/16 :goto_0

    .line 5795
    .end local v12    # "ex":Landroid/os/RemoteException;
    .end local v13    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 5797
    new-instance v13, Landroid/content/Intent;

    const-string v4, "edm.intent.action.backup.service.available"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5798
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5799
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5795
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public changeApplicationIcon(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[B)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aImageData"    # [B

    .prologue
    .line 3561
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3562
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3563
    .local v0, "userId":I
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->changeApplicationIconForUser(Ljava/lang/String;[BI)Z

    move-result v1

    return v1
.end method

.method public changeApplicationName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    .line 6888
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6889
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->changeApplicationNameForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method checkKNOXSystemStatus()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2442
    :try_start_0
    const-string v4, "container_service"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v0

    .line 2446
    .local v0, "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    if-nez v0, :cond_0

    .line 2447
    const-string v3, "ApplicationPolicy"

    const-string v4, "KNOX Service is NULL"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    .end local v0    # "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    :goto_0
    return v2

    .line 2450
    .restart local v0    # "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    :cond_0
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/sec/knox/container/IEnterpriseContainerService;->getMountStatus(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2451
    const-string v3, "ApplicationPolicy"

    const-string v4, "KNOX system not mount"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2454
    .end local v0    # "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    :catch_0
    move-exception v1

    .line 2455
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "ApplicationPolicy"

    const-string v4, "KNOX : get status exception"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    :cond_1
    move v2, v3

    .line 2458
    goto :goto_0
.end method

.method public clearDisableClipboardBlackList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 6789
    const-string v0, "PackageNameDisableClipboardBlackList"

    const/high16 v1, 0x200000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public clearDisableClipboardWhiteList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 6794
    const-string v0, "PackageNameDisableClipboardWhitelist"

    const/high16 v1, 0x400000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public clearDisableUpdateBlackList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 7078
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 7079
    const-string v1, "PackageNameUpdateBlacklist"

    const/high16 v2, 0x20000

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    .line 7081
    .local v0, "ret":Z
    return v0
.end method

.method public clearDisableUpdateWhiteList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 7085
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 7086
    const-string v1, "PackageNameUpdateWhitelist"

    const/high16 v2, 0x40000

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    .line 7088
    .local v0, "ret":Z
    return v0
.end method

.method public clearPreventStartBlackList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 6684
    const-string v0, "PackageNameStartBlacklist"

    const/high16 v1, 0x80000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public clearUsbDevicesForDefaultAccess(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 7175
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 7176
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 7177
    .local v0, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 7178
    .local v1, "userId":I
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearDevices for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7180
    if-eqz p2, :cond_0

    .line 7181
    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearUsbDevicesForDefaultAccessAsUser(IILjava/lang/String;)Z

    move-result v2

    .line 7184
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteHomeShortcut(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "homePkgName"    # Ljava/lang/String;

    .prologue
    .line 5623
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5624
    const-string v0, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->manageHomeShorcut(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteManagedAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "contextInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2749
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    .line 2750
    .local v1, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    iget v0, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2752
    .local v0, "callingUid":I
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2754
    const/4 v3, 0x0

    invoke-virtual {p0, v1, p2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2817
    :goto_0
    return v2

    .line 2757
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2758
    invoke-virtual {p0, v1, p2, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    .line 2760
    :cond_1
    const/4 v3, 0x4

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2762
    const/16 v3, 0x8

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2764
    invoke-direct {p0, p2, v0, v4, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2766
    const/16 v3, 0x400

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2769
    const/16 v3, 0x10

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2771
    const/16 v3, 0x20

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2773
    const/16 v3, 0x40

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2775
    const/16 v3, 0x80

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2777
    const/16 v3, 0x100

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2779
    const/16 v3, 0x200

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2781
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 2785
    const/16 v3, 0x800

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2787
    const/16 v3, 0x1000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2792
    const/16 v3, 0x2000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2794
    const/16 v3, 0x4000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2797
    const v3, 0x8000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2799
    const/high16 v3, 0x10000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2803
    const/high16 v3, 0x20000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2805
    const/high16 v3, 0x40000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2809
    const/high16 v3, 0x80000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2811
    const/high16 v3, 0x200000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2813
    const/high16 v3, 0x400000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2817
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "APPLICATION"

    const-string v4, "packageName"

    invoke-virtual {v2, v3, v0, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public deletePackageFromAppUsageDb(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4538
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/application/ApplicationUsage;->deletePackageFromDb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableOcspCheck(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6197
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6198
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6200
    .local v0, "validPkgName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 6206
    :cond_0
    :goto_0
    return v1

    .line 6202
    :cond_1
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6206
    :cond_2
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/16 v2, 0x1000

    invoke-direct {p0, p2, v1, v2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_0
.end method

.method public enableRevocationCheck(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6177
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6178
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6180
    .local v0, "validPkgName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 6186
    :cond_0
    :goto_0
    return v1

    .line 6182
    :cond_1
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6186
    :cond_2
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/16 v2, 0x800

    invoke-direct {p0, p2, v1, v2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_0
.end method

.method public getAllAppLastUsage(Landroid/app/enterprise/ContextInfo;)[Landroid/app/enterprise/AppInfoLastUsage;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4532
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4533
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 4534
    .local v0, "userId":I
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/application/ApplicationUsage;->getAllAppLastUsage(I)[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v1

    return-object v1
.end method

.method public getAllWidgets(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/Map;
    .locals 28
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5900
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5901
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v24

    .line 5902
    .local v24, "userId":I
    const/16 v19, 0x0

    .line 5905
    .local v19, "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getAllWidgets(Ljava/lang/String;I)Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 5910
    :goto_0
    if-nez v19, :cond_0

    .line 5911
    new-instance v19, Ljava/util/HashMap;

    .end local v19    # "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 5914
    .restart local v19    # "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p2, :cond_2

    const-string v6, "com.sec.android.app.launcher"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5917
    :cond_1
    const-string v6, "content://com.sec.android.app.launcher.settings/favorites?notify=false"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 5919
    .local v3, "launcher_uri":Landroid/net/Uri;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "appWidgetId"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "intent"

    aput-object v7, v4, v6

    .line 5922
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "itemType = 900 OR itemType = 901 OR itemType = 1000 OR itemType = 1001 OR itemType = 1002"

    .line 5924
    .local v5, "selectionClause":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v7, "android"

    const/16 v26, 0x0

    move/from16 v0, v26

    move/from16 v1, v24

    invoke-static {v6, v7, v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v23

    .line 5926
    .local v23, "userContext":Landroid/content/Context;
    if-nez v23, :cond_3

    .line 6000
    .end local v3    # "launcher_uri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "selectionClause":Ljava/lang/String;
    .end local v23    # "userContext":Landroid/content/Context;
    :cond_2
    :goto_1
    return-object v19

    .line 5906
    :catch_0
    move-exception v12

    .line 5907
    .local v12, "e":Landroid/os/RemoteException;
    const-string v6, "ApplicationPolicy"

    const-string v7, "error in getAllWidgets"

    invoke-static {v6, v7, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5929
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v3    # "launcher_uri":Landroid/net/Uri;
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v5    # "selectionClause":Ljava/lang/String;
    .restart local v23    # "userContext":Landroid/content/Context;
    :cond_3
    const/4 v10, 0x0

    .line 5931
    .local v10, "c":Landroid/database/Cursor;
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 5932
    .local v20, "token":J
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5933
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5934
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5935
    :cond_4
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 5937
    new-instance v17, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v17 .. v17}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 5938
    .local v17, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    const/4 v6, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 5939
    .local v25, "widgetId":I
    const/4 v6, 0x1

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v22

    .line 5940
    .local v22, "uri":Ljava/lang/String;
    const/16 v16, 0x0

    .line 5942
    .local v16, "intent":Landroid/content/Intent;
    const/4 v6, 0x0

    :try_start_2
    move-object/from16 v0, v22

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    .line 5947
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v26, 0x3

    move/from16 v0, v26

    move/from16 v1, v24

    invoke-static {v6, v7, v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v11

    .line 5950
    .local v11, "ctx":Landroid/content/Context;
    if-eqz v11, :cond_4

    .line 5953
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    move-object/from16 v0, v17

    iput-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 5955
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v20

    .line 5957
    const/16 v18, 0x0

    .line 5958
    .local v18, "resName":I
    :try_start_4
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "plug_in_name"

    const-string/jumbo v26, "string"

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v7, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 5960
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v26, 0x80

    move/from16 v0, v26

    invoke-virtual {v6, v7, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 5962
    .local v8, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v18, :cond_6

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_3
    move-object/from16 v0, v17

    iput-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5969
    :try_start_5
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5972
    const/4 v14, 0x0

    .line 5973
    .local v14, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 5974
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/appwidget/AppWidgetProviderInfo;

    .line 5975
    .local v9, "auxProvider":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v9, :cond_5

    iget-object v6, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v6, :cond_5

    iget-object v6, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5977
    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    check-cast v14, Ljava/util/ArrayList;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v14    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_4

    .line 5943
    .end local v8    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "auxProvider":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v11    # "ctx":Landroid/content/Context;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "resName":I
    :catch_1
    move-exception v12

    .line 5944
    .local v12, "e":Ljava/net/URISyntaxException;
    goto/16 :goto_2

    .line 5962
    .end local v12    # "e":Ljava/net/URISyntaxException;
    .restart local v8    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "ctx":Landroid/content/Context;
    .restart local v18    # "resName":I
    :cond_6
    :try_start_6
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v6

    goto :goto_3

    .line 5964
    .end local v8    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :catch_2
    move-exception v15

    .line 5969
    .local v15, "ignore":Landroid/content/res/Resources$NotFoundException;
    :try_start_7
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 5990
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v11    # "ctx":Landroid/content/Context;
    .end local v15    # "ignore":Landroid/content/res/Resources$NotFoundException;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v18    # "resName":I
    .end local v20    # "token":J
    .end local v22    # "uri":Ljava/lang/String;
    .end local v25    # "widgetId":I
    :catch_3
    move-exception v12

    .line 5991
    .local v12, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getAllWidgets Ex: "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 5994
    if-eqz v10, :cond_2

    .line 5995
    .end local v12    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 5966
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v11    # "ctx":Landroid/content/Context;
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v17    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v18    # "resName":I
    .restart local v20    # "token":J
    .restart local v22    # "uri":Ljava/lang/String;
    .restart local v25    # "widgetId":I
    :catch_4
    move-exception v15

    .line 5969
    .local v15, "ignore":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_9
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 5994
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v11    # "ctx":Landroid/content/Context;
    .end local v15    # "ignore":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v18    # "resName":I
    .end local v20    # "token":J
    .end local v22    # "uri":Ljava/lang/String;
    .end local v25    # "widgetId":I
    :catchall_0
    move-exception v6

    if-eqz v10, :cond_7

    .line 5995
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5994
    :cond_7
    throw v6

    .line 5969
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v11    # "ctx":Landroid/content/Context;
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v17    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v18    # "resName":I
    .restart local v20    # "token":J
    .restart local v22    # "uri":Ljava/lang/String;
    .restart local v25    # "widgetId":I
    :catchall_1
    move-exception v6

    :try_start_a
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 5981
    .restart local v8    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_8
    if-nez v14, :cond_9

    .line 5982
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 5983
    .restart local v14    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5984
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 5986
    :cond_9
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 5994
    .end local v8    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "ctx":Landroid/content/Context;
    .end local v14    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v18    # "resName":I
    .end local v22    # "uri":Ljava/lang/String;
    .end local v25    # "widgetId":I
    :cond_a
    if-eqz v10, :cond_2

    goto :goto_5
.end method

.method public getAppInstallToSdCard(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4162
    const/4 v1, 0x0

    .line 4163
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "APPLICATION_GENERAL"

    const-string v6, "installToSdCard"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4165
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 4166
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 4167
    move v1, v2

    .line 4171
    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public getAppInstallationMode(Landroid/app/enterprise/ContextInfo;)I
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x1

    .line 2263
    const-string v5, "ApplicationPolicy"

    const-string v7, "getAppInstallationMode :  mode start: "

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2266
    .local v4, "userID":I
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2267
    const/4 v1, 0x1

    .line 2268
    .local v1, "install":Z
    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2269
    :cond_0
    monitor-exit v7

    move v5, v6

    .line 2293
    :goto_0
    return v5

    .line 2271
    :cond_1
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2273
    .local v3, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2274
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2275
    .local v2, "uid":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-int v5, v8

    const v8, 0x186a0

    div-int v0, v5, v8

    .line 2276
    .local v0, "AdminUserID":I
    if-eq v4, v0, :cond_3

    .line 2277
    const-string v5, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAppInstallationMode() :  userID :   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  != AdminUserID  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2295
    .end local v0    # "AdminUserID":I
    .end local v2    # "uid":Ljava/lang/Long;
    .end local v3    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2280
    .restart local v0    # "AdminUserID":I
    .restart local v2    # "uid":Ljava/lang/Long;
    .restart local v3    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v5

    if-nez v5, :cond_2

    .line 2285
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v8, "PackageNameInstallationBlacklist"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    const-string v8, ".*"

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v8, "PackageNameInstallationWhitelist"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    const-string v8, ".*"

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2287
    const/4 v1, 0x0

    .line 2291
    .end local v0    # "AdminUserID":I
    .end local v2    # "uid":Ljava/lang/Long;
    :cond_4
    const-string v5, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAppInstallationMode :  mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    if-eqz v1, :cond_5

    move v5, v6

    :goto_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public getAppNotificationBlackList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5527
    const-string v0, "PackageNameNotificationBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppNotificationWhiteList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5550
    const-string v0, "PackageNameNotificationWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppPackageNamesAllBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4013
    const-string v8, "ApplicationPolicy"

    const-string v9, "getAppPackageNamesAllBlackLists "

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4014
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4015
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 4016
    .local v7, "userID":I
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v9

    .line 4017
    :try_start_0
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4018
    :cond_0
    const/4 v3, 0x0

    monitor-exit v9

    .line 4048
    :goto_0
    return-object v3

    .line 4020
    :cond_1
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 4023
    .local v6, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4024
    .local v3, "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    const/4 v2, 0x0

    .line 4026
    .local v2, "adminPackageName":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4027
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 4028
    .local v5, "uid":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v8, v10

    const v10, 0x186a0

    div-int v0, v8, v10

    .line 4029
    .local v0, "AdminUserID":I
    if-eq v7, v0, :cond_3

    .line 4030
    const-string v8, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAppSignaturesAllBlackLists() :  userID :   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  != AdminUserID  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4049
    .end local v0    # "AdminUserID":I
    .end local v2    # "adminPackageName":Ljava/lang/String;
    .end local v3    # "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .end local v5    # "uid":Ljava/lang/Long;
    .end local v6    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 4033
    .restart local v0    # "AdminUserID":I
    .restart local v2    # "adminPackageName":Ljava/lang/String;
    .restart local v3    # "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .restart local v5    # "uid":Ljava/lang/Long;
    .restart local v6    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v8

    if-nez v8, :cond_2

    .line 4036
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v10, "PackageNameInstallationBlacklist"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4037
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    .line 4038
    if-eqz v2, :cond_2

    .line 4040
    new-instance v1, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 4041
    .local v1, "aci":Landroid/app/enterprise/AppControlInfo;
    iput-object v2, v1, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 4042
    new-instance v10, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v11, "PackageNameInstallationBlacklist"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 4043
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4044
    iget-object v8, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4046
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 4048
    .end local v0    # "AdminUserID":I
    .end local v1    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v4    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "uid":Ljava/lang/Long;
    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getAppPackageNamesAllWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4079
    const-string v8, "ApplicationPolicy"

    const-string v9, "getAppPackageNamesAllWhiteLists "

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4080
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4081
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 4082
    .local v6, "userID":I
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v9

    .line 4083
    :try_start_0
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4084
    :cond_0
    const/4 v7, 0x0

    monitor-exit v9

    .line 4114
    :goto_0
    return-object v7

    .line 4086
    :cond_1
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4089
    .local v5, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4090
    .local v7, "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    const/4 v2, 0x0

    .line 4092
    .local v2, "adminPackageName":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4093
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 4094
    .local v4, "uid":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v8, v10

    const v10, 0x186a0

    div-int v0, v8, v10

    .line 4095
    .local v0, "AdminUserID":I
    if-eq v6, v0, :cond_3

    .line 4096
    const-string v8, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAppSignaturesAllBlackLists() :  userID :   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  != AdminUserID  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4115
    .end local v0    # "AdminUserID":I
    .end local v2    # "adminPackageName":Ljava/lang/String;
    .end local v4    # "uid":Ljava/lang/Long;
    .end local v5    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v7    # "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 4099
    .restart local v0    # "AdminUserID":I
    .restart local v2    # "adminPackageName":Ljava/lang/String;
    .restart local v4    # "uid":Ljava/lang/Long;
    .restart local v5    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v7    # "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v8

    if-nez v8, :cond_2

    .line 4102
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v10, "PackageNameInstallationWhitelist"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4103
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    .line 4104
    if-eqz v2, :cond_2

    .line 4106
    new-instance v1, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 4107
    .local v1, "aci":Landroid/app/enterprise/AppControlInfo;
    iput-object v2, v1, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 4108
    new-instance v10, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v11, "PackageNameInstallationWhitelist"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 4109
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4110
    iget-object v8, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4112
    :cond_4
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 4114
    .end local v0    # "AdminUserID":I
    .end local v1    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "uid":Ljava/lang/Long;
    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getAppPermissionsAllBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3719
    const-string v8, "ApplicationPolicy"

    const-string v9, "getAppPermissionAllBlackLists:"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3720
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3721
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 3722
    .local v7, "userID":I
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3723
    :try_start_0
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3724
    :cond_0
    const/4 v3, 0x0

    monitor-exit v9

    .line 3754
    :goto_0
    return-object v3

    .line 3726
    :cond_1
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3729
    .local v6, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3730
    .local v3, "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    const/4 v2, 0x0

    .line 3732
    .local v2, "adminPackageName":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3733
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 3734
    .local v5, "uid":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v8, v10

    const v10, 0x186a0

    div-int v0, v8, v10

    .line 3735
    .local v0, "AdminUserID":I
    if-eq v7, v0, :cond_3

    .line 3736
    const-string v8, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAppPermissionsAllBlackLists() :  userID :   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  != AdminUserID  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3755
    .end local v0    # "AdminUserID":I
    .end local v2    # "adminPackageName":Ljava/lang/String;
    .end local v3    # "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .end local v5    # "uid":Ljava/lang/Long;
    .end local v6    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 3739
    .restart local v0    # "AdminUserID":I
    .restart local v2    # "adminPackageName":Ljava/lang/String;
    .restart local v3    # "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .restart local v5    # "uid":Ljava/lang/Long;
    .restart local v6    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v8

    if-nez v8, :cond_2

    .line 3742
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v10, "PermissionInstallationBlacklist"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3743
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    .line 3744
    if-eqz v2, :cond_2

    .line 3746
    new-instance v1, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 3747
    .local v1, "aci":Landroid/app/enterprise/AppControlInfo;
    iput-object v2, v1, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3748
    new-instance v10, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v11, "PermissionInstallationBlacklist"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 3749
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3750
    iget-object v8, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3752
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3754
    .end local v0    # "AdminUserID":I
    .end local v1    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v4    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "uid":Ljava/lang/Long;
    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getAppPermissionsBlackList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3693
    const-string v3, "ApplicationPolicy"

    const-string v4, "getAppPermissionsBlackList:"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3694
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 3695
    .local v0, "callingUid":I
    const/4 v2, 0x0

    .line 3696
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "APPLICATION_PERMISSION"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "permission"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3700
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 3701
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3702
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3703
    const-string v3, "permission"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3705
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3708
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 3709
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    .line 3711
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAppSignatureBlackList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x0

    .line 3781
    const-string v3, "ApplicationPolicy"

    const-string v5, "getAppSignatureBlackList()"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3783
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 3797
    :goto_0
    return-object v3

    .line 3786
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 3788
    .local v0, "callingUid":I
    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3789
    .local v2, "uid":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 3790
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3791
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "SignatureInstallationBlacklist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3794
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 3795
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v3, v4

    .line 3797
    goto :goto_0
.end method

.method public getAppSignaturesAllBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3805
    const-string v8, "ApplicationPolicy"

    const-string v9, "getAppSignatureAllBlackLists:"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3806
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3807
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 3809
    .local v7, "userID":I
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3810
    :try_start_0
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3811
    :cond_0
    const/4 v3, 0x0

    monitor-exit v9

    .line 3843
    :goto_0
    return-object v3

    .line 3813
    :cond_1
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3816
    .local v6, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3817
    .local v3, "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    const/4 v2, 0x0

    .line 3819
    .local v2, "adminPackageName":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3820
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 3821
    .local v5, "uid":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v8, v10

    const v10, 0x186a0

    div-int v0, v8, v10

    .line 3822
    .local v0, "AdminUserID":I
    if-eq v7, v0, :cond_3

    .line 3823
    const-string v8, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAppSignaturesAllBlackLists() :  userID :   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  != AdminUserID  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3844
    .end local v0    # "AdminUserID":I
    .end local v2    # "adminPackageName":Ljava/lang/String;
    .end local v3    # "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .end local v5    # "uid":Ljava/lang/Long;
    .end local v6    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 3826
    .restart local v0    # "AdminUserID":I
    .restart local v2    # "adminPackageName":Ljava/lang/String;
    .restart local v3    # "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .restart local v5    # "uid":Ljava/lang/Long;
    .restart local v6    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v8

    if-nez v8, :cond_2

    .line 3830
    const-string v8, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAppSignaturesAllBlackLists() :  uid  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3831
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v10, "SignatureInstallationBlacklist"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3832
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    .line 3833
    if-eqz v2, :cond_2

    .line 3835
    new-instance v1, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 3836
    .local v1, "aci":Landroid/app/enterprise/AppControlInfo;
    iput-object v2, v1, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3837
    new-instance v10, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v11, "SignatureInstallationBlacklist"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 3838
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3839
    iget-object v8, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3841
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3843
    .end local v0    # "AdminUserID":I
    .end local v1    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v4    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "uid":Ljava/lang/Long;
    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getAppSignaturesAllWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3910
    const-string v8, "ApplicationPolicy"

    const-string v9, "getAppSignaturesAllWhiteLists:"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3911
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3912
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 3913
    .local v6, "userID":I
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3914
    :try_start_0
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3915
    :cond_0
    const/4 v7, 0x0

    monitor-exit v9

    .line 3947
    :goto_0
    return-object v7

    .line 3917
    :cond_1
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 3918
    .local v5, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3919
    .local v7, "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 3920
    .local v4, "uid":Ljava/lang/Long;
    const/4 v3, 0x0

    .line 3921
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3922
    .local v1, "aci":Landroid/app/enterprise/AppControlInfo;
    const/4 v2, 0x0

    .line 3924
    .local v2, "adminPackageName":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3925
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "uid":Ljava/lang/Long;
    check-cast v4, Ljava/lang/Long;

    .line 3926
    .restart local v4    # "uid":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v8, v10

    const v10, 0x186a0

    div-int v0, v8, v10

    .line 3927
    .local v0, "AdminUserID":I
    if-eq v6, v0, :cond_3

    .line 3928
    const-string v8, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAppSignaturesAllBlackLists() :  userID :   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  != AdminUserID  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3948
    .end local v0    # "AdminUserID":I
    .end local v1    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v2    # "adminPackageName":Ljava/lang/String;
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "uid":Ljava/lang/Long;
    .end local v5    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v7    # "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 3931
    .restart local v0    # "AdminUserID":I
    .restart local v1    # "aci":Landroid/app/enterprise/AppControlInfo;
    .restart local v2    # "adminPackageName":Ljava/lang/String;
    .restart local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "uid":Ljava/lang/Long;
    .restart local v5    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v7    # "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v8

    if-nez v8, :cond_2

    .line 3935
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v10, "SignatureInstallationWhitelist"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3936
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    .line 3937
    if-eqz v2, :cond_2

    .line 3939
    new-instance v1, Landroid/app/enterprise/AppControlInfo;

    .end local v1    # "aci":Landroid/app/enterprise/AppControlInfo;
    invoke-direct {v1}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 3940
    .restart local v1    # "aci":Landroid/app/enterprise/AppControlInfo;
    iput-object v2, v1, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3941
    new-instance v10, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v11, "SignatureInstallationWhitelist"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 3942
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3943
    iget-object v8, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3945
    :cond_4
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3947
    .end local v0    # "AdminUserID":I
    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getAppSignaturesWhiteList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x0

    .line 3885
    const-string v3, "ApplicationPolicy"

    const-string v5, "getAppSignaturesWhiteList:"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3887
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3888
    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3889
    :cond_0
    monitor-exit v5

    move-object v3, v4

    .line 3902
    :goto_0
    return-object v3

    .line 3891
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 3893
    .local v0, "callingUid":I
    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3894
    .local v2, "uid":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 3895
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3896
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v6, "SignatureInstallationWhitelist"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3899
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 3900
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    monitor-exit v5

    goto :goto_0

    .line 3903
    .end local v0    # "callingUid":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "uid":Ljava/lang/Long;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3902
    .restart local v0    # "callingUid":I
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "uid":Ljava/lang/Long;
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    goto :goto_0
.end method

.method public getApplicationCacheSize(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3381
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3382
    const-wide/16 v3, -0x1

    .line 3383
    .local v3, "total":J
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3384
    if-eqz p2, :cond_0

    .line 3386
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2000

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3388
    .local v1, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 3389
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v2

    .line 3390
    .local v2, "pkgSt":Landroid/content/pm/PackageStats;
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3398
    .end local v1    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkgSt":Landroid/content/pm/PackageStats;
    :cond_0
    :goto_0
    return-wide v3

    .line 3392
    :catch_0
    move-exception v0

    .line 3393
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getApplicationCacheSize() : Exception when retrieving package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3394
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 3395
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationCodeSize(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3330
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3331
    const-wide/16 v3, -0x1

    .line 3332
    .local v3, "total":J
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3333
    if-eqz p2, :cond_0

    .line 3335
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3336
    .local v1, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 3337
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v2

    .line 3338
    .local v2, "pkgSt":Landroid/content/pm/PackageStats;
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->codeSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3344
    .end local v1    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkgSt":Landroid/content/pm/PackageStats;
    :cond_0
    :goto_0
    return-wide v3

    .line 3340
    :catch_0
    move-exception v0

    .line 3341
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationComponentState(ILandroid/content/ComponentName;I)Z
    .locals 11
    .param p1, "containerId"    # I
    .param p2, "compName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .prologue
    .line 2107
    if-nez p2, :cond_1

    .line 2108
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationComponentState : ComponentName is null , userId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    const/4 v3, 0x0

    .line 2148
    :cond_0
    :goto_0
    return v3

    .line 2111
    :cond_1
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2114
    .local v5, "pkg":Ljava/lang/String;
    const/4 v3, 0x1

    .line 2115
    .local v3, "enabled":Z
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2117
    .local v2, "cvValues":Landroid/content/ContentValues;
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationComponentState : pkg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " userId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    invoke-static {v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2121
    if-eqz v5, :cond_3

    .line 2122
    const-string v8, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2123
    const-string/jumbo v8, "userID"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2124
    const-string v8, "component"

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "componentControlState"

    aput-object v9, v6, v8

    .line 2128
    .local v6, "returnColumns":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "APPLICATION_COMPONENT"

    invoke-virtual {v8, v9, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 2130
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2131
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 2132
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 2133
    const-string v8, "componentControlState"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 2134
    .local v7, "state":Ljava/lang/Integer;
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationComponentState : state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    const/4 v8, 0x1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-ne v8, v9, :cond_2

    .line 2138
    const/4 v3, 0x0

    .line 2139
    goto/16 :goto_0

    .line 2146
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "returnColumns":[Ljava/lang/String;
    .end local v7    # "state":Ljava/lang/Integer;
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public getApplicationComponentState(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "compName"    # Landroid/content/ComponentName;

    .prologue
    .line 2095
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 2096
    .local v1, "uid":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2098
    .local v0, "containerId":I
    if-nez v0, :cond_0

    .line 2099
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    .line 2102
    :cond_0
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationComponentState(ILandroid/content/ComponentName;I)Z

    move-result v2

    return v2
.end method

.method public getApplicationCpuUsage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 3468
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3469
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3471
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3472
    :cond_0
    const-wide/16 v6, -0x1

    .line 3505
    :cond_1
    :goto_0
    return-wide v6

    .line 3475
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationRunningInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v2

    .line 3477
    .local v2, "pid":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_1

    .line 3481
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->update()V

    .line 3483
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->countWorkingStats()I

    move-result v0

    .line 3484
    .local v0, "count":I
    const/4 v3, 0x0

    .line 3485
    .local v3, "stat":Lcom/android/internal/os/ProcessStats$Stats;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 3486
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8, v1}, Lcom/android/internal/os/ProcessStats;->getWorkingStats(I)Lcom/android/internal/os/ProcessStats$Stats;

    move-result-object v3

    .line 3487
    iget v8, v3, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    if-ne v8, v2, :cond_5

    .line 3492
    :cond_3
    if-eqz v3, :cond_1

    .line 3496
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->getLastUserTime()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v9}, Lcom/android/internal/os/ProcessStats;->getLastSystemTime()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v9}, Lcom/android/internal/os/ProcessStats;->getLastIrqTime()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v9}, Lcom/android/internal/os/ProcessStats;->getLastIdleTime()I

    move-result v9

    add-int/2addr v8, v9

    int-to-long v4, v8

    .line 3501
    .local v4, "totalCPUTime":J
    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    .line 3502
    const-wide/16 v4, 0x1

    .line 3505
    :cond_4
    iget v6, v3, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    iget v7, v3, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x64

    int-to-long v6, v6

    div-long/2addr v6, v4

    goto :goto_0

    .line 3485
    .end local v4    # "totalCPUTime":J
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getApplicationDataSize(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3354
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3355
    const-wide/16 v3, -0x1

    .line 3356
    .local v3, "total":J
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3357
    if-eqz p2, :cond_0

    .line 3359
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2000

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3361
    .local v1, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 3362
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v2

    .line 3363
    .local v2, "pkgSt":Landroid/content/pm/PackageStats;
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3371
    .end local v1    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkgSt":Landroid/content/pm/PackageStats;
    :cond_0
    :goto_0
    return-wide v3

    .line 3365
    :catch_0
    move-exception v0

    .line 3366
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getApplicationCacheSize() : Exception when retrieving package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3367
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 3368
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationIconFromDb(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[B
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aPackageName"    # Ljava/lang/String;

    .prologue
    .line 3647
    const/4 v0, 0x0

    .line 3648
    .local v0, "lImg":[B
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 3649
    .local v1, "userId":I
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 3650
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3652
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v2, p2, v1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getApplicationIcon(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3654
    :cond_0
    return-object v0
.end method

.method public getApplicationInstallationEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aPacakageName"    # Ljava/lang/String;

    .prologue
    .line 2913
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2914
    .local v0, "userID":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstallationEnabledInternal(ILjava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z

    move-result v1

    return v1
.end method

.method public getApplicationMemoryUsage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3408
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3409
    const-wide/16 v7, 0x0

    .line 3410
    .local v7, "total":J
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3411
    if-eqz p2, :cond_3

    .line 3414
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 3415
    const-wide/16 v9, -0x1

    .line 3447
    :goto_0
    return-wide v9

    .line 3420
    :cond_0
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3422
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 3424
    .local v4, "lRapi":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-virtual {v9, p2, v10}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 3425
    .local v1, "apkID":I
    const-string v9, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getApplicationMemoryUsage() : apkID =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3426
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3429
    .local v6, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 3432
    .local v5, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v9, v1, :cond_1

    .line 3433
    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-direct {p0, v9, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDebugMemoryInfo(ILandroid/app/ActivityManager;)J

    move-result-wide v9

    iget-object v11, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v11, v11

    int-to-long v11, v11

    div-long/2addr v9, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v7, v9

    goto :goto_1

    .line 3440
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "apkID":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "lRapi":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_0
    move-exception v2

    .line 3441
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3442
    const-wide/16 v7, -0x1

    .line 3447
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-ltz v9, :cond_4

    move-wide v9, v7

    goto :goto_0

    .line 3445
    :cond_3
    const-wide/16 v7, -0x1

    goto :goto_2

    .line 3447
    :cond_4
    const-wide/16 v9, -0x1

    goto :goto_0
.end method

.method public getApplicationName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3217
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3218
    const/4 v1, 0x0

    .line 3219
    .local v1, "appName":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3220
    if-eqz p2, :cond_0

    .line 3222
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 3223
    .local v3, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    .line 3224
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3229
    .end local v3    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 3225
    :catch_0
    move-exception v2

    .line 3226
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 6980
    const/4 v0, 0x0

    .line 6981
    .local v0, "newName":Ljava/lang/String;
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 6982
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6984
    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppName for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6985
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getApplicationName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6988
    :cond_0
    return-object v0
.end method

.method public getApplicationNotificationMode(Landroid/app/enterprise/ContextInfo;Z)I
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v6, 0x2

    .line 5582
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5583
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 5584
    .local v3, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 5603
    :goto_0
    return v5

    .line 5587
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5588
    .local v2, "mUserModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5589
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 5590
    .local v4, "userIdByAdmin":I
    if-ne v3, v4, :cond_1

    .line 5591
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5595
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v4    # "userIdByAdmin":I
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    .line 5596
    goto :goto_0

    .line 5597
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v7

    .line 5598
    goto :goto_0

    .line 5599
    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v8

    .line 5600
    goto :goto_0

    :cond_5
    move v5, v6

    .line 5603
    goto :goto_0
.end method

.method public getApplicationStateEnabled(ILjava/lang/String;)Z
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2493
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getApplicationStateEnabled(ILjava/lang/String;I)Z
    .locals 12
    .param p1, "containerId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v8, 0x0

    .line 2515
    const/4 v4, 0x1

    .line 2516
    .local v4, "enabled":Z
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2518
    .local v2, "cvValues":Landroid/content/ContentValues;
    const-string v9, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getApplicationStateEnabled : pkg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " userId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2521
    invoke-static {p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2523
    if-eqz p2, :cond_4

    .line 2524
    const-string v9, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2525
    const-string/jumbo v9, "userID"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2526
    const-string v9, "packageName"

    invoke-virtual {v2, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2528
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const-string v9, "controlState"

    aput-object v9, v6, v8

    .line 2532
    .local v6, "returnColumns":[Ljava/lang/String;
    const-string v9, "sec_container_"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "com.sec.knox.containeragent"

    invoke-virtual {p2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "com.sec.android.app.knoxlauncher"

    invoke-virtual {p2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2536
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkKNOXSystemStatus()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2537
    const-string v9, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KNOX system is not ready, blocked : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    .end local v6    # "returnColumns":[Ljava/lang/String;
    :goto_0
    return v8

    .line 2540
    .restart local v6    # "returnColumns":[Ljava/lang/String;
    :cond_0
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KNOX system is ready, start : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2547
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "APPLICATION"

    invoke-virtual {v8, v9, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 2549
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 2550
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 2551
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 2552
    const-string v8, "controlState"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 2553
    .local v7, "state":Ljava/lang/Integer;
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationStateEnabled : state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    const/4 v8, 0x2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-ne v8, v9, :cond_2

    .line 2557
    const/4 v4, 0x0

    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "returnColumns":[Ljava/lang/String;
    .end local v7    # "state":Ljava/lang/Integer;
    :cond_3
    :goto_2
    move v8, v4

    .line 2567
    goto :goto_0

    .line 2541
    .restart local v6    # "returnColumns":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2542
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2565
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "returnColumns":[Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2471
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2473
    .local v0, "containerId":I
    if-nez v0, :cond_0

    .line 2474
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    .line 2477
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(ILjava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 2483
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 2485
    .local v0, "ret":Z
    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 2486
    const v1, 0x1040696

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2489
    :cond_0
    return v0
.end method

.method public getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 2497
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    .line 2498
    .local v0, "containerId":I
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(ILjava/lang/String;I)Z

    move-result v1

    .line 2499
    .local v1, "ret":Z
    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 2500
    const v2, 0x1040696

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2503
    :cond_0
    return v1
.end method

.method public getApplicationStateList(Landroid/app/enterprise/ContextInfo;Z)[Ljava/lang/String;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "state"    # Z

    .prologue
    .line 4880
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4882
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getApplicationStateList:state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4884
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4885
    .local v2, "lAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getInstalledApplicationsIDList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 4887
    .local v0, "appInstallList":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4901
    .end local v0    # "appInstallList":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 4891
    .restart local v0    # "appInstallList":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 4892
    aget-object v3, v0, v1

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-ne v3, p2, :cond_1

    .line 4893
    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4891
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4897
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 4898
    const/4 v0, 0x0

    goto :goto_0

    .line 4901
    :cond_3
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    goto :goto_0
.end method

.method public getApplicationTotalSize(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3306
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3307
    const-wide/16 v3, -0x1

    .line 3308
    .local v3, "total":J
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3309
    if-eqz p2, :cond_0

    .line 3311
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3312
    .local v1, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 3313
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v2

    .line 3314
    .local v2, "pkgSt":Landroid/content/pm/PackageStats;
    iget-wide v5, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v7, v2, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v5, v7

    iget-wide v7, v2, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long v3, v5, v7

    .line 3320
    .end local v1    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkgSt":Landroid/content/pm/PackageStats;
    :cond_0
    :goto_0
    return-wide v3

    .line 3316
    :catch_0
    move-exception v0

    .line 3317
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationUid(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3239
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3240
    const/4 v0, -0x1

    .line 3241
    .local v0, "appUid":I
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3242
    if-eqz p2, :cond_0

    .line 3244
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 3245
    .local v2, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 3246
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3251
    .end local v2    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v0

    .line 3247
    :catch_0
    move-exception v1

    .line 3248
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationUninstallationEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3089
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 3090
    .local v0, "userID":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabledInternal(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getApplicationUninstallationEnabled(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userID"    # I

    .prologue
    const/4 v5, 0x0

    .line 3094
    if-gez p2, :cond_3

    .line 3095
    const/4 v3, 0x0

    .line 3096
    .local v3, "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 3097
    .local v4, "userManager":Landroid/os/UserManager;
    if-eqz v4, :cond_0

    .line 3098
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .end local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 3101
    .restart local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 3102
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 3103
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    .line 3104
    .local v0, "currentUserHandle":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabledInternal(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3112
    .end local v0    # "currentUserHandle":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "userManager":Landroid/os/UserManager;
    :goto_0
    return v5

    .line 3109
    .restart local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "userManager":Landroid/os/UserManager;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 3112
    .end local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "userManager":Landroid/os/UserManager;
    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabledInternal(ILjava/lang/String;)Z

    move-result v5

    goto :goto_0
.end method

.method public getApplicationUninstallationMode(Landroid/app/enterprise/ContextInfo;)I
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x1

    .line 2347
    const-string v5, "ApplicationPolicy"

    const-string v7, "getApplicationUninstallationMode"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2351
    .local v4, "userID":I
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2352
    const/4 v3, 0x1

    .line 2353
    .local v3, "uninstall":Z
    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2354
    :cond_0
    monitor-exit v7

    move v5, v6

    .line 2377
    :goto_0
    return v5

    .line 2356
    :cond_1
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2358
    .local v2, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2359
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2360
    .local v1, "uid":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-int v5, v8

    const v8, 0x186a0

    div-int v0, v5, v8

    .line 2361
    .local v0, "AdminUserID":I
    if-eq v4, v0, :cond_3

    .line 2362
    const-string v5, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAppInstallationMode() :  userID :   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  != AdminUserID  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2379
    .end local v0    # "AdminUserID":I
    .end local v1    # "uid":Ljava/lang/Long;
    .end local v2    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2365
    .restart local v0    # "AdminUserID":I
    .restart local v1    # "uid":Ljava/lang/Long;
    .restart local v2    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v5

    if-nez v5, :cond_2

    .line 2370
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v8, "UninstallationBlacklist"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    const-string v8, ".*"

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2371
    const/4 v3, 0x0

    .line 2375
    .end local v0    # "AdminUserID":I
    .end local v1    # "uid":Ljava/lang/Long;
    :cond_4
    const-string v5, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAppInstallationMode :  mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    if-eqz v3, :cond_5

    move v5, v6

    :goto_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public getApplicationVersion(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3261
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3262
    const/4 v0, 0x0

    .line 3263
    .local v0, "appName":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3264
    if-eqz p2, :cond_0

    .line 3266
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPkgInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 3267
    .local v2, "mpkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 3268
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3273
    .end local v2    # "mpkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 3269
    :catch_0
    move-exception v1

    .line 3270
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationVersionCode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3283
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3284
    const/4 v2, -0x1

    .line 3285
    .local v2, "version":I
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3286
    if-eqz p2, :cond_0

    .line 3288
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPkgInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3289
    .local v1, "mpkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 3290
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3295
    .end local v1    # "mpkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 3291
    :catch_0
    move-exception v0

    .line 3292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationsList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2683
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2684
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationsListInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAvgNoAppUsagePerMonth(Landroid/app/enterprise/ContextInfo;)[Landroid/app/enterprise/AppInfoLastUsage;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4518
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4519
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 4520
    .local v0, "userId":I
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/application/ApplicationUsage;->getAvgNoAppUsagePerMonth(I)[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v1

    return-object v1
.end method

.method public getHomeShortcuts(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Ljava/util/List;
    .locals 28
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "includeHotSeat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5827
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5828
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v24

    .line 5829
    .local v24, "userId":I
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 5830
    .local v19, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 5831
    .local v15, "buildcarrier":Ljava/lang/String;
    const-string v8, "com.sec.android.app.launcher.settings/"

    .line 5836
    .local v8, "AUTHORITY":Ljava/lang/String;
    const-string v13, "favorites"

    .line 5837
    .local v13, "TABLE_FAVORITES":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 5838
    .local v3, "CONTENT_URI":Landroid/net/Uri;
    const-string v11, "itemType"

    .line 5839
    .local v11, "COLUMN_ITEM_TYPE":Ljava/lang/String;
    const-string/jumbo v12, "title"

    .line 5840
    .local v12, "COLUMN_TITLE":Ljava/lang/String;
    const-string v10, "intent"

    .line 5841
    .local v10, "COLUMN_INTENT":Ljava/lang/String;
    const-string v9, "container"

    .line 5842
    .local v9, "COLUMN_CONTAINER":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v12, v4, v6

    const/4 v6, 0x1

    aput-object v10, v4, v6

    .line 5843
    .local v4, "projections":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5848
    .local v5, "selection":Ljava/lang/String;
    const/16 v16, 0x0

    .line 5849
    .local v16, "count":I
    if-eqz p2, :cond_0

    if-eqz p2, :cond_5

    const-string v6, "com.sec.android.app.launcher"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5850
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v7, "android"

    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v24

    invoke-static {v6, v7, v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v23

    .line 5852
    .local v23, "userContext":Landroid/content/Context;
    if-nez v23, :cond_1

    .line 5853
    const-string v6, "ApplicationPolicy"

    const-string v7, "getHomeShortcuts: userContext null! "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5854
    const/16 v19, 0x0

    .line 5889
    .end local v19    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v23    # "userContext":Landroid/content/Context;
    :goto_0
    return-object v19

    .line 5856
    .restart local v19    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v23    # "userContext":Landroid/content/Context;
    :cond_1
    if-nez p3, :cond_2

    .line 5857
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!=-101"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5863
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 5864
    .local v21, "token":J
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5865
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 5867
    .local v17, "cur":Landroid/database/Cursor;
    if-eqz v17, :cond_6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5868
    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 5869
    .local v25, "xIntent":I
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 5871
    .local v26, "xTitle":I
    :cond_3
    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 5872
    .local v20, "strIntent":Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 5874
    .local v14, "appIntent":Landroid/content/Intent;
    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, v20

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 5878
    :goto_1
    if-eqz v14, :cond_4

    .line 5879
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5880
    :cond_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 5881
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 5885
    .end local v14    # "appIntent":Landroid/content/Intent;
    .end local v20    # "strIntent":Ljava/lang/String;
    .end local v25    # "xIntent":I
    .end local v26    # "xTitle":I
    :goto_2
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5888
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v17    # "cur":Landroid/database/Cursor;
    .end local v21    # "token":J
    .end local v23    # "userContext":Landroid/content/Context;
    :cond_5
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "getHomeShortcuts: pkgName : "

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v27, "include hot seat: "

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v27, " return..."

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5875
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v14    # "appIntent":Landroid/content/Intent;
    .restart local v17    # "cur":Landroid/database/Cursor;
    .restart local v20    # "strIntent":Ljava/lang/String;
    .restart local v21    # "token":J
    .restart local v23    # "userContext":Landroid/content/Context;
    .restart local v25    # "xIntent":I
    .restart local v26    # "xTitle":I
    :catch_0
    move-exception v18

    .line 5876
    .local v18, "e":Ljava/net/URISyntaxException;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 5884
    .end local v14    # "appIntent":Landroid/content/Intent;
    .end local v18    # "e":Ljava/net/URISyntaxException;
    .end local v20    # "strIntent":Ljava/lang/String;
    .end local v25    # "xIntent":I
    .end local v26    # "xTitle":I
    :cond_6
    const-string v6, "ApplicationPolicy"

    const-string v7, "getHomeShortcuts: get cursor failed. "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getInstalledApplicationsIDList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3177
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getInstalledApplicationsIDListExtended(Landroid/app/enterprise/ContextInfo;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInstalledApplicationsIDListExtended(Landroid/app/enterprise/ContextInfo;Z)[Ljava/lang/String;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "includeUninstalledDataPresent"    # Z

    .prologue
    .line 3182
    const/4 v6, 0x0

    .line 3184
    .local v6, "packageNameList":[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 3185
    .local v7, "userID":I
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getInstalledApplicationsIDListExtended : userid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    if-eqz p2, :cond_0

    const/16 v8, 0x2000

    :goto_0
    invoke-virtual {v9, v8, v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledApplications(II)Ljava/util/List;

    move-result-object v0

    .line 3196
    .local v0, "appinfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 3197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    new-array v6, v8, [Ljava/lang/String;

    .line 3198
    const/4 v4, 0x0

    .line 3199
    .local v4, "index":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    move v5, v4

    .end local v4    # "index":I
    .local v5, "index":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 3200
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v8, v6, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_1

    .line 3188
    .end local v0    # "appinfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "index":I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 3203
    :catch_0
    move-exception v2

    .line 3204
    .local v2, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 3205
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3207
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v6
.end method

.method public getInstalledManagedApplicationsList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2613
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2614
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2615
    .local v4, "callingUid":I
    const/4 v2, 0x0

    .line 2617
    .local v2, "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 2618
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x2

    :try_start_0
    new-array v5, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "packageName"

    aput-object v16, v5, v15

    const/4 v15, 0x1

    const-string v16, "managedApp"

    aput-object v16, v5, v15

    .line 2621
    .local v5, "columns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "APPLICATION"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2623
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 2624
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2625
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 2629
    const-string v15, "managedApp"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 2631
    .local v14, "state":I
    const/4 v15, 0x1

    and-int/lit8 v16, v14, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v11, 0x1

    .line 2632
    .local v11, "isEnterpriseApp":Z
    :goto_1
    const/4 v15, 0x1

    if-ne v11, v15, :cond_0

    .line 2633
    const-string v15, "packageName"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2656
    .end local v11    # "isEnterpriseApp":Z
    .end local v14    # "state":I
    :catch_0
    move-exception v9

    move-object v12, v13

    .line 2657
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v9, "e":Ljava/lang/Exception;
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2659
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_8

    .line 2660
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    check-cast v15, [Ljava/lang/String;

    .line 2662
    :goto_4
    return-object v15

    .line 2631
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "columns":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "state":I
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 2637
    .end local v14    # "state":I
    :cond_3
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v12, v13

    .line 2639
    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    if-eqz v12, :cond_1

    :try_start_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_1

    .line 2640
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2641
    .end local v2    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x0

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getInstalledApplicationsIDListExtended(Landroid/app/enterprise/ContextInfo;Z)[Ljava/lang/String;

    move-result-object v7

    .line 2642
    .local v7, "deviceApps":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 2643
    .local v8, "deviceInstalledAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_5

    array-length v15, v7

    if-lez v15, :cond_5

    .line 2644
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 2646
    :cond_5
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v10, v15, :cond_9

    .line 2647
    if-eqz v8, :cond_7

    .line 2648
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 2649
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2646
    :cond_6
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2652
    :cond_7
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 2656
    .end local v7    # "deviceApps":[Ljava/lang/String;
    .end local v8    # "deviceInstalledAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "i":I
    :catch_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2

    .line 2662
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_8
    const/4 v15, 0x0

    goto :goto_4

    .line 2656
    :catch_2
    move-exception v9

    goto :goto_2

    .end local v2    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "columns":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "deviceApps":[Ljava/lang/String;
    .restart local v8    # "deviceInstalledAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "i":I
    :cond_9
    move-object v2, v3

    .end local v3    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3
.end method

.method public getNetworkStats(Landroid/app/enterprise/ContextInfo;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 993
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 994
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 995
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getAppLevelDataUsage(I)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getNetworkStats(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .param p1, "x0"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getNetworkStats(Landroid/app/enterprise/ContextInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearCacheBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6511
    const-string v0, "PackageNameClearCacheBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearCacheWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6528
    const-string v0, "PackageNameClearCacheWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearDataBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6454
    const-string v0, "PackageNameClearDataBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearDataWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6471
    const-string v0, "PackageNameClearDataWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromDisableClipboardBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6771
    const-string v0, "PackageNameDisableClipboardBlackList"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromDisableClipboardWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6785
    const-string v0, "PackageNameDisableClipboardWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromDisableUpdateBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7065
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 7066
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v1, "PackageNameUpdateBlacklist"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromDisableUpdateWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7043
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 7044
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v1, "PackageNameUpdateWhitelist"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromForceStopBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5150
    const-string v0, "PackageNameStopBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromForceStopWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5167
    const-string v0, "PackageNameStopWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromInstallWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6286
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 6287
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 6288
    .local v3, "containerId":I
    const-string v13, "ApplicationPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getPackagesFromInstallWhiteList :  containerId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6290
    move-object/from16 v0, p1

    iget v1, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 6292
    .local v1, "adminUid":I
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 6293
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v13, "2.0"

    const-string/jumbo v14, "version"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 6294
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 6295
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 6298
    .local v10, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v14, "persona"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PersonaManager;

    .line 6301
    .local v8, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v8, v7}, Landroid/os/PersonaManager;->getPackagesFromInstallWhiteList(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 6307
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6327
    .end local v7    # "pid":I
    .end local v8    # "pm":Landroid/os/PersonaManager;
    .end local v10    # "token":J
    :cond_0
    :goto_0
    return-object v12

    .line 6303
    .restart local v7    # "pid":I
    .restart local v10    # "token":J
    :catch_0
    move-exception v4

    .line 6304
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v13, "ApplicationPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addPackageToInstallList() - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6307
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6310
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 6307
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    .line 6313
    .end local v7    # "pid":I
    .end local v10    # "token":J
    :cond_1
    const/4 v13, 0x1

    new-array v9, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "packageName"

    aput-object v14, v9, v13

    .line 6314
    .local v9, "returnColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "WhiteListInstallApps"

    invoke-virtual {v13, v14, v1, v3, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 6316
    .local v5, "packageCursor":Landroid/database/Cursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 6319
    .local v12, "whiteListedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    .line 6320
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 6321
    const-string v13, "packageName"

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 6323
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6325
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getPackagesFromPreventStartBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6669
    const-string v0, "PackageNameStartBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromWidgetBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5238
    const-string v0, "PackageNameWidgetBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromWidgetWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5211
    const-string v0, "PackageNameWidgetWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTopNCPUUsageApp(Landroid/app/enterprise/ContextInfo;IZ)Ljava/util/List;
    .locals 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aAppCount"    # I
    .param p3, "bShowAllProcess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4448
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4449
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 4451
    .local v13, "token":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/ProcessStats;->update()V

    .line 4453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/ProcessStats;->countWorkingStats()I

    move-result v5

    .line 4455
    .local v5, "count":I
    if-lez p2, :cond_0

    move/from16 v0, p2

    if-ge v5, v0, :cond_1

    .line 4456
    :cond_0
    move/from16 p2, v5

    .line 4459
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4461
    .local v11, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/ProcessStats;->getLastUserTime()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/ProcessStats;->getLastSystemTime()I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/ProcessStats;->getLastIrqTime()I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/ProcessStats;->getLastIdleTime()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v15, v0

    .line 4466
    .local v15, "totalCPUTime":J
    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-nez v20, :cond_2

    .line 4467
    const-wide/16 v15, 0x1

    .line 4470
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4471
    .local v4, "appPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p3, :cond_3

    .line 4472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "activity"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 4474
    .local v3, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v10

    .line 4476
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4477
    .local v9, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v0, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4481
    .end local v3    # "activityManager":Landroid/app/ActivityManager;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_3
    const/4 v12, 0x0

    .line 4482
    .local v12, "stat":Lcom/android/internal/os/ProcessStats$Stats;
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v19

    .line 4484
    .local v19, "userId":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move/from16 v0, p2

    if-ge v7, v0, :cond_6

    .line 4485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/internal/os/ProcessStats;->getWorkingStats(I)Lcom/android/internal/os/ProcessStats$Stats;

    move-result-object v12

    .line 4487
    if-eqz v12, :cond_5

    if-nez p3, :cond_4

    iget v0, v12, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 4488
    :cond_4
    const/16 v17, -0x1

    .line 4490
    .local v17, "uidFromName":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    iget-object v0, v12, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 4494
    :goto_2
    iget v0, v12, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/os/Process;->getUidForPid(I)I

    move-result v18

    .line 4495
    .local v18, "uidFromPid":I
    const-string v20, "ApplicationPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getTopNCPUUsageApp() : uidFromName="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " uidFromPid="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4496
    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 4497
    new-instance v9, Landroid/app/enterprise/AppInfo;

    invoke-direct {v9}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 4498
    .local v9, "info":Landroid/app/enterprise/AppInfo;
    iget-object v0, v12, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v9, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 4499
    iget v0, v12, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    move/from16 v20, v0

    iget v0, v12, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    move/from16 v21, v0

    add-int v20, v20, v21

    mul-int/lit8 v20, v20, 0x64

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    div-long v20, v20, v15

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 4501
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4484
    .end local v9    # "info":Landroid/app/enterprise/AppInfo;
    .end local v17    # "uidFromName":I
    .end local v18    # "uidFromPid":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 4491
    .restart local v17    # "uidFromName":I
    :catch_0
    move-exception v6

    .line 4492
    .local v6, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v20, "ApplicationPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getTopNCPUUsageApp() : cannot getPackageUid"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4506
    .end local v6    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v17    # "uidFromName":I
    :cond_6
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4508
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_7

    .end local v11    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :goto_3
    return-object v11

    .restart local v11    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :cond_7
    const/4 v11, 0x0

    goto :goto_3
.end method

.method public getTopNDataUsageApp(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aAppCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4364
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4365
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 4366
    .local v5, "userId":I
    const-string v6, "ApplicationPolicy"

    const-string v7, "getTopNDataUsageApp start"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4368
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->readAppSizeInfo(I)Ljava/util/List;

    move-result-object v2

    .line 4369
    .local v2, "lResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4370
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4373
    .local v4, "lStorageInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    if-lez p2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, p2, :cond_1

    .line 4374
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    .line 4377
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 4378
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    .line 4379
    .local v1, "lDataInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;
    new-instance v3, Landroid/app/enterprise/AppInfo;

    invoke-direct {v3}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 4380
    .local v3, "lStorageInfo":Landroid/app/enterprise/AppInfo;
    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1500(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 4381
    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1600(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v6

    long-to-double v6, v6

    iput-wide v6, v3, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 4382
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4386
    .end local v1    # "lDataInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;
    .end local v3    # "lStorageInfo":Landroid/app/enterprise/AppInfo;
    :cond_2
    const-string v6, "ApplicationPolicy"

    const-string v7, "getTopNDataUsageApp end"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4387
    return-object v4
.end method

.method public getTopNMemoryUsageApp(Landroid/app/enterprise/ContextInfo;IZ)Ljava/util/List;
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aAppCount"    # I
    .param p3, "bShowAllProcess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4266
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4267
    const-string v6, "ApplicationPolicy"

    const-string v7, "getTopNMemoryUsageApp start"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4268
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 4270
    .local v5, "userId":I
    invoke-direct {p0, p3, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->readAppMemoryInfo(ZI)Ljava/util/List;

    move-result-object v2

    .line 4271
    .local v2, "lResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4272
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4274
    .local v4, "lStorageInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    if-lez p2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, p2, :cond_1

    .line 4275
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    .line 4278
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 4279
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    .line 4280
    .local v1, "lMemInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;
    new-instance v3, Landroid/app/enterprise/AppInfo;

    invoke-direct {v3}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 4281
    .local v3, "lStorageInfo":Landroid/app/enterprise/AppInfo;
    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1500(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 4282
    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1600(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v6

    long-to-double v6, v6

    iput-wide v6, v3, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 4283
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4284
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1500(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " memory usage:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1600(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4286
    .end local v1    # "lMemInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;
    .end local v3    # "lStorageInfo":Landroid/app/enterprise/AppInfo;
    :cond_2
    const-string v6, "ApplicationPolicy"

    const-string v7, "getTopNMemoryUsageApp end"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4287
    return-object v4
.end method

.method public getUsbDevicesForDefaultAccess(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/UsbDeviceConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7115
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 7116
    .local v0, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 7117
    .local v1, "userId":I
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDevices for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7119
    if-eqz p2, :cond_0

    .line 7120
    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getUsbDevicesForDefaultAccessAsUser(IILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 7123
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public installAppWithCallback(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZLcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .param p3, "installOnSDCard"    # Z
    .param p4, "callback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 1683
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1684
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_installApplication(ILjava/lang/String;ZLcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v0

    return v0
.end method

.method public installApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .param p3, "installOnSDCard"    # Z

    .prologue
    .line 1673
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1674
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_installApplication(ILjava/lang/String;ZLcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v0

    return v0
.end method

.method public installApplicationBySystem(ILjava/lang/String;Z)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .param p3, "installOnSDCard"    # Z

    .prologue
    .line 1700
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    if-eq v0, v1, :cond_0

    .line 1701
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1703
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_installApplication(ILjava/lang/String;ZLcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v0

    return v0
.end method

.method public installExistingApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v7, 0x1

    .line 1841
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1842
    const/4 v3, 0x0

    .line 1843
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1844
    .local v6, "userId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1845
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1847
    .local v4, "token":J
    :try_start_0
    invoke-direct {p0, p2, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->installExistingApplication(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1848
    .local v2, "result":I
    if-ne v2, v7, :cond_1

    move v3, v7

    .line 1853
    :goto_0
    if-eqz v3, :cond_0

    if-eq v0, v9, :cond_0

    .line 1854
    invoke-direct {p0, v0, p2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1855
    invoke-direct {p0, v0, p2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    .line 1857
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v3

    .line 1859
    .end local v2    # "result":I
    :goto_1
    return v8

    .restart local v2    # "result":I
    :cond_1
    move v3, v8

    .line 1848
    goto :goto_0

    .line 1849
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .line 1850
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1853
    if-eqz v3, :cond_2

    if-eq v0, v9, :cond_2

    .line 1854
    invoke-direct {p0, v0, p2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1855
    invoke-direct {p0, v0, p2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    .line 1857
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1853
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_3

    if-eq v0, v9, :cond_3

    .line 1854
    invoke-direct {p0, v0, p2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1855
    invoke-direct {p0, v0, p2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    .line 1857
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1853
    throw v8
.end method

.method public isApplicationClearCacheDisabled(ILjava/lang/String;IZ)Z
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "showMsg"    # Z

    .prologue
    .line 6548
    const-string v2, "PackageNameClearCacheBlacklist"

    const-string v3, "PackageNameClearCacheWhitelist"

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6549
    const-string v0, "ApplicationPolicy"

    const-string v1, "isApplicationClearCacheDisabled: matches"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6550
    if-eqz p4, :cond_0

    .line 6551
    const v0, 0x10402a4

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 6553
    :cond_0
    const/4 v0, 0x1

    .line 6555
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "showMsg"    # Z

    .prologue
    .line 6543
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(Ljava/lang/String;)I

    move-result v0

    .line 6544
    .local v0, "containerId":I
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearCacheDisabled(ILjava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public isApplicationClearDataDisabled(ILjava/lang/String;IZ)Z
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "showMsg"    # Z

    .prologue
    .line 6491
    const-string v2, "PackageNameClearDataBlacklist"

    const-string v3, "PackageNameClearDataWhitelist"

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6492
    const-string v0, "ApplicationPolicy"

    const-string v1, "isApplicationClearDataDisabled: matches"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6493
    if-eqz p4, :cond_0

    .line 6494
    const v0, 0x10402a3

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 6496
    :cond_0
    const/4 v0, 0x1

    .line 6498
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "showMsg"    # Z

    .prologue
    .line 6486
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(Ljava/lang/String;)I

    move-result v0

    .line 6487
    .local v0, "containerId":I
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearDataDisabled(ILjava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public isApplicationForceStopDisabled(Ljava/lang/String;IZ)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "showMsg"    # Z

    .prologue
    .line 5182
    const-string v0, "PackageNameStopBlacklist"

    const-string v1, "PackageNameStopWhitelist"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5183
    const-string v0, "ApplicationPolicy"

    const-string v1, "isApplicationForceStopDisabled: matches"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5184
    if-eqz p3, :cond_0

    .line 5185
    const v0, 0x10402a2

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 5187
    :cond_0
    const/4 v0, 0x1

    .line 5189
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApplicationInstallationEnabled(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkgInst"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 2930
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 2931
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 2932
    .local v1, "userID":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstallationEnabledInternal(ILjava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z

    move-result v2

    return v2
.end method

.method public isApplicationInstallationEnabled(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkgInst"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "userID"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2950
    if-gez p3, :cond_3

    .line 2951
    const/4 v3, 0x0

    .line 2952
    .local v3, "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 2953
    .local v4, "userManager":Landroid/os/UserManager;
    if-eqz v4, :cond_0

    .line 2954
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .end local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 2957
    .restart local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 2958
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2959
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    .line 2960
    .local v0, "currentUserHandle":I
    invoke-direct {p0, v0, p1, p2, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstallationEnabledInternal(ILjava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2968
    .end local v0    # "currentUserHandle":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "userManager":Landroid/os/UserManager;
    :goto_0
    return v5

    .restart local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "userManager":Landroid/os/UserManager;
    :cond_2
    move v5, v6

    .line 2965
    goto :goto_0

    .line 2968
    .end local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "userManager":Landroid/os/UserManager;
    :cond_3
    invoke-direct {p0, p3, p1, p2, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstallationEnabledInternal(ILjava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z

    move-result v5

    goto :goto_0
.end method

.method public isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1591
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1592
    .local v0, "userId":I
    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalledInternal(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public isApplicationInstalled(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1595
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalledInternal(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isApplicationRunning(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1628
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationRunningInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApplicationRunningInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1632
    const/4 v4, -0x1

    .line 1633
    .local v4, "pid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 1634
    .local v9, "userId":I
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1635
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1636
    .local v7, "token":J
    if-eqz p2, :cond_1

    .line 1638
    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1640
    .local v0, "amgr":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1641
    .local v5, "runninAppinfList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, p2, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 1642
    .local v1, "apkID":I
    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationRunningInternal() : apkID =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 1645
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1646
    .local v6, "runningApplicationInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationRunningInternal() : runningApplicationInfo - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v10, v1, :cond_0

    .line 1648
    iget v4, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1658
    .end local v0    # "amgr":Landroid/app/ActivityManager;
    .end local v1    # "apkID":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "runninAppinfList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6    # "runningApplicationInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1659
    return v4

    .line 1653
    :catch_0
    move-exception v2

    .line 1654
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    .line 1655
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 6692
    const-string v10, "PackageNameStartBlacklist"

    const-string v11, "PackageNameStartWhitelist"

    invoke-direct {p0, v10, v11, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 6694
    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationStartDisabledAsUser ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") : matches"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6697
    move v7, p2

    .line 6702
    .local v7, "targetUserId":I
    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 6704
    .local v2, "adminLuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 6705
    .local v0, "adminLuid":J
    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v3

    .line 6707
    .local v3, "adminUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    if-ne p2, v10, :cond_0

    .line 6712
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v10, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v6

    .line 6715
    .local v6, "ownerUid":I
    if-eq v6, v3, :cond_1

    .line 6716
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 6721
    .end local v0    # "adminLuid":J
    .end local v3    # "adminUid":I
    .end local v6    # "ownerUid":I
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 6722
    .local v8, "token":J
    new-instance v5, Landroid/content/Intent;

    const-string v10, "edm.intent.application.action.prevent.start"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6723
    .local v5, "intent":Landroid/content/Intent;
    const-string v10, "application_package_name"

    invoke-virtual {v5, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6724
    const-string/jumbo v10, "user_id"

    invoke-virtual {v5, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6725
    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sending broadcast to user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " containing: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (packageName), "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (userId)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6727
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v7}, Landroid/os/UserHandle;-><init>(I)V

    const-string v12, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v10, v5, v11, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 6729
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6730
    const/4 v10, 0x1

    .line 6732
    .end local v2    # "adminLuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "targetUserId":I
    .end local v8    # "token":J
    :goto_0
    return v10

    :cond_2
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2577
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isIntentDisabled start :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    const/4 v2, 0x1

    .line 2580
    .local v2, "isIntentEnabled":Z
    if-nez p1, :cond_0

    .line 2602
    :goto_0
    return v4

    .line 2585
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x200

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 2587
    .local v3, "lResolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isIntentDisabled resolve info :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2588
    if-eqz v3, :cond_2

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_2

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_2

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 2593
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {v0, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 2594
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    move v2, v5

    .line 2601
    .end local v0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v3    # "lResolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    :goto_1
    const-string v7, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isIntentDisabled return :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v2, :cond_4

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    if-nez v2, :cond_5

    :goto_3
    move v4, v5

    goto :goto_0

    .restart local v0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .restart local v3    # "lResolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    move v2, v4

    .line 2594
    goto :goto_1

    .line 2597
    .end local v0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v3    # "lResolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .line 2598
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    move v6, v4

    .line 2601
    goto :goto_2

    :cond_5
    move v5, v4

    .line 2602
    goto :goto_3
.end method

.method isManagedAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;)Landroid/app/enterprise/ManagedAppInfo;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aPkgName"    # Ljava/lang/String;
    .param p3, "aManageAppInfoArray"    # [Landroid/app/enterprise/ManagedAppInfo;

    .prologue
    .line 2830
    if-nez p3, :cond_0

    .line 2831
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationsListInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object p3

    .line 2834
    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 2835
    move-object v0, p3

    .local v0, "arr$":[Landroid/app/enterprise/ManagedAppInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 2836
    .local v2, "lManagedAppInfo":Landroid/app/enterprise/ManagedAppInfo;
    iget-object v4, v2, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2837
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsManagedAppInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    .end local v0    # "arr$":[Landroid/app/enterprise/ManagedAppInfo;
    .end local v1    # "i$":I
    .end local v2    # "lManagedAppInfo":Landroid/app/enterprise/ManagedAppInfo;
    .end local v3    # "len$":I
    :goto_1
    return-object v2

    .line 2835
    .restart local v0    # "arr$":[Landroid/app/enterprise/ManagedAppInfo;
    .restart local v1    # "i$":I
    .restart local v2    # "lManagedAppInfo":Landroid/app/enterprise/ManagedAppInfo;
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2842
    .end local v0    # "arr$":[Landroid/app/enterprise/ManagedAppInfo;
    .end local v1    # "i$":I
    .end local v2    # "lManagedAppInfo":Landroid/app/enterprise/ManagedAppInfo;
    .end local v3    # "len$":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 6212
    const-string v0, "OcspCheck"

    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationControlState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPackageClipboardAllowed(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 6799
    const-string v0, "PackageNameDisableClipboardBlackList"

    const-string v1, "PackageNameDisableClipboardWhitelist"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPackageInInstallWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 6337
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 6338
    .local v2, "containerId":I
    const-string v13, "ApplicationPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isPackageInInstallWhiteList :  pkgName: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " containerId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6339
    if-nez p2, :cond_0

    .line 6340
    const-string v13, "ApplicationPolicy"

    const-string v14, "isPackageInInstallWhiteList() Package name is null"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6341
    const/4 v13, 0x0

    .line 6387
    :goto_0
    return v13

    .line 6344
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6346
    .local v7, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 6347
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v13, "2.0"

    const-string/jumbo v14, "version"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 6348
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 6349
    .local v8, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 6352
    .local v11, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v14, "persona"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PersonaManager;

    .line 6355
    .local v9, "pm":Landroid/os/PersonaManager;
    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v8}, Landroid/os/PersonaManager;->isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    .line 6361
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 6357
    .end local v9    # "pm":Landroid/os/PersonaManager;
    :catch_0
    move-exception v5

    .line 6358
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v13, "ApplicationPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addPackageToInstallList() - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6361
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6364
    const/4 v13, 0x0

    goto :goto_0

    .line 6361
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    .line 6367
    .end local v8    # "pid":I
    .end local v11    # "token":J
    :cond_1
    invoke-static {v2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6369
    if-eqz v7, :cond_3

    .line 6370
    const/4 v13, 0x1

    new-array v10, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "packageName"

    aput-object v14, v10, v13

    .line 6372
    .local v10, "returnColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "WhiteListInstallApps"

    invoke-virtual {v13, v2, v14, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 6375
    .local v4, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 6376
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 6377
    .local v3, "cv":Landroid/content/ContentValues;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 6378
    const-string v13, "packageName"

    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 6379
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 6385
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "returnColumns":[Ljava/lang/String;
    :cond_3
    const-string v13, "ApplicationPolicy"

    const-string v14, "Package name is null. Failed to check the package to White list"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6387
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public isPackageUpdateAllowed(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v0, 0x0

    .line 7092
    const-string v1, "PackageNameUpdateBlacklist"

    const-string v2, "PackageNameUpdateWhitelist"

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7094
    const-string v1, "ApplicationPolicy"

    const-string v2, "isPackageUpdateAllowed: matches"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7095
    if-eqz p2, :cond_0

    .line 7096
    const v1, 0x10402d9

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 7100
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 6192
    const-string v0, "RevocationCheck"

    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationControlState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStatusBarNotificationAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5611
    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStatusBarNotificationAllowed: packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5612
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 5613
    .local v0, "userId":I
    const-string v1, "PackageNameNotificationBlacklist"

    const-string v2, "PackageNameNotificationWhitelist"

    invoke-direct {p0, v1, v2, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 7189
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUsbDevicePermittedForPackage vendorId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", productId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7191
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 7193
    .local v1, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-virtual {p0, v1, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getUsbDevicesForDefaultAccess(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 7194
    .local v2, "permittedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/UsbDeviceConfig;>;"
    new-instance v0, Landroid/app/enterprise/UsbDeviceConfig;

    invoke-direct {v0}, Landroid/app/enterprise/UsbDeviceConfig;-><init>()V

    .line 7195
    .local v0, "currentDeviceConfig":Landroid/app/enterprise/UsbDeviceConfig;
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    iput v3, v0, Landroid/app/enterprise/UsbDeviceConfig;->vendorId:I

    .line 7196
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    iput v3, v0, Landroid/app/enterprise/UsbDeviceConfig;->productId:I

    .line 7198
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7201
    const-string v3, "ApplicationPolicy"

    const-string v4, "isUsbDevicePermittedForPackage returning true"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7202
    const/4 v3, 0x1

    .line 7204
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isWidgetAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5255
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 388
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    .line 399
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 401
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileApplicationsState()V

    .line 402
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationIconDbForUser(I)V

    .line 403
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileComponentsState()V

    .line 404
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v0

    .line 406
    .local v0, "adminLuid":J
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 407
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_0
    return-void
.end method

.method public onContainerCreation(II)V
    .locals 10
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 6806
    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6808
    :try_start_0
    const-string v0, "container_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v6

    .line 6812
    .local v6, "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    if-eqz v6, :cond_1

    invoke-interface {v6, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerType(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 6814
    const-string v0, "ApplicationPolicy"

    const-string v1, "onContainerCreation() - B2C Container "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6834
    .end local v6    # "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    :cond_0
    :goto_0
    return-void

    .line 6816
    .restart local v6    # "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    :cond_1
    const-string v0, "ApplicationPolicy"

    const-string v1, "onContainerCreation() - B2B Container "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 6818
    :try_start_1
    const-string v1, ".*"

    const/16 v4, 0x2000

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z

    move-result v9

    .line 6820
    .local v9, "result":Z
    const-string v1, ".*"

    const v4, 0x8000

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z

    move-result v0

    and-int/2addr v9, v0

    .line 6822
    if-nez v9, :cond_0

    .line 6823
    const-string v0, "ApplicationPolicy"

    const-string v1, "Failed to initialize container"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 6825
    .end local v9    # "result":Z
    :catch_0
    move-exception v7

    .line 6826
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "ApplicationPolicy"

    const-string v1, "onContainerCreation initialize exception : "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 6829
    .end local v6    # "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 6830
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "ApplicationPolicy"

    const-string v1, "KNOX : get status exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6831
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v8

    .line 6832
    .local v8, "e2":Ljava/lang/SecurityException;
    const-string v0, "ApplicationPolicy"

    const-string v1, "KNOX : SecurityException exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onContainerRemoved(II)V
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 6843
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApplicationPolicy.onContainerRemoved("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6844
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    .line 6845
    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v0

    .line 6847
    .local v0, "adminLuid":J
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 6848
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6850
    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkApplicationsStateToBeReconciled(I)V

    .line 415
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkComponentsStateToBeReconciled(I)V

    .line 416
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 6838
    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationPolicy.onPreContainerRemoval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6839
    return-void
.end method

.method public removeAppNotificationBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5519
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationBlacklist"

    const/16 v1, 0x100

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removeAppNotificationWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5542
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationWhitelist"

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removeAppPackageNameFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4001
    const-string v1, "ApplicationPolicy"

    const-string v2, "removeAppPackageNameFromBlackList "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4002
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4003
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4004
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4008
    :goto_0
    return v0

    :cond_0
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v2, 0x4

    invoke-direct {p0, p2, v1, v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public removeAppPackageNameFromWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4066
    const-string v1, "ApplicationPolicy"

    const-string v2, "removeAppPackageNameFromWhiteList"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4067
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4068
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4070
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4074
    :goto_0
    return v0

    :cond_0
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/16 v2, 0x8

    invoke-direct {p0, p2, v1, v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public removeAppPermissionFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appPermission"    # Ljava/lang/String;

    .prologue
    .line 3684
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3685
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPermissionControlState(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public removeAppSignatureFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 3771
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3772
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method public removeAppSignatureFromWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 3876
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3877
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method public removeManagedApplications(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1516
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1517
    const/4 v3, 0x0

    .line 1518
    .local v3, "removedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1519
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "removedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1520
    .restart local v3    # "removedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1522
    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1523
    if-eqz v2, :cond_0

    .line 1524
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->uninstallApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1526
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1529
    :catch_0
    move-exception v0

    .line 1530
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1534
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public bridge synthetic removeManagedApplications(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "x0"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "x1"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeManagedApplications(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public removePackageFromInstallWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 6397
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6398
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 6399
    .local v2, "adminUid":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 6400
    .local v3, "containerId":I
    const-string v1, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removePackageFromInstallList :  pkgName: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " containerId: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6401
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6402
    const-string v1, "ApplicationPolicy"

    const-string v4, "removePackageFromInstallWhiteList() Package name is invalid"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6437
    :goto_0
    return v0

    .line 6406
    :cond_0
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6408
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v6

    .line 6409
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v1, "2.0"

    const-string/jumbo v4, "version"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6410
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 6411
    .local v8, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 6414
    .local v10, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v4, "persona"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PersonaManager;

    .line 6416
    .local v9, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v9, p2, v8}, Landroid/os/PersonaManager;->removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6417
    const/4 v0, 0x1

    .line 6423
    .end local v9    # "pm":Landroid/os/PersonaManager;
    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 6419
    :catch_0
    move-exception v7

    .line 6420
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addPackageToInstallList() - "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 6423
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 6429
    .end local v8    # "pid":I
    .end local v10    # "token":J
    :cond_1
    invoke-static {v3, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6431
    if-eqz v5, :cond_2

    .line 6432
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WhiteListInstallApps"

    const-string v4, "packageName"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 6435
    :cond_2
    const-string v1, "ApplicationPolicy"

    const-string v4, "Package name is null. Failed to remove the package from White list"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removePackagesFromClearCacheBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6518
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearCacheBlacklist"

    const v1, 0x8000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromClearCacheWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6535
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearCacheWhitelist"

    const/high16 v1, 0x10000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromClearDataBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6461
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearDataBlacklist"

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromClearDataWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6478
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearDataWhitelist"

    const/16 v1, 0x4000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromDisableClipboardBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6766
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameDisableClipboardBlackList"

    const/high16 v1, 0x200000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromDisableClipboardWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6780
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameDisableClipboardWhitelist"

    const/high16 v1, 0x400000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromDisableUpdateBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 7071
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 7072
    const-string v1, "PackageNameUpdateBlacklist"

    const/high16 v2, 0x20000

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 7074
    .local v0, "ret":Z
    return v0
.end method

.method public removePackagesFromDisableUpdateWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 7049
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 7050
    const-string v1, "PackageNameUpdateWhitelist"

    const/high16 v2, 0x40000

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 7052
    .local v0, "ret":Z
    return v0
.end method

.method public removePackagesFromForceStopBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5157
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopBlacklist"

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromForceStopWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5174
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopWhitelist"

    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromPreventStartBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6676
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStartBlacklist"

    const/high16 v1, 0x80000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromWidgetBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5245
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetBlacklist"

    const/16 v2, 0x40

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 5247
    .local v0, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 5248
    return v0
.end method

.method public removePackagesFromWidgetWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5218
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetWhitelist"

    const/16 v2, 0x80

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 5220
    .local v0, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 5221
    return v0
.end method

.method public restoreApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 5691
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceBackupAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5692
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 5693
    .local v6, "userId":I
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5694
    .local v7, "validPkgName":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPkgInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v8

    if-eqz v8, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    if-nez v8, :cond_1

    .line 5696
    :cond_0
    const/4 v8, -0x2

    .line 5741
    :goto_0
    return v8

    .line 5697
    :cond_1
    iget-boolean v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 5699
    :cond_2
    const/4 v8, -0x3

    goto :goto_0

    .line 5702
    :cond_3
    :try_start_0
    new-instance v3, Ljava/lang/SecurityManager;

    invoke-direct {v3}, Ljava/lang/SecurityManager;-><init>()V

    .line 5703
    .local v3, "sm":Ljava/lang/SecurityManager;
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/SecurityManager;->checkRead(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5709
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    monitor-enter v9

    .line 5710
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 5713
    .local v4, "token":J
    const/4 v8, -0x2

    :try_start_2
    iput v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreReturnCode:I

    .line 5714
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v8, :cond_4

    .line 5715
    const-string v8, "backup"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    .line 5716
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v8, :cond_4

    .line 5717
    const-string v8, "ApplicationPolicy"

    const-string v10, "failed to get backup manager service"

    invoke-static {v8, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5718
    const/4 v8, -0x2

    .line 5735
    const/4 v10, 0x0

    :try_start_3
    iput-boolean v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 5737
    new-instance v2, Landroid/content/Intent;

    const-string v10, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5738
    .local v2, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5739
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5718
    monitor-exit v9

    goto :goto_0

    .line 5742
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "token":J
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 5704
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :catch_0
    move-exception v1

    .line 5705
    .local v1, "ex":Ljava/lang/SecurityException;
    const-string v8, "ApplicationPolicy"

    const-string v9, "can\'t read from file descriptor"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5706
    const/4 v8, -0x2

    goto :goto_0

    .line 5721
    .end local v1    # "ex":Ljava/lang/SecurityException;
    .restart local v3    # "sm":Ljava/lang/SecurityManager;
    .restart local v4    # "token":J
    :cond_4
    :try_start_4
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    const/4 v10, 0x0

    invoke-interface {v8, v10, v7, v6}, Landroid/app/backup/IBackupManager;->setupEdmBackupRestore(ZLjava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v8

    if-nez v8, :cond_5

    .line 5722
    const/4 v8, -0x3

    .line 5735
    const/4 v10, 0x0

    :try_start_5
    iput-boolean v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 5737
    new-instance v2, Landroid/content/Intent;

    const-string v10, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5738
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5739
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5722
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 5725
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v8, 0x1

    :try_start_6
    iput-boolean v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 5726
    iput-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    .line 5727
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, p3}, Landroid/app/backup/IBackupManager;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 5728
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    const-wide/32 v10, 0x493e0

    invoke-virtual {v8, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5735
    const/4 v8, 0x0

    :try_start_7
    iput-boolean v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 5737
    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5738
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5739
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5741
    iget v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreReturnCode:I

    monitor-exit v9

    goto/16 :goto_0

    .line 5729
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 5730
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v8, -0x2

    .line 5735
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 5737
    new-instance v2, Landroid/content/Intent;

    const-string v10, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5738
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5739
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5730
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 5731
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v1

    .line 5732
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_8
    const-string v8, "ApplicationPolicy"

    const-string v10, "Failed to get backup manager service"

    invoke-static {v8, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 5733
    const/4 v8, -0x2

    .line 5735
    const/4 v10, 0x0

    :try_start_9
    iput-boolean v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 5737
    new-instance v2, Landroid/content/Intent;

    const-string v10, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5738
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5739
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5733
    monitor-exit v9

    goto/16 :goto_0

    .line 5735
    .end local v1    # "ex":Landroid/os/RemoteException;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v8

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 5737
    new-instance v2, Landroid/content/Intent;

    const-string v10, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5738
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5739
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5735
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public setAppInstallToSdCard(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4137
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4139
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4140
    const-string v2, "ApplicationPolicy"

    const-string v3, "setAppInstallToSdCard : External Storage Emulated"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4148
    :goto_0
    return v1

    .line 4143
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "APPLICATION_GENERAL"

    const-string v5, "installToSdCard"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4145
    :catch_0
    move-exception v0

    .line 4146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppInstallationMode(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aInstallationMode"    # I

    .prologue
    .line 2238
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2239
    const/4 v0, 0x0

    .line 2241
    .local v0, "bInstallationModeSet":Z
    const/4 v1, 0x1

    if-ne v1, p2, :cond_1

    .line 2243
    const-string v1, ".*"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeAppPackageNameFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 2251
    :cond_0
    :goto_0
    return v0

    .line 2244
    :cond_1
    if-nez p2, :cond_0

    .line 2246
    const-string v1, ".*"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addAppPackageNameToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setApplicationComponentState(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "compName"    # Landroid/content/ComponentName;
    .param p3, "enableComponent"    # Z

    .prologue
    .line 2028
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2029
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2030
    .local v3, "containerId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2031
    .local v1, "callingUid":I
    const/4 v9, 0x0

    .line 2033
    .local v9, "success":Z
    if-nez p2, :cond_0

    .line 2034
    const/4 v0, 0x0

    .line 2084
    :goto_0
    return v0

    .line 2037
    :cond_0
    const-string v0, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setApplicationComponentState :  compName :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " callingUid :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " enableComponent :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2040
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2042
    .local v7, "packageName":Ljava/lang/String;
    if-lez v3, :cond_1

    .line 2043
    invoke-static {v3, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2046
    :cond_1
    if-eqz v7, :cond_4

    .line 2048
    invoke-virtual {p0, p1, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2049
    const/4 v0, 0x0

    goto :goto_0

    .line 2051
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isActiveAdmin(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2052
    const-string v0, "ApplicationPolicy"

    const-string v2, "setApplicationComponentState() : can not disable Admin app"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 2053
    goto :goto_0

    .line 2056
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2059
    .local v10, "token":J
    const/4 v4, 0x1

    if-nez p3, :cond_5

    const/4 v5, 0x1

    :goto_1
    move-object v0, p0

    move-object v2, p2

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationComponentNameControlState(ILandroid/content/ComponentName;IIZ)Z

    .line 2063
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v3, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationComponentState(ILandroid/content/ComponentName;I)Z

    move-result v8

    .line 2064
    .local v8, "state":Z
    const-string v0, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    if-eqz v8, :cond_6

    const/4 v0, 0x1

    :goto_2
    const/4 v4, 0x0

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v2, p2, v0, v4, v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setComponentEnabledSetting(Landroid/content/ComponentName;III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2068
    const/4 v9, 0x1

    .line 2081
    .end local v8    # "state":Z
    :goto_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10    # "token":J
    :cond_4
    move v0, v9

    .line 2084
    goto/16 :goto_0

    .line 2059
    .restart local v10    # "token":J
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 2065
    .restart local v8    # "state":Z
    :cond_6
    const/4 v0, 0x2

    goto :goto_2

    .line 2078
    .end local v8    # "state":Z
    :catch_0
    move-exception v6

    .line 2079
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2081
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setApplicationInstallationDisabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "disableAppInstallation"    # Z

    .prologue
    .line 2181
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2182
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationInstallationDisabled(ILjava/lang/String;Z)V

    .line 2183
    return-void
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "disableAppInstallation"    # Z
    .param p3, "callingUid"    # I

    .prologue
    .line 2187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 2188
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationInstallationDisabled(ILjava/lang/String;Z)V

    .line 2189
    return-void
.end method

.method public setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "adminUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "disableAppInstallation"    # Z

    .prologue
    .line 2203
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    if-eq v0, v1, :cond_0

    .line 2204
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2206
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationInstallationDisabled(ILjava/lang/String;Z)V

    .line 2207
    return-void
.end method

.method public setApplicationNotificationMode(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mode"    # I

    .prologue
    .line 5554
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5555
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 5557
    .local v0, "callingUid":I
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setApplicationNotificationMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5559
    packed-switch p2, :pswitch_data_0

    .line 5565
    const/4 v1, 0x0

    .line 5578
    :goto_0
    return v1

    .line 5568
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "APPLICATION_MISC"

    const-string v4, "appNotificationMode"

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 5573
    .local v1, "status":Z
    if-eqz v1, :cond_0

    .line 5574
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5577
    :cond_0
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setApplicationNotificationMode: status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5559
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setApplicationState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "enableApp"    # Z

    .prologue
    .line 1967
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1968
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1969
    .local v5, "containerId":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1970
    .local v4, "callingUid":I
    const/4 v14, 0x0

    .line 1971
    .local v14, "success":Z
    const-string v2, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setApplicationState :  pkgName :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " callingUid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " enableApp :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1974
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1975
    if-eqz v3, :cond_2

    .line 1977
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1978
    const-string v2, "ApplicationPolicy"

    const-string v6, " isApplicationInstalled() = false"

    invoke-static {v2, v6}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    const/4 v2, 0x0

    .line 2015
    :goto_0
    return v2

    .line 1982
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isActiveAdmin(Ljava/lang/String;)Z

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 1983
    const-string v2, "ApplicationPolicy"

    const-string v6, "setApplicationState() : can not disable Admin app"

    invoke-static {v2, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v14

    .line 1984
    goto :goto_0

    .line 1986
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1988
    .local v15, "token":J
    const-string v2, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callingUid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    const/4 v6, 0x2

    if-nez p3, :cond_3

    const/4 v7, 0x1

    :goto_1
    move-object/from16 v2, p0

    :try_start_0
    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z

    .line 1995
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(ILjava/lang/String;I)Z

    move-result v13

    .line 1996
    .local v13, "state":Z
    const-string v2, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    if-eqz v13, :cond_4

    const/4 v8, 0x1

    :goto_2
    const/4 v9, 0x0

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const/4 v11, 0x0

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    .line 2012
    .end local v13    # "state":Z
    :goto_3
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v15    # "token":J
    :cond_2
    move v2, v14

    .line 2015
    goto :goto_0

    .line 1991
    .restart local v15    # "token":J
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 1997
    .restart local v13    # "state":Z
    :cond_4
    const/4 v8, 0x2

    goto :goto_2

    .line 2009
    .end local v13    # "state":Z
    :catch_0
    move-exception v12

    .line 2010
    .local v12, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2012
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setApplicationStateList(Landroid/app/enterprise/ContextInfo;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgList"    # [Ljava/lang/String;
    .param p3, "operation"    # Z

    .prologue
    .line 4906
    const/4 v0, 0x0

    .line 4907
    .local v0, "appStateLst":[Ljava/lang/String;
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setApplicationStateList:operation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4908
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4909
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4911
    .local v2, "lAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    array-length v4, p2

    if-gez v4, :cond_1

    :cond_0
    move-object v4, v0

    .line 4925
    :goto_0
    return-object v4

    .line 4914
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p2

    if-ge v1, v4, :cond_3

    .line 4915
    aget-object v4, p2, v1

    invoke-virtual {p0, p1, v4, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    .line 4916
    .local v3, "ret":Z
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 4917
    aget-object v4, p2, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4918
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setApplicationStateList:pkgList[i]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4914
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4922
    .end local v3    # "ret":Z
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_4

    .line 4923
    const/4 v4, 0x0

    goto :goto_0

    .line 4925
    :cond_4
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setApplicationUninstallationDisabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "disableAppUninstallation"    # Z

    .prologue
    .line 2392
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2393
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationUninstallationDisabled(ILjava/lang/String;Z)V

    .line 2394
    return-void
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "disableAppUninstallation"    # Z
    .param p3, "callingUid"    # I

    .prologue
    .line 2398
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 2399
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationUninstallationDisabled(ILjava/lang/String;Z)V

    .line 2400
    return-void
.end method

.method public setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "adminUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "disableAppUninstallation"    # Z

    .prologue
    .line 2414
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    if-eq v0, v1, :cond_0

    .line 2415
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2417
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationUninstallationDisabled(ILjava/lang/String;Z)V

    .line 2418
    return-void
.end method

.method public setApplicationUninstallationMode(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "uninstallationMode"    # I

    .prologue
    const/4 v4, 0x1

    .line 2319
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2320
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2321
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .line 2323
    .local v1, "uninstallationModeSet":Z
    if-ne v4, p2, :cond_1

    .line 2325
    const-string v2, ".*"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v4, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    .line 2333
    :cond_0
    :goto_0
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAppInstallationMode : returns : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    return v1

    .line 2327
    :cond_1
    if-nez p2, :cond_0

    .line 2329
    const-string v2, ".*"

    invoke-direct {p0, v2, v0, v4, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_0
.end method

.method public setAsManagedApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3952
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAsManagedApp():pkgName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3953
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3954
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3956
    .local v0, "callingUid":I
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3971
    :goto_0
    return v3

    .line 3960
    :cond_0
    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, v0, p2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 3962
    const/4 v5, 0x0

    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v2

    .line 3963
    .local v2, "mAppInfo":Landroid/app/enterprise/ManagedAppInfo;
    if-eqz v2, :cond_1

    iget v5, v2, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    if-nez v5, :cond_1

    .line 3964
    const-string v5, "applicationInstallationCount"

    invoke-direct {p0, v0, p2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    .line 3965
    const-string v5, "ApplicationPolicy"

    const-string v6, "App install count incremented"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v3, v4

    .line 3967
    goto :goto_0

    .line 3969
    .end local v2    # "mAppInfo":Landroid/app/enterprise/ManagedAppInfo;
    :catch_0
    move-exception v1

    .line 3970
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 27
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 4724
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4725
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v21

    .line 4726
    .local v21, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 4727
    .local v11, "callingUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "android"

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v13

    .line 4728
    .local v13, "ctx":Landroid/content/Context;
    if-nez v13, :cond_1

    .line 4729
    const-string v23, "ApplicationPolicy"

    const-string v24, "Could not create context for current user!"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4730
    const/16 v18, 0x0

    .line 4801
    :cond_0
    :goto_0
    return v18

    .line 4733
    :cond_1
    const/16 v18, 0x0

    .line 4734
    .local v18, "result":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4735
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4736
    if-eqz p2, :cond_0

    .line 4737
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 4739
    .local v19, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v22

    .line 4740
    .local v22, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 4741
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 4743
    const-string v23, "PackageNameStartBlacklist"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 4744
    .local v10, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 4747
    .local v16, "options":Landroid/os/Bundle;
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_5

    move-object/from16 v0, p2

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 4751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4752
    :try_start_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v8, v0

    .line 4753
    .local v8, "adminUid":J
    sget-object v23, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 4754
    .local v7, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v7, :cond_4

    .line 4755
    const-string v23, "PackageNameStartBlacklist"

    move-object/from16 v0, v23

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 4757
    .local v4, "adminBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_2

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 4759
    :cond_2
    const-string v23, "ApplicationPolicy"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Package name "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "is at prevent black list,"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " but has not been added by admin "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " Prevent this package from starting"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4762
    const/16 v23, 0x0

    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4798
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v18, v23

    .line 4762
    goto/16 :goto_0

    .line 4766
    :cond_3
    :try_start_2
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4767
    .end local v16    # "options":Landroid/os/Bundle;
    .local v17, "options":Landroid/os/Bundle;
    :try_start_3
    const-string v23, "edm:startedByAdmin"

    const/16 v25, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v16, v17

    .line 4770
    .end local v4    # "adminBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "options":Landroid/os/Bundle;
    .restart local v16    # "options":Landroid/os/Bundle;
    :cond_4
    :try_start_4
    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4775
    .end local v7    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v8    # "adminUid":J
    :cond_5
    if-nez p3, :cond_7

    .line 4776
    :try_start_5
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v15

    .line 4777
    .local v15, "intent":Landroid/content/Intent;
    if-nez v15, :cond_8

    .line 4778
    const/16 v18, 0x0

    .line 4798
    .end local v10    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v18    # "result":Z
    .end local v22    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    :goto_1
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 4770
    .restart local v10    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v18    # "result":Z
    .restart local v22    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v23

    :goto_2
    :try_start_6
    monitor-exit v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v23
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 4795
    .end local v10    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v22    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v14

    .line 4796
    .local v14, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v23, "ApplicationPolicy"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "could not start app"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 4798
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v23

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v23

    .line 4780
    .restart local v10    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v22    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_7
    :try_start_9
    new-instance v15, Landroid/content/Intent;

    const-string v23, "android.intent.action.MAIN"

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4781
    .restart local v15    # "intent":Landroid/content/Intent;
    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4782
    .local v12, "cn":Landroid/content/ComponentName;
    invoke-virtual {v15, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4784
    .end local v12    # "cn":Landroid/content/ComponentName;
    :cond_8
    const/high16 v23, 0x10000000

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v24, Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4786
    const/16 v18, 0x1

    .line 4787
    goto :goto_1

    .line 4790
    .end local v10    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v5

    .line 4792
    .local v5, "adminLuid":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v5, v6, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->storeAppInfoForLateStart(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 4793
    const/16 v18, 0x1

    goto :goto_1

    .line 4770
    .end local v5    # "adminLuid":J
    .restart local v4    # "adminBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v8    # "adminUid":J
    .restart local v10    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "options":Landroid/os/Bundle;
    :catchall_2
    move-exception v23

    move-object/from16 v16, v17

    .end local v17    # "options":Landroid/os/Bundle;
    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_2
.end method

.method public stopApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4693
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4694
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 4696
    .local v4, "userId":I
    const/4 v1, 0x0

    .line 4697
    .local v1, "result":Z
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4698
    if-eqz p2, :cond_1

    .line 4699
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4700
    const/4 v5, 0x0

    .line 4712
    :goto_0
    return v5

    .line 4702
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4704
    .local v2, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, p2, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4705
    const/4 v1, 0x1

    .line 4709
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "token":J
    :cond_1
    move v5, v1

    .line 4712
    goto :goto_0

    .line 4706
    .restart local v2    # "token":J
    :catch_0
    move-exception v0

    .line 4707
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not stop app"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4709
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessStats;->init()V

    .line 391
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    .line 392
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileApplicationsState()V

    .line 393
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileComponentsState()V

    .line 394
    return-void
.end method

.method public uninstallApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "keepDataAndCache"    # Z

    .prologue
    .line 1882
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1883
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_uninstallApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public uninstallApplicationBySystem(ILjava/lang/String;Z)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "keepDataAndCache"    # Z

    .prologue
    .line 1898
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    sget v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    if-eq v1, v2, :cond_0

    .line 1899
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1901
    :cond_0
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 1902
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_uninstallApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public uninstallApplicationInternalBySystem(ILjava/lang/String;Z)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "keepDataAndCache"    # Z

    .prologue
    .line 1924
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    sget v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    if-eq v1, v2, :cond_0

    .line 1925
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1927
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1928
    .local v0, "userId":I
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_uninstallApplicationInternal(IILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public updateApplicationTable(III)Z
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "oldOwnerUid"    # I
    .param p3, "newOwnerUid"    # I

    .prologue
    .line 7336
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7337
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adminUid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7343
    .local v1, "where":Ljava/lang/String;
    const-string v2, "ApplicationPolicy"

    const-string v3, "Updating the Application Table DB  "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7344
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->updateApplicationTable(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public updateDataUsageDb()V
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateNetworkUsageDb()V

    .line 1000
    return-void
.end method

.method public updateWidgetStatus(Landroid/content/ComponentName;I)V
    .locals 10
    .param p1, "cmpName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 5305
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v8, "android"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v1

    .line 5307
    .local v1, "ctx":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 5340
    :cond_0
    :goto_0
    return-void

    .line 5310
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5313
    .local v6, "widgetProviders":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5315
    .local v4, "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledWidgetProviders(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 5321
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 5322
    .local v0, "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5316
    .end local v0    # "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 5317
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v7, "ApplicationPolicy"

    const-string v8, "Failed to get widget providers"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5326
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getSamsungWidgets(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5329
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getSurfaceWidgets(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5332
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getWidgetProviderDisabledList(I)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5335
    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5336
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5337
    .local v5, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5338
    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(Ljava/util/List;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public wipeApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1544
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1545
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1546
    .local v0, "callingUid":I
    const/4 v2, 0x0

    .line 1547
    .local v2, "success":Z
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1548
    if-eqz p2, :cond_0

    .line 1549
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wipeApplicationData : callingUid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1551
    .local v3, "token":J
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wipeApplicationData : Binder.getCallingUid() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, p2, v6}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->clearUserData(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1566
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1569
    .end local v3    # "token":J
    :cond_0
    return v2

    .line 1562
    .restart local v3    # "token":J
    :catch_0
    move-exception v1

    .line 1563
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 1564
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1566
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public writeData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BZI)Z
    .locals 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "append"    # Z
    .param p6, "totalLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6562
    const-string v17, "ApplicationPolicy"

    const-string v18, "WriteData"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6563
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 6565
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 6566
    :cond_0
    const/4 v12, 0x0

    .line 6622
    :goto_0
    return v12

    .line 6568
    :cond_1
    const/4 v12, 0x0

    .line 6569
    .local v12, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 6570
    .local v14, "token":J
    const/4 v8, 0x0

    .line 6571
    .local v8, "out":Ljava/io/FileOutputStream;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/data/system/container/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 6574
    .local v13, "srcPath":Ljava/lang/String;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6575
    if-nez p5, :cond_4

    .line 6576
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6577
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_4

    .line 6578
    :cond_2
    const/16 v17, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6613
    if-eqz v8, :cond_3

    .line 6615
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 6618
    :goto_1
    const/4 v8, 0x0

    .line 6620
    :cond_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v12, v17

    .line 6578
    goto :goto_0

    .line 6582
    .end local v7    # "file":Ljava/io/File;
    :cond_4
    :try_start_3
    new-instance v6, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6583
    .local v6, "f":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    move/from16 v0, p5

    invoke-direct {v9, v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6584
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .local v9, "out":Ljava/io/FileOutputStream;
    :try_start_4
    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 6585
    const-string v17, "ApplicationPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bytes are written to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6586
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 6587
    const/4 v8, 0x0

    .line 6589
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    const/4 v12, 0x1

    .line 6590
    move/from16 v0, p6

    int-to-long v0, v0

    move-wide/from16 v17, v0

    :try_start_5
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-nez v17, :cond_6

    .line 6591
    const/4 v12, 0x0

    .line 6592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "persona"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PersonaManager;

    .line 6595
    .local v10, "pm":Landroid/os/PersonaManager;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/data/data/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6596
    .local v4, "destFile":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/PersonaManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v11

    .line 6597
    .local v11, "rcpInterface":Landroid/content/IRCPInterface;
    if-eqz v11, :cond_5

    .line 6598
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v19, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v11, v0, v1, v2, v4}, Landroid/content/IRCPInterface;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v16

    .line 6599
    .local v16, "value":I
    if-nez v16, :cond_5

    .line 6600
    const/4 v12, 0x1

    .line 6603
    .end local v16    # "value":I
    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 6604
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6605
    .local v3, "deleteFolder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 6607
    .end local v3    # "deleteFolder":Ljava/io/File;
    .end local v4    # "destFile":Ljava/lang/String;
    .end local v10    # "pm":Landroid/os/PersonaManager;
    .end local v11    # "rcpInterface":Landroid/content/IRCPInterface;
    :cond_6
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 6613
    if-eqz v8, :cond_7

    .line 6615
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 6618
    :goto_2
    const/4 v8, 0x0

    .line 6620
    .end local v6    # "f":Ljava/io/File;
    :cond_7
    :goto_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 6607
    :catchall_0
    move-exception v17

    :goto_4
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v17
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 6608
    :catch_0
    move-exception v5

    .line 6609
    .local v5, "e":Ljava/io/IOException;
    :try_start_9
    const-string v17, "ApplicationPolicy"

    const-string v18, "IOException createsystemfile command failed "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 6613
    if-eqz v8, :cond_7

    .line 6615
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 6618
    :goto_5
    const/4 v8, 0x0

    goto :goto_3

    .line 6610
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 6611
    .local v5, "e":Ljava/lang/Exception;
    :try_start_b
    const-string v17, "ApplicationPolicy"

    const-string v18, "Failed at EnterpriseContainerPolicy API writeData "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 6613
    if-eqz v8, :cond_7

    .line 6615
    :try_start_c
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 6618
    :goto_6
    const/4 v8, 0x0

    goto :goto_3

    .line 6613
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v17

    if-eqz v8, :cond_8

    .line 6615
    :try_start_d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 6618
    :goto_7
    const/4 v8, 0x0

    .line 6620
    :cond_8
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6613
    throw v17

    .line 6616
    :catch_2
    move-exception v18

    goto :goto_7

    .local v5, "e":Ljava/io/IOException;
    :catch_3
    move-exception v17

    goto :goto_5

    .local v5, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v17

    goto :goto_6

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v7    # "file":Ljava/io/File;
    :catch_5
    move-exception v18

    goto/16 :goto_1

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "f":Ljava/io/File;
    :catch_6
    move-exception v17

    goto :goto_2

    .line 6607
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v17

    move-object v8, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    goto :goto_4
.end method
