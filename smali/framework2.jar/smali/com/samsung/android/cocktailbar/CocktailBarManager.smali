.class public Lcom/samsung/android/cocktailbar/CocktailBarManager;
.super Ljava/lang/Object;
.source "CocktailBarManager.java"


# static fields
.field public static final ACTION_COCKTAIL_DELETED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_DELETED"

.field public static final ACTION_COCKTAIL_DISABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

.field public static final ACTION_COCKTAIL_DROPED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_DROPED"

.field public static final ACTION_COCKTAIL_ENABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

.field public static final ACTION_COCKTAIL_UPDATE:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL:I = 0x10000

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_CALLING:I = 0x10002

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_HEADSET:I = 0x10005

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_INCOMING_CALL:I = 0x10001

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_NOTIFICATION:I = 0x10004

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_SPEN:I = 0x10006

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_TICKER:I = 0x10003

.field public static final COCKTAIL_CATEGORY_GLOBAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_ALL:I = 0xf

.field public static final COCKTAIL_DISPLAY_POLICY_GENERAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_LOCKSCREEN:I = 0x2

.field public static final COCKTAIL_DISPLAY_POLICY_SCOVER:I = 0x4

.field public static final COCKTAIL_DISPLAY_POLICY_TABLE_MODE:I = 0x8

.field public static final EXTRA_COCKTAIL_ID:Ljava/lang/String; = "cocktailId"

.field public static final EXTRA_COCKTAIL_IDS:Ljava/lang/String; = "cocktailIds"

.field public static final EXTRA_COCKTAIL_PROVIDER:Ljava/lang/String; = "cocktailProvider"

.field public static final EXTRA_DRAG_EVENT:Ljava/lang/String; = "com.samsung.android.intent.extra.DRAG_EVENT"

.field public static final INVALID_COCKTAIL_ID:I = 0x0

.field public static final META_DATA_COCKTAIL_PROVIDER:Ljava/lang/String; = "com.samsung.android.cocktail.provider"

.field static final TAG:Ljava/lang/String; = "CocktailBarManager"

.field static sManagerCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailBarManager;",
            ">;>;"
        }
    .end annotation
.end field

.field static sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;


# instance fields
.field mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sManagerCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 128
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sManagerCache:Ljava/util/WeakHashMap;

    monitor-enter v4

    .line 107
    :try_start_0
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v3, :cond_0

    .line 108
    const-string v3, "CocktailBarService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 109
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    .line 112
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sManagerCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 113
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/cocktailbar/CocktailBarManager;>;"
    const/4 v2, 0x0

    .line 114
    .local v2, "result":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    check-cast v2, Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .line 117
    .restart local v2    # "result":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :cond_1
    if-nez v2, :cond_2

    .line 118
    new-instance v2, Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .end local v2    # "result":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    invoke-direct {v2, p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;-><init>(Landroid/content/Context;)V

    .line 119
    .restart local v2    # "result":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sManagerCache:Ljava/util/WeakHashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_2
    monitor-exit v4

    return-object v2

    .line 122
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/cocktailbar/CocktailBarManager;>;"
    .end local v2    # "result":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "connection"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 214
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public closeCocktail(I)V
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 161
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->closeCocktail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 185
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktail(II)Lcom/samsung/android/cocktailbar/Cocktail;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailId()I
    .locals 4

    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    .line 135
    :cond_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailId(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailIds(I)[I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 177
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailIds(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyCocktailViewDataChanged(II)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I

    .prologue
    .line 169
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailViewDataChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToUpdateCocktail(I)Z
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 193
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToUpdateCocktail(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 233
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unbindRemoteViewsService(ILandroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateCocktail(IIIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p4, "icon"    # I
    .param p5, "contentView"    # Landroid/widget/RemoteViews;
    .param p6, "footerView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 143
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 145
    .local v1, "configuration":Landroid/content/res/Configuration;
    :try_start_0
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setIcon(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p6}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setFooterView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 153
    .local v0, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v3, v4, v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(ILcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-void

    .line 154
    .end local v0    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
