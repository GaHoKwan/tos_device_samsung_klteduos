.class Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperSimChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WallpaperManagerService;)V
    .locals 0

    .prologue
    .line 1801
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1804
    const-string v0, "WallpaperService"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v7, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1808
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 1844
    .local v6, "action":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 1846
    .local v4, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    const-string v0, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1847
    const-string v0, "WallpaperService"

    const-string v1, "multiSIM_duos ACTION_DEFAULT_CS_SIM_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    monitor-exit v7

    .line 1859
    :goto_0
    return-void

    .line 1851
    :cond_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/WallpaperManagerService;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-boolean v0, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    if-eqz v0, :cond_2

    .line 1852
    :cond_1
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    # invokes: Lcom/android/server/WallpaperManagerService;->SimStatusVerify()I
    invoke-static {v1}, Lcom/android/server/WallpaperManagerService;->access$800(Lcom/android/server/WallpaperManagerService;)I

    move-result v1

    iput v1, v0, Lcom/android/server/WallpaperManagerService;->whichSimSetWallpaper:I

    .line 1853
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    sget-object v1, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1855
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    # invokes: Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    invoke-static {v0, v4}, Lcom/android/server/WallpaperManagerService;->access$200(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 1858
    :cond_2
    monitor-exit v7

    goto :goto_0

    .end local v4    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    .end local v6    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
