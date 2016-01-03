.class public Lcom/android/server/enterprise/auditlog/Admin;
.super Ljava/lang/Object;
.source "Admin.java"

# interfaces
.implements Lcom/android/server/enterprise/auditlog/IObserver;


# instance fields
.field private mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

.field private mBegin:J

.field private mContext:Landroid/content/Context;

.field private mDeviceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field private mEnd:J

.field private mIptablesLogging:Z

.field private volatile mIsDumping:Z

.field private mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

.field private mMdmLogging:Z

.field private mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/android/server/enterprise/auditlog/LogWritter;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/enterprise/auditlog/LogWritter;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 55
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setObserver(Lcom/android/server/enterprise/auditlog/IObserver;)V

    .line 57
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIptablesLogging:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mMdmLogging:Z

    .line 60
    iput-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 61
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mContext:Landroid/content/Context;

    .line 62
    iput-wide v4, p0, Lcom/android/server/enterprise/auditlog/Admin;->mBegin:J

    .line 63
    iput-wide v4, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEnd:J

    .line 64
    return-void
.end method


# virtual methods
.method deleteAllFiles()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->deleteAllFiles()V

    .line 115
    return-void
.end method

.method dump(JJLandroid/os/ParcelFileDescriptor;)Z
    .locals 3
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "outputFile"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 79
    iget-boolean v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    if-nez v1, :cond_0

    .line 80
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    .line 81
    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mBegin:J

    .line 82
    iput-wide p3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEnd:J

    .line 83
    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/Admin;->mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 84
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v1, p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setObserver(Lcom/android/server/enterprise/auditlog/IObserver;)V

    .line 85
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setIsDumping(ZZ)V

    .line 86
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    const-string/jumbo v1, "swap"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/LogWritter;->swapFiles(Ljava/lang/String;)V

    .line 87
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    .line 89
    :cond_0
    return v0
.end method

.method getCriticalLogSize()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getCriticalLogSize()I

    move-result v0

    return v0
.end method

.method getCurrentLogFileSize()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getCurrentLogFileSize()I

    move-result v0

    return v0
.end method

.method getDumpState()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    return v0
.end method

.method getIptablesLogging()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIptablesLogging:Z

    return v0
.end method

.method getMDMLogging()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mMdmLogging:Z

    return v0
.end method

.method getMaximumLogSize()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getMaximumLogSize()I

    move-result v0

    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public notifyDumpFinished(ZZ)V
    .locals 6
    .param p1, "result"    # Z
    .param p2, "isFull"    # Z

    .prologue
    const/4 v4, 0x0

    .line 160
    iput-boolean v4, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    .line 161
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/auditlog/LogWritter;->setTypeOfDump(Z)V

    .line 162
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setIsDumping(ZZ)V

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v3, "mdm.intent.action.dump.audit.log.result"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 166
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    :cond_0
    if-eqz p1, :cond_1

    .line 170
    const-string v3, "mdm.intent.extra.audit.log.result"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 177
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 178
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    return-void

    .line 172
    .end local v1    # "token":J
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v3

    const-string v4, "Dump failed! Sending Intent!"

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v3, "mdm.intent.extra.audit.log.result"

    const/16 v4, -0x7d0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public notifyReadyToDump(Z)V
    .locals 8
    .param p1, "result"    # Z

    .prologue
    .line 145
    if-eqz p1, :cond_1

    .line 146
    new-instance v0, Lcom/android/server/enterprise/auditlog/Dumper;

    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mBegin:J

    iget-wide v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEnd:J

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Admin;->mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/LogWritter;->getDumpFilesList()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/auditlog/Dumper;-><init>(JJLandroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/android/server/enterprise/auditlog/IObserver;)V

    .line 148
    .local v0, "d":Lcom/android/server/enterprise/auditlog/Dumper;
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDeviceInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->setDeviceInfo(Ljava/util/List;)V

    .line 151
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->setPackageName(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 154
    .end local v0    # "d":Lcom/android/server/enterprise/auditlog/Dumper;
    :cond_1
    return-void
.end method

.method setBootCompleted(Z)V
    .locals 1
    .param p1, "boot"    # Z

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setBootCompleted(Z)V

    .line 139
    return-void
.end method

.method setCriticalLogSize(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setCriticalLogSize(I)V

    .line 95
    return-void
.end method

.method setDeviceInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDeviceInfo:Ljava/util/List;

    .line 72
    return-void
.end method

.method setFilter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    new-instance v0, Lcom/android/server/enterprise/auditlog/Filter;

    invoke-direct {v0}, Lcom/android/server/enterprise/auditlog/Filter;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 194
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/Filter;->setFilter(Ljava/lang/String;)Z

    move-result v0

    .line 198
    :goto_0
    return v0

    .line 197
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 198
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setIptablesLogging(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIptablesLogging:Z

    .line 123
    return-void
.end method

.method setMDMLogging(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mMdmLogging:Z

    .line 131
    return-void
.end method

.method setMaximumLogSize(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setMaximumLogSize(I)V

    .line 103
    return-void
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->shutdown()V

    .line 119
    return-void
.end method

.method write(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->write(Ljava/lang/String;)V

    .line 68
    return-void
.end method
