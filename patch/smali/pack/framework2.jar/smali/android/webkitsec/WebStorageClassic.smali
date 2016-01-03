.class public Landroid/webkitsec/WebStorageClassic;
.super Landroid/webkitsec/WebStorage;
.source "WebStorageClassic.java"


# static fields
.field private static final CALLBACK:Ljava/lang/String; = "callback"

.field static final DELETE_ALL:I = 0x3

.field static final DELETE_ORIGIN:I = 0x2

.field static final GET_ORIGINS:I = 0x4

.field static final GET_QUOTA_ORIGIN:I = 0x6

.field static final GET_USAGE_ORIGIN:I = 0x5

.field private static final ORIGIN:Ljava/lang/String; = "origin"

.field private static final ORIGINS:Ljava/lang/String; = "origins"

.field private static final QUOTA:Ljava/lang/String; = "quota"

.field static final RETURN_ORIGINS:I = 0x0

.field static final RETURN_QUOTA_ORIGIN:I = 0x2

.field static final RETURN_USAGE_ORIGIN:I = 0x1

.field static final SET_QUOTA_ORIGIN:I = 0x1

.field static final UPDATE:I = 0x0

.field private static final USAGE:Ljava/lang/String; = "usage"

.field private static sWebStorage:Landroid/webkitsec/WebStorageClassic;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOrigins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/webkitsec/WebStorage$Origin;",
            ">;"
        }
    .end annotation
.end field

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 342
    invoke-direct {p0}, Landroid/webkitsec/WebStorage;-><init>()V

    .line 54
    iput-object v0, p0, Landroid/webkitsec/WebStorageClassic;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object v0, p0, Landroid/webkitsec/WebStorageClassic;->mUIHandler:Landroid/os/Handler;

    .line 342
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # J

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Landroid/webkitsec/WebStorageClassic;->nativeSetQuotaForOrigin(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0}, Landroid/webkitsec/WebStorageClassic;->nativeDeleteOrigin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 28
    invoke-static {}, Landroid/webkitsec/WebStorageClassic;->nativeDeleteAllData()V

    return-void
.end method

.method static synthetic access$300(Landroid/webkitsec/WebStorageClassic;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebStorageClassic;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/webkitsec/WebStorageClassic;->syncValues()V

    return-void
.end method

.method static synthetic access$400(Landroid/webkitsec/WebStorageClassic;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebStorageClassic;

    .prologue
    .line 28
    iget-object v0, p0, Landroid/webkitsec/WebStorageClassic;->mOrigins:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkitsec/WebStorageClassic;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebStorageClassic;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/webkitsec/WebStorageClassic;->postUIMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static getInstance()Landroid/webkitsec/WebStorageClassic;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Landroid/webkitsec/WebStorageClassic;->sWebStorage:Landroid/webkitsec/WebStorageClassic;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Landroid/webkitsec/WebStorageClassic;

    invoke-direct {v0}, Landroid/webkitsec/WebStorageClassic;-><init>()V

    sput-object v0, Landroid/webkitsec/WebStorageClassic;->sWebStorage:Landroid/webkitsec/WebStorageClassic;

    .line 312
    :cond_0
    sget-object v0, Landroid/webkitsec/WebStorageClassic;->sWebStorage:Landroid/webkitsec/WebStorageClassic;

    return-object v0
.end method

.method private static native nativeDeleteAllData()V
.end method

.method private static native nativeDeleteOrigin(Ljava/lang/String;)V
.end method

.method private static native nativeGetOrigins()Ljava/util/Set;
.end method

.method private static native nativeGetQuotaForOrigin(Ljava/lang/String;)J
.end method

.method private static native nativeGetUsageForOrigin(Ljava/lang/String;)J
.end method

.method private static native nativeSetAppCacheMaximumSize(J)V
.end method

.method private static native nativeSetQuotaForOrigin(Ljava/lang/String;J)V
.end method

.method private declared-synchronized postMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebStorageClassic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Landroid/webkitsec/WebStorageClassic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private postUIMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 299
    iget-object v0, p0, Landroid/webkitsec/WebStorageClassic;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Landroid/webkitsec/WebStorageClassic;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 302
    :cond_0
    return-void
.end method

.method private syncValues()V
    .locals 8

    .prologue
    .line 332
    invoke-static {}, Landroid/webkitsec/WebStorageClassic;->nativeGetOrigins()Ljava/util/Set;

    move-result-object v7

    .line 333
    .local v7, "tmp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/webkitsec/WebStorageClassic;->mOrigins:Ljava/util/Map;

    .line 334
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 335
    .local v1, "origin":Ljava/lang/String;
    new-instance v0, Landroid/webkitsec/WebStorage$Origin;

    invoke-static {v1}, Landroid/webkitsec/WebStorageClassic;->nativeGetQuotaForOrigin(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1}, Landroid/webkitsec/WebStorageClassic;->nativeGetUsageForOrigin(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/WebStorage$Origin;-><init>(Ljava/lang/String;JJ)V

    .line 338
    .local v0, "website":Landroid/webkitsec/WebStorage$Origin;
    iget-object v2, p0, Landroid/webkitsec/WebStorageClassic;->mOrigins:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 340
    .end local v0    # "website":Landroid/webkitsec/WebStorage$Origin;
    .end local v1    # "origin":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized createHandler()V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebStorageClassic;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Landroid/webkitsec/WebStorageClassic$2;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebStorageClassic$2;-><init>(Landroid/webkitsec/WebStorageClassic;)V

    iput-object v0, p0, Landroid/webkitsec/WebStorageClassic;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createUIHandler()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/webkitsec/WebStorageClassic;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Landroid/webkitsec/WebStorageClassic$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebStorageClassic$1;-><init>(Landroid/webkitsec/WebStorageClassic;)V

    iput-object v0, p0, Landroid/webkitsec/WebStorageClassic;->mUIHandler:Landroid/os/Handler;

    .line 90
    :cond_0
    return-void
.end method

.method public deleteAllData()V
    .locals 2

    .prologue
    .line 270
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Landroid/webkitsec/WebStorageClassic;->nativeDeleteAllData()V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkitsec/WebStorageClassic;->postMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public deleteOrigin(Ljava/lang/String;)V
    .locals 3
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 258
    if-eqz p1, :cond_0

    .line 259
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-static {p1}, Landroid/webkitsec/WebStorageClassic;->nativeDeleteOrigin(Ljava/lang/String;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-instance v2, Landroid/webkitsec/WebStorage$Origin;

    invoke-direct {v2, p1}, Landroid/webkitsec/WebStorage$Origin;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkitsec/WebStorageClassic;->postMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getOrigins(Landroid/webkitsec/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "callback":Landroid/webkitsec/ValueCallback;, "Landroid/webkitsec/ValueCallback<Ljava/util/Map;>;"
    if-eqz p1, :cond_0

    .line 181
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-direct {p0}, Landroid/webkitsec/WebStorageClassic;->syncValues()V

    .line 183
    iget-object v0, p0, Landroid/webkitsec/WebStorageClassic;->mOrigins:Ljava/util/Map;

    invoke-interface {p1, v0}, Landroid/webkitsec/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkitsec/WebStorageClassic;->postMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method getOriginsSync()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/webkitsec/WebStorage$Origin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/webkitsec/WebStorageClassic;->update()V

    .line 197
    iget-object v0, p0, Landroid/webkitsec/WebStorageClassic;->mOrigins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQuotaForOrigin(Ljava/lang/String;Landroid/webkitsec/ValueCallback;)V
    .locals 5
    .param p1, "origin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Landroid/webkitsec/ValueCallback;, "Landroid/webkitsec/ValueCallback<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 225
    if-nez p2, :cond_0

    .line 242
    :goto_0
    return-void

    .line 228
    :cond_0
    if-nez p1, :cond_1

    .line 229
    invoke-interface {p2, v4}, Landroid/webkitsec/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 232
    :cond_1
    const-string v2, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    invoke-direct {p0}, Landroid/webkitsec/WebStorageClassic;->syncValues()V

    .line 234
    iget-object v2, p0, Landroid/webkitsec/WebStorageClassic;->mOrigins:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkitsec/WebStorage$Origin;

    .line 235
    .local v1, "website":Landroid/webkitsec/WebStorage$Origin;
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v1}, Landroid/webkitsec/WebStorage$Origin;->getUsage()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {p2, v2}, Landroid/webkitsec/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 237
    .end local v1    # "website":Landroid/webkitsec/WebStorage$Origin;
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v0, "values":Ljava/util/HashMap;
    const-string/jumbo v2, "origin"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v2, "callback"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const/4 v2, 0x6

    invoke-static {v4, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkitsec/WebStorageClassic;->postMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getUsageForOrigin(Ljava/lang/String;Landroid/webkitsec/ValueCallback;)V
    .locals 5
    .param p1, "origin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Landroid/webkitsec/ValueCallback;, "Landroid/webkitsec/ValueCallback<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 204
    if-nez p2, :cond_0

    .line 221
    :goto_0
    return-void

    .line 207
    :cond_0
    if-nez p1, :cond_1

    .line 208
    invoke-interface {p2, v4}, Landroid/webkitsec/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    :cond_1
    const-string v2, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    invoke-direct {p0}, Landroid/webkitsec/WebStorageClassic;->syncValues()V

    .line 213
    iget-object v2, p0, Landroid/webkitsec/WebStorageClassic;->mOrigins:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkitsec/WebStorage$Origin;

    .line 214
    .local v1, "website":Landroid/webkitsec/WebStorage$Origin;
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v1}, Landroid/webkitsec/WebStorage$Origin;->getUsage()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {p2, v2}, Landroid/webkitsec/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 216
    .end local v1    # "website":Landroid/webkitsec/WebStorage$Origin;
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v0, "values":Ljava/util/HashMap;
    const-string/jumbo v2, "origin"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v2, "callback"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const/4 v2, 0x5

    invoke-static {v4, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkitsec/WebStorageClassic;->postMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setAppCacheMaximumSize(J)V
    .locals 0
    .param p1, "size"    # J

    .prologue
    .line 283
    invoke-static {p1, p2}, Landroid/webkitsec/WebStorageClassic;->nativeSetAppCacheMaximumSize(J)V

    .line 284
    return-void
.end method

.method public setQuotaForOrigin(Ljava/lang/String;J)V
    .locals 3
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "quota"    # J

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    invoke-static {p1, p2, p3}, Landroid/webkitsec/WebStorageClassic;->nativeSetQuotaForOrigin(Ljava/lang/String;J)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Landroid/webkitsec/WebStorage$Origin;

    invoke-direct {v2, p1, p2, p3}, Landroid/webkitsec/WebStorage$Origin;-><init>(Ljava/lang/String;J)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkitsec/WebStorageClassic;->postMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public update()V
    .locals 2

    .prologue
    .line 320
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-direct {p0}, Landroid/webkitsec/WebStorageClassic;->syncValues()V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkitsec/WebStorageClassic;->postMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
