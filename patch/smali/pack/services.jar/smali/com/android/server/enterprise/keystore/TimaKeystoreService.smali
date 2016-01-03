.class public Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.super Lcom/sec/enterprise/knox/keystore/ITimaKeystore$Stub;
.source "TimaKeystoreService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final KNOX_KEYSTORE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_KEYSTORE"

.field private static TAG:Ljava/lang/String; = null

.field private static final TIMA_KEYSTORE_PATH:Ljava/lang/String; = "/data/misc/tima_keystore/"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 72
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    .line 77
    const-string v0, "TimaKeystoreService"

    sput-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Lcom/sec/enterprise/knox/keystore/ITimaKeystore$Stub;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    .line 79
    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 81
    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 256
    new-instance v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v1, "TimaKeystoreService Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 92
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->setupIntentFilters()V

    .line 93
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Ljava/io/File;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->removeUserKeyDirectory(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecord(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private deletePackageRecord(ILjava/lang/String;)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 339
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v3, "uid"

    aput-object v3, v0, v4

    const-string v3, "pkgName"

    aput-object v3, v0, v5

    .line 341
    .local v0, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "sUid":Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    aput-object v1, v2, v4

    aput-object p2, v2, v5

    .line 343
    .local v2, "sValues":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "TimaKeystorePolicy"

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method private enforcePermission()V
    .locals 3

    .prologue
    .line 97
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_KEYSTORE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 324
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 325
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    const-string v2, "pkgName"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v2, "enabled"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 329
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 330
    .local v1, "whereValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    const-string v2, "pkgName"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "TimaKeystorePolicy"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    return v2
.end method

.method private removeUserKeyDirectory(Ljava/io/File;)Z
    .locals 6
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 308
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 309
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 310
    .local v2, "files":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 311
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 312
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->removeUserKeyDirectory(Ljava/io/File;)Z

    .line 310
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 317
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v5

    .line 319
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_2
    return v5

    :cond_2
    const/4 v5, 0x1

    goto :goto_2
.end method

.method private setupIntentFilters()V
    .locals 5

    .prologue
    .line 237
    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_0

    .line 238
    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v4, "in setupIntentFilters"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    new-instance v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    .line 240
    .local v1, "receiver":Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 241
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 243
    const-string v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 244
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    .local v2, "removeFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    return-void
.end method


# virtual methods
.method public enableTimaKeystore(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 107
    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_0

    .line 108
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v3, "in enableTimaKeystore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermission()V

    .line 112
    if-eqz p1, :cond_1

    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "caller":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2, v0, p2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 122
    .end local v0    # "caller":Ljava/lang/String;
    :goto_0
    return v2

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v3, "enableTimaKeystore() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTimaKeystoreEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "ret":Z
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_0

    .line 176
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v2, "in isTimaKeystoreEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    .line 179
    const/4 v1, 0x1

    .line 182
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isTimaKeystoreEnabledForPackage(Ljava/lang/String;)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 191
    const/4 v8, 0x0

    .line 192
    .local v8, "ret":Z
    sget-boolean v9, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v9, :cond_0

    .line 193
    sget-object v9, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v10, "in isTimaKeystoreEnabledForPackage"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 198
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v6, p1, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 199
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v9, 0x1

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "enabled"

    aput-object v10, v1, v9

    .line 201
    .local v1, "columns":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "TimaKeystorePolicy"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v1, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 204
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 205
    const/4 v2, 0x0

    .line 206
    .local v2, "cv":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 207
    .local v4, "isEnabled":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 209
    .local v5, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 210
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 211
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string v9, "enabled"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 214
    if-eqz v4, :cond_1

    .line 215
    const/4 v8, 0x1

    .line 221
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "isEnabled":Z
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_2
    if-nez v8, :cond_3

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_3

    .line 222
    const/4 v8, 0x1

    .line 230
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3
    :goto_0
    sget-boolean v9, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v9, :cond_4

    .line 231
    sget-object v9, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isTimaKeystoreEnabledForPackage returning - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_4
    return v8

    .line 224
    :catch_0
    move-exception v3

    .line 225
    .local v3, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isTimaKeystoreEnabledForPackage() failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isTimaKeystoreEnabledInDB(Landroid/app/enterprise/ContextInfo;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 129
    const/4 v6, 0x0

    .line 130
    .local v6, "ret":Z
    sget-boolean v7, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v7, :cond_0

    .line 131
    sget-object v7, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v8, "in isTimaKeystoreEnabledInDB"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    const/4 v7, 0x1

    :try_start_0
    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "enabled"

    aput-object v8, v0, v7

    .line 136
    .local v0, "columns":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "TimaKeystorePolicy"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 139
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 142
    .local v3, "isEnabled":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 144
    .local v4, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 145
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 146
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v7, "enabled"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 149
    if-eqz v3, :cond_1

    .line 150
    const/4 v6, 0x1

    .line 161
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "isEnabled":Z
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_2
    :goto_0
    sget-boolean v7, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v7, :cond_3

    .line 162
    sget-object v7, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isTimaKeystoreEnabledInDB returning - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_3
    return v6

    .line 155
    :catch_0
    move-exception v2

    .line 156
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isTimaKeystoreEnabledInDB() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 357
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 369
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 363
    return-void
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method
