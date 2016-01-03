.class Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
.super Ljava/lang/Object;
.source "CoverManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverStateListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;

.field final token:Landroid/os/IBinder;

.field final type:I

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "type"    # I

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p2, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    .line 256
    iput-object p3, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    .line 257
    iput p4, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->pid:I

    .line 258
    iput p5, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->uid:I

    .line 259
    iput p6, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->type:I

    .line 260
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 264
    const-string v0, "CoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->this$0:Lcom/android/server/cover/CoverManagerService;

    # getter for: Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$900(Lcom/android/server/cover/CoverManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->this$0:Lcom/android/server/cover/CoverManagerService;

    # getter for: Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$900(Lcom/android/server/cover/CoverManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 267
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 269
    return-void

    .line 267
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCoverAttachStateChanged(Z)V
    .locals 4
    .param p1, "attached"    # Z

    .prologue
    .line 308
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    .line 309
    const-string v2, "CoverManager"

    const-string v3, "null listener received CoverState!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget v2, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->type:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 314
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;

    move-result-object v0

    .line 316
    .local v0, "callback":Lcom/samsung/android/cover/ICoverStateListenerCallback;
    if-eqz v0, :cond_0

    .line 317
    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback;->onCoverAttachStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    .end local v0    # "callback":Lcom/samsung/android/cover/ICoverStateListenerCallback;
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "Failed onCoverAttachStateChanged callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 272
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    .line 273
    const-string v2, "CoverManager"

    const-string v3, "null listener received CoverState!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget v2, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 278
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/ICoverManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManagerCallback;

    move-result-object v0

    .line 280
    .local v0, "callback":Lcom/samsung/android/cover/ICoverManagerCallback;
    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverManagerCallback;->coverCallback(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    .end local v0    # "callback":Lcom/samsung/android/cover/ICoverManagerCallback;
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "Failed onCoverStateChanged coverCallback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverSwitchStateChanged(Z)V
    .locals 4
    .param p1, "switchState"    # Z

    .prologue
    .line 290
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    .line 291
    const-string v2, "CoverManager"

    const-string v3, "null listener received CoverState!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget v2, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->type:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 296
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;

    move-result-object v0

    .line 298
    .local v0, "callback":Lcom/samsung/android/cover/ICoverStateListenerCallback;
    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback;->onCoverSwitchStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    .end local v0    # "callback":Lcom/samsung/android/cover/ICoverStateListenerCallback;
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "Failed onCoverSwitchStateChanged callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
