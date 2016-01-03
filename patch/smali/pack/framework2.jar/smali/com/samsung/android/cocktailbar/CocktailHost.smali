.class public Lcom/samsung/android/cocktailbar/CocktailHost;
.super Ljava/lang/Object;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;,
        Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;,
        Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;
    }
.end annotation


# static fields
.field static final HANDLE_CLOSE_CONTEXTUAL:I = 0x3

.field static final HANDLE_REMOVE:I = 0x2

.field static final HANDLE_UPDATE:I = 0x1

.field static final HANDLE_UPDATE_TOOL_LAUNCHER:I = 0x5

.field static final HANDLE_VIEW_DATA_CHANGED:I = 0x4

.field static sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

.field static final sServiceLock:Ljava/lang/Object;


# instance fields
.field mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

.field mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailHost;->sServiceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbackListener"    # Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;-><init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;Landroid/os/Looper;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbackListener"    # Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    invoke-direct {v0, p0}, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;-><init>(Lcom/samsung/android/cocktailbar/CocktailHost;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    .line 139
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContext:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    .line 141
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;-><init>(Lcom/samsung/android/cocktailbar/CocktailHost;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mHandler:Landroid/os/Handler;

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailHost;->bindService()V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cocktailbar/CocktailHost;ILcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->removeCocktail(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->closeContextualCocktail(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/cocktailbar/CocktailHost;III)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->viewDataChanged(III)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/cocktailbar/CocktailHost;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost;->updateToolLauncher(I)V

    return-void
.end method

.method private bindService()V
    .locals 6

    .prologue
    .line 146
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailHost;->sServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    .line 148
    const-string v1, "CocktailBarService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 149
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v1, v3, v4, v5}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 153
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private closeContextualCocktail(II)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onCloseContextualCocktail(II)V

    .line 189
    return-void
.end method

.method private isLocalBinder()Z
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeCocktail(II)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onRemoveCocktail(II)V

    .line 185
    return-void
.end method

.method private updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p3, "userId"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onUpdateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 181
    return-void
.end method

.method private updateToolLauncher(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onUpdateToolLauncher(I)V

    .line 197
    return-void
.end method

.method private viewDataChanged(III)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onViewDataChanged(III)V

    .line 193
    return-void
.end method


# virtual methods
.method public startListening()V
    .locals 9

    .prologue
    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v1, "cocktails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 165
    .local v5, "userId":I
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mPackageName:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 166
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mPackageName:Ljava/lang/String;

    .line 168
    :cond_0
    sget-object v6, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v7, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v8, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mPackageName:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v1, v5}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;Ljava/util/List;I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 173
    .local v4, "updatedIds":[I
    array-length v0, v4

    .line 174
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 175
    aget v7, v4, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/cocktailbar/Cocktail;

    invoke-direct {p0, v7, v6, v5}, Lcom/samsung/android/cocktailbar/CocktailHost;->updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "updatedIds":[I
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "system server dead?"

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 177
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    .restart local v4    # "updatedIds":[I
    :cond_1
    return-void
.end method
