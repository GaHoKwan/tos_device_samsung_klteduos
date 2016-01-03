.class public Lcom/android/server/enterprise/auditlog/AuditLogService;
.super Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;
.source "AuditLogService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final AUDIT_LOG_SERVICE:Ljava/lang/String; = "AuditLogService"

.field private static final mEnableLowLevelLog:Z = true


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

.field private volatile mIsBootCompleted:Z

.field private mLinkedHashMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;-><init>()V

    .line 111
    new-instance v4, Lcom/android/server/enterprise/auditlog/AuditLogService$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/auditlog/AuditLogService$1;-><init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 81
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 82
    new-instance v4, Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-direct {v4}, Lcom/android/server/enterprise/auditlog/IptablesLogging;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    .line 83
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    .line 84
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 85
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->createAdmins()V

    .line 87
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/auditlog/InformFailure;->setContext(Landroid/content/Context;)V

    .line 89
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v1, "IFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v4, "android.intent.action.REBOOT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    const/4 v2, 0x0

    .line 96
    .local v2, "admin":Lcom/android/server/enterprise/auditlog/Admin;
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v5

    .line 98
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 99
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/Admin;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v2, v0

    .line 101
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOn()V

    .line 107
    :cond_1
    monitor-exit v5

    .line 109
    return-void

    .line 107
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/Admin;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/AuditLogService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/AuditLogService;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    return p1
.end method

.method private createAdmins()V
    .locals 9

    .prologue
    .line 181
    const/4 v7, 0x6

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "adminUid"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const-string v8, "auditCriticalSize"

    aput-object v8, v1, v7

    const/4 v7, 0x2

    const-string v8, "auditMaximumSize"

    aput-object v8, v1, v7

    const/4 v7, 0x3

    const-string v8, "auditLogIptables"

    aput-object v8, v1, v7

    const/4 v7, 0x4

    const-string v8, "auditLogMDM"

    aput-object v8, v1, v7

    const/4 v7, 0x5

    const-string v8, "auditLogEnabled"

    aput-object v8, v1, v7

    .line 185
    .local v1, "columns":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "AUDITLOG"

    invoke-virtual {v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 187
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v2, 0x0

    .line 188
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 189
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 190
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 191
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 192
    .local v6, "uid":I
    const-string v7, "auditLogEnabled"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 193
    new-instance v0, Lcom/android/server/enterprise/auditlog/Admin;

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v7, v8}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .line 194
    .local v0, "admin":Lcom/android/server/enterprise/auditlog/Admin;
    const-string v7, "auditCriticalSize"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/auditlog/Admin;->setCriticalLogSize(I)V

    .line 195
    const-string v7, "auditMaximumSize"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/auditlog/Admin;->setMaximumLogSize(I)V

    .line 196
    const-string v7, "auditLogIptables"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    .line 197
    const-string v7, "auditLogMDM"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/auditlog/Admin;->setMDMLogging(Z)V

    .line 198
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getDeviceInfo()Ljava/util/List;

    move-result-object v5

    .line 200
    .local v5, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/auditlog/Admin;->setDeviceInfo(Ljava/util/List;)V

    goto :goto_0

    .line 203
    .end local v0    # "admin":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v5    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "uid":I
    :cond_1
    return-void
.end method

.method private enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceInfo()Ljava/util/List;
    .locals 5
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
    .line 154
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/app/enterprise/DeviceInventory;

    move-result-object v0

    .line 155
    .local v0, "deviceInventory":Landroid/app/enterprise/DeviceInventory;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v2, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, " -----------------------------------------\n"

    .line 158
    .local v1, "separator":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OEM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/enterprise/DeviceInventory;->getDeviceMaker()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEVICE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/enterprise/DeviceInventory;->getModelNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLATFORM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/enterprise/DeviceInventory;->getDevicePlatform()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/enterprise/DeviceInventory;->getDeviceOS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OS VERSION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/enterprise/DeviceInventory;->getDeviceOSVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BASEBAND: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/enterprise/DeviceInventory;->getModemFirmware()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEVICE ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/enterprise/DeviceInventory;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-object v2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 689
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    const/16 v0, 0x4e1f

    if-le p1, v0, :cond_1

    .line 690
    :cond_0
    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 692
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public AuditLogger(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "uid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 464
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 465
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v5, 0x1

    if-ne p4, v5, :cond_0

    const-string v5, "1"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 468
    .local v4, "newData":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 470
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 471
    .local v2, "c":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 473
    .local v1, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v6

    .line 474
    :try_start_0
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 475
    .local v3, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 476
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v1, v0

    .line 477
    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/auditlog/Admin;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 479
    .end local v3    # "it":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 465
    .end local v1    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v2    # "c":Ljava/util/Collection;
    .end local v4    # "newData":Ljava/lang/String;
    :cond_0
    const-string v5, "0"

    goto :goto_0

    .line 479
    .restart local v1    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v2    # "c":Ljava/util/Collection;
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v4    # "newData":Ljava/lang/String;
    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    .end local v1    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v2    # "c":Ljava/util/Collection;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "newData":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public AuditLoggerForContentProvider(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "uid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    const-string v1, "AuditLogService"

    const-string v2, "AuditLogger"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public disableAuditLog(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceOwnerOnlyAndAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 424
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 425
    .local v2, "uid":I
    const/4 v1, 0x1

    .line 427
    .local v1, "ret":Z
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 429
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_1

    .line 430
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    const-string v5, "auditLogEnabled"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 433
    if-eqz v1, :cond_1

    .line 434
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 435
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 438
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/enterprise/utils/EDMNativeHelper;->setAuditEnabled(Z)V

    .line 441
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v4, "AuditLog/isAuditLogEnabled"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 448
    :cond_1
    return v1
.end method

.method public disableIPTablesLogging(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x0

    .line 254
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceOwnerOnlyAndAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 255
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 256
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 257
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v2, 0x0

    .line 259
    .local v2, "ret":Z
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v4

    if-nez v4, :cond_1

    .line 261
    const/4 v2, 0x1

    .line 272
    :cond_0
    :goto_0
    return v2

    .line 263
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 264
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "auditLogIptables"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "AUDITLOG"

    invoke-virtual {v4, v3, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 266
    if-eqz v2, :cond_0

    .line 267
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOff()V

    .line 268
    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    goto :goto_0
.end method

.method public declared-synchronized dumpLogFile(Landroid/app/enterprise/ContextInfo;JJLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "begin"    # J
    .param p4, "end"    # J
    .param p6, "filter"    # Ljava/lang/String;
    .param p7, "outputFile"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v1, 0x0

    .line 608
    monitor-enter p0

    if-nez p7, :cond_1

    .line 621
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 610
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceOwnerOnlyAndAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 611
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 612
    .local v6, "uid":I
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 613
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getDumpState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 615
    invoke-virtual {v0, p6}, Lcom/android/server/enterprise/auditlog/Admin;->setFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p7

    .line 618
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/auditlog/Admin;->dump(JJLandroid/os/ParcelFileDescriptor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    goto :goto_0

    .line 608
    .end local v0    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v6    # "uid":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public enableAuditLog(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x1

    .line 389
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceOwnerOnlyAndAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 390
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 392
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    move v2, v4

    .line 414
    :cond_0
    :goto_0
    return v2

    .line 395
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 396
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "auditLogEnabled"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "AUDITLOG"

    invoke-virtual {v5, v3, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 398
    .local v2, "ret":Z
    if-eqz v2, :cond_0

    .line 399
    iput-boolean v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    .line 400
    new-instance v0, Lcom/android/server/enterprise/auditlog/Admin;

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v3, v5, v6}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .line 401
    .local v0, "adm":Lcom/android/server/enterprise/auditlog/Admin;
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getDeviceInfo()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/auditlog/Admin;->setDeviceInfo(Ljava/util/List;)V

    .line 402
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-boolean v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V

    .line 406
    invoke-static {v4}, Lcom/android/server/enterprise/utils/EDMNativeHelper;->setAuditEnabled(Z)V

    .line 409
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v5, "AuditLog/isAuditLogEnabled"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public enableIPTablesLogging(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x1

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceOwnerOnlyAndAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 231
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 232
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 233
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v2, 0x0

    .line 234
    .local v2, "ret":Z
    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 247
    :goto_0
    return v4

    .line 238
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "auditLogIptables"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "AUDITLOG"

    invoke-virtual {v5, v3, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 241
    if-eqz v2, :cond_1

    .line 242
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v5}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOn()V

    .line 243
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_1
    move v4, v2

    .line 247
    goto :goto_0
.end method

.method public getCriticalLogSize(Landroid/app/enterprise/ContextInfo;)I
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 543
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 544
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 546
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getCriticalLogSize()I

    move-result v1

    .line 549
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentLogFileSize(Landroid/app/enterprise/ContextInfo;)I
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 499
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 501
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getCurrentLogFileSize()I

    move-result v1

    .line 505
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumLogSize(Landroid/app/enterprise/ContextInfo;)I
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 587
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 589
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getMaximumLogSize()I

    move-result v1

    .line 592
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAuditLogEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 211
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x1

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuditServiceRunning()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isIPTablesLoggingEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 280
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 282
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v1

    .line 285
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 645
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 673
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 674
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 675
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    .line 677
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 680
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/utils/EDMNativeHelper;->setAuditEnabled(Z)V

    .line 683
    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 654
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 655
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 656
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    .line 658
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 659
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/utils/EDMNativeHelper;->setAuditEnabled(Z)V

    .line 663
    :cond_0
    return-void
.end method

.method public setCriticalLogSize(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "percentageValue"    # I

    .prologue
    .line 516
    const/4 v1, 0x0

    .line 518
    .local v1, "ret":Z
    const/4 v4, 0x1

    if-lt p2, v4, :cond_0

    const/16 v4, 0x63

    if-le p2, v4, :cond_1

    :cond_0
    move v2, v1

    .line 534
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 521
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceOwnerOnlyAndAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 522
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 523
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 525
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_3

    .line 526
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "AUDITLOG"

    const-string v6, "auditCriticalSize"

    invoke-virtual {v4, v3, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 528
    if-nez v1, :cond_2

    .line 529
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v4

    const-string v5, "Cannot set critcal log size on Databank"

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setCriticalLogSize(I)V

    :cond_3
    move v2, v1

    .line 534
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public setMaximumLogSize(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "percentageValue"    # I

    .prologue
    .line 559
    const/4 v1, 0x0

    .line 561
    .local v1, "ret":Z
    const/4 v4, 0x1

    if-lt p2, v4, :cond_0

    const/16 v4, 0x63

    if-le p2, v4, :cond_1

    :cond_0
    move v2, v1

    .line 577
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 564
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceOwnerOnlyAndAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 565
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 566
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 568
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_3

    .line 569
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "AUDITLOG"

    const-string v6, "auditMaximumSize"

    invoke-virtual {v4, v3, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 571
    if-nez v1, :cond_2

    .line 572
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v4

    const-string v5, "Cannot set maximum log size on databank"

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setMaximumLogSize(I)V

    :cond_3
    move v2, v1

    .line 577
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method
