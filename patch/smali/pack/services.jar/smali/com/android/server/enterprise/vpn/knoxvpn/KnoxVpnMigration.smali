.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
.super Ljava/lang/Thread;
.source "KnoxVpnMigration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final KNOX_VPN_V1_ENABLED:Z

.field private static final KNOX_VPN_V2_ENABLED:Z

.field private static TAG:Ljava/lang/String;

.field private static mCntMigrationGeneric:I

.field private static mCntMigrationPremium:I

.field private static mMigrationStateGeneric:I

.field private static mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;


# instance fields
.field private FAIL:I

.field private SUCCESS:I

.field private mAdminPackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field private mErrorMessage:Ljava/lang/String;

.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private mNewAdminID:I

.field private mNewContainerID:I

.field private mNumOfContainerPkg:I

.field private mOldAdminID:I

.field private mOldContainerID:I

.field private mPremiumService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

.field private mVpnIsAll:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    const-string v2, "KnoxVpnMigration"

    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    .line 69
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    .line 86
    sput v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationPremium:I

    .line 94
    sput v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationGeneric:I

    .line 95
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 99
    const-string v0, "1"

    const-string v1, "ro.config.knox"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->KNOX_VPN_V1_ENABLED:Z

    .line 100
    const-string/jumbo v0, "v30"

    const-string v1, "ro.config.knox"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->KNOX_VPN_V2_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vpnStorageProvider"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;
    .param p3, "engine"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p4, "map"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 72
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewAdminID:I

    .line 73
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    .line 74
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldAdminID:I

    .line 75
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldContainerID:I

    .line 76
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNumOfContainerPkg:I

    .line 77
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mAdminPackageName:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mContext:Landroid/content/Context;

    .line 82
    const-string v0, "No Error"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mErrorMessage:Ljava/lang/String;

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->SUCCESS:I

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    .line 93
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnIsAll:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v1, "Constructor in KnoxVpnMigration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->checkValidationForValues(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    .line 111
    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 112
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    goto :goto_0
.end method

.method private checkValidationForValues(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x0

    .line 725
    if-nez p1, :cond_0

    .line 726
    const-string v2, "The value is null"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->sendMigrationSuccessIntent(ILjava/lang/String;)V

    .line 741
    :goto_0
    return v1

    .line 730
    :cond_0
    :try_start_0
    const-string v2, "knox_1_container_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldContainerID:I

    .line 731
    const-string v2, "knox_2_container_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    .line 732
    const-string v2, "admin_uid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldAdminID:I

    .line 733
    iget v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldAdminID:I

    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewAdminID:I

    .line 734
    const-string v2, "knox_1_apk_count"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNumOfContainerPkg:I

    .line 735
    const-string v2, "admin_package_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mAdminPackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    const/4 v1, 0x1

    goto :goto_0

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "The value is null"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->sendMigrationSuccessIntent(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized deleteDB()Z
    .locals 5

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/knoxvpn/databases/knoxvpn.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    .local v1, "vpnDatabasePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 583
    .end local v1    # "vpnDatabasePath":Ljava/io/File;
    :goto_0
    monitor-exit p0

    return v2

    .line 579
    .restart local v1    # "vpnDatabasePath":Ljava/io/File;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 581
    .end local v1    # "vpnDatabasePath":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    const/4 v2, 0x0

    goto :goto_0

    .line 575
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized doMigrationVPN20()I
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x3

    .line 168
    monitor-enter p0

    :try_start_0
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationGeneric:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationGeneric:I

    .line 170
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->openMigrationDBHelper()I

    move-result v7

    if-nez v7, :cond_0

    .line 171
    const/4 v7, 0x3

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 172
    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :goto_0
    monitor-exit p0

    return v7

    .line 175
    :cond_0
    const/4 v3, 0x0

    .line 177
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :try_start_1
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    if-eq v7, v8, :cond_1

    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    if-nez v7, :cond_3

    .line 178
    .local v6, "state":Z
    :cond_1
    :goto_1
    if-nez v6, :cond_4

    .line 183
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "Genric migration is already in doing "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_2
    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    goto :goto_0

    .line 177
    .end local v6    # "state":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 186
    .restart local v6    # "state":Z
    :cond_4
    const/4 v7, 0x2

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 191
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "Genric migration will do a clear job"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    :cond_5
    :try_start_2
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v8, "VpnPackageInfo"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .line 196
    .local v1, "b":Z
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v8, "VpnProfileInfo"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 197
    .local v0, "a":Z
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_6

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clear result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    :cond_6
    :try_start_3
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "Genric migration step #1 : profile infor "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    :cond_7
    :try_start_4
    const-string v7, "VpnProfileInfo"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 215
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_8

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cvList.size() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_8
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_b

    .line 221
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 222
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->writeProfileToDB(Landroid/content/ContentValues;)I

    move-result v7

    iget v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    if-ne v7, v8, :cond_9

    .line 223
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_a

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, " ERROR : Step #1"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_a
    const/4 v7, 0x3

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 225
    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 198
    .end local v0    # "a":Z
    .end local v1    # "b":Z
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 199
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v7, 0x3

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 201
    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    goto/16 :goto_0

    .line 230
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":Z
    .restart local v1    # "b":Z
    :catch_1
    move-exception v4

    .line 231
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v7, 0x3

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 233
    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    goto/16 :goto_0

    .line 243
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_b
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_c

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "Genric migration step #2 : package info "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 245
    :cond_c
    :try_start_6
    const-string v7, "VpnPackageInfo"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 247
    if-eqz v3, :cond_10

    .line 248
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_d

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cvList.size() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 252
    .restart local v2    # "cv":Landroid/content/ContentValues;
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->writePkgToDB(Landroid/content/ContentValues;)I

    move-result v7

    iget v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    if-ne v7, v8, :cond_e

    .line 253
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_f

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "ERROR : Step #1"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_f
    const/4 v7, 0x3

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 255
    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 260
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_2
    move-exception v4

    .line 261
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_7
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error 3 :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v7, 0x3

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 263
    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    goto/16 :goto_0

    .line 267
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_10
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_11

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "Genric migration step #3 : init hash "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->closeDB()V

    .line 275
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->deleteDB()Z

    .line 278
    const/4 v7, 0x1

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 279
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeVpnDataAndVendors()V

    .line 282
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_12

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "Genric migration step #4 : DONE "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_12
    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->SUCCESS:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 168
    .end local v0    # "a":Z
    .end local v1    # "b":Z
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v6    # "state":Z
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private doMigrationVpn10()I
    .locals 18

    .prologue
    .line 781
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->getProfilesFromVpn10()Ljava/util/ArrayList;

    move-result-object v7

    .line 782
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    if-nez v7, :cond_0

    .line 783
    const/4 v11, 0x4

    .line 872
    :goto_0
    return v11

    .line 785
    :cond_0
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMigrationVpn10 : get profile list size : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_5

    .line 788
    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMigrationVpn10 : Got profile : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", adminId : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->adminId:I

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v13, "EnterpriseVpn"

    const/4 v11, 0x2

    new-array v14, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v15, "adminUid"

    aput-object v15, v14, v11

    const/4 v11, 0x1

    const-string v15, "profileName"

    aput-object v15, v14, v11

    const/4 v11, 0x2

    new-array v15, v11, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->adminId:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->name:Ljava/lang/String;

    aput-object v11, v15, v16

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "applicationInfo"

    aput-object v17, v11, v16

    const/16 v16, 0x1

    const-string v17, "CID"

    aput-object v17, v11, v16

    invoke-virtual {v12, v13, v14, v15, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 803
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 805
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMigrationVpn10 : Got packagelist from db. size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 807
    .local v4, "cvalues":Landroid/content/ContentValues;
    const-string v11, "applicationInfo"

    invoke-virtual {v4, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 809
    .local v2, "containerPackageInDB":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 810
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is already migrated"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 814
    :cond_2
    const-string v11, "CID"

    invoke-virtual {v4, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 815
    .local v1, "cid":I
    if-nez v1, :cond_3

    .line 816
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldContainerID:I

    invoke-virtual {v11, v12, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 818
    .local v9, "originalPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v1, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v10

    .line 819
    .local v10, "uid":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v1, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 821
    .local v8, "newPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->replaceEnterpriseVpnInDb(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 822
    const-string v11, "Failed to replace EnterpriseVpn DB"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mErrorMessage:Ljava/lang/String;

    .line 823
    const/4 v11, 0x3

    goto/16 :goto_0

    .line 815
    .end local v8    # "newPackageName":Ljava/lang/String;
    .end local v9    # "originalPackageName":Ljava/lang/String;
    .end local v10    # "uid":I
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    goto :goto_3

    .line 787
    .end local v1    # "cid":I
    .end local v2    # "containerPackageInDB":Ljava/lang/String;
    .end local v4    # "cvalues":Landroid/content/ContentValues;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 830
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_7

    .line 831
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v13, "EnterpriseVpn"

    const/4 v11, 0x3

    new-array v14, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v15, "CID"

    aput-object v15, v14, v11

    const/4 v11, 0x1

    const-string v15, "adminUid"

    aput-object v15, v14, v11

    const/4 v11, 0x2

    const-string v15, "profileName"

    aput-object v15, v14, v11

    const/4 v11, 0x3

    new-array v15, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v11

    const/16 v16, 0x1

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->adminId:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v15, v16

    const/16 v16, 0x2

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->name:Ljava/lang/String;

    aput-object v11, v15, v16

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "applicationInfo"

    aput-object v17, v11, v16

    invoke-virtual {v12, v13, v14, v15, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 845
    .restart local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMigrationVpn10 : After Got packagelist from db. size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ContainerPkgs = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNumOfContainerPkg:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 847
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNumOfContainerPkg:I

    if-ne v11, v12, :cond_6

    .line 849
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMigrationVpn10 : match count which db and container packages. size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget-object v12, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->adminId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->updateEnterpriseVpnInDb(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_6

    .line 851
    const-string v11, "Failed to update EnterpriseVpn DB"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mErrorMessage:Ljava/lang/String;

    .line 852
    const/4 v11, 0x3

    goto/16 :goto_0

    .line 830
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 859
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_7
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_a

    .line 860
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->replaceVpnTableInDb(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 861
    const-string v11, "Failed to replace VpnProfile DB"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mErrorMessage:Ljava/lang/String;

    .line 862
    const/4 v11, 0x3

    goto/16 :goto_0

    .line 864
    :cond_8
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->adminId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->replaceFipsVpnTableInDb(I)Z

    move-result v11

    if-nez v11, :cond_9

    .line 865
    const-string v11, "Failed to replace FipsVpn DB"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mErrorMessage:Ljava/lang/String;

    .line 866
    const/4 v11, 0x3

    goto/16 :goto_0

    .line 859
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 870
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->startVpnAfterMigration()V

    .line 872
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method private static getMigrationVersion()Ljava/lang/String;
    .locals 9

    .prologue
    .line 694
    const-string v5, ""

    .line 695
    .local v5, "versionName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 697
    .local v3, "token":J
    :try_start_0
    const-string v6, "package"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 698
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    const-string v6, "com.sec.knox.containeragent"

    const/16 v7, 0x80

    const/4 v8, 0x0

    invoke-interface {v2, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 699
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 700
    if-eqz v1, :cond_0

    .line 701
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_0
    return-object v5

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMigrationVersion Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized getProfilesFromVpn10()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 755
    monitor-enter p0

    const/4 v3, 0x0

    .line 756
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    const/4 v1, 0x0

    .line 758
    .local v1, "cvProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v6, "Vpn_table"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "profile"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "adminUid"

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 765
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 766
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 768
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 769
    .local v0, "cvProfile":Landroid/content/ContentValues;
    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    const-string v6, "profile"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "adminUid"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 755
    .end local v0    # "cvProfile":Landroid/content/ContentValues;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    move-object v3, v4

    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    :goto_1
    monitor-exit p0

    throw v5

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    :cond_0
    move-object v3, v4

    .line 773
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    :cond_1
    monitor-exit p0

    return-object v3

    .line 755
    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method public static declared-synchronized isFail()Z
    .locals 3

    .prologue
    .line 591
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationGeneric:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    .line 592
    const/4 v0, 0x1

    .line 594
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized isNeedForGeneric()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 544
    const-class v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    monitor-enter v4

    :try_start_0
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    if-eq v5, v2, :cond_0

    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    if-ne v5, v6, :cond_1

    .line 546
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v5, "isNeedForGeneric :  Done / Not need"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 566
    .local v1, "vpnDatabasePath":Ljava/io/File;
    :goto_0
    monitor-exit v4

    return v2

    .line 551
    .end local v1    # "vpnDatabasePath":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/system/knoxvpn/databases/knoxvpn.db"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    .restart local v1    # "vpnDatabasePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->KNOX_VPN_V2_ENABLED:Z

    if-eqz v5, :cond_2

    .line 553
    const/4 v5, 0x0

    sput v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 554
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v6, "isNeedForGeneric : need"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v5, "isNeedForGeneric : error"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 560
    goto :goto_0

    .line 563
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x4

    sput v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 565
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v5, "isNeedForGeneric : not need"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    .line 566
    goto :goto_0

    .line 544
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method private static declared-synchronized isNeedForPremium()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 520
    const-class v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getPackagesFromVpn10()Ljava/util/ArrayList;

    move-result-object v3

    .line 521
    .local v3, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    .line 539
    :goto_0
    monitor-exit v7

    return v5

    .line 525
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-ge v1, v5, :cond_3

    .line 526
    const/4 v4, -0x1

    .line 528
    .local v4, "userId":I
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 529
    .local v2, "packageArray":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 534
    .end local v2    # "packageArray":[Ljava/lang/String;
    :goto_2
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 535
    const/4 v5, 0x1

    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    goto :goto_2

    .line 525
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4    # "userId":I
    :cond_3
    move v5, v6

    .line 539
    goto :goto_0

    .line 520
    .end local v1    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5
.end method

.method public static declared-synchronized isNeedToMigration()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 489
    const-class v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    monitor-enter v6

    const/4 v2, 0x0

    .line 490
    .local v2, "premiumPolicy":Z
    const/4 v0, 0x0

    .line 491
    .local v0, "genericPolicy":Z
    const/4 v3, 0x0

    .line 494
    .local v3, "result":Z
    :try_start_0
    const-string v7, "net.vpn.migration.version"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "getProperty":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isNeedToMigration : prop : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_0
    const-string v7, "4.0"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 513
    :cond_1
    :goto_0
    monitor-exit v6

    return v5

    .line 501
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->getMigrationVersion()Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, "versionForMA":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isNeedToMigration : version : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", fixed version : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "4.0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_3
    const-string v7, "4.0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 507
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedForPremium()Z

    move-result v2

    .line 508
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedForGeneric()Z

    move-result v0

    .line 510
    if-nez v2, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    const/4 v3, 0x1

    .line 512
    :goto_1
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNeedForGeneric : result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v3

    .line 513
    goto :goto_0

    :cond_5
    move v3, v5

    .line 510
    goto :goto_1

    .line 489
    .end local v1    # "getProperty":Ljava/lang/String;
    .end local v4    # "versionForMA":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static markedMigrationIsDone()Z
    .locals 3

    .prologue
    .line 714
    :try_start_0
    const-string v1, "net.vpn.migration.version"

    const-string v2, "4.0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    const/4 v1, 0x1

    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 715
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 716
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private replaceEnterpriseVpnInDb(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "cid"    # I
    .param p2, "oldPackageName"    # Ljava/lang/String;
    .param p3, "newPackageName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 925
    if-eqz p2, :cond_0

    .line 927
    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inside replacePackageNameInDb : old packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v6, "EnterpriseVpn"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "applicationInfo"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "profileName"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "UID_APP"

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 936
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 937
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 938
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "CID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 939
    const-string v5, "applicationInfo"

    invoke-virtual {v1, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string v5, "UID_APP"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 941
    const-string v5, "containerState"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 942
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "applicationInfo"

    aput-object v6, v0, v5

    .line 945
    .local v0, "columns":[Ljava/lang/String;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    .line 948
    .local v4, "values":[Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replacePackageNameInDb : before DB insert:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v6, "EnterpriseVpn"

    invoke-virtual {v5, v6, v0, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 956
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "values":[Ljava/lang/String;
    :goto_0
    return v5

    .line 952
    :catch_0
    move-exception v3

    .line 953
    .local v3, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replacePackageNameInDb: Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private replaceFipsVpnTableInDb(I)Z
    .locals 11
    .param p1, "adminId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 978
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v4, "Fips_Vpn_table"

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v5, v9

    new-array v6, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    new-array v7, v2, [Ljava/lang/String;

    const-string v8, "fips_mode"

    aput-object v8, v7, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 981
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 982
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 984
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 985
    const-string v2, "fips_mode"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 987
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v3, "Fips_Vpn_table"

    invoke-virtual {v2, v3, v10, v10, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 990
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_1
    return v2
.end method

.method private replaceVpnTableInDb(Ljava/lang/String;)Z
    .locals 7
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 960
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 961
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "Password"

    const-string v4, "null"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const-string v3, "User_Certificate"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 963
    const-string v3, "User_Password"

    const-string v4, "null"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const-string v3, "CA_Certificate"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 965
    const-string v3, "CA_Password"

    const-string v4, "null"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "profile"

    aput-object v3, v0, v5

    .line 970
    .local v0, "columns":[Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    aput-object p1, v2, v5

    .line 974
    .local v2, "values":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v4, "Vpn_table"

    invoke-virtual {v3, v4, v0, v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method private startVpnAfterMigration()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 877
    :try_start_0
    const-string v1, "enterprise_premium_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mPremiumService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 879
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mPremiumService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    if-eqz v1, :cond_0

    .line 880
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mPremiumService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->startVpnAfterMigration()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mPremiumService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 887
    return-void

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startVpnAfterMigration: Exception at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 885
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mPremiumService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    throw v1
.end method

.method private updateEnterpriseVpnInDb(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "adminId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 891
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v6, "EnterpriseVpn"

    new-array v7, v9, [Ljava/lang/String;

    const-string v8, "profileName"

    aput-object v8, v7, v4

    const-string v8, "CID"

    aput-object v8, v7, v3

    new-array v8, v9, [Ljava/lang/String;

    aput-object p1, v8, v4

    iget v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .line 902
    .local v1, "deleteStatus":Z
    if-eqz v1, :cond_0

    .line 903
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateEnterpriseVpnInDb : Removing data is successful "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 906
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v5, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 907
    const-string v5, "CID"

    iget v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 908
    const-string v5, "applicationInfo"

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    const-string v8, "ADD_ALL_PACKAGES"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const-string v5, "profileName"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-string v5, "UID_APP"

    const/4 v6, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 911
    const-string v5, "containerState"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 913
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v6, "EnterpriseVpn"

    invoke-virtual {v5, v6, v10, v10, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 915
    .local v2, "updateStatus":Z
    if-eqz v2, :cond_0

    .line 916
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateEnterpriseVpnInDb : Updating data is successful "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "updateStatus":Z
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private writePkgToDB(Landroid/content/ContentValues;)I
    .locals 14
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 299
    const/4 v9, 0x0

    .line 300
    .local v9, "profileName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 301
    .local v8, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 302
    .local v7, "originalPackageName":Ljava/lang/String;
    const/4 v6, -0x1

    .line 303
    .local v6, "oldUid":I
    const/4 v4, -0x1

    .line 304
    .local v4, "newUid":I
    const/4 v5, -0x1

    .line 305
    .local v5, "oldCid":I
    const/4 v3, -0x1

    .line 310
    .local v3, "newCid":I
    :try_start_0
    const-string v10, "profileName"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 311
    const-string v10, "packageName"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 312
    const-string v10, "packageUid"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 313
    const-string v10, "packageCid"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 315
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "profileName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "old cid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_1
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_2

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "old Uid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_2
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "old packageName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_3
    if-nez v5, :cond_8

    .line 321
    const/4 v3, 0x0

    .line 322
    move-object v7, v8

    .line 323
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v10, v3, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v4

    .line 324
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 333
    :goto_0
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "new cid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_4
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_5

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "new uid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_5
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_6

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "new packageName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_6
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnIsAll:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    if-ne v3, v10, :cond_9

    .line 339
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_7

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Have to skip : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " newCid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_7
    const/4 v10, 0x1

    .line 364
    :goto_1
    return v10

    .line 327
    :cond_8
    iget v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    .line 328
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldContainerID:I

    invoke-virtual {v10, v11, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 329
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v10, v3, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v4

    .line 330
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 345
    :cond_9
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 346
    .local v1, "cv2":Landroid/content/ContentValues;
    const-string v10, "profileName"

    invoke-virtual {v1, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v10, "packageName"

    invoke-virtual {v1, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v10, "packageUid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    const-string v10, "packageCid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v11, "VpnPackageInfo"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    .line 352
    .local v0, "a":Z
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_a

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "write result1 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_a
    if-nez v0, :cond_b

    .line 355
    const/4 v10, 0x0

    goto :goto_1

    .line 359
    .end local v0    # "a":Z
    .end local v1    # "cv2":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 360
    .local v2, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 364
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":Z
    .restart local v1    # "cv2":Landroid/content/ContentValues;
    :cond_b
    const/4 v10, 0x1

    goto/16 :goto_1
.end method

.method private writeProfileToDB(Landroid/content/ContentValues;)I
    .locals 21
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 374
    const/4 v12, 0x0

    .line 375
    .local v12, "profileName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 376
    .local v13, "protocolType":Ljava/lang/String;
    const/4 v10, 0x0

    .line 377
    .local v10, "packageName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 378
    .local v15, "vendorNameWithCid":Ljava/lang/String;
    const/4 v11, 0x0

    .line 379
    .local v11, "personaId":I
    const/4 v14, -0x1

    .line 380
    .local v14, "routeType":I
    const/4 v6, -0x1

    .line 381
    .local v6, "adminId":I
    const/4 v7, -0x1

    .line 382
    .local v7, "containerVpnState":I
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    .line 383
    .local v5, "activateState":I
    const/16 v16, -0x1

    .line 388
    .local v16, "vpnServiceType":I
    :try_start_0
    const-string v17, "profileName"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 389
    const-string v17, "defaultRoute"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 390
    const-string v17, "adminUid"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 391
    const-string/jumbo v17, "vendorName"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 392
    const-string v17, "protocolType"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 393
    const-string v17, "activateState"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 396
    const-string v17, "containerVpnState"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 399
    :try_start_1
    const-string/jumbo v17, "vpnServiceType"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    .line 407
    :goto_0
    :try_start_2
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_0

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "profileName : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_1

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "routeType : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_1
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_2

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "adminId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_2
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_3

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v18, "personaId : 0"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_3
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_4

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "vendorNameWithCid : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_4
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_5

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "protocolType : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_5
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_6

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "activateState : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_6
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_7

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "containerVpnState : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "0_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 430
    if-nez v7, :cond_a

    .line 431
    const/4 v7, -0x1

    .line 457
    :cond_8
    :goto_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 458
    .local v8, "cv2":Landroid/content/ContentValues;
    const-string v17, "profileName"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v17, "defaultRoute"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    const-string v17, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    const-string v17, "personaId"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 462
    const-string/jumbo v17, "vendorName"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v17, "protocolType"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v17, "activateState"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 465
    const-string v17, "containerVpnState"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    const-string/jumbo v17, "vpnServiceType"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    const-string v17, "chainingEnabled"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "VpnProfileInfo"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    .line 470
    .local v4, "a":Z
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_9

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "result 2 : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_9
    if-nez v4, :cond_d

    .line 472
    const/16 v17, 0x0

    .line 481
    .end local v4    # "a":Z
    .end local v8    # "cv2":Landroid/content/ContentValues;
    :goto_2
    return v17

    .line 401
    :catch_0
    move-exception v9

    .line 403
    .local v9, "e":Ljava/lang/Exception;
    const/16 v16, -0x1

    goto/16 :goto_0

    .line 433
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_a
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_c

    .line 434
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnIsAll:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 436
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_b

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ALL : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnIsAll:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 476
    :catch_1
    move-exception v9

    .line 477
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error  :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/16 v17, 0x0

    goto :goto_2

    .line 444
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_c
    const/4 v7, -0x1

    goto/16 :goto_1

    .line 481
    .restart local v4    # "a":Z
    .restart local v8    # "cv2":Landroid/content/ContentValues;
    :cond_d
    const/16 v17, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method public closeDB()V
    .locals 1

    .prologue
    .line 672
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->close()V

    .line 673
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    .line 676
    return-void
.end method

.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;

    .prologue
    .line 658
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;
    .param p4, "returnColumns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 664
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStorageDbHelper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_0
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sTableName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_1
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public openMigrationDBHelper()I
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 602
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedToMigration()Z

    move-result v6

    if-nez v6, :cond_0

    .line 647
    :goto_0
    return v4

    .line 607
    :cond_0
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    if-eqz v6, :cond_1

    .line 608
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    monitor-enter v6

    .line 609
    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->close()V

    .line 610
    const/4 v7, 0x0

    sput-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    .line 611
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    :cond_1
    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageConstants;->getDbName(I)Ljava/lang/String;

    move-result-object v3

    .line 615
    .local v3, "myPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 617
    .local v1, "dbfile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 618
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v7, "Database exist"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 632
    new-instance v6, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageConstants;->getDbName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageConstants;->getDbVersion(I)I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    .line 639
    :try_start_2
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 640
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 641
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VpnStorageProvider constructor : db = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    move v4, v5

    .line 647
    goto :goto_0

    .line 611
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "dbfile":Ljava/io/File;
    .end local v3    # "myPath":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 621
    .restart local v1    # "dbfile":Ljava/io/File;
    .restart local v3    # "myPath":Ljava/lang/String;
    :cond_3
    :try_start_4
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v6, "Database no"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 625
    :catch_0
    move-exception v2

    .line 626
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v6, "No database"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 642
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 643
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v6, "Failed to OPEN/CREATE the database"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;
    .param p4, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 653
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized run()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 119
    monitor-enter p0

    const/4 v1, 0x3

    .line 120
    .local v1, "resultForPremium":I
    :try_start_0
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    .line 123
    .local v0, "resultForGeneric":I
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedForPremium()Z

    move-result v5

    if-ne v5, v3, :cond_7

    .line 124
    :cond_0
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationPremium:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationPremium:I

    if-ge v5, v7, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->doMigrationVpn10()I

    move-result v1

    .line 126
    if-ne v1, v3, :cond_0

    .line 135
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedForGeneric()Z

    move-result v5

    if-ne v5, v3, :cond_3

    .line 136
    :cond_2
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationGeneric:I

    if-ge v5, v7, :cond_3

    .line 138
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->doMigrationVPN20()I

    move-result v0

    .line 139
    iget v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->SUCCESS:I

    if-ne v0, v5, :cond_2

    .line 145
    :cond_3
    if-eq v1, v3, :cond_4

    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    if-ne v5, v3, :cond_8

    :cond_4
    move v2, v3

    .line 146
    .local v2, "state1":Z
    :goto_1
    if-ne v1, v8, :cond_9

    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    if-ne v5, v8, :cond_9

    .line 149
    .local v3, "state2":Z
    :goto_2
    if-nez v2, :cond_5

    if-eqz v3, :cond_a

    .line 150
    :cond_5
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 151
    const/4 v4, 0x0

    const-string v5, "Successful"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->sendMigrationSuccessIntent(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    .line 131
    .end local v2    # "state1":Z
    .end local v3    # "state2":Z
    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :cond_8
    move v2, v4

    .line 145
    goto :goto_1

    .restart local v2    # "state1":Z
    :cond_9
    move v3, v4

    .line 146
    goto :goto_2

    .line 155
    .restart local v3    # "state2":Z
    :cond_a
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z

    .line 156
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->sendMigrationSuccessIntent(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 119
    .end local v0    # "resultForGeneric":I
    .end local v2    # "state1":Z
    .end local v3    # "state2":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized sendMigrationSuccessIntent(ILjava/lang/String;)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 1004
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .line 1006
    .local v1, "token":J
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1007
    .local v0, "successIntent":Landroid/content/Intent;
    const-string v3, "com.sec.enterprise.knox.VPN_MIGRATION_COMPLETE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1008
    const-string/jumbo v3, "vpn_migration_status"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1009
    const-string/jumbo v3, "vpn_migration_error"

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mErrorMessage:Ljava/lang/String;

    .end local p2    # "errorMsg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending migration result intent to User ALL [status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1015
    monitor-exit p0

    return-void

    .line 1013
    .end local v0    # "successIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1004
    .end local v1    # "token":J
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method
