.class Lcom/android/server/SEAMService;
.super Lcom/sec/enterprise/knox/seams/ISEAMS$Stub;
.source "SEAMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SEAMService$DrsHandler;,
        Lcom/android/server/SEAMService$BrHandler;
    }
.end annotation


# static fields
.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field private static final CONTEXT_FILE:Ljava/lang/String; = "file_contexts"

.field private static final DRS_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.drs.date"

.field private static final DRS_SYSTEM_PROPERTY:Ljava/lang/String; = "persist.sys.drs.enforce"

.field private static final ERROR:I = -0x1

.field private static final ERROR_SEAMS_KEYSTORE:I = 0x12c

.field private static final ERROR_SEAMS_KEYSTORE_STIG_KEY_INDEX:I = 0xc9

.field private static final ERROR_SEAMS_KEYSTORE_STIG_KEY_SIZE:I = 0xc8

.field public static final GOOD_CONTAINER:I = 0x1

.field private static final GSD_CATEGORY:I = 0x66

.field private static final HEX:[C

.field private static final LABELDONE:Ljava/lang/String; = "LABELDONE"

.field private static final MACPERMISSIONS_FILE:Ljava/lang/String; = "mac_permissions.xml"

.field private static MAC_POLICY_FILE:Ljava/io/File; = null

.field private static MAX_BYTE_ARRAY_SIZE:I = 0x0

.field private static final MDM_POLICY_UPDATE:Ljava/lang/String; = "persist.sys.mdm.auto"

.field private static final MDM_SEANDROID_DUMPSTATE_PROPERTY:Ljava/lang/String; = "persist.security.mdm.SElogs"

.field public static final MYCONTAINER:I = 0x4

.field public static final NON_CONTAINER_TYPE:I = 0x0

.field private static final NeedBadge:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final ONELABEL:Ljava/lang/String; = "ONELABEL"

.field public static final PERSONA_CONTAINER:I = 0x3

.field private static final PERSONA_LOWER_BOUNDARY:I = 0x64

.field private static final PERSONA_UPPER_BOUNDARY:I = 0xc7

.field private static final POLICY_FILE:Ljava/lang/String; = "sepolicy"

.field private static final PROPERTY_FILE:Ljava/lang/String; = "property_contexts"

.field private static final RELABEL_APP_DIR:I = 0x4

.field private static final RELABEL_DATA_DIR:I = 0x2

.field private static final RESTORECONALL:Ljava/lang/String; = "RESTORECONALL"

.field private static final SEAMS_KEYSTORE_STIG_KEY_ENDING_POS:I = 0x25d

.field private static final SEAMS_KEYSTORE_STIG_KEY_NUM_POS:I = 0x5

.field private static final SEAMS_KEYSTORE_STIG_KEY_SIZE:I = 0x20

.field private static final SEAMS_KEYSTORE_STIG_KEY_STARTING_POS:I = 0x258

.field private static final SEAMS_PERMS:[Ljava/lang/String;

.field private static final SEAMS_Version:Ljava/lang/String; = "2.1"

.field private static final SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/"

.field private static final SECONTEXT_FILE:Ljava/lang/String; = "seapp_contexts"

.field private static final SECURED_APPTYPE:I = 0x1

.field public static SELF_PID:I = 0x0

.field private static final SPOTA_PACKAGE:Ljava/lang/String; = "com.sec.android.app.spota"

.field public static final STIG_CONTAINER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SEAMService"

.field private static final TRUSTED_APPTYPE:I = 0x2

.field private static bootCompleted:Z = false

.field private static final containerStrings:[Ljava/lang/String;

.field private static instance:[Lcom/android/server/SEAMSContainer; = null

.field private static mBootReceiver:Landroid/content/BroadcastReceiver; = null

.field private static mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService; = null

.field static mDrsHandler:Lcom/android/server/SEAMService$DrsHandler; = null

.field static mDrsHandlerThread:Landroid/os/HandlerThread; = null

.field private static mSKLog:Lcom/android/server/SKLogger; = null

.field private static final mSetPolicy:Ljava/lang/Object;

.field private static policyDataBytes:[B = null

.field private static policyDataBytesPosition:I = 0x0

.field private static policyFileSize:I = 0x0

.field private static policyHash:Ljava/lang/String; = null

.field private static final supportedContainers:I = 0x5


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Lcom/android/server/SEAMService$BrHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field final mLock:Ljava/lang/Object;

.field mPersona:Landroid/os/PersonaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 142
    sput v4, Lcom/android/server/SEAMService;->SELF_PID:I

    .line 158
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/SEAMSContainer;

    sput-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    .line 159
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    .line 172
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "good"

    aput-object v1, v0, v4

    const-string v1, "fixmo"

    aput-object v1, v0, v6

    const-string v1, "container"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "mycontainer"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/SEAMService;->containerStrings:[Ljava/lang/String;

    .line 174
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/SEAMService;->HEX:[C

    .line 176
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_SEAMS"

    aput-object v1, v0, v4

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_SEAMS_SEPOLICY"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    .line 200
    sput-object v3, Lcom/android/server/SEAMService;->mDrsHandlerThread:Landroid/os/HandlerThread;

    .line 201
    sput-object v3, Lcom/android/server/SEAMService;->mDrsHandler:Lcom/android/server/SEAMService$DrsHandler;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/SEAMService;->NeedBadge:Ljava/util/HashMap;

    .line 219
    sput-object v3, Lcom/android/server/SEAMService;->policyDataBytes:[B

    .line 220
    sput v5, Lcom/android/server/SEAMService;->policyDataBytesPosition:I

    .line 221
    sput-object v3, Lcom/android/server/SEAMService;->policyHash:Ljava/lang/String;

    .line 222
    sput v5, Lcom/android/server/SEAMService;->policyFileSize:I

    .line 223
    sput-object v3, Lcom/android/server/SEAMService;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    .line 233
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/security/mac_permissions.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SEAMService;->MAC_POLICY_FILE:Ljava/io/File;

    .line 236
    const/high16 v0, 0x3200000

    sput v0, Lcom/android/server/SEAMService;->MAX_BYTE_ARRAY_SIZE:I

    .line 241
    new-array v0, v4, [Ljava/lang/Object;

    sput-object v0, Lcom/android/server/SEAMService;->mSetPolicy:Ljava/lang/Object;

    .line 242
    sput-object v3, Lcom/android/server/SEAMService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 243
    sput-boolean v4, Lcom/android/server/SEAMService;->bootCompleted:Z

    return-void

    .line 174
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/sec/enterprise/knox/seams/ISEAMS$Stub;-><init>()V

    .line 203
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/SEAMService;->mLock:Ljava/lang/Object;

    .line 244
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/SEAMService;->mPersona:Landroid/os/PersonaManager;

    .line 252
    iput-object p1, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    .line 253
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SEAMService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/SEAMService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 254
    iget-object v2, p0, Lcom/android/server/SEAMService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 255
    new-instance v2, Lcom/android/server/SEAMService$BrHandler;

    iget-object v3, p0, Lcom/android/server/SEAMService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/SEAMService$BrHandler;-><init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/SEAMService;->mHandler:Lcom/android/server/SEAMService$BrHandler;

    .line 256
    invoke-direct {p0}, Lcom/android/server/SEAMService;->registerBootReceiver()V

    .line 257
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    move-result-object v1

    .line 258
    .local v1, "serviceKeeper":Lcom/android/server/ServiceKeeper;
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    move-result v0

    .line 259
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    sput v2, Lcom/android/server/SEAMService;->SELF_PID:I

    .line 261
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 262
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service Keeper Initialized = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcom/android/server/SEAMService;->checkFingerprintAndRelabelIfNeeded()V

    .line 266
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 139
    sput-boolean p0, Lcom/android/server/SEAMService;->bootCompleted:Z

    return p0
.end method

.method static synthetic access$100()Lcom/android/server/SKLogger;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    return-object v0
.end method

.method private declared-synchronized broadcastStateChanged(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 707
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mdm.intent.action.seandroid.policy.state.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mdm.intent.extra.seandroid.state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 710
    iget-object v1, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_SEANDROID"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    monitor-exit p0

    return-void

    .line 707
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private checkFingerprintAndRelabelIfNeeded()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 574
    const-string v2, "ro.build.date"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "curbld":Ljava/lang/String;
    const-string v2, "persist.sys.drs.date"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, "oldbld":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v5, :cond_0

    .line 583
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "build fingerprint has changed, and prepare to relabel data"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/SEAMService;->relabelData(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 591
    const-string v2, "persist.sys.drs.date"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_0
    return-void
.end method

.method private checkSEAMSPermission(IILjava/lang/String;Z)Z
    .locals 9
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "perm"    # Ljava/lang/String;
    .param p4, "ownerOnly"    # Z

    .prologue
    const/16 v8, 0x3e8

    .line 336
    const/4 v3, 0x0

    .line 338
    .local v3, "ret":Z
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkSEAMSPermission, uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", perm:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", system uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    if-ne p1, v8, :cond_0

    sget v4, Lcom/android/server/SEAMService;->SELF_PID:I

    if-ne p2, v4, :cond_0

    .line 341
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "checkSEAMSPermission, caller: system"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/4 v4, 0x1

    .line 365
    :goto_0
    return v4

    .line 346
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 347
    .local v1, "mPM":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    .line 348
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v4, p2, p1}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-interface {v1, p3, v2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 353
    if-eqz p4, :cond_1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 354
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "ownerOnly condition not met for global scope api"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/4 v3, 0x0

    .line 357
    :cond_1
    const/4 v3, 0x1

    .end local v1    # "mPM":Landroid/content/pm/IPackageManager;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_1
    move v4, v3

    .line 365
    goto :goto_0

    .line 359
    .restart local v1    # "mPM":Landroid/content/pm/IPackageManager;
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "checkSEAMSPermission, perm denied"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 361
    .end local v1    # "mPM":Landroid/content/pm/IPackageManager;
    .end local v2    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "expection in check SEAMS permissions"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "perm"    # Ljava/lang/String;
    .param p3, "ownerOnly"    # Z

    .prologue
    const/4 v2, 0x1

    .line 311
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "checkSEAMSPermissionByContext_begin"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    if-eqz p3, :cond_0

    .line 314
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SEAMService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 316
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSEAMSPermissionByContext, ownerOnly:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", no exception, return true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :goto_0
    return v2

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SEAMService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 321
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "checkSEAMSPermissionByContext, no exception, return true"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 324
    :catch_0
    move-exception v1

    .line 325
    .local v1, "se":Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "checkSEAMSPermissionByContext, SecurityException, return false"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 331
    .end local v1    # "se":Ljava/lang/SecurityException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 327
    :catch_1
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "checkSEAMSPermissionByContext, Exception, return false"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private constructLabelEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "dataDir"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    const/16 v1, 0x2c

    .line 647
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    .local v0, "msg":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 659
    .end local v0    # "msg":Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private copyFiles(Ljava/lang/String;[B)Z
    .locals 9
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 672
    const/4 v4, 0x0

    .line 674
    .local v4, "ret":Z
    if-eqz p2, :cond_0

    .line 675
    const/4 v1, 0x0

    .line 677
    .local v1, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/security/"

    invoke-direct {v3, v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    .local v3, "mFileDest":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .local v2, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 680
    const/4 v4, 0x1

    .line 689
    if-eqz v2, :cond_0

    .line 690
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 696
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v3    # "mFileDest":Ljava/io/File;
    :cond_0
    :goto_0
    return v4

    .line 681
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string v7, "File Not Found"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 683
    const/4 v4, 0x0

    .line 689
    if-eqz v1, :cond_0

    .line 690
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 691
    :catch_1
    move-exception v0

    .line 692
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string v7, "Error closing OutputStream"

    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    :goto_2
    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 684
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_2
    move-exception v0

    .line 685
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string v7, "copyFile failed "

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 686
    const/4 v4, 0x0

    .line 689
    if-eqz v1, :cond_0

    .line 690
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 691
    :catch_3
    move-exception v0

    .line 692
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string v7, "Error closing OutputStream"

    goto :goto_2

    .line 688
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 689
    :goto_4
    if-eqz v1, :cond_1

    .line 690
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 688
    :cond_1
    :goto_5
    throw v5

    .line 691
    :catch_4
    move-exception v0

    .line 692
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    const-string v8, "Error closing OutputStream"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 691
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "mFileDest":Ljava/io/File;
    :catch_5
    move-exception v0

    .line 692
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string v7, "Error closing OutputStream"

    goto :goto_2

    .line 688
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_4

    .line 684
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_3

    .line 681
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private createDrsHandlerThreadIfNeeded()V
    .locals 3

    .prologue
    .line 561
    sget-object v0, Lcom/android/server/SEAMService;->mDrsHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/SEAMService;->mDrsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 563
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrsService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SEAMService;->mDrsHandlerThread:Landroid/os/HandlerThread;

    .line 565
    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMService"

    const-string/jumbo v2, "thread is started"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    sget-object v0, Lcom/android/server/SEAMService;->mDrsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 567
    new-instance v0, Lcom/android/server/SEAMService$DrsHandler;

    sget-object v1, Lcom/android/server/SEAMService;->mDrsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/SEAMService$DrsHandler;-><init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/SEAMService;->mDrsHandler:Lcom/android/server/SEAMService$DrsHandler;

    .line 569
    :cond_1
    return-void
.end method

.method private encodeBase16([B)Ljava/lang/String;
    .locals 6
    .param p1, "byteArray"    # [B

    .prologue
    .line 790
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 791
    .local v0, "hexBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 792
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_0

    .line 793
    sget-object v3, Lcom/android/server/SEAMService;->HEX:[C

    aget-byte v4, p1, v1

    mul-int/lit8 v5, v2, 0x4

    shr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 792
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 791
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 794
    .end local v2    # "j":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getAVCDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "refContainerString"    # Ljava/lang/String;
    .param p2, "scannedLine"    # Ljava/lang/String;
    .param p3, "lineSeparator"    # Ljava/lang/String;
    .param p4, "scanner"    # Ljava/util/Scanner;
    .param p5, "fileContents"    # Ljava/lang/StringBuilder;

    .prologue
    .line 402
    :goto_0
    :try_start_0
    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 405
    .local v1, "tempString":Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .end local v1    # "tempString":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :goto_1
    return-void

    .line 409
    .restart local v1    # "tempString":Ljava/lang/String;
    .restart local v2    # "tokens":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 410
    const-string v3, "cwd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_1
    :goto_2
    invoke-virtual {p4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p2

    .line 422
    goto :goto_0

    .line 413
    :cond_2
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "avc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 423
    .end local v1    # "tempString":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "In getAVCDetails [Exception]"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 418
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "tempString":Ljava/lang/String;
    .restart local v2    # "tokens":[Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/SEAMService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/SEAMService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private static getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    .locals 2
    .param p0, "Container_Type"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 370
    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 371
    packed-switch p0, :pswitch_data_0

    .line 385
    const/4 v0, 0x0

    .line 388
    :goto_0
    return-object v0

    .line 373
    :pswitch_0
    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    new-instance v1, Lcom/android/server/PersonaContainer;

    invoke-direct {v1, p1}, Lcom/android/server/PersonaContainer;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    .line 388
    :cond_0
    :goto_1
    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    aget-object v0, v0, p0

    goto :goto_0

    .line 376
    :pswitch_1
    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    new-instance v1, Lcom/android/server/GoodContainer;

    invoke-direct {v1, p1}, Lcom/android/server/GoodContainer;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    goto :goto_1

    .line 379
    :pswitch_2
    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    new-instance v1, Lcom/android/server/STIGContainer;

    invoke-direct {v1, p1}, Lcom/android/server/STIGContainer;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    goto :goto_1

    .line 382
    :pswitch_3
    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    new-instance v1, Lcom/android/server/MyContainer;

    invoke-direct {v1, p1}, Lcom/android/server/MyContainer;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    goto :goto_1

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getMdmProperties(I)I
    .locals 3
    .param p1, "property"    # I

    .prologue
    .line 813
    const-string v1, "persist.sys.mdm.auto"

    const/16 v2, 0x37f

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 815
    .local v0, "result":I
    and-int/lit8 v0, v0, -0x1

    .line 816
    and-int v1, v0, p1

    if-nez v1, :cond_0

    .line 817
    const/4 v1, 0x0

    .line 818
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getOtherContainerStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "refContainerString"    # Ljava/lang/String;

    .prologue
    .line 450
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    .line 451
    .local v3, "otherContainers":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 452
    .local v1, "j":I
    const-string v4, "all"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 453
    const/4 v3, 0x0

    .line 458
    .end local v3    # "otherContainers":[Ljava/lang/String;
    :cond_0
    return-object v3

    .line 454
    .restart local v3    # "otherContainers":[Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/android/server/SEAMService;->containerStrings:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 455
    sget-object v4, Lcom/android/server/SEAMService;->containerStrings:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 456
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    sget-object v4, Lcom/android/server/SEAMService;->containerStrings:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    move v1, v2

    .line 454
    .end local v2    # "j":I
    .restart local v1    # "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getTIMAService()Landroid/service/tima/ITimaService;
    .locals 8

    .prologue
    .line 510
    :try_start_0
    const-string v4, "android.os.ServiceManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 511
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 512
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "tima"

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 513
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 517
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 514
    :catch_0
    move-exception v2

    .line 515
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 517
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static hashset_to_int_array(Ljava/util/HashSet;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 1904
    .local p0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const-string v4, "SEAMService"

    const-string v5, "Entered hashset_to_int_array in SELinuxMMAC"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1908
    :cond_0
    const-string v4, "SEAMService"

    const-string v5, " hashset_to_int_array returning null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    const/4 v0, 0x0

    .line 1918
    :cond_1
    return-object v0

    .line 1912
    :cond_2
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 1913
    .local v0, "array":[I
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1914
    .local v3, "itr":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 1915
    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1916
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public static isBootComplete()Z
    .locals 1

    .prologue
    .line 2331
    sget-boolean v0, Lcom/android/server/SEAMService;->bootCompleted:Z

    return v0
.end method

.method private isPersona(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 608
    const/16 v0, 0x64

    if-gt v0, p1, :cond_0

    const/16 v0, 0xc7

    if-gt p1, v0, :cond_0

    .line 609
    const/4 v0, 0x1

    .line 610
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processAVCLine(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    .locals 6
    .param p1, "refContainerString"    # Ljava/lang/String;
    .param p2, "otherContainerStrings"    # [Ljava/lang/String;
    .param p3, "fileContents"    # Ljava/lang/StringBuilder;
    .param p4, "scannedLine"    # Ljava/lang/String;
    .param p5, "lineSeparator"    # Ljava/lang/String;
    .param p6, "scanner"    # Ljava/util/Scanner;

    .prologue
    .line 431
    const-string v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p3

    .line 432
    invoke-direct/range {v0 .. v5}, Lcom/android/server/SEAMService;->getAVCDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;Ljava/lang/StringBuilder;)V

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p3

    .line 437
    invoke-direct/range {v0 .. v5}, Lcom/android/server/SEAMService;->getAVCDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 440
    :cond_2
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p3

    .line 443
    invoke-direct/range {v0 .. v5}, Lcom/android/server/SEAMService;->getAVCDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method private processAllowedLine(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "refContainerString"    # Ljava/lang/String;
    .param p2, "otherContainerStrings"    # [Ljava/lang/String;
    .param p3, "fileContents"    # Ljava/lang/StringBuilder;
    .param p4, "scannedLine"    # Ljava/lang/String;
    .param p5, "lineSeparator"    # Ljava/lang/String;

    .prologue
    .line 464
    const-string v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 471
    :cond_2
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static processDeniedLine(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    .locals 1
    .param p0, "refContainerString"    # Ljava/lang/String;
    .param p1, "otherContainerStrings"    # [Ljava/lang/String;
    .param p2, "fileContents"    # Ljava/lang/StringBuilder;
    .param p3, "scannedLine"    # Ljava/lang/String;
    .param p4, "lineSeparator"    # Ljava/lang/String;
    .param p5, "scanner"    # Ljava/util/Scanner;

    .prologue
    .line 482
    const-string v0, "all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {p5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p3

    .line 486
    const-string v0, "----- end"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    :cond_1
    :goto_0
    return-void

    .line 489
    :cond_2
    invoke-virtual {p3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 491
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {p5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p3

    .line 493
    const-string v0, "----- end"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 495
    :cond_4
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {p5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p3

    .line 502
    const-string v0, "----- end"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0
.end method

.method private registerBootReceiver()V
    .locals 6

    .prologue
    .line 293
    :try_start_0
    sget-object v2, Lcom/android/server/SEAMService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 294
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 295
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/server/SEAMService$1;

    invoke-direct {v2, p0}, Lcom/android/server/SEAMService$1;-><init>(Lcom/android/server/SEAMService;)V

    sput-object v2, Lcom/android/server/SEAMService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 301
    iget-object v2, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/SEAMService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/SEAMService;->mHandler:Lcom/android/server/SEAMService$BrHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "Cannot register mBootReceiver"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private relabelAppDir(Landroid/content/pm/ApplicationInfo;)I
    .locals 6
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v1, 0x0

    .line 629
    if-eqz p1, :cond_1

    .line 630
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/SEAMService;->constructLabelEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 633
    const/4 v2, 0x4

    invoke-direct {p0, v2, v0}, Lcom/android/server/SEAMService;->relabelDataLocked(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 634
    const/4 v1, 0x1

    .line 642
    .end local v0    # "msg":Ljava/lang/String;
    :goto_0
    return v1

    .line 637
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "application information is not correct"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 641
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "cannot find the app to be labeled"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private relabelDataLocked(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/android/server/SEAMService;->createDrsHandlerThreadIfNeeded()V

    .line 598
    sget-object v1, Lcom/android/server/SEAMService;->mDrsHandler:Lcom/android/server/SEAMService$DrsHandler;

    invoke-virtual {v1}, Lcom/android/server/SEAMService$DrsHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 599
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 600
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 601
    sget-object v1, Lcom/android/server/SEAMService;->mDrsHandler:Lcom/android/server/SEAMService$DrsHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/SEAMService$DrsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 604
    const/4 v1, 0x1

    return v1
.end method

.method private removePolicyFiles()Z
    .locals 12

    .prologue
    .line 759
    const/4 v8, 0x0

    .line 761
    .local v8, "ret":Z
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/security/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 763
    .local v4, "fileFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 764
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, "allFiles":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v5, v1, v6

    .line 766
    .local v5, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/security/"

    invoke-direct {v3, v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 765
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 768
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 776
    .end local v0    # "allFiles":[Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileFolder":Ljava/io/File;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_0
    move-exception v2

    .line 777
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string v11, "Exception during removePolicyFiles"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const/4 v8, 0x0

    .line 781
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v8, :cond_1

    .line 782
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string v11, "removePolicyFiles succeeded."

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v9, v8

    .line 786
    :goto_3
    return v9

    .line 771
    .restart local v4    # "fileFolder":Ljava/io/File;
    :cond_2
    :try_start_1
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string v11, "/data/security/ is not a directory."

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const/4 v9, 0x0

    goto :goto_3

    .line 774
    .restart local v0    # "allFiles":[Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_3
    const-string v9, "selinux.reload_policy"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 775
    const/4 v8, 0x1

    goto :goto_2
.end method

.method private resetPolicyAssets()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 392
    sput v0, Lcom/android/server/SEAMService;->policyFileSize:I

    .line 393
    sput-object v1, Lcom/android/server/SEAMService;->policyDataBytes:[B

    .line 394
    sput-object v1, Lcom/android/server/SEAMService;->policyHash:Ljava/lang/String;

    .line 395
    sput v0, Lcom/android/server/SEAMService;->policyDataBytesPosition:I

    .line 396
    return-void
.end method

.method private declared-synchronized searchAgent()I
    .locals 11

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 723
    monitor-enter p0

    const/4 v9, 0x2

    :try_start_0
    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "SeAndroidPolicyLocked"

    aput-object v10, v0, v9

    .line 726
    .local v0, "columns":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SE_ANDROID_TABLE"

    invoke-virtual {v9, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 729
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_2

    .line 730
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 731
    .local v2, "list":Landroid/content/ContentValues;
    const-string/jumbo v9, "true"

    const-string v10, "SeAndroidPolicyLocked"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 732
    const-string v9, "adminUid"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 733
    .local v3, "lockedUid":I
    iget-object v9, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 735
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 737
    const-string v8, "com.sec.android.app.spota"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 749
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Landroid/content/ContentValues;
    .end local v3    # "lockedUid":I
    .end local v4    # "packageName":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return v6

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Landroid/content/ContentValues;
    .restart local v3    # "lockedUid":I
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_1
    move v6, v7

    .line 742
    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Landroid/content/ContentValues;
    .end local v3    # "lockedUid":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2
    move v6, v8

    .line 749
    goto :goto_0

    .line 723
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private setMdmPropertiesLocked(II)V
    .locals 5
    .param p1, "property"    # I
    .param p2, "value"    # I

    .prologue
    .line 798
    const-string v2, "persist.sys.mdm.auto"

    const/16 v3, 0x37f

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 800
    .local v0, "result":I
    and-int/lit8 v1, p1, -0x1

    .line 801
    .local v1, "setValue":I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 802
    or-int/2addr v0, v1

    .line 807
    :cond_0
    :goto_0
    sget-object v3, Lcom/android/server/SEAMService;->mSetPolicy:Ljava/lang/Object;

    monitor-enter v3

    .line 808
    :try_start_0
    const-string v2, "persist.sys.mdm.auto"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    monitor-exit v3

    .line 810
    return-void

    .line 803
    :cond_1
    if-nez p2, :cond_0

    .line 804
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    goto :goto_0

    .line 809
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setPolicyUpdateProperty(Z)I
    .locals 5
    .param p1, "status"    # Z

    .prologue
    .line 822
    const/4 v1, -0x1

    .line 823
    .local v1, "ret":I
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "In method: setPolicyUpdateProperty"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    if-eqz p1, :cond_0

    .line 826
    :try_start_0
    sget-object v3, Lcom/android/server/SEAMService;->mSetPolicy:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :try_start_1
    const-string v2, "persist.sys.mdm.auto"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    monitor-exit v3

    .line 829
    const/4 v1, 0x0

    .line 840
    :goto_0
    return v1

    .line 828
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "Exception in method: setPolicyUpdateProperty"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const/4 v1, -0x1

    goto :goto_0

    .line 831
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_3
    sget-object v3, Lcom/android/server/SEAMService;->mSetPolicy:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 832
    :try_start_4
    const-string v2, "persist.sys.mdm.auto"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    monitor-exit v3

    .line 834
    const/4 v1, 0x0

    goto :goto_0

    .line 833
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method


# virtual methods
.method public activateDomain()I
    .locals 11

    .prologue
    const/4 v6, -0x2

    .line 870
    const-class v7, Lcom/android/server/SEAMService$1Local;

    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 872
    .local v3, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 873
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 876
    .local v4, "pid":I
    sget-object v7, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5, v4, v7, v8}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 877
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "activateDomain: License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :goto_0
    return v6

    .line 883
    :cond_0
    :try_start_0
    const-string v7, "SEAMS"

    invoke-virtual {p0, v4, v5, v7, v3}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 887
    .local v0, "containerType":I
    if-gez v0, :cond_2

    .line 888
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unauthorized call to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 895
    .end local v0    # "containerType":I
    :catch_0
    move-exception v1

    .line 896
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in method:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 899
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v6, -0x1

    goto :goto_0

    .line 891
    .restart local v0    # "containerType":I
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 892
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_1

    .line 893
    invoke-virtual {v2, v5}, Lcom/android/server/SEAMSContainer;->activateDomain(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    goto :goto_0
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 949
    const-class v13, Lcom/android/server/SEAMService$2Local;

    invoke-virtual {v13}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    .line 951
    .local v9, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 952
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 953
    .local v10, "pid":I
    const/4 v11, 0x0

    .line 954
    .local v11, "ret":I
    const-wide/16 v6, 0x0

    .line 955
    .local v6, "ident":J
    const/4 v8, 0x0

    .line 958
    .local v8, "instanceCon":Lcom/android/server/SEAMSContainer;
    sget-object v13, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v13, v14}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_0

    .line 959
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": License validation failed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const/4 v13, -0x2

    .line 999
    :goto_0
    return v13

    .line 977
    :cond_0
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 978
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 979
    if-eqz v8, :cond_3

    .line 980
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    move v13, v11

    .line 981
    goto :goto_0

    .line 984
    :cond_1
    const-string v13, "SEAMS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13, v9}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 985
    .local v4, "containerType":I
    if-gez v4, :cond_2

    .line 986
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unauthorized call to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " for package name ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "). "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const/4 v13, -0x2

    goto :goto_0

    .line 989
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v4, v13}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 990
    if-eqz v8, :cond_3

    .line 991
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    move v13, v11

    .line 992
    goto :goto_0

    .line 995
    .end local v4    # "containerType":I
    :catch_0
    move-exception v5

    .line 996
    .local v5, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in method"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 999
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v13, -0x1

    goto/16 :goto_0
.end method

.method public createSEContainer()I
    .locals 7

    .prologue
    .line 1032
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1033
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1036
    .local v2, "pid":I
    sget-object v4, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1037
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "activateDomain: License validation failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const/4 v4, -0x2

    .line 1050
    :goto_0
    return v4

    .line 1042
    :cond_0
    const/4 v4, 0x4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v1

    .line 1043
    .local v1, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v1, :cond_1

    .line 1044
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SEAMSContainer;->createSEContainer(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 1046
    .end local v1    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :catch_0
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "Exception in createSEContainer"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1050
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public deActivateDomain()I
    .locals 11

    .prologue
    const/4 v6, -0x2

    .line 1078
    const-class v7, Lcom/android/server/SEAMService$3Local;

    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1079
    .local v3, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1080
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1083
    .local v4, "pid":I
    sget-object v7, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5, v4, v7, v8}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1084
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": License validation failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    :goto_0
    return v6

    .line 1090
    :cond_0
    :try_start_0
    const-string v7, "SEAMS"

    invoke-virtual {p0, v4, v5, v7, v3}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1091
    .local v0, "containerType":I
    if-gez v0, :cond_2

    .line 1092
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unauthorized call to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1098
    .end local v0    # "containerType":I
    :catch_0
    move-exception v1

    .line 1099
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in method:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1102
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v6, -0x1

    goto :goto_0

    .line 1095
    .restart local v0    # "containerType":I
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1096
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_1

    .line 1097
    invoke-virtual {v2, v5}, Lcom/android/server/SEAMSContainer;->deActivateDomain(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    goto :goto_0
.end method

.method public getAMSLog(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1215
    const/4 v10, 0x0

    .line 1216
    .local v10, "amslog":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1217
    .local v3, "refContainerString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1221
    .local v4, "otherContainerStrings":[Ljava/lang/String;
    const-class v2, Lcom/android/server/SEAMService$5Local;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1225
    .local v13, "method":Ljava/lang/String;
    sget-object v2, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v2, v2, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v14}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1226
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": License validation failed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const/4 v2, 0x0

    .line 1275
    :goto_0
    return-object v2

    .line 1244
    :cond_0
    const-string v3, "all"

    .line 1245
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "In getAMSLog() containerType ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    :try_start_0
    const-string v9, "/data/misc/audit/ams.log"

    .line 1250
    .local v9, "ams_logfile":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1251
    .local v12, "file":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v2, v14

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1253
    .local v5, "fileContents":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/util/Scanner;

    invoke-direct {v8, v12}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 1254
    .local v8, "scanner":Ljava/util/Scanner;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1255
    .local v7, "lineSeparator":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1256
    invoke-virtual {v8}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v6

    .line 1257
    .local v6, "scannedLine":Ljava/lang/String;
    const-string v2, "Allowed"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, p0

    .line 1258
    invoke-direct/range {v2 .. v7}, Lcom/android/server/SEAMService;->processAllowedLine(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1270
    .end local v5    # "fileContents":Ljava/lang/StringBuilder;
    .end local v6    # "scannedLine":Ljava/lang/String;
    .end local v7    # "lineSeparator":Ljava/lang/String;
    .end local v8    # "scanner":Ljava/util/Scanner;
    .end local v9    # "ams_logfile":Ljava/lang/String;
    .end local v12    # "file":Ljava/io/File;
    :catch_0
    move-exception v11

    .line 1271
    .local v11, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in method:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1274
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "In getAMSLog(): AMS Log ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v10

    .line 1275
    goto/16 :goto_0

    .line 1261
    .restart local v5    # "fileContents":Ljava/lang/StringBuilder;
    .restart local v6    # "scannedLine":Ljava/lang/String;
    .restart local v7    # "lineSeparator":Ljava/lang/String;
    .restart local v8    # "scanner":Ljava/util/Scanner;
    .restart local v9    # "ams_logfile":Ljava/lang/String;
    .restart local v12    # "file":Ljava/io/File;
    :cond_2
    :try_start_1
    const-string v2, "Denied"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1262
    invoke-static/range {v3 .. v8}, Lcom/android/server/SEAMService;->processDeniedLine(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V

    goto :goto_1

    .line 1268
    .end local v6    # "scannedLine":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1269
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getAMSLogLevel(Landroid/app/enterprise/ContextInfo;)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1295
    const-class v4, Lcom/android/server/SEAMService$6Local;

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1299
    .local v2, "method":Ljava/lang/String;
    sget-object v4, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1300
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": License validation failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const/4 v0, -0x2

    .line 1317
    :cond_0
    :goto_0
    return v0

    .line 1305
    :cond_1
    const/4 v0, -0x1

    .line 1307
    .local v0, "amsLogLevel":I
    const/4 v3, 0x0

    .line 1308
    .local v3, "val":Ljava/lang/String;
    :try_start_0
    const-string v4, "persist.security.ams.verbose"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1309
    if-eqz v3, :cond_0

    .line 1310
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1313
    :catch_0
    move-exception v1

    .line 1314
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAMSMode(Landroid/app/enterprise/ContextInfo;)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1335
    const-class v5, Lcom/android/server/SEAMService$7Local;

    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1339
    .local v1, "method":Ljava/lang/String;
    sget-object v5, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, p1, v5, v3}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1340
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": License validation failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    const/4 v3, -0x2

    .line 1354
    :cond_0
    :goto_0
    return v3

    .line 1345
    :cond_1
    const/4 v2, 0x0

    .line 1346
    .local v2, "val":Ljava/lang/String;
    :try_start_0
    const-string v5, "persist.security.ams.enforcing"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1347
    if-eqz v2, :cond_2

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    :goto_1
    move v3, v4

    .line 1354
    goto :goto_0

    .line 1350
    :catch_0
    move-exception v0

    .line 1351
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in method:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getAVCLog(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1369
    const/4 v3, 0x0

    .line 1370
    .local v3, "refContainerString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1374
    .local v4, "otherContainerStrings":[Ljava/lang/String;
    const-class v2, Lcom/android/server/SEAMService$8Local;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1378
    .local v13, "method":Ljava/lang/String;
    sget-object v2, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v2, v2, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v14}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1379
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": License validation failed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const/4 v10, 0x0

    .line 1421
    :goto_0
    return-object v10

    .line 1396
    :cond_0
    const-string v3, "all"

    .line 1397
    const/4 v10, 0x0

    .line 1401
    .local v10, "avclog":Ljava/lang/String;
    :try_start_0
    const-string v9, "/data/misc/audit/audit.log"

    .line 1402
    .local v9, "avc_logfile":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1403
    .local v12, "file":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v2, v14

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1405
    .local v5, "fileContents":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/util/Scanner;

    invoke-direct {v8, v12}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 1406
    .local v8, "scanner":Ljava/util/Scanner;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1407
    .local v7, "lineSeparator":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1408
    invoke-virtual {v8}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v6

    .line 1409
    .local v6, "scannedLine":Ljava/lang/String;
    const-string v2, "avc"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v2, p0

    .line 1410
    invoke-direct/range {v2 .. v8}, Lcom/android/server/SEAMService;->processAVCLine(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1416
    .end local v5    # "fileContents":Ljava/lang/StringBuilder;
    .end local v6    # "scannedLine":Ljava/lang/String;
    .end local v7    # "lineSeparator":Ljava/lang/String;
    .end local v8    # "scanner":Ljava/util/Scanner;
    .end local v9    # "avc_logfile":Ljava/lang/String;
    .end local v12    # "file":Ljava/io/File;
    :catch_0
    move-exception v11

    .line 1417
    .local v11, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in method:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1420
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "AVC Log ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1414
    .restart local v5    # "fileContents":Ljava/lang/StringBuilder;
    .restart local v7    # "lineSeparator":Ljava/lang/String;
    .restart local v8    # "scanner":Ljava/util/Scanner;
    .restart local v9    # "avc_logfile":Ljava/lang/String;
    .restart local v12    # "file":Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1415
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getActivationStatus()I
    .locals 11

    .prologue
    const/4 v6, -0x2

    .line 1174
    const-class v7, Lcom/android/server/SEAMService$4Local;

    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1175
    .local v3, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1176
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1179
    .local v4, "pid":I
    sget-object v7, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5, v4, v7, v8}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1180
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": License validation failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    :goto_0
    return v6

    .line 1186
    :cond_0
    :try_start_0
    const-string v7, "SEAMS"

    invoke-virtual {p0, v4, v5, v7, v3}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1188
    .local v0, "containerType":I
    if-gez v0, :cond_2

    .line 1189
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unauthorized call to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1195
    .end local v0    # "containerType":I
    :catch_0
    move-exception v1

    .line 1196
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Exception in method:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1199
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v6, -0x1

    goto :goto_0

    .line 1192
    .restart local v0    # "containerType":I
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1193
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_1

    .line 1194
    invoke-virtual {v2}, Lcom/android/server/SEAMSContainer;->getActivationStatus()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    goto :goto_0
.end method

.method public getDataType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 1636
    const-class v8, Lcom/android/server/SEAMService$12Local;

    invoke-virtual {v8}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1640
    .local v6, "method":Ljava/lang/String;
    sget-object v8, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1641
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": License validation failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1672
    :goto_0
    return-object v1

    .line 1644
    :cond_0
    const/4 v1, 0x0

    .line 1645
    .local v1, "datatype":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1647
    .local v3, "ident":J
    if-gez p3, :cond_1

    .line 1648
    :try_start_0
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    const-string/jumbo v10, "userId is less than 0."

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1649
    goto :goto_0

    .line 1651
    :cond_1
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callingUid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    invoke-direct {p0, p3}, Lcom/android/server/SEAMService;->isPersona(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1654
    const-string v1, "container_app_data_file"

    goto :goto_0

    .line 1657
    :cond_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 1658
    .local v5, "mPM":Landroid/content/pm/IPackageManager;
    const/16 v8, 0x80

    invoke-interface {v5, p2, v8, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1660
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_3

    move-object v1, v7

    .line 1661
    goto :goto_0

    .line 1663
    :cond_3
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, p2, v9}, Landroid/os/SELinux;->getFileType(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1671
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "mPM":Landroid/content/pm/IPackageManager;
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1667
    :catch_0
    move-exception v2

    .line 1668
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDomain(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 1690
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    const-string v10, "getDomain_begin"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    const-class v8, Lcom/android/server/SEAMService$13Local;

    invoke-virtual {v8}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1698
    .local v6, "method":Ljava/lang/String;
    sget-object v8, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v8, v8, v11

    const/4 v9, 0x1

    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1699
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": License validation failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1730
    :goto_0
    return-object v1

    .line 1703
    :cond_0
    const/4 v1, 0x0

    .line 1704
    .local v1, "domain":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1707
    .local v3, "ident":J
    if-gez p3, :cond_1

    .line 1708
    :try_start_0
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    const-string/jumbo v10, "userId is less than 0."

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1709
    goto :goto_0

    .line 1711
    :cond_1
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "userId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    invoke-direct {p0, p3}, Lcom/android/server/SEAMService;->isPersona(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1714
    const-string v1, "container_app"

    goto :goto_0

    .line 1716
    :cond_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 1717
    .local v5, "mPM":Landroid/content/pm/IPackageManager;
    const/16 v8, 0x80

    invoke-interface {v5, p2, v8, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1719
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_3

    move-object v1, v7

    .line 1720
    goto :goto_0

    .line 1722
    :cond_3
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, p2, v9}, Landroid/os/SELinux;->getDomain(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1724
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "getDomain_end"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1729
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "mPM":Landroid/content/pm/IPackageManager;
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1725
    :catch_0
    move-exception v2

    .line 1726
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getMDMOwnPolicyStatus(Landroid/app/enterprise/ContextInfo;)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v5, 0x1

    .line 1749
    const-class v4, Lcom/android/server/SEAMService$14Local;

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1753
    .local v1, "method":Ljava/lang/String;
    sget-object v4, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1754
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": License validation failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    const/4 v2, -0x2

    .line 1770
    :cond_0
    :goto_0
    return v2

    .line 1758
    :cond_1
    const/4 v2, 0x0

    .line 1759
    .local v2, "ret":I
    const/4 v3, 0x0

    .line 1762
    .local v3, "val":Ljava/lang/String;
    :try_start_0
    const-string v4, "persist.security.mdm.policy"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1763
    if-eqz v3, :cond_0

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1764
    const/4 v2, 0x1

    goto :goto_0

    .line 1766
    :catch_0
    move-exception v0

    .line 1767
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in method:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .locals 11
    .param p1, "containerID"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v6, 0x0

    .line 1807
    const-class v7, Lcom/android/server/SEAMService$15Local;

    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1808
    .local v3, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1809
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1811
    .local v4, "pid":I
    sget-object v7, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5, v4, v7, v8}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1812
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    :cond_0
    :goto_0
    return-object v6

    .line 1817
    :cond_1
    const/16 v7, 0x66

    if-ne p1, v7, :cond_2

    .line 1818
    :try_start_0
    const-string v7, "SEAMS"

    invoke-virtual {p0, v4, v5, v7, v3}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1819
    .local v0, "containerType":I
    if-lez v0, :cond_0

    .line 1820
    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1821
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_0

    .line 1822
    invoke-virtual {v2, p1, p2}, Lcom/android/server/SEAMSContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1826
    .end local v0    # "containerType":I
    .end local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :cond_2
    const/4 v7, 0x4

    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1827
    .restart local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_0

    .line 1828
    invoke-virtual {v2, p1, p2}, Lcom/android/server/SEAMSContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 1831
    .end local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :catch_0
    move-exception v1

    .line 1832
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in method:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSEAMSLog(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1438
    const/4 v8, 0x0

    .line 1443
    .local v8, "sklog":Ljava/lang/String;
    const-class v9, Lcom/android/server/SEAMService$9Local;

    invoke-virtual {v9}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1444
    .local v4, "method":Ljava/lang/String;
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_begin"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    sget-object v9, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    invoke-direct {p0, p1, v9, v10}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1448
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": License validation failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    const/4 v9, 0x0

    .line 1468
    :goto_0
    return-object v9

    .line 1452
    :cond_0
    :try_start_0
    const-string v7, "/data/misc/audit/sk.log"

    .line 1453
    .local v7, "sk_logfile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1454
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1455
    .local v2, "fileContents":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/Scanner;

    invoke-direct {v6, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 1456
    .local v6, "scanner":Ljava/util/Scanner;
    const-string v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1457
    .local v3, "lineSeparator":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1458
    invoke-virtual {v6}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    .line 1459
    .local v5, "scannedLine":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1463
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileContents":Ljava/lang/StringBuilder;
    .end local v3    # "lineSeparator":Ljava/lang/String;
    .end local v5    # "scannedLine":Ljava/lang/String;
    .end local v6    # "scanner":Ljava/util/Scanner;
    .end local v7    # "sk_logfile":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1464
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in method:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1467
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string v11, "Returning SEAMS Log."

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v8

    .line 1468
    goto :goto_0

    .line 1461
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileContents":Ljava/lang/StringBuilder;
    .restart local v3    # "lineSeparator":Ljava/lang/String;
    .restart local v6    # "scanner":Ljava/util/Scanner;
    .restart local v7    # "sk_logfile":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1462
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getSEContainerIDs()[I
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 1867
    const-class v9, Lcom/android/server/SEAMService$16Local;

    invoke-virtual {v9}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1868
    .local v5, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1869
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1872
    .local v6, "pid":I
    sget-object v9, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-direct {p0, v7, v6, v9, v11}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1873
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string v11, "License validation failed"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    :goto_0
    return-object v8

    .line 1876
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1878
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v9, 0x4

    :try_start_0
    iget-object v10, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    .line 1879
    .local v4, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v4, :cond_3

    .line 1880
    invoke-virtual {v4}, Lcom/android/server/SEAMSContainer;->getSEContainerIDs()Ljava/util/HashSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 1882
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .local v1, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_1
    :try_start_1
    const-string v9, "SEAMS"

    invoke-virtual {p0, v6, v7, v9, v5}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1883
    .local v2, "containerType":I
    if-lez v2, :cond_2

    .line 1884
    iget-object v9, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    .line 1885
    if-eqz v4, :cond_2

    .line 1886
    invoke-virtual {v4}, Lcom/android/server/SEAMSContainer;->getActivationStatus()I

    move-result v9

    if-ne v9, v11, :cond_2

    .line 1887
    if-nez v1, :cond_1

    .line 1888
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1890
    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_2
    const/16 v9, 0x66

    :try_start_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1894
    :goto_3
    invoke-static {v0}, Lcom/android/server/SEAMService;->hashset_to_int_array(Ljava/util/HashSet;)[I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    goto :goto_0

    .line 1895
    .end local v2    # "containerType":I
    .end local v4    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :catch_0
    move-exception v3

    .line 1896
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string v11, "Exception in getSEContainerIDs:"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1895
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v4    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_4

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "containerType":I
    :cond_1
    move-object v0, v1

    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_2

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_2
    move-object v0, v1

    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_3

    .end local v2    # "containerType":I
    :cond_3
    move-object v1, v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_1
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 1505
    const-class v7, Lcom/android/server/SEAMService$10Local;

    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1506
    .local v3, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1507
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1509
    .local v4, "pid":I
    sget-object v7, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-direct {p0, v5, v4, v7, v9}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1510
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    :cond_0
    :goto_0
    return-object v6

    .line 1515
    :cond_1
    if-eq p2, v9, :cond_2

    const/4 v7, 0x2

    if-ne p2, v7, :cond_3

    .line 1516
    :cond_2
    :try_start_0
    const-string v7, "SEAMS"

    invoke-virtual {p0, v4, v5, v7, v3}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1517
    .local v0, "containerType":I
    if-lez v0, :cond_0

    .line 1518
    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1519
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_0

    .line 1520
    invoke-virtual {v2, p1, p2}, Lcom/android/server/SEAMSContainer;->getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I

    move-result-object v6

    goto :goto_0

    .line 1524
    .end local v0    # "containerType":I
    .end local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :cond_3
    const/4 v7, 0x4

    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1525
    .restart local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_0

    .line 1526
    invoke-virtual {v2, p1, p2}, Lcom/android/server/SEAMSContainer;->getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 1529
    .end local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :catch_0
    move-exception v1

    .line 1530
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in method:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSELinuxMode(Landroid/app/enterprise/ContextInfo;)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2005
    const-class v2, Lcom/android/server/SEAMService$17Local;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2008
    .local v1, "method":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 2009
    const/4 v2, 0x1

    .line 2014
    :goto_0
    return v2

    .line 2010
    :catch_0
    move-exception v0

    .line 2011
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in method:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2014
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSEPolicyAutoUpdate(Landroid/app/enterprise/ContextInfo;)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    .line 1553
    const/4 v2, -0x1

    .line 1558
    .local v2, "ret":I
    const-class v3, Lcom/android/server/SEAMService$11Local;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1559
    .local v1, "method":Ljava/lang/String;
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Entered"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In method: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Entered"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    sget-object v3, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v3, v3, v7

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1563
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": License validation failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const/4 v3, -0x2

    .line 1573
    :goto_0
    return v3

    .line 1567
    :cond_0
    :try_start_0
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value of contentResolver is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    iget-object v3, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "security_update_db"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 1573
    goto :goto_0

    .line 1569
    :catch_0
    move-exception v0

    .line 1570
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in method:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1571
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getSEPolicyAutoUpdateAllowed(Landroid/app/enterprise/ContextInfo;)I
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1594
    const/4 v0, 0x1

    .line 1615
    .local v0, "ret":I
    return v0
.end method

.method public getSepolicyVersion(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2028
    const-class v3, Lcom/android/server/SEAMService$18Local;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2031
    .local v1, "method":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2033
    .local v2, "sepolicyVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/Revision;->get_sepolicy_version()Ljava/lang/String;

    move-result-object v2

    .line 2034
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "getSepolicyVersion_end"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 2038
    :goto_0
    return-object v3

    .line 2036
    :catch_0
    move-exception v0

    .line 2037
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in method:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getSignatureFromCertificate([B)Ljava/lang/String;
    .locals 11
    .param p1, "certificate"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 2062
    const-class v7, Lcom/android/server/SEAMService$19Local;

    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2065
    .local v1, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2066
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2068
    .local v2, "pid":I
    sget-object v7, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5, v2, v7, v8}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2069
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": License validation failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    :goto_0
    return-object v6

    .line 2074
    :cond_0
    :try_start_0
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Read: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 2076
    .local v4, "signatureString":Ljava/lang/String;
    const-string v7, "-----BEGIN CERTIFICATE-----"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-----END CERTIFICATE-----"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2080
    const/4 v7, 0x0

    invoke-static {v4, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 2082
    .local v3, "signatureBytes":[B
    invoke-direct {p0, v3}, Lcom/android/server/SEAMService;->encodeBase16([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 2083
    .end local v3    # "signatureBytes":[B
    .end local v4    # "signatureString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2084
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "Exception in byte array operations when getting signature."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSignatureFromPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2109
    const-class v10, Lcom/android/server/SEAMService$20Local;

    invoke-virtual {v10}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2111
    .local v2, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2112
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2114
    .local v4, "pid":I
    sget-object v10, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    invoke-direct {p0, v8, v4, v10, v11}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2115
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": License validation failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    const/4 v6, 0x0

    .line 2146
    :goto_0
    return-object v6

    .line 2118
    :cond_0
    if-nez p1, :cond_1

    .line 2119
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string v12, "getSignatureFromPackage: packageName is null"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    const/4 v6, 0x0

    goto :goto_0

    .line 2122
    :cond_1
    const/4 v9, 0x0

    .line 2123
    .local v9, "valid":I
    iget-object v10, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2124
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 2126
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_2

    .line 2127
    const/16 v10, 0x40

    :try_start_0
    invoke-virtual {v5, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 2130
    if-eqz v3, :cond_2

    .line 2131
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2132
    .local v7, "s":[Landroid/content/pm/Signature;
    const/4 v6, 0x0

    .line 2133
    .local v6, "returnSignature":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v10, v7

    if-ge v1, v10, :cond_2

    .line 2134
    aget-object v10, v7, v1

    invoke-virtual {v10}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 2135
    aget-object v10, v7, v1

    invoke-virtual {v10}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    .line 2136
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Returning signature at position: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2142
    .end local v1    # "i":I
    .end local v6    # "returnSignature":Ljava/lang/String;
    .end local v7    # "s":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v0

    .line 2143
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in method:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2146
    .end local v0    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 2133
    .restart local v1    # "i":I
    .restart local v6    # "returnSignature":Ljava/lang/String;
    .restart local v7    # "s":[Landroid/content/pm/Signature;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public hasKnoxContainers()I
    .locals 7

    .prologue
    .line 2174
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "hasKnoxContainers - begin"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    const/4 v3, 0x0

    .line 2176
    .local v3, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2179
    .local v1, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/SEAMService;->mPersona:Landroid/os/PersonaManager;

    if-nez v4, :cond_0

    .line 2180
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "hasKnoxContainers - get mPersona"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    iget-object v4, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const-string v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    iput-object v4, p0, Lcom/android/server/SEAMService;->mPersona:Landroid/os/PersonaManager;

    .line 2182
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "hasKnoxContainers - got mPersona"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    :cond_0
    iget-object v4, p0, Lcom/android/server/SEAMService;->mPersona:Landroid/os/PersonaManager;

    if-eqz v4, :cond_1

    .line 2185
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "hasKnoxContainers - mPersona not null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    iget-object v4, p0, Lcom/android/server/SEAMService;->mPersona:Landroid/os/PersonaManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/SEAMService;->mPersona:Landroid/os/PersonaManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2187
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "hasKnoxContainers - KNOX2.0 exists"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    const/4 v3, 0x1

    .line 2191
    :cond_1
    sget-object v4, Lcom/android/server/SEAMService;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    if-nez v4, :cond_2

    .line 2192
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "hasKnoxContainers - get mContainerService"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    const-string v4, "container_service"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v4

    sput-object v4, Lcom/android/server/SEAMService;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    .line 2194
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "hasKnoxContainers - got mContainerService"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    :cond_2
    sget-object v4, Lcom/android/server/SEAMService;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    if-eqz v4, :cond_3

    .line 2197
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "hasKnoxContainers - mContainerService not null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    sget-object v4, Lcom/android/server/SEAMService;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v4}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainers()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/SEAMService;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v4}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2199
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "hasKnoxContainers - KNOX1.0 exists"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    const/4 v3, 0x1

    .line 2204
    :cond_3
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "hasKnoxContainers - end"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2210
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2211
    return v3

    .line 2206
    :catch_0
    move-exception v0

    .line 2207
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "hasKnoxContainers - Exception"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public hasSEContainers()I
    .locals 6

    .prologue
    .line 2239
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "hasSEContainers - begin"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    const/4 v1, 0x0

    .line 2242
    .local v1, "result":I
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->hasGenericContainers()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2243
    const/4 v1, 0x1

    .line 2245
    :cond_0
    const/4 v2, 0x0

    .line 2246
    .local v2, "val":Ljava/lang/String;
    const-string v3, "persist.security.good.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2247
    if-eqz v2, :cond_1

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 2248
    const/4 v1, 0x1

    .line 2254
    .end local v2    # "val":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "hasSEContainers - end"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    return v1

    .line 2250
    :catch_0
    move-exception v0

    .line 2251
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "hasSEContainers - Exception"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "service"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2312
    sget-boolean v2, Lcom/android/server/SEAMService;->bootCompleted:Z

    if-nez v2, :cond_0

    sget v2, Lcom/android/server/SEAMService;->SELF_PID:I

    if-ne v2, p1, :cond_0

    .line 2324
    :goto_0
    return v0

    .line 2316
    :cond_0
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    move-result-object v1

    .line 2317
    .local v1, "sk":Lcom/android/server/ServiceKeeper;
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Lcom/android/server/SEAMService;->SELF_PID:I

    if-ne v2, p1, :cond_1

    .line 2318
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "Returning 0 directly as tables are not ready in SK."

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2321
    :cond_1
    iget-object v2, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2324
    .local v0, "result":I
    goto :goto_0
.end method

.method public loadContainerSetting(Ljava/lang/String;)I
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2357
    const-class v5, Lcom/android/server/SEAMService$21Local;

    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2358
    .local v2, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2359
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2361
    .local v3, "pid":I
    sget-object v5, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-direct {p0, v4, v3, v5, v7}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2362
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": License validation failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    const/4 v5, -0x2

    .line 2375
    :goto_0
    return v5

    .line 2368
    :cond_0
    const/4 v5, 0x1

    :try_start_0
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v1

    .line 2369
    .local v1, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v1, :cond_1

    .line 2370
    const/4 v5, 0x0

    invoke-virtual {v1, p1, v5}, Lcom/android/server/SEAMSContainer;->loadContainerSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 2371
    .end local v1    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :catch_0
    move-exception v0

    .line 2372
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in method:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2375
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v5, -0x1

    goto :goto_0
.end method

.method public relabelAppDir(Ljava/lang/String;)I
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2402
    const-class v12, Lcom/android/server/SEAMService$22Local;

    invoke-virtual {v12}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2404
    .local v8, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2405
    .local v11, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 2408
    .local v10, "pid":I
    sget-object v12, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v12, v13}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_0

    .line 2409
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": License validation failed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    const/4 v12, -0x2

    .line 2450
    :goto_0
    return v12

    .line 2413
    :cond_0
    const/4 v3, 0x0

    .line 2414
    .local v3, "domain":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2416
    .local v5, "hasApp":Z
    if-nez p1, :cond_1

    .line 2417
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    const-string v14, "packageName is null"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    const/4 v12, 0x0

    goto :goto_0

    .line 2421
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 2422
    .local v2, "currentUid":I
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "callingUid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/SEAMService;->isPersona(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2425
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    const-string v14, "Skip relabeling apps in persona"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    const/4 v12, 0x0

    goto :goto_0

    .line 2430
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 2431
    .local v7, "mPM":Landroid/content/pm/IPackageManager;
    const/16 v12, 0x80

    invoke-interface {v7, v12, v2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v9

    .line 2433
    .local v9, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 2434
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    const-string v12, "/data/system"

    iget-object v13, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 2436
    iget-object v12, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2437
    const/4 v5, 0x1

    .line 2438
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/SEAMService;->relabelAppDir(Landroid/content/pm/ApplicationInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_3

    .line 2439
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2443
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "mPM":Landroid/content/pm/IPackageManager;
    .end local v9    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catch_0
    move-exception v4

    .line 2444
    .local v4, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    const-string v14, "relabelAppDir cannot get app list"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2447
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "mPM":Landroid/content/pm/IPackageManager;
    .restart local v9    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_4
    if-eqz v5, :cond_5

    .line 2448
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2450
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public relabelData(Landroid/app/enterprise/ContextInfo;)I
    .locals 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2466
    sget-object v20, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v21, "SEAMService"

    const-string v22, "relabel whole /data"

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    const-class v20, Lcom/android/server/SEAMService$23Local;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    .line 2474
    .local v15, "method":Ljava/lang/String;
    sget-object v20, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_0

    .line 2475
    sget-object v20, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v21, "SEAMService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": License validation failed"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2476
    const/16 v20, -0x2

    .line 2554
    :goto_0
    return v20

    .line 2479
    :cond_0
    const/4 v8, 0x0

    .line 2480
    .local v8, "domain":Ljava/lang/String;
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 2483
    .local v7, "data":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 2484
    .local v6, "currentUid":I
    sget-object v20, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v21, "SEAMService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "callingUid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/SEAMService;->isPersona(I)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 2489
    const/16 v20, 0x0

    goto :goto_0

    .line 2493
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SEAMService;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 2494
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v12

    .line 2496
    .local v12, "ident":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v22, "user"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/UserManager;

    invoke-virtual/range {v20 .. v20}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v19

    .line 2499
    .local v19, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2501
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2506
    if-nez v6, :cond_2

    .line 2507
    const-string v20, "RESTORECONALL"

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2511
    :cond_2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/UserInfo;

    .line 2512
    .local v18, "ui":Landroid/content/pm/UserInfo;
    if-eqz v18, :cond_3

    .line 2516
    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/SEAMService;->isPersona(I)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 2517
    sget-object v20, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v21, "SEAMService"

    const-string v22, "Skip relabeling apps in persona"

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2499
    .end local v18    # "ui":Landroid/content/pm/UserInfo;
    .end local v19    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v20

    :try_start_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20

    .line 2501
    .end local v12    # "ident":J
    :catchall_1
    move-exception v20

    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v20

    .line 2522
    .restart local v12    # "ident":J
    .restart local v18    # "ui":Landroid/content/pm/UserInfo;
    .restart local v19    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    .line 2523
    .local v14, "mPM":Landroid/content/pm/IPackageManager;
    const/16 v20, 0x80

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v17

    .line 2526
    .local v17, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 2527
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    const-string v20, "/data/system"

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 2529
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v22, v0

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/SEAMService;->constructLabelEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 2531
    .local v16, "msg":Ljava/lang/String;
    if-eqz v16, :cond_5

    .line 2532
    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 2536
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "mPM":Landroid/content/pm/IPackageManager;
    .end local v16    # "msg":Ljava/lang/String;
    .end local v17    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catch_0
    move-exception v9

    .line 2537
    .local v9, "e":Ljava/lang/Exception;
    sget-object v20, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v21, "SEAMService"

    const-string v22, "Cannot get app list"

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2542
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v18    # "ui":Landroid/content/pm/UserInfo;
    :cond_6
    const-string v20, "LABELDONE"

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2546
    const/16 v20, 0x2

    :try_start_5
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v7}, Lcom/android/server/SEAMService;->relabelDataLocked(ILjava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v20

    if-eqz v20, :cond_7

    .line 2547
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 2549
    :catch_1
    move-exception v9

    .line 2550
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v20, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v21, "SEAMService"

    const-string v22, "Cannot relabel /data"

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 2554
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 2598
    const-class v13, Lcom/android/server/SEAMService$24Local;

    invoke-virtual {v13}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    .line 2599
    .local v9, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 2600
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 2601
    .local v10, "pid":I
    const-wide/16 v6, 0x0

    .line 2604
    .local v6, "ident":J
    sget-object v13, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v13, v14}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_0

    .line 2605
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": License validation failed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    const/4 v11, -0x2

    .line 2646
    :goto_0
    return v11

    .line 2619
    :cond_0
    const/4 v8, 0x0

    .line 2622
    .local v8, "instanceCon":Lcom/android/server/SEAMSContainer;
    const/4 v11, 0x0

    .line 2623
    .local v11, "ret":I
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 2624
    const-string v13, "SEAMS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13, v9}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2625
    .local v4, "containerType":I
    if-gez v4, :cond_1

    .line 2626
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unauthorized call to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " for package name ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    const/4 v11, -0x2

    goto :goto_0

    .line 2630
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v4, v13}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 2631
    if-eqz v8, :cond_3

    .line 2632
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    .line 2633
    goto :goto_0

    .line 2636
    .end local v4    # "containerType":I
    :cond_2
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 2637
    if-eqz v8, :cond_3

    .line 2638
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 2639
    goto :goto_0

    .line 2642
    :catch_0
    move-exception v5

    .line 2643
    .local v5, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in method:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2644
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 2646
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v11, -0x1

    goto/16 :goto_0
.end method

.method public removeSEContainer(I)I
    .locals 7
    .param p1, "containerID"    # I

    .prologue
    .line 1136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1137
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1140
    .local v2, "pid":I
    sget-object v4, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1141
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "activateDomain: License validation failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const/4 v4, -0x2

    .line 1154
    :goto_0
    return v4

    .line 1146
    :cond_0
    const/4 v4, 0x4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v1

    .line 1147
    .local v1, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v1, :cond_1

    .line 1148
    invoke-virtual {v1, v3, v2, p1}, Lcom/android/server/SEAMSContainer;->removeSEContainer(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 1150
    .end local v1    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :catch_0
    move-exception v0

    .line 1151
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "Exception in removeSEContainer:"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1154
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public revokeSELinuxPolicy(Landroid/app/enterprise/ContextInfo;)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v5, 0x1

    .line 2716
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "revokeSELinuxPolicy entered."

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2717
    const/4 v1, -0x1

    .line 2721
    .local v1, "ret":I
    const-class v2, Lcom/android/server/SEAMService$25Local;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2725
    .local v0, "method":Ljava/lang/String;
    sget-object v2, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-direct {p0, p1, v2, v5}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2726
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": License validation failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2727
    const/4 v2, -0x2

    .line 2734
    :goto_0
    return v2

    .line 2730
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SEAMService;->removePolicyFiles()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2731
    const/4 v1, 0x0

    .line 2732
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/SEAMService;->broadcastStateChanged(I)V

    :cond_1
    move v2, v1

    .line 2734
    goto :goto_0
.end method

.method public setAMSLogLevel(Landroid/app/enterprise/ContextInfo;I)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "FLAG"    # I

    .prologue
    const/4 v2, -0x1

    .line 2888
    :try_start_0
    const-class v3, Lcom/android/server/SEAMService$27Local;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2892
    .local v1, "method":Ljava/lang/String;
    sget-object v3, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2893
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": License validation failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2894
    const/4 v2, -0x2

    .line 2909
    .end local v1    # "method":Ljava/lang/String;
    :goto_0
    return v2

    .line 2897
    .restart local v1    # "method":Ljava/lang/String;
    :cond_0
    if-ltz p2, :cond_1

    const/4 v3, 0x2

    if-le p2, v3, :cond_2

    .line 2898
    :cond_1
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "Flag with a wrong value"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2908
    .end local v1    # "method":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2909
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 2904
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "method":Ljava/lang/String;
    :cond_2
    const-string v3, "persist.security.ams.verbose"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2907
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAllPolicyConfig(Landroid/app/enterprise/ContextInfo;[BZ)I
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "policyZip"    # [B
    .param p3, "reloadPolicy"    # Z

    .prologue
    .line 2761
    const/4 v10, -0x1

    .line 2762
    .local v10, "ret":I
    const/4 v11, 0x0

    .line 2763
    .local v11, "updatesMade":Z
    const/4 v7, 0x0

    .line 2765
    .local v7, "errorsOccurred":Z
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v14, v0

    if-nez v14, :cond_1

    .line 2766
    :cond_0
    const/4 v14, -0x1

    .line 2866
    :goto_0
    return v14

    .line 2769
    :cond_1
    const-class v14, Lcom/android/server/SEAMService$26Local;

    invoke-virtual {v14}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    .line 2772
    .local v9, "method":Ljava/lang/String;
    sget-object v14, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_2

    .line 2773
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": License validation failed"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2774
    const/4 v14, -0x2

    goto :goto_0

    .line 2778
    :cond_2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2779
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v13, Ljava/util/zip/ZipInputStream;

    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-direct {v14, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v13, v14}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2783
    .local v13, "zis":Ljava/util/zip/ZipInputStream;
    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v12

    .local v12, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v12, :cond_6

    if-nez v7, :cond_6

    .line 2784
    const/4 v10, -0x4

    .line 2785
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2786
    .local v8, "filename":Ljava/lang/String;
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": extracting file named: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2788
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2789
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v14, 0x400

    new-array v4, v14, [B

    .line 2791
    .local v4, "buffer":[B
    :cond_4
    :goto_2
    invoke-virtual {v13, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    .local v5, "count":I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_5

    if-nez v7, :cond_5

    .line 2792
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2793
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    sget v15, Lcom/android/server/SEAMService;->MAX_BYTE_ARRAY_SIZE:I

    if-le v14, v15, :cond_4

    .line 2794
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " too large to expand into java vm heap."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    const/4 v7, 0x1

    goto :goto_2

    .line 2799
    :cond_5
    if-eqz v7, :cond_7

    .line 2832
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "count":I
    .end local v8    # "filename":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 2833
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->close()V

    .line 2847
    .end local v12    # "ze":Ljava/util/zip/ZipEntry;
    :goto_3
    if-eqz v7, :cond_e

    .line 2848
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 2801
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v5    # "count":I
    .restart local v8    # "filename":Ljava/lang/String;
    .restart local v12    # "ze":Ljava/util/zip/ZipEntry;
    :cond_7
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " bytes read from "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    const-string v14, "file_contexts"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 2806
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/SEAMService;->setFileContexts(Landroid/app/enterprise/ContextInfo;[BZ)I

    move-result v10

    .line 2823
    :goto_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2824
    if-nez v10, :cond_d

    .line 2825
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 2807
    :cond_8
    const-string v14, "property_contexts"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 2808
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/SEAMService;->setPropertyContexts(Landroid/app/enterprise/ContextInfo;[BZ)I

    move-result v10

    goto :goto_4

    .line 2809
    :cond_9
    const-string v14, "sepolicy"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 2810
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/SEAMService;->setSELinuxPolicy(Landroid/app/enterprise/ContextInfo;[BZ)I

    move-result v10

    goto :goto_4

    .line 2811
    :cond_a
    const-string v14, "seapp_contexts"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 2812
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/SEAMService;->setSEAppContexts(Landroid/app/enterprise/ContextInfo;[BZ)I

    move-result v10

    goto :goto_4

    .line 2813
    :cond_b
    const-string v14, "mac_permissions.xml"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 2817
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/SEAMService;->setMacPermission(Landroid/app/enterprise/ContextInfo;[BZ)I

    move-result v10

    goto :goto_4

    .line 2820
    :cond_c
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " <- doesn\'t match known policy file names."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_4

    .line 2835
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "count":I
    .end local v8    # "filename":Ljava/lang/String;
    .end local v12    # "ze":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v6

    .line 2836
    .local v6, "e":Ljava/io/IOException;
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": IO Error reading policy zip file."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2837
    const/4 v7, 0x1

    .line 2844
    goto/16 :goto_3

    .line 2826
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v5    # "count":I
    .restart local v8    # "filename":Ljava/lang/String;
    .restart local v12    # "ze":Ljava/util/zip/ZipEntry;
    :cond_d
    const/4 v14, -0x4

    if-eq v10, v14, :cond_3

    .line 2827
    const/4 v7, 0x1

    .line 2828
    :try_start_1
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": An error occurred when attempting to write individual policy files to device."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 2838
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "count":I
    .end local v8    # "filename":Ljava/lang/String;
    .end local v12    # "ze":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v6

    .line 2839
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": Out of memory exception processing policy zip."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2840
    const/4 v7, 0x1

    .line 2844
    goto/16 :goto_3

    .line 2841
    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v6

    .line 2842
    .local v6, "e":Ljava/lang/Exception;
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " when processing policy zip."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2843
    const/4 v7, 0x1

    goto/16 :goto_3

    .line 2849
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_e
    if-nez v11, :cond_f

    .line 2850
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": No policy updates were made, no policy files were found."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2851
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 2852
    :cond_f
    if-nez p3, :cond_10

    .line 2853
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": All policy update actions completed, no policy reload requested."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2854
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2857
    :cond_10
    :try_start_2
    sget-object v14, Lcom/android/server/SEAMService;->MAC_POLICY_FILE:Ljava/io/File;

    invoke-static {v14}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy(Ljava/io/File;)Z

    .line 2858
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": mac policy file reloaded."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 2864
    const-string v14, "selinux.reload_policy"

    const-string v15, "1"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2865
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": All policy update actions completed, and policy reloaded."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2859
    :catch_3
    move-exception v6

    .line 2860
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": Reloading file:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/android/server/SEAMService;->MAC_POLICY_FILE:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " failed"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 2862
    const/4 v14, -0x1

    goto/16 :goto_0
.end method

.method public setFileContexts(Landroid/app/enterprise/ContextInfo;[BZ)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "fileContexts"    # [B
    .param p3, "reloadPolicy"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2979
    const/4 v2, -0x1

    .line 2983
    .local v2, "ret":I
    const-class v3, Lcom/android/server/SEAMService$28Local;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2987
    .local v1, "method":Ljava/lang/String;
    sget-object v3, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2988
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": License validation failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    const/4 v3, -0x2

    .line 3004
    :goto_0
    return v3

    .line 2992
    :cond_0
    :try_start_0
    const-string v3, "file_contexts"

    invoke-direct {p0, v3, p2}, Lcom/android/server/SEAMService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2993
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "setFileContexts: files copied succesfully"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    if-eqz p3, :cond_1

    .line 2995
    const-string v3, "selinux.reload_policy"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2996
    :cond_1
    invoke-direct {p0}, Lcom/android/server/SEAMService;->searchAgent()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/SEAMService;->broadcastStateChanged(I)V

    .line 2997
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    .line 3004
    goto :goto_0

    .line 2999
    :cond_2
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "setFileContexts: files copied unsuccesfully"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3001
    :catch_0
    move-exception v0

    .line 3002
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in method:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setMDMOwnPolicyStatus(Landroid/app/enterprise/ContextInfo;)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v3, 0x1

    .line 3073
    const-class v2, Lcom/android/server/SEAMService$30Local;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3077
    .local v1, "method":Ljava/lang/String;
    sget-object v2, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3078
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": License validation failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    const/4 v2, -0x2

    .line 3089
    :goto_0
    return v2

    .line 3083
    :cond_0
    :try_start_0
    const-string v2, "persist.security.mdm.policy"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3085
    const/4 v2, 0x0

    goto :goto_0

    .line 3086
    :catch_0
    move-exception v0

    .line 3087
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in method:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setMacPermission(Landroid/app/enterprise/ContextInfo;[BZ)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "macPerm"    # [B
    .param p3, "reloadPolicy"    # Z

    .prologue
    const/4 v4, 0x1

    .line 3025
    const/4 v2, -0x1

    .line 3029
    .local v2, "ret":I
    const-class v3, Lcom/android/server/SEAMService$29Local;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3033
    .local v1, "method":Ljava/lang/String;
    sget-object v3, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3034
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": License validation failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    const/4 v3, -0x2

    .line 3054
    :goto_0
    return v3

    .line 3038
    :cond_0
    :try_start_0
    const-string v3, "mac_permissions.xml"

    invoke-direct {p0, v3, p2}, Lcom/android/server/SEAMService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3039
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "setMacPermission: file copied successfully"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3040
    if-eqz p3, :cond_1

    .line 3041
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy()Z

    .line 3042
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "setMacPermission: mac policy file reloaded."

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    :cond_1
    invoke-direct {p0}, Lcom/android/server/SEAMService;->searchAgent()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/SEAMService;->broadcastStateChanged(I)V

    .line 3045
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    .line 3054
    goto :goto_0

    .line 3047
    :cond_2
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "setMacPermission: files copied unsuccesfully"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3048
    const/4 v2, -0x1

    goto :goto_1

    .line 3050
    :catch_0
    move-exception v0

    .line 3051
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in method:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3052
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setPolicyChunkHandler(Landroid/app/enterprise/ContextInfo;[BLjava/lang/String;IZZIZ)I
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "largeTransferWindow"    # [B
    .param p3, "hashString"    # Ljava/lang/String;
    .param p4, "size"    # I
    .param p5, "isFirst"    # Z
    .param p6, "isLast"    # Z
    .param p7, "limit"    # I
    .param p8, "reloadPolicy"    # Z

    .prologue
    .line 3096
    if-eqz p5, :cond_4

    .line 3098
    :try_start_0
    sget-object v7, Lcom/android/server/SEAMService;->policyDataBytes:[B

    if-nez v7, :cond_0

    sget v7, Lcom/android/server/SEAMService;->policyFileSize:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    sget-object v7, Lcom/android/server/SEAMService;->policyHash:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 3099
    :cond_0
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "Received illegal first marked block of policy bytes."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3101
    sget-object v7, Lcom/android/server/SEAMService;->policyDataBytes:[B

    if-eqz v7, :cond_1

    .line 3102
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Array Length:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/SEAMService;->policyDataBytes:[B

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Policy File Size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/SEAMService;->policyFileSize:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " policyHash:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/SEAMService;->policyHash:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    :goto_0
    const/4 v5, -0x1

    .line 3175
    :goto_1
    return v5

    .line 3104
    :cond_1
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Policy File Size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/SEAMService;->policyFileSize:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " policyHash:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/SEAMService;->policyHash:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3170
    :catch_0
    move-exception v1

    .line 3171
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception at SHA-256 algorithm."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3175
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_2
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 3111
    :cond_3
    :try_start_1
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "Legal first. Setting up."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    sput p4, Lcom/android/server/SEAMService;->policyFileSize:I

    .line 3113
    sget v7, Lcom/android/server/SEAMService;->policyFileSize:I

    new-array v7, v7, [B

    sput-object v7, Lcom/android/server/SEAMService;->policyDataBytes:[B

    .line 3114
    const/4 v7, 0x0

    sput v7, Lcom/android/server/SEAMService;->policyDataBytesPosition:I

    .line 3115
    sput-object p3, Lcom/android/server/SEAMService;->policyHash:Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 3172
    :catch_1
    move-exception v1

    .line 3173
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3117
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    if-eqz p6, :cond_b

    .line 3118
    :try_start_2
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "Received Last."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3120
    sget-object v7, Lcom/android/server/SEAMService;->policyHash:Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3121
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "Legal last block."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3122
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3123
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v7, p2

    if-ge v2, v7, :cond_5

    .line 3127
    sget-object v7, Lcom/android/server/SEAMService;->policyDataBytes:[B

    sget v8, Lcom/android/server/SEAMService;->policyDataBytesPosition:I

    add-int/lit8 v9, v8, 0x1

    sput v9, Lcom/android/server/SEAMService;->policyDataBytesPosition:I

    aget-byte v9, p2, v2

    aput-byte v9, v7, v8

    .line 3128
    sget v7, Lcom/android/server/SEAMService;->policyDataBytesPosition:I

    add-int/lit8 v8, p7, 0x1

    if-ne v7, v8, :cond_6

    .line 3129
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "End reached."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3134
    :cond_5
    const-string v7, "SHA-256"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 3135
    .local v3, "md":Ljava/security/MessageDigest;
    sget-object v7, Lcom/android/server/SEAMService;->policyDataBytes:[B

    invoke-virtual {v3, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 3136
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 3137
    .local v4, "mdbytes":[B
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 3138
    .local v6, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    :goto_4
    array-length v7, v4

    if-ge v2, v7, :cond_7

    .line 3139
    aget-byte v7, v4, v2

    and-int/lit16 v7, v7, 0xff

    add-int/lit16 v7, v7, 0x100

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3138
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3123
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "mdbytes":[B
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3141
    .restart local v3    # "md":Ljava/security/MessageDigest;
    .restart local v4    # "mdbytes":[B
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Generated hash for full file as: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3142
    sget-object v7, Lcom/android/server/SEAMService;->policyHash:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Lcom/android/server/SEAMService;->policyDataBytes:[B

    array-length v7, v7

    if-eq v7, p4, :cond_9

    .line 3143
    :cond_8
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Hashes of original file and transmitted files dont match."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/SEAMService;->policyHash:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3144
    invoke-direct {p0}, Lcom/android/server/SEAMService;->resetPolicyAssets()V

    .line 3145
    const/4 v5, -0x1

    goto/16 :goto_1

    .line 3147
    :cond_9
    sget-object v7, Lcom/android/server/SEAMService;->policyDataBytes:[B

    move/from16 v0, p8

    invoke-virtual {p0, p1, v7, v0}, Lcom/android/server/SEAMService;->setAllPolicyConfig(Landroid/app/enterprise/ContextInfo;[BZ)I

    move-result v5

    .line 3148
    .local v5, "ret":I
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "End file transmission. Resetting values."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    invoke-direct {p0}, Lcom/android/server/SEAMService;->resetPolicyAssets()V

    goto/16 :goto_1

    .line 3153
    .end local v2    # "i":I
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "mdbytes":[B
    .end local v5    # "ret":I
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_a
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "Hash of Block does not match session Hash."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3154
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "End file transmission. Resetting values."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3155
    invoke-direct {p0}, Lcom/android/server/SEAMService;->resetPolicyAssets()V

    .line 3156
    const/4 v5, -0x1

    goto/16 :goto_1

    .line 3159
    :cond_b
    sget-object v7, Lcom/android/server/SEAMService;->policyHash:Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 3160
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "Legal block."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    array-length v7, p2

    if-ge v2, v7, :cond_2

    .line 3162
    sget-object v7, Lcom/android/server/SEAMService;->policyDataBytes:[B

    sget v8, Lcom/android/server/SEAMService;->policyDataBytesPosition:I

    add-int/lit8 v9, v8, 0x1

    sput v9, Lcom/android/server/SEAMService;->policyDataBytesPosition:I

    aget-byte v9, p2, v2

    aput-byte v9, v7, v8

    .line 3161
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3165
    .end local v2    # "i":I
    :cond_c
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "Hash of Block does not match session Hash."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3166
    invoke-direct {p0}, Lcom/android/server/SEAMService;->resetPolicyAssets()V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3167
    const/4 v5, -0x1

    goto/16 :goto_1
.end method

.method public setPolicySetting(Landroid/app/enterprise/ContextInfo;IZ)I
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "property"    # I
    .param p3, "value"    # Z

    .prologue
    .line 3198
    const-class v13, Lcom/android/server/SEAMService$31Local;

    invoke-virtual {v13}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 3202
    .local v8, "method":Ljava/lang/String;
    sget-object v13, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_0

    .line 3203
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": License validation failed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3204
    const/4 v10, -0x2

    .line 3293
    :goto_0
    return v10

    .line 3207
    :cond_0
    const/4 v10, 0x1

    .line 3208
    .local v10, "ret":I
    if-eqz p3, :cond_6

    const/4 v12, 0x1

    .line 3209
    .local v12, "valueAsInteger":I
    :goto_1
    move/from16 v0, p2

    and-int/lit16 v9, v0, 0x7c0

    .line 3210
    .local v9, "result":I
    sget-object v14, Lcom/android/server/SEAMService;->mSetPolicy:Ljava/lang/Object;

    monitor-enter v14

    .line 3211
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v4

    .line 3214
    .local v4, "ident":J
    and-int/lit16 v13, v9, 0x80

    if-eqz v13, :cond_1

    .line 3215
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "send_security_reports"

    invoke-static {v13, v15, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3217
    if-eqz p3, :cond_1

    .line 3218
    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.android.setting.intent.send_security_report_checked"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3220
    .local v6, "intent":Landroid/content/Intent;
    const-string v13, "IS_SEND_SECURITY_REPORT"

    move/from16 v0, p3

    invoke-virtual {v6, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "send_security_reports"

    invoke-static {v13, v15, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 3225
    .local v11, "tempValue":I
    if-nez v11, :cond_1

    .line 3226
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    const-string v16, "ERROR setting SET_SEND_SECURITY_REPORT"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3227
    and-int/lit16 v9, v9, -0x81

    .line 3228
    const/4 v10, 0x0

    .line 3233
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v11    # "tempValue":I
    :cond_1
    and-int/lit8 v13, v9, 0x40

    if-eqz v13, :cond_2

    .line 3234
    const-string v13, "enterprise_policy"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 3238
    .local v7, "mService":Landroid/app/enterprise/IEnterpriseDeviceManager;
    if-eqz v7, :cond_7

    .line 3239
    :try_start_2
    move/from16 v0, p3

    invoke-interface {v7, v0}, Landroid/app/enterprise/IEnterpriseDeviceManager;->setB2BMode(Z)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3252
    .end local v7    # "mService":Landroid/app/enterprise/IEnterpriseDeviceManager;
    :cond_2
    :goto_2
    and-int/lit16 v13, v9, 0x200

    if-eqz v13, :cond_3

    .line 3255
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v15, "use_wifi_only_db"

    invoke-static {v13, v15, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 3258
    .local v2, "callSucceeded":Z
    if-nez v2, :cond_3

    .line 3259
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    const-string v16, "ERROR setting SET_PREFERRED_POLICY_UPDATE_NETWORK"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3261
    and-int/lit16 v9, v9, -0x201

    .line 3262
    const/4 v10, 0x0

    .line 3266
    .end local v2    # "callSucceeded":Z
    :cond_3
    and-int/lit16 v13, v9, 0x100

    if-eqz v13, :cond_4

    .line 3269
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "security_update_db"

    invoke-static {v13, v15, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 3272
    .restart local v2    # "callSucceeded":Z
    if-nez v2, :cond_4

    .line 3273
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    const-string v16, "ERROR setting SET_PREFERRED_POLICY_UPDATE_NETWORK"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    and-int/lit16 v9, v9, -0x101

    .line 3276
    const/4 v10, 0x0

    .line 3280
    .end local v2    # "callSucceeded":Z
    :cond_4
    and-int/lit16 v13, v9, 0x400

    if-eqz v13, :cond_5

    .line 3281
    if-eqz p3, :cond_5

    .line 3282
    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.policydm.intent.action.PULL_RECEIVE"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3284
    .restart local v6    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3288
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_5
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3290
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3291
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Properties to set: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    value to set: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3292
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/android/server/SEAMService;->setMdmPropertiesLocked(II)V

    goto/16 :goto_0

    .line 3208
    .end local v4    # "ident":J
    .end local v9    # "result":I
    .end local v12    # "valueAsInteger":I
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 3241
    .restart local v4    # "ident":J
    .restart local v7    # "mService":Landroid/app/enterprise/IEnterpriseDeviceManager;
    .restart local v9    # "result":I
    .restart local v12    # "valueAsInteger":I
    :cond_7
    :try_start_5
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    const-string v16, "ERROR setting SET_SECURITY_LEVEL"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3242
    and-int/lit8 v9, v9, -0x41

    .line 3243
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 3245
    :catch_0
    move-exception v3

    .line 3246
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMService"

    const-string v16, "ERROR setting SET_SECURITY_LEVEL"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3247
    and-int/lit8 v9, v9, -0x41

    .line 3248
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 3288
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "mService":Landroid/app/enterprise/IEnterpriseDeviceManager;
    :catchall_0
    move-exception v13

    :try_start_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    .line 3290
    .end local v4    # "ident":J
    :catchall_1
    move-exception v13

    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v13
.end method

.method public setPolicySettingEnabledStatus(Landroid/app/enterprise/ContextInfo;IZ)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "property"    # I
    .param p3, "value"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3327
    const-class v5, Lcom/android/server/SEAMService$32Local;

    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3331
    .local v1, "method":Ljava/lang/String;
    sget-object v5, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-direct {p0, p1, v5, v3}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3332
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": License validation failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3333
    const/4 v3, -0x2

    .line 3344
    :goto_0
    return v3

    .line 3337
    :cond_0
    and-int/lit8 v2, p2, 0x3f

    .line 3338
    .local v2, "result":I
    if-eqz p3, :cond_1

    move v5, v3

    :goto_1
    :try_start_0
    invoke-direct {p0, v2, v5}, Lcom/android/server/SEAMService;->setMdmPropertiesLocked(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3340
    :catch_0
    move-exception v0

    .line 3341
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in method:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    .line 3344
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v5, v4

    .line 3338
    goto :goto_1
.end method

.method public setPropertyContexts(Landroid/app/enterprise/ContextInfo;[BZ)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "propertyContexts"    # [B
    .param p3, "reloadPolicy"    # Z

    .prologue
    const/4 v4, 0x1

    .line 3364
    const/4 v2, -0x1

    .line 3368
    .local v2, "ret":I
    const-class v3, Lcom/android/server/SEAMService$33Local;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3372
    .local v1, "method":Ljava/lang/String;
    sget-object v3, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3373
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": License validation failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3374
    const/4 v3, -0x2

    .line 3391
    :goto_0
    return v3

    .line 3378
    :cond_0
    :try_start_0
    const-string v3, "property_contexts"

    invoke-direct {p0, v3, p2}, Lcom/android/server/SEAMService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3380
    if-eqz p3, :cond_1

    .line 3381
    const-string v3, "selinux.reload_policy"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3382
    :cond_1
    invoke-direct {p0}, Lcom/android/server/SEAMService;->searchAgent()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/SEAMService;->broadcastStateChanged(I)V

    .line 3383
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    .line 3391
    goto :goto_0

    .line 3385
    :cond_2
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "setPropertyContexts: files copied unsuccesfully"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3387
    :catch_0
    move-exception v0

    .line 3388
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in method:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3389
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setSEAppContexts(Landroid/app/enterprise/ContextInfo;[BZ)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "seAppContexts"    # [B
    .param p3, "reloadPolicy"    # Z

    .prologue
    const/4 v4, 0x1

    .line 3427
    const/4 v2, -0x1

    .line 3431
    .local v2, "ret":I
    const-class v3, Lcom/android/server/SEAMService$34Local;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3435
    .local v1, "method":Ljava/lang/String;
    sget-object v3, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3436
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": License validation failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3437
    const/4 v3, -0x2

    .line 3453
    :goto_0
    return v3

    .line 3440
    :cond_0
    :try_start_0
    const-string v3, "seapp_contexts"

    invoke-direct {p0, v3, p2}, Lcom/android/server/SEAMService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3442
    if-eqz p3, :cond_1

    .line 3443
    const-string v3, "selinux.reload_policy"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3444
    :cond_1
    invoke-direct {p0}, Lcom/android/server/SEAMService;->searchAgent()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/SEAMService;->broadcastStateChanged(I)V

    .line 3445
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    .line 3453
    goto :goto_0

    .line 3447
    :cond_2
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "setSEAppContexts: files copied unsuccesfully"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3449
    :catch_0
    move-exception v0

    .line 3450
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in method:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3451
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setSELinuxPolicy(Landroid/app/enterprise/ContextInfo;[BZ)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "sePolicy"    # [B
    .param p3, "reloadPolicy"    # Z

    .prologue
    const/4 v4, 0x1

    .line 3510
    const/4 v2, -0x1

    .line 3514
    .local v2, "ret":I
    const-class v3, Lcom/android/server/SEAMService$35Local;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3518
    .local v1, "method":Ljava/lang/String;
    sget-object v3, Lcom/android/server/SEAMService;->SEAMS_PERMS:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3519
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": License validation failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3520
    const/4 v3, -0x2

    .line 3536
    :goto_0
    return v3

    .line 3523
    :cond_0
    :try_start_0
    const-string v3, "sepolicy"

    invoke-direct {p0, v3, p2}, Lcom/android/server/SEAMService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3525
    if-eqz p3, :cond_1

    .line 3526
    const-string v3, "selinux.reload_policy"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3527
    :cond_1
    invoke-direct {p0}, Lcom/android/server/SEAMService;->searchAgent()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/SEAMService;->broadcastStateChanged(I)V

    .line 3528
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    .line 3536
    goto :goto_0

    .line 3530
    :cond_2
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "setSELinuxPolicy: files copied unsuccesfully"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3532
    :catch_0
    move-exception v0

    .line 3533
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in method:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3534
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
