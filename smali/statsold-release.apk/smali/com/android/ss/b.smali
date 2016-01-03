.class final Lcom/android/ss/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/android/ss/SyncService;


# direct methods
.method constructor <init>(Lcom/android/ss/SyncService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ss/b;->a:Lcom/android/ss/SyncService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/ss/b;->a:Lcom/android/ss/SyncService;

    invoke-virtual {v0}, Lcom/android/ss/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {}, Lcom/android/ss/c;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/ss/c/f;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/ss/b;->a:Lcom/android/ss/SyncService;

    invoke-virtual {v0}, Lcom/android/ss/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "lastcir"

    invoke-static {}, Lcom/android/ss/c;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/ss/c/f;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v6, v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/ss/c;->a(Landroid/content/Context;)Z

    :cond_0
    const-string v1, "lastcia"

    invoke-static {}, Lcom/android/ss/c;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/ss/c/f;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v6, v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/ss/c;->c()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ss/c;->a(Landroid/content/Context;Z)Z

    invoke-static {v0}, Lcom/android/ss/c;->b(Landroid/content/Context;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/ss/b;->a:Lcom/android/ss/SyncService;

    invoke-static {}, Lcom/android/ss/c;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/ss/SyncService;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    sput-boolean v4, Lcom/android/ss/SyncService;->a:Z

    iget-object v0, p0, Lcom/android/ss/b;->a:Lcom/android/ss/SyncService;

    iput-object v5, v0, Lcom/android/ss/SyncService;->b:Ljava/lang/Thread;

    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/ss/b;->a:Lcom/android/ss/SyncService;

    invoke-static {}, Lcom/android/ss/c;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/ss/SyncService;->a(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v4, Lcom/android/ss/SyncService;->a:Z

    iget-object v0, p0, Lcom/android/ss/b;->a:Lcom/android/ss/SyncService;

    iput-object v5, v0, Lcom/android/ss/SyncService;->b:Ljava/lang/Thread;

    goto :goto_1

    :catchall_0
    move-exception v0

    sput-boolean v4, Lcom/android/ss/SyncService;->a:Z

    iget-object v1, p0, Lcom/android/ss/b;->a:Lcom/android/ss/SyncService;

    iput-object v5, v1, Lcom/android/ss/SyncService;->b:Ljava/lang/Thread;

    throw v0
.end method
