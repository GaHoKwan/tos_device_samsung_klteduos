.class public Lcom/android/ss/SyncService;
.super Landroid/app/Service;


# static fields
.field public static a:Z

.field private static final c:Ljava/lang/String;


# instance fields
.field b:Ljava/lang/Thread;

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/ss/SyncService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ss/SyncService;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/ss/SyncService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/ss/SyncService;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ss/SyncService;->b:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    sget-object v0, Lcom/android/ss/SyncService;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/ss/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/android/ss/StartupReceiver;->a(Landroid/content/Context;JZ)V

    invoke-virtual {p0}, Lcom/android/ss/SyncService;->stopSelf()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/ss/SyncService;->a:Z

    sget-object v0, Lcom/android/ss/SyncService;->c:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/android/ss/SyncService;->c:Ljava/lang/String;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    sget-object v0, Lcom/android/ss/SyncService;->c:Ljava/lang/String;

    sget-boolean v0, Lcom/android/ss/SyncService;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/ss/SyncService;->a:Z

    new-instance v0, Lcom/android/ss/b;

    invoke-direct {v0, p0}, Lcom/android/ss/b;-><init>(Lcom/android/ss/SyncService;)V

    iput-object v0, p0, Lcom/android/ss/SyncService;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/ss/SyncService;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/ss/SyncService;->c:Ljava/lang/String;

    goto :goto_0
.end method
