.class public Landroid/app/StatusBarManager;
.super Ljava/lang/Object;
.source "StatusBarManager.java"


# static fields
.field public static final CALL_BACKGROUND_ENDED:I = 0x2

.field public static final CALL_BACKGROUND_IDLE:I = 0x0

.field public static final CALL_BACKGROUND_NORMAL:I = 0x1

.field public static final CALL_BACKGROUND_ONHOLD:I = 0x3

.field public static final DISABLE_BACK:I = 0x400000

.field public static final DISABLE_CLOCK:I = 0x800000

.field public static final DISABLE_EXPAND:I = 0x10000

.field public static final DISABLE_HOME:I = 0x200000

.field public static final DISABLE_MASK:I = 0x3ff0000

.field public static final DISABLE_NAVIGATION:I = 0x1200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISABLE_NONE:I = 0x0

.field public static final DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final DISABLE_NOTIFICATION_TICKER:I = 0x80000

.field public static final DISABLE_RECENT:I = 0x1000000

.field public static final DISABLE_SEARCH:I = 0x2000000

.field public static final DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final DISABLE_VISIBILITY:I = 0x22b

.field public static final ENABLE_VISIBILITY:I = 0x22c

.field private static LatestGeneralGradationMode:Z = false

.field private static LatestGeneralGradationModeColor:Z = false

.field public static final NAVIGATION_HINT_BACK_ALT:I = 0x1

.field public static final SEALED_MODE_VISIBILITY:I = 0x22d

.field public static final WINDOW_NAVIGATION_BAR:I = 0x2

.field public static final WINDOW_STATE_HIDDEN:I = 0x2

.field public static final WINDOW_STATE_HIDING:I = 0x1

.field public static final WINDOW_STATE_SHOWING:I = 0x0

.field public static final WINDOW_STATUS_BAR:I = 0x1

.field private static bUseWindowTransGradation:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    sput-boolean v0, Landroid/app/StatusBarManager;->LatestGeneralGradationModeColor:Z

    .line 82
    sput-boolean v0, Landroid/app/StatusBarManager;->LatestGeneralGradationMode:Z

    .line 83
    sput-boolean v0, Landroid/app/StatusBarManager;->bUseWindowTransGradation:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    .line 90
    iput-object p1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method private declared-synchronized getService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 97
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 98
    const-string v0, "StatusBarManager"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static windowStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 223
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "WINDOW_STATE_HIDING"

    .line 226
    :goto_0
    return-object v0

    .line 224
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "WINDOW_STATE_HIDDEN"

    goto :goto_0

    .line 225
    :cond_1
    if-nez p0, :cond_2

    const-string v0, "WINDOW_STATE_SHOWING"

    goto :goto_0

    .line 226
    :cond_2
    const-string v0, "WINDOW_STATE_UNKNOWN"

    goto :goto_0
.end method


# virtual methods
.method public blockRecentWindow(Z)V
    .locals 3
    .param p1, "block"    # Z

    .prologue
    .line 385
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 386
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 387
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->blockRecentWindow(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_0
    return-void

    .line 389
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 391
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public collapsePanels()V
    .locals 3

    .prologue
    .line 159
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 160
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 161
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    return-void

    .line 163
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public disable(I)V
    .locals 4
    .param p1, "what"    # I

    .prologue
    .line 110
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 111
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 112
    iget-object v2, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    return-void

    .line 114
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public disableAsUser(II)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "what"    # I

    .prologue
    .line 122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 123
    .local v0, "callingUid":I
    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    .line 124
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Calling uid does not have permission to do this operation"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 129
    .local v2, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_1

    .line 130
    iget-object v3, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, p2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disableAsUser(IILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_1
    return-void

    .line 132
    .end local v2    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public expandNotificationsPanel()V
    .locals 3

    .prologue
    .line 144
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 145
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 146
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    return-void

    .line 148
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public expandSettingsPanel()V
    .locals 3

    .prologue
    .line 174
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 175
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 176
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    return-void

    .line 178
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getAllNotificationsForBridge(Z)Ljava/util/List;
    .locals 3
    .param p1, "includeCallingUserNotifs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 274
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 275
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->getAllNotificationsForBridge(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 281
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :goto_0
    return-object v2

    .line 277
    :catch_0
    move-exception v0

    .line 279
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 281
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPanelExpandState()Z
    .locals 3

    .prologue
    .line 372
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 373
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 374
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->getPanelExpandState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 380
    :goto_0
    return v2

    .line 376
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 378
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 380
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hideCallView()V
    .locals 3

    .prologue
    .line 258
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 259
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 260
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->hideCallView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_0
    return-void

    .line 262
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 264
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 199
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 200
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 201
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->removeIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    return-void

    .line 203
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setCallBackground(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 402
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 403
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 404
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setCallBackground(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :cond_0
    return-void

    .line 406
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 408
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setIcon(Ljava/lang/String;IILjava/lang/String;)V
    .locals 7
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .param p3, "iconLevel"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 186
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 187
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    return-void

    .line 191
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v6

    .line 193
    .local v6, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 211
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 212
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 213
    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_0
    return-void

    .line 215
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setMaxBrightness(I)V
    .locals 3
    .param p1, "maxLevel"    # I

    .prologue
    .line 232
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 233
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 234
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setMaxBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    return-void

    .line 236
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 238
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setPanelExpandState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 359
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 360
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 361
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setPanelExpandState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_0
    return-void

    .line 363
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 365
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setTransGradationMode(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 291
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 292
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 293
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setTransGradationMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :cond_0
    return-void

    .line 295
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 297
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setTransGradationModeColor(ZI)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .prologue
    .line 320
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 321
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 322
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setSemiTransparentMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_0
    return-void

    .line 324
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 326
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setTransGradationModeColorWindow(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 333
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 334
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 335
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setWindowSemiTransparentMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_0
    return-void

    .line 337
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 339
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setTransGradationModeWindow(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 304
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 305
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 306
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setWindowTransGradationMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_0
    return-void

    .line 308
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 310
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setUseWindowTransGradation(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 346
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 347
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 348
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setUseWindowTrans(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_0
    return-void

    .line 350
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 352
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public showCallView()V
    .locals 3

    .prologue
    .line 246
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 247
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 248
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->showCallView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_0
    return-void

    .line 250
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
