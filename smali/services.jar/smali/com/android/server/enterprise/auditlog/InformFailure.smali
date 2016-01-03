.class public Lcom/android/server/enterprise/auditlog/InformFailure;
.super Ljava/lang/Object;
.source "InformFailure.java"


# static fields
.field private static mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;
    .locals 2

    .prologue
    .line 51
    const-class v1, Lcom/android/server/enterprise/auditlog/InformFailure;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/auditlog/InformFailure;->mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/server/enterprise/auditlog/InformFailure;

    invoke-direct {v0}, Lcom/android/server/enterprise/auditlog/InformFailure;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/auditlog/InformFailure;->mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 54
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/auditlog/InformFailure;->mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "pack"    # Ljava/lang/String;

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "mdm.intent.action.audit.log.exception"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "AUDIT_LOG_EXCEPTION"

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 67
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 68
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 69
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v1    # "token":J
    :cond_1
    monitor-exit p0

    return-void

    .line 61
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "err"    # Ljava/lang/String;
    .param p2, "pack"    # Ljava/lang/String;

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "mdm.intent.action.audit.log.exception"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "AUDIT_LOG_EXCEPTION"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 80
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 81
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 82
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v1    # "token":J
    :cond_1
    monitor-exit p0

    return-void

    .line 74
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
