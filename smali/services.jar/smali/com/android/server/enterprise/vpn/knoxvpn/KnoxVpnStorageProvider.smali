.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;
.super Ljava/lang/Object;
.source "KnoxVpnStorageProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KnoxVpnStorageProvider"

.field private static mDefaultProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

.field private static mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mSynObj:Ljava/lang/Object;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mDefaultProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    .line 51
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mSynObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mContext:Landroid/content/Context;

    .line 56
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mSynObj:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v0, :cond_0

    .line 58
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 61
    :cond_0
    monitor-exit v1

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mDefaultProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mDefaultProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    .line 68
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mDefaultProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPackagesFromVpn10()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 154
    const-class v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    monitor-enter v12

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 178
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v8, "cursor":Landroid/database/Cursor;
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    monitor-exit v12

    return-object v10

    .line 157
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v10, 0x0

    .line 158
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, v1, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 159
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "EnterpriseVpn"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "applicationInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "profileName"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 162
    .restart local v8    # "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 164
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 165
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 168
    :cond_2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v9, v1, :cond_3

    .line 169
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 171
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v1

    if-nez v1, :cond_2

    .line 174
    .end local v9    # "i":I
    :cond_4
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v10, v11

    .line 175
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 174
    :catchall_0
    move-exception v1

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 154
    :catchall_1
    move-exception v1

    monitor-exit v12

    throw v1

    .line 174
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_2
    move-exception v1

    move-object v10, v11

    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2
.end method


# virtual methods
.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;

    .prologue
    .line 76
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
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
    .line 81
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDomainsByProfileName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-eqz v1, :cond_4

    .line 91
    const/4 v13, 0x0

    .line 94
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "VpnProfileInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "profileName"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "containerVpnState"

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 101
    .local v11, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v11, :cond_5

    .line 102
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .restart local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    .line 104
    .local v10, "cv":Landroid/content/ContentValues;
    const-string v1, "containerVpnState"

    invoke-virtual {v10, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 105
    .local v8, "containerState":I
    const/4 v1, -0x1

    if-ne v8, v1, :cond_3

    .line 107
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, v1, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 108
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "VpnPackageInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "packageCid"

    aput-object v4, v2, v3

    const-string v3, "profileName=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, "packageCid"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 117
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 119
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 120
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v14, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 123
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_1

    .line 127
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v13, v14

    .line 128
    .end local v14    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v1

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 132
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_3
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    .end local v8    # "containerState":I
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v11    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const/4 v13, 0x0

    :cond_5
    return-object v13

    .line 127
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "containerState":I
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "cv":Landroid/content/ContentValues;
    .restart local v11    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v14    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    move-object v13, v14

    .end local v14    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;
    .param p4, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 72
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method
