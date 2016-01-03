.class public Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
.super Landroid/app/enterprise/IVpnInfoPolicy$Stub;
.source "VpnInfoPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final DNS_SERVERS:I = 0x0

.field private static final FORWARD_ROUTES:I = 0x2

.field private static final OCSP_SERVER:I = 0x3

.field private static final SEARCH_DOMAINS:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnectivityService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 158
    invoke-direct {p0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;-><init>()V

    .line 115
    const-string v6, "VpnPolicy"

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->TAG:Ljava/lang/String;

    .line 117
    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 121
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    .line 123
    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 125
    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 160
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    .line 161
    new-instance v6, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 163
    .local v5, "vpnProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    const-string/jumbo v6, "setup_wizard_has_run"

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 165
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "VPN"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 167
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 168
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    .line 169
    .local v4, "p":Lcom/android/internal/net/VpnProfile;
    const-string v6, "VpnID"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "VpnID"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 177
    :cond_3
    iget-object v6, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 178
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 179
    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 181
    :cond_4
    iget-object v6, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 182
    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    goto :goto_0

    .line 188
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lcom/android/internal/net/VpnProfile;
    :cond_5
    return-void
.end method

.method private canChangeAlwaysOn(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1794
    const/4 v2, 0x0

    .line 1796
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string/jumbo v5, "vpnAlwaysOnProfile"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1798
    .local v1, "currentProfile":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string/jumbo v5, "vpnAlwaysOnOwner"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1801
    .local v0, "currentOwner":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1804
    const/4 v3, 0x0

    .line 1807
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z
    .locals 6
    .param p1, "p"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 1423
    if-lez p2, :cond_1

    .line 1424
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1425
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1426
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1427
    iget-object v5, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1428
    const/4 v3, 0x1

    .line 1438
    .end local v1    # "i":I
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_1
    return v3

    .line 1426
    .restart local v1    # "i":I
    .restart local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    move v3, v4

    .line 1433
    goto :goto_1

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v3, v4

    .line 1438
    goto :goto_1
.end method

.method private declared-synchronized disconnect()V
    .locals 6

    .prologue
    .line 1572
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v3, :cond_0

    .line 1573
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 1575
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v3, :cond_1

    .line 1576
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1577
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    const-string v4, "[Legacy VPN]"

    const-string v5, "[Legacy VPN]"

    invoke-interface {v3, v4, v5}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1578
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1583
    .end local v1    # "token":J
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1580
    :catch_0
    move-exception v0

    .line 1581
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1572
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_VPN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    return-void
.end method

.method private enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_VPN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getProfileByName(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;
    .locals 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1836
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1837
    :cond_0
    const/4 v4, 0x0

    .line 1857
    :cond_1
    :goto_0
    return-object v4

    .line 1840
    :cond_2
    const/4 v4, 0x0

    .line 1842
    .local v4, "result":Lcom/android/internal/net/VpnProfile;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 1843
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1844
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 1845
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    .line 1846
    move-object v4, v2

    .line 1847
    goto :goto_0

    .line 1852
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 1853
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "VpnPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in getProfileByName("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getProfileIndexFromName(Ljava/lang/String;)I
    .locals 4
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 1402
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1403
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1404
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1405
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1413
    .end local v1    # "i":I
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_1
    return v1

    .line 1404
    .restart local v1    # "i":I
    .restart local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1410
    .end local v1    # "i":I
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 1411
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1413
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1234
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1235
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1236
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v8

    .line 1237
    .local v8, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 1238
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/net/VpnProfile;

    .line 1239
    .local v7, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v9, v7, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1240
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1241
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    packed-switch p3, :pswitch_data_0

    .line 1270
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v8    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    :goto_0
    return-object v6

    .line 1243
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "p":Lcom/android/internal/net/VpnProfile;
    .restart local v8    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :pswitch_0
    iget-object v9, v7, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v5, :cond_1

    aget-object v2, v0, v1

    .line 1244
    .local v2, "lDnsServer":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1243
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1248
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "lDnsServer":Ljava/lang/String;
    .end local v5    # "len$":I
    .local v1, "i$":Ljava/util/Iterator;
    :pswitch_1
    iget-object v9, v7, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v5, :cond_1

    aget-object v4, v0, v1

    .line 1249
    .local v4, "lSearchDomain":Ljava/lang/String;
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1253
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "lSearchDomain":Ljava/lang/String;
    .end local v5    # "len$":I
    .local v1, "i$":Ljava/util/Iterator;
    :pswitch_2
    iget-object v9, v7, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v5, :cond_1

    aget-object v3, v0, v1

    .line 1254
    .local v3, "lRoutes":Ljava/lang/String;
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1253
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1262
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "lRoutes":Ljava/lang/String;
    .end local v5    # "len$":I
    .local v1, "i$":Ljava/util/Iterator;
    :pswitch_3
    iget-object v9, v7, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1270
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v8    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isCredentialsLocked()Z
    .locals 2

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidAlwaysOnProfile(Lcom/android/internal/net/VpnProfile;)Z
    .locals 1
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 1784
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/internal/net/VpnProfile;->type:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeProfileFromStorage(Lcom/android/internal/net/VpnProfile;)V
    .locals 9
    .param p1, "p"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 1502
    const/4 v6, 0x1

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "VpnID"

    aput-object v7, v0, v6

    .line 1505
    .local v0, "Column":[Ljava/lang/String;
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object v7, v1, v6

    .line 1508
    .local v1, "Value":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "VPN"

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1509
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1510
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1511
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1512
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1513
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1518
    .end local v0    # "Column":[Ljava/lang/String;
    .end local v1    # "Value":[Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "token":J
    :cond_0
    :goto_0
    return-void

    .line 1515
    :catch_0
    move-exception v2

    .line 1516
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "index"    # I
    .param p3, "p"    # Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1523
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 1524
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1525
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 1526
    invoke-virtual {v1, p2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 1527
    .local v0, "oldProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v0, :cond_0

    .line 1528
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Landroid/app/enterprise/ContextInfo;Lcom/android/internal/net/VpnProfile;)Z

    .line 1531
    .end local v0    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    :cond_0
    return-void
.end method

.method private retrieveVpnListFromStorage()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 949
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 950
    .local v0, "ProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v7

    if-nez v7, :cond_1

    .line 952
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 953
    .local v4, "keys":[Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v7, v4

    if-lez v7, :cond_1

    .line 954
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v1, v2

    .line 955
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 956
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VPN_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v6

    .line 957
    .local v6, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v6, :cond_0

    .line 958
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    .end local v6    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 963
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":[Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_1
    return-object v0
.end method

.method private saveAlwaysOnProfileToDb(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1816
    const/4 v1, 0x0

    .line 1818
    .local v1, "userId":I
    if-eqz p2, :cond_0

    .line 1819
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string/jumbo v4, "vpnAlwaysOnProfile"

    invoke-virtual {v2, v3, v4, p2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1822
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string/jumbo v4, "vpnAlwaysOnOwner"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    and-int/2addr v0, v2

    .line 1826
    return v0

    .line 1818
    .end local v0    # "ret":Z
    :cond_0
    const-string p2, ""

    goto :goto_0
.end method

.method private saveProfileToStorage(Landroid/app/enterprise/ContextInfo;Lcom/android/internal/net/VpnProfile;)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "p"    # Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1469
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VPN_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v14

    const/4 v15, -0x1

    const/16 v16, 0x1

    invoke-virtual/range {v12 .. v16}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1470
    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1471
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1472
    .local v7, "token":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1473
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1475
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1476
    .local v9, "uid":I
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getUserName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1477
    .local v10, "username":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getUserPwd(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1478
    .local v6, "pwd":Ljava/lang/String;
    const/4 v12, 0x2

    new-array v2, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "adminUid"

    aput-object v13, v2, v12

    const/4 v12, 0x1

    const-string v13, "VpnID"

    aput-object v13, v2, v12

    .line 1481
    .local v2, "columns":[Ljava/lang/String;
    const/4 v12, 0x2

    new-array v11, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object v13, v11, v12

    .line 1484
    .local v11, "values":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1485
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1486
    const-string v12, "VpnID"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    const-string v12, "UsrName"

    invoke-virtual {v3, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    const-string v12, "UsrPwd"

    invoke-virtual {v3, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "VPN"

    invoke-virtual {v12, v13, v2, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 1494
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "pwd":Ljava/lang/String;
    .end local v7    # "token":J
    .end local v9    # "uid":I
    .end local v10    # "username":Ljava/lang/String;
    .end local v11    # "values":[Ljava/lang/String;
    :goto_0
    return v12

    .line 1491
    :catch_0
    move-exception v4

    .line 1492
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1494
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private setProfileId()J
    .locals 7

    .prologue
    .line 1446
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1447
    .local v3, "millis":J
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v6, "VPN_"

    invoke-virtual {v5, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1448
    .local v2, "keys":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1449
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_1

    .line 1450
    aget-object v5, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 1451
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 1452
    const/4 v1, 0x0

    .line 1449
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1457
    .end local v1    # "i":I
    .end local v2    # "keys":[Ljava/lang/String;
    .end local v3    # "millis":J
    :catch_0
    move-exception v0

    .line 1458
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1460
    const-wide/16 v3, -0x1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-wide v3
.end method

.method private setProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p3, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1173
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1175
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    if-nez p3, :cond_1

    .line 1230
    :cond_0
    :goto_0
    return v8

    .line 1179
    :cond_1
    const-string v1, ""

    .line 1180
    .local v1, "endListAddress":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1181
    .local v2, "endListAddressBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1182
    .local v5, "listAddresses":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1185
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1188
    .end local v5    # "listAddresses":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1189
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v9, :cond_3

    .line 1190
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1192
    :cond_3
    if-nez p4, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    invoke-direct {p0, v1, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1195
    :cond_4
    const/4 v10, 0x2

    if-ne p4, v10, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    invoke-direct {p0, v1, v9}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1198
    :cond_5
    const/4 v10, 0x3

    if-ne p4, v10, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateUrl(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1202
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v4

    .line 1203
    .local v4, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v7

    .line 1204
    .local v7, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 1205
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/VpnProfile;

    .line 1206
    .local v6, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v6, :cond_0

    .line 1207
    packed-switch p4, :pswitch_data_0

    .line 1222
    :goto_2
    :try_start_0
    invoke-direct {p0, p1, v4, v6}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    .line 1227
    goto/16 :goto_0

    .line 1209
    :pswitch_0
    iput-object v1, v6, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    goto :goto_2

    .line 1212
    :pswitch_1
    iput-object v1, v6, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    goto :goto_2

    .line 1215
    :pswitch_2
    iput-object v1, v6, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    goto :goto_2

    .line 1218
    :pswitch_3
    iput-object v1, v6, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    goto :goto_2

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "VpnPolicy"

    const-string v10, "VpnInfoPolicy.setProfileProperty() - Error to save profile !"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized startVpnService()V
    .locals 2

    .prologue
    .line 1562
    monitor-enter p0

    :try_start_0
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1567
    :goto_0
    monitor-exit p0

    return-void

    .line 1564
    :catch_0
    move-exception v0

    .line 1565
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1562
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 11
    .param p1, "addresses"    # Ljava/lang/String;
    .param p2, "cidr"    # Z

    .prologue
    .line 1275
    :try_start_0
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v1, v4

    .line 1276
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1275
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1280
    :cond_1
    const/16 v8, 0x20

    .line 1281
    .local v8, "prefixLength":I
    if-eqz p2, :cond_2

    .line 1282
    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 1283
    .local v7, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v7, v9

    .line 1284
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1286
    .end local v7    # "parts":[Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 1287
    .local v2, "bytes":[B
    const/4 v9, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int v5, v9, v10

    .line 1289
    .local v5, "integer":I
    array-length v9, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    if-ltz v8, :cond_3

    const/16 v9, 0x20

    if-gt v8, v9, :cond_3

    const/16 v9, 0x20

    if-ge v8, v9, :cond_0

    shl-int v9, v5, v8

    if-eqz v9, :cond_0

    .line 1291
    :cond_3
    const/4 v9, 0x0

    .line 1297
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "bytes":[B
    .end local v4    # "i$":I
    .end local v5    # "integer":I
    .end local v6    # "len$":I
    .end local v8    # "prefixLength":I
    :goto_1
    return v9

    .line 1294
    :catch_0
    move-exception v3

    .line 1295
    .local v3, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_1

    .line 1297
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method

.method private validateUrl(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1922
    const/4 v1, 0x0

    .line 1923
    .local v1, "urlValid":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1925
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1926
    .local v0, "u":Ljava/net/URL;
    const/4 v1, 0x1

    .line 1934
    .end local v0    # "u":Ljava/net/URL;
    :goto_0
    return v1

    .line 1932
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1927
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public allowOnlySecureConnections(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1342
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1344
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1345
    .local v2, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1346
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 1347
    .local v1, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1348
    .local v4, "type":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1349
    .local v3, "state":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, "PPTP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    const-string v5, "CONNECTED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1351
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    goto :goto_0

    .line 1356
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "RESTRICTION"

    const-string v8, "allowOnlySecureVPN"

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    return v5
.end method

.method public allowUserAddProfiles(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1749
    const-string v0, "VpnPolicy"

    const-string v1, "allowUserAddProfiles"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1751
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "VPN"

    const-string v3, "allowUserAddProfiles"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowUserChangeProfiles(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1714
    const-string v0, "VpnPolicy"

    const-string v1, "allowUserChangeProfiles"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1716
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "VPN"

    const-string v3, "allowUserChangeProfiles"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowUserSetAlwaysOn(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1678
    const-string v0, "VpnPolicy"

    const-string v1, "allowUserSetAlwaysOn"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1680
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "VPN"

    const-string v3, "allowUserSetAlwaysOn"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public checkRacoonSecurity(Landroid/app/enterprise/ContextInfo;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "racoon"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 1368
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1369
    const/4 v0, 0x1

    .line 1370
    .local v0, "result":Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isOnlySecureConnectionsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1371
    if-eqz p2, :cond_2

    array-length v1, p2

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    aget-object v1, p2, v3

    if-eqz v1, :cond_2

    aget-object v1, p2, v3

    const-string/jumbo v2, "udprsa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p2, v3

    const-string/jumbo v2, "xauthrsa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p2, v3

    const-string v2, "hybridrsa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p2, v3

    const-string/jumbo v2, "udppsk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p2, v3

    const-string/jumbo v2, "xauthpsk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p2, v3

    const-string v2, "ikev2psk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p2, v3

    const-string v2, "ikev2rsa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1383
    :cond_0
    const/4 v0, 0x1

    .line 1387
    :goto_0
    if-nez v0, :cond_1

    .line 1388
    const v1, 0x10402be

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1392
    :cond_1
    return v0

    .line 1385
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized createProfile(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/VpnAdminProfile;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "adminProfile"    # Landroid/app/enterprise/VpnAdminProfile;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 971
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 974
    if-nez p2, :cond_1

    .line 1138
    :cond_0
    :goto_0
    monitor-exit p0

    return v7

    .line 977
    :cond_1
    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserAddProfilesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 981
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v10, 0x20

    if-gt v8, v10, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p0, p1, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 989
    new-instance v6, Lcom/android/internal/net/VpnProfile;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 990
    .local v6, "vpnProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v6, :cond_0

    .line 991
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 992
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 993
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    move v8, v9

    :goto_1
    iput-boolean v8, v6, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 995
    const-string v0, ""

    .line 996
    .local v0, "addresses":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 997
    .local v1, "addressesBuilder":Ljava/lang/StringBuilder;
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->dnsServers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 998
    .local v5, "listAddresses":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1001
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1134
    .end local v0    # "addresses":Ljava/lang/String;
    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "listAddresses":Ljava/lang/String;
    .end local v6    # "vpnProfile":Lcom/android/internal/net/VpnProfile;
    :catch_0
    move-exception v2

    .line 1135
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v8, "VpnPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createProfile exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 971
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .restart local v6    # "vpnProfile":Lcom/android/internal/net/VpnProfile;
    :cond_2
    move v8, v7

    .line 993
    goto :goto_1

    .line 1004
    .restart local v0    # "addresses":Ljava/lang/String;
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1005
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v9, :cond_4

    .line 1006
    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1008
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    const/4 v8, 0x0

    invoke-direct {p0, v0, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1011
    :cond_5
    iput-object v0, v6, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 1013
    const-string v0, ""

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    const-string v8, ""

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1015
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->forwardRoutes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1016
    .restart local v5    # "listAddresses":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1019
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1022
    .end local v5    # "listAddresses":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v9, :cond_7

    .line 1024
    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1026
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_8

    const/4 v8, 0x1

    invoke-direct {p0, v0, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1029
    :cond_8
    iput-object v0, v6, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 1031
    const-string v0, ""

    .line 1032
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    const-string v8, ""

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1033
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->searchDomains:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1034
    .restart local v5    # "listAddresses":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1037
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1040
    .end local v5    # "listAddresses":Ljava/lang/String;
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1041
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v9, :cond_a

    .line 1042
    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1044
    :cond_a
    iput-object v0, v6, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 1046
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 1047
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 1049
    :cond_b
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 1050
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 1053
    :cond_c
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "PPTP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1054
    const/4 v8, 0x0

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1055
    iget-boolean v8, p2, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    iput-boolean v8, v6, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 1129
    :cond_d
    :goto_5
    iget-object v8, v6, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v4

    .line 1130
    .local v4, "index":I
    if-gez v4, :cond_0

    invoke-direct {p0, v6, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1131
    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Landroid/app/enterprise/ContextInfo;Lcom/android/internal/net/VpnProfile;)Z

    move-result v7

    goto/16 :goto_0

    .line 1056
    .end local v4    # "index":I
    :cond_e
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "L2TP_IPSEC_PSK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1057
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1060
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1061
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1062
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto :goto_5

    .line 1064
    :cond_f
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "L2TP_IPSEC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1065
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1068
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1069
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1070
    const/4 v8, 0x2

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    goto :goto_5

    .line 1074
    :cond_10
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "IPSEC_HYBRID_RSA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1075
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1076
    const/4 v8, 0x5

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    goto :goto_5

    .line 1077
    :cond_11
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "IPSEC_XAUTH_PSK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1078
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1081
    const/4 v8, 0x3

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1082
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1083
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto :goto_5

    .line 1085
    :cond_12
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "IPSEC_XAUTH_RSA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1086
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1089
    const/4 v8, 0x4

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1090
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1091
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    goto/16 :goto_5

    .line 1095
    :cond_13
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "IPSEC_IKEV2_PSK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1097
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1100
    const/4 v8, 0x6

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1101
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1102
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto/16 :goto_5

    .line 1104
    :cond_14
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "IPSEC_IKEV2_RSA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1106
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1110
    const/4 v8, 0x7

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1111
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1112
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1116
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->ocspServerUrl:Ljava/lang/String;

    if-eqz v8, :cond_d

    .line 1117
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateUrl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1118
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->ocspServerUrl:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5
.end method

.method public declared-synchronized deleteProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 705
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 708
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 709
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 710
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 711
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 712
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 713
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 714
    .local v2, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v6, :cond_0

    .line 715
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 717
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v6, :cond_2

    .line 718
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 719
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 720
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 721
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v6, v6, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 722
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    .line 724
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->removeProfileFromStorage(Lcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    const/4 v6, 0x1

    .line 734
    .end local v1    # "i":I
    .end local v2    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    .end local v4    # "token":J
    :goto_1
    monitor-exit p0

    return v6

    .line 711
    .restart local v1    # "i":I
    .restart local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 731
    .end local v1    # "i":I
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 734
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 705
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public disconnectActiveVpnConnections()V
    .locals 0

    .prologue
    .line 1595
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    .line 1596
    return-void
.end method

.method public getAlwaysOnProfile(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1649
    const-string v6, "VpnPolicy"

    const-string v7, "getAlwaysOnProfile"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    const/4 v5, 0x0

    .line 1652
    .local v5, "result":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v7, "LOCKDOWN_VPN"

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v1

    .line 1654
    .local v1, "lockdownKey":[B
    if-eqz v1, :cond_1

    .line 1655
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 1656
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1657
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 1658
    .local v2, "lockdownKeyStr":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 1659
    .local v3, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v6, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1660
    iget-object v5, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 1667
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "lockdownKeyStr":Ljava/lang/String;
    .end local v3    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    return-object v5
.end method

.method public declared-synchronized getCaCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 661
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 662
    const/4 v0, 0x0

    .line 663
    .local v0, "certificate":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 674
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 666
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 667
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 668
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 669
    .local v2, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 670
    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 661
    .end local v0    # "certificate":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getDnsDomains(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
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
    .line 1161
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
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
    .line 1153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForwardRoutes(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
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
    .line 1169
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 447
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 448
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 459
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 451
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 452
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 453
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 454
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 455
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 447
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getIpSecIdentifier(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1324
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1325
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1326
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1327
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1328
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 1329
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1330
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1335
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getL2TPSecret(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 797
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 798
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 810
    :goto_0
    return-object v2

    .line 801
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 802
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 803
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 804
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 806
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    goto :goto_0

    .line 803
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_2
    move-object v2, v3

    .line 810
    goto :goto_0
.end method

.method public declared-synchronized getName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 409
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 410
    if-nez p2, :cond_1

    .line 421
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 413
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 414
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 415
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 416
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 417
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 409
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getOcspServerUrl(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1894
    const/4 v2, 0x3

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1895
    .local v1, "ocspServerUrlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1896
    .local v0, "ocspServerUrl":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1897
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ocspServerUrl":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1899
    .restart local v0    # "ocspServerUrl":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public declared-synchronized getPresharedKey(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 617
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 618
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 619
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 620
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 621
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 622
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 623
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 617
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getServerName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 428
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 429
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 440
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 432
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 433
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 434
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 435
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 436
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 428
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 466
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 467
    if-nez p2, :cond_1

    .line 521
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v8

    .line 471
    :cond_1
    const/4 v1, 0x0

    .line 472
    .local v1, "found":Z
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 473
    .local v5, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 474
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    .line 475
    .local v4, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v9, v4, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_2

    .line 476
    const/4 v1, 0x1

    .line 482
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lcom/android/internal/net/VpnProfile;
    :cond_3
    if-eqz v1, :cond_0

    .line 486
    :try_start_2
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v9, :cond_4

    .line 487
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 489
    :cond_4
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v9, :cond_7

    .line 490
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 491
    .local v6, "token":J
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v9}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 492
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 493
    const/4 v3, 0x0

    .line 494
    .local v3, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v9, :cond_5

    .line 495
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v9, v9, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, p1, v9}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 497
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 498
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v9, v9, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    packed-switch v9, :pswitch_data_0

    .line 512
    const-string v8, "IDLE"

    goto :goto_0

    .line 500
    :pswitch_0
    const-string v8, "DISCONNECTED"

    goto :goto_0

    .line 502
    :pswitch_1
    const-string v8, "INITIALIZING"

    goto :goto_0

    .line 504
    :pswitch_2
    const-string v8, "CONNECTING"

    goto :goto_0

    .line 506
    :pswitch_3
    const-string v8, "CONNECTED"

    goto :goto_0

    .line 508
    :pswitch_4
    const-string v8, "TIMEOUT"

    goto :goto_0

    .line 510
    :pswitch_5
    const-string v8, "FAILED"

    goto :goto_0

    .line 515
    :cond_6
    const-string v8, "IDLE"

    goto :goto_0

    .line 518
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "token":J
    :cond_7
    const-string v8, "IDLE"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 466
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "found":Z
    .end local v5    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getSupportedConnectionTypes(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 2
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
    .line 1904
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1906
    .local v0, "connectionTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PPTP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1907
    const-string v1, "L2TP_IPSEC_PSK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1908
    const-string v1, "L2TP_IPSEC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1909
    const-string v1, "IPSEC_HYBRID_RSA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1910
    const-string v1, "IPSEC_XAUTH_PSK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1911
    const-string v1, "IPSEC_XAUTH_RSA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1914
    const-string v1, "IPSEC_IKEV2_PSK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1915
    const-string v1, "IPSEC_IKEV2_RSA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1917
    return-object v0
.end method

.method public declared-synchronized getType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 369
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 370
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 371
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 372
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    iget v3, v1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 375
    :pswitch_0
    const-string v3, "PPTP"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    :goto_1
    monitor-exit p0

    return-object v3

    .line 377
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "p":Lcom/android/internal/net/VpnProfile;
    :pswitch_1
    :try_start_1
    const-string v3, "L2TP_IPSEC_PSK"

    goto :goto_1

    .line 379
    :pswitch_2
    const-string v3, "L2TP_IPSEC"

    goto :goto_1

    .line 381
    :pswitch_3
    const-string v3, "IPSEC_XAUTH_PSK"

    goto :goto_1

    .line 383
    :pswitch_4
    const-string v3, "IPSEC_XAUTH_RSA"

    goto :goto_1

    .line 385
    :pswitch_5
    const-string v3, "IPSEC_HYBRID_RSA"

    goto :goto_1

    .line 392
    :pswitch_6
    const-string v3, "IPSEC_IKEV2_PSK"

    goto :goto_1

    .line 395
    :pswitch_7
    const-string v3, "IPSEC_IKEV2_RSA"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 402
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 368
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public declared-synchronized getUserCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 741
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 742
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 753
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 745
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 746
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 747
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 748
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 749
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 741
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getUserName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 529
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 530
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 531
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 532
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 533
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 534
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 535
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 529
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getUserNameById(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 548
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 549
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "VPN"

    const-string v2, "VpnID"

    const-string v3, "UsrName"

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserPwd(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 568
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 569
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 570
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 571
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 572
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 567
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getUserPwdById(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 558
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 559
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "VPN"

    const-string v2, "VpnID"

    const-string v3, "UsrPwd"

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVPNList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v0, 0x0

    .line 918
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 919
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 921
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-nez v3, :cond_1

    .line 937
    :cond_0
    return-object v0

    .line 925
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 929
    const/4 v2, 0x0

    .line 931
    .local v2, "position":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 933
    .local v0, "VpnList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 934
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    aput-object v4, v0, v2

    .line 935
    add-int/lit8 v2, v2, 0x1

    .line 933
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isAdminProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 893
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 894
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "VPN"

    const-string v6, "VpnID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 896
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 911
    :cond_0
    :goto_0
    return v3

    .line 899
    :cond_1
    if-eqz p2, :cond_0

    .line 902
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 904
    .local v0, "AdminVpnId":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 907
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 908
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isL2TPSecretEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 817
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 818
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 830
    :cond_0
    :goto_0
    return v3

    .line 821
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 822
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 823
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 824
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 826
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    .line 823
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isOnlySecureConnectionsAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1362
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1363
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const-string v2, "allowOnlySecureVPN"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPPTPEncryptionEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 867
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 869
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 885
    :goto_0
    return v2

    .line 872
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 873
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 874
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 875
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 877
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget v2, v2, Lcom/android/internal/net/VpnProfile;->type:I

    if-nez v2, :cond_1

    .line 878
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-boolean v2, v2, Lcom/android/internal/net/VpnProfile;->mppe:Z

    goto :goto_0

    :cond_1
    move v2, v3

    .line 880
    goto :goto_0

    .line 874
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_3
    move v2, v3

    .line 885
    goto :goto_0
.end method

.method public isUserAddProfilesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1764
    const-string v2, "VpnPolicy"

    const-string v3, "isUserAddProfilesAllowed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "VPN"

    const-string v4, "allowUserAddProfiles"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1769
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1771
    .local v0, "ret":Z
    :cond_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 1772
    const v2, 0x10402d6

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1775
    :cond_1
    return v0
.end method

.method public isUserChangeProfilesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1728
    const-string v2, "VpnPolicy"

    const-string v3, "isUserChangeProfilesAllowed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "VPN"

    const-string v4, "allowUserChangeProfiles"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1733
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1735
    .local v0, "ret":Z
    :cond_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 1736
    const v2, 0x10402d5

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1739
    :cond_1
    return v0
.end method

.method public isUserSetAlwaysOnAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1693
    const-string v2, "VpnPolicy"

    const-string v3, "isUserSetAlwaysOnAllowed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "VPN"

    const-string v4, "allowUserSetAlwaysOn"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1698
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1700
    .local v0, "ret":Z
    :cond_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 1701
    const v2, 0x10402d4

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1704
    :cond_1
    return v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1864
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 1870
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 1873
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->canChangeAlwaysOn(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1876
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveAlwaysOnProfileToDb(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    .line 1878
    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1947
    return-void
.end method

.method public setAlwaysOnProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1609
    const-string v4, "VpnPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAlwaysOnProfile - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1612
    const/4 v1, 0x0

    .line 1613
    .local v1, "success":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->canChangeAlwaysOn(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1615
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1617
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v5, "LOCKDOWN_VPN"

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v1

    .line 1628
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1630
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveAlwaysOnProfileToDb(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    .line 1633
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1634
    .local v2, "uid":J
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    .line 1635
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1639
    .end local v2    # "uid":J
    :cond_2
    return v1

    .line 1620
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileByName(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 1621
    .local v0, "profile":Lcom/android/internal/net/VpnProfile;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isValidAlwaysOnProfile(Lcom/android/internal/net/VpnProfile;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1623
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v5, "LOCKDOWN_VPN"

    iget-object v6, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized setCaCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "certificate"    # Ljava/lang/String;

    .prologue
    .line 636
    monitor-enter p0

    const/4 v4, 0x0

    .line 637
    .local v4, "ret":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 638
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 641
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 642
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 643
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 644
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 645
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    iput-object p3, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    :try_start_1
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    const/4 v4, 0x1

    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_0
    move v5, v4

    .line 654
    :goto_0
    monitor-exit p0

    return v5

    .line 649
    .restart local v1    # "index":I
    .restart local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 636
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setDnsDomains(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1157
    .local p3, "searchDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public setDnsServers(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1149
    .local p3, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setEncryptionEnabledForPPTP(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 839
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 840
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 860
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 844
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 845
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 846
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 847
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 848
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_0

    iget v6, v3, Lcom/android/internal/net/VpnProfile;->type:I

    if-nez v6, :cond_0

    .line 849
    move-object v2, v3

    .line 850
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    iput-boolean p3, v2, Lcom/android/internal/net/VpnProfile;->mppe:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 852
    :try_start_2
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 853
    const/4 v5, 0x1

    goto :goto_0

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 839
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setForwardRoutes(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1165
    .local p3, "forwardRoutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "Id"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 198
    monitor-enter p0

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_1

    .line 229
    :cond_0
    :goto_0
    monitor-exit p0

    return v8

    .line 201
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 202
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    .local v1, "cv":Landroid/content/ContentValues;
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 205
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 206
    .local v3, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v6

    .line 207
    .local v6, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 208
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/VpnProfile;

    .line 209
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v5, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 210
    invoke-virtual {v5}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v9

    invoke-static {p3, v9}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    .line 211
    .local v4, "newProfile":Lcom/android/internal/net/VpnProfile;
    invoke-direct {p0, v4, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 212
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V

    .line 213
    const-string v9, "adminUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string v9, "VpnID"

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 216
    .local v0, "columns":[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 219
    .local v7, "values":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    goto :goto_0

    .line 225
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    .end local v7    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 226
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 198
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public setIpSecIdentifier(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "ipSecIdentifier"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1301
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1302
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p3, :cond_1

    .line 1303
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 1304
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1305
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 1306
    .local v3, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v6, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1307
    iput-object p3, v3, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1308
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v2

    .line 1310
    .local v2, "index":I
    :try_start_0
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    const/4 v5, 0x1

    .line 1320
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":I
    .end local v3    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    :goto_0
    return v5

    .line 1311
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "index":I
    .restart local v3    # "p":Lcom/android/internal/net/VpnProfile;
    .restart local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 1312
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "VpnPolicy"

    const-string v7, "VpnInfoPolicy.setIpSecIdentifier() - failed to save profile !"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized setL2TPSecret(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .param p4, "secret"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 762
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 763
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 764
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 765
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 766
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 767
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 768
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v2, 0x0

    .line 769
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_0

    .line 770
    move-object v2, v3

    .line 771
    if-eqz p3, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 772
    iput-object p4, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    :goto_0
    :try_start_1
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 780
    const/4 v5, 0x1

    .line 789
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_0
    :goto_1
    monitor-exit p0

    return v5

    .line 773
    .restart local v1    # "index":I
    .restart local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    if-nez p3, :cond_0

    .line 774
    :try_start_2
    const-string v6, ""

    iput-object v6, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 762
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 781
    .restart local v1    # "index":I
    .restart local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 238
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x21

    if-ge v5, v6, :cond_0

    .line 240
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 241
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 242
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 243
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 244
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v2, 0x0

    .line 245
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_0

    .line 246
    move-object v2, v3

    .line 247
    iput-object p3, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 248
    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 249
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    const/4 v5, 0x1

    .line 258
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return v5

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setOcspServerUrl(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "ocspServerUrl"    # Ljava/lang/String;

    .prologue
    .line 1881
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1882
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1883
    .local v1, "result":Z
    if-nez p3, :cond_0

    .line 1884
    const-string p3, ""

    .line 1887
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1888
    const/4 v2, 0x3

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result v1

    .line 1890
    return v1
.end method

.method public declared-synchronized setPresharedKey(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "psk"    # Ljava/lang/String;

    .prologue
    .line 587
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 588
    const/4 v5, 0x0

    .line 589
    .local v5, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 590
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 593
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 594
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 595
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 596
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 597
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v2, 0x0

    .line 598
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_0

    .line 599
    move-object v2, v3

    .line 600
    iput-object p3, v2, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 601
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    :cond_0
    const/4 v5, 0x1

    .line 610
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    :goto_0
    monitor-exit p0

    return v5

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 587
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "ret":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized setServerName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 267
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 268
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 269
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 270
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 271
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 272
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v2, 0x0

    .line 273
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_0

    .line 274
    move-object v2, v3

    .line 275
    iput-object p3, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 276
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    const/4 v5, 0x1

    .line 284
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return v5

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "certificate"    # Ljava/lang/String;

    .prologue
    .line 682
    monitor-enter p0

    const/4 v4, 0x0

    .line 683
    .local v4, "ret":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 684
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 687
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 688
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 689
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 690
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 691
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    iput-object p3, v2, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    :try_start_1
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 694
    const/4 v4, 0x1

    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_0
    move v5, v4

    .line 700
    :goto_0
    monitor-exit p0

    return v5

    .line 695
    .restart local v1    # "index":I
    .restart local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 682
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 292
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 293
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 294
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    .line 296
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 297
    .local v3, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 298
    .local v5, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 299
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    .line 300
    .local v4, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v4, :cond_0

    .line 301
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 302
    iput-object p3, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 303
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 308
    :goto_0
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V

    .line 309
    const-string v8, "adminUid"

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    const-string v8, "VpnID"

    iget-object v9, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v8, "UsrName"

    iget-object v9, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "adminUid"

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const-string v9, "VpnID"

    aput-object v9, v0, v8

    .line 315
    .local v0, "columns":[Ljava/lang/String;
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    iget-object v9, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object v9, v6, v8

    .line 320
    .local v6, "values":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "VPN"

    invoke-virtual {v8, v9, v0, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 328
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    .end local v6    # "values":[Ljava/lang/String;
    :cond_0
    :goto_1
    monitor-exit p0

    return v7

    .line 305
    .restart local v3    # "index":I
    .restart local v4    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local v5    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    const/4 v8, 0x0

    :try_start_2
    iput-boolean v8, v4, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 306
    const-string v8, ""

    iput-object v8, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 324
    .end local v3    # "index":I
    .end local v4    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v2

    .line 325
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 292
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized setUserPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 336
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 338
    if-eqz p3, :cond_0

    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 339
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 340
    .local v3, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v6

    .line 341
    .local v6, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 342
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/VpnProfile;

    .line 343
    .local v5, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v4, 0x0

    .line 344
    .local v4, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v5, :cond_0

    .line 345
    move-object v4, v5

    .line 346
    iput-object p3, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 347
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V

    .line 348
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 349
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v9, "UsrPwd"

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v9, "adminUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v9, "VpnID"

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 353
    .local v0, "columns":[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 354
    .local v7, "values":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 361
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "index":I
    .end local v4    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    .end local v7    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return v8

    .line 358
    :catch_0
    move-exception v2

    .line 359
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 336
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized setVpnProfile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sName"    # Ljava/lang/String;

    .prologue
    .line 1539
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1557
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1539
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1942
    return-void
.end method
