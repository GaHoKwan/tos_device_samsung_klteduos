.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$SettingsObserver;,
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    }
.end annotation


# static fields
.field private static final MIN_UPDATE_PERIOD:I = 0x1b7740

.field private static final TAG:Ljava/lang/String; = "CocktailBarManagerServiceImpl"


# instance fields
.field private final DEBUG:Z

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBoundRemoteViewsServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

.field private final mCocktailArr:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHasFeature:Z

.field private mLocale:Ljava/util/Locale;

.field private mNextCocktailId:I

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private mPolicy:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

.field private final mRemoteViewsServicesCocktails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

.field private final mSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$SettingsObserver;

.field private mStateLoaded:Z

.field private final mUserId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    .line 192
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 193
    iput p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 195
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    .line 196
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$SettingsObserver;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$SettingsObserver;

    .line 197
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cocktailbar"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHasFeature:Z

    .line 199
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocale:Ljava/util/Locale;

    .line 200
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->systemReady()V

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateFromSettingsLocked()V

    return-void
.end method

.method private addProviderLocked(Landroid/content/pm/ResolveInfo;)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v1, 0x0

    .line 311
    const-string v2, "CocktailBarManagerServiceImpl"

    const-string v3, "addProviderLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 326
    :goto_0
    return-object v0

    .line 315
    :cond_0
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 316
    const-string v2, "CocktailBarManagerServiceImpl"

    const-string v3, "addProviderLocked : disable"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 317
    goto :goto_0

    .line 319
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 321
    .local v0, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_2

    .line 322
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 323
    const-string v1, "CocktailBarManagerServiceImpl"

    const-string v2, "addProviderLocked : success"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 326
    goto :goto_0
.end method

.method private addProvidersForPackageLocked(Ljava/lang/String;)Z
    .locals 14
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 380
    const-string v10, "CocktailBarManagerServiceImpl"

    const-string v11, "addProvidersForPackageLocked"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v6, 0x0

    .line 382
    .local v6, "providersAdded":Z
    const/4 v9, 0x0

    .line 383
    .local v9, "toolsAdded":Z
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    :try_start_0
    iget-object v10, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v11, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x80

    iget v13, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v10, v5, v11, v12, v13}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 394
    .local v2, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 395
    .local v0, "N":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_4

    .line 396
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 397
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 398
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v10, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x40000

    and-int/2addr v10, v11

    if-eqz v10, :cond_2

    .line 395
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 390
    .end local v0    # "N":I
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "i":I
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    .line 392
    .local v7, "re":Landroid/os/RemoteException;
    const/4 v10, 0x0

    .line 418
    .end local v7    # "re":Landroid/os/RemoteException;
    :goto_3
    return v10

    .line 394
    .restart local v2    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 401
    .restart local v0    # "N":I
    .restart local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "i":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v10, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 402
    invoke-direct {p0, v8}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v3

    .line 403
    .local v3, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v3, :cond_0

    .line 404
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v10

    iget v10, v10, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    .line 405
    const/4 v9, 0x1

    .line 407
    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {p0, v3, v10, v11}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;IZ)V

    .line 408
    const/4 v6, 0x1

    goto :goto_2

    .line 412
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    if-eqz v6, :cond_6

    .line 413
    if-eqz v9, :cond_5

    .line 414
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateToolLauncher()V

    .line 416
    :cond_5
    iget-object v10, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    iget-object v11, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v10, v11}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->updateInstalledCocktails(Landroid/util/SparseArray;)V

    :cond_6
    move v10, v6

    .line 418
    goto :goto_3
.end method

.method private cancelBroadcasts(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 4
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 608
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getBroadcast()Landroid/app/PendingIntent;

    move-result-object v0

    .line 609
    .local v0, "broadcast":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 610
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 611
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 613
    .local v1, "token":J
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 617
    const/4 v0, 0x0

    .line 619
    .end local v1    # "token":J
    :cond_0
    return-void

    .line 615
    .restart local v1    # "token":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private decrementCocktailServiceRefCount(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 4
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 957
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 958
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/Intent$FilterComparison;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 959
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent$FilterComparison;

    .line 960
    .local v2, "key":Landroid/content/Intent$FilterComparison;
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 961
    .local v0, "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 964
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 965
    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 966
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 970
    .end local v0    # "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "key":Landroid/content/Intent$FilterComparison;
    :cond_1
    return-void
.end method

.method private destroyRemoteViewsService(Landroid/content/Intent;Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 910
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$2;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/content/Intent;)V

    .line 930
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 933
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 935
    .local v1, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, v0, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 940
    return-void

    .line 938
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private ensureStateLoadedLocked()V
    .locals 4

    .prologue
    .line 254
    const-string v0, "CocktailBarManagerServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureStateLoadedLocked : mStateLoaded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mStateLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHasFeature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHasFeature:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mStateLoaded:Z

    if-nez v0, :cond_0

    .line 256
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHasFeature:Z

    if-nez v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->resetLoadedData()V

    .line 260
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->loadCocktailListLocked()V

    .line 261
    new-instance v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;-><init>(Landroid/content/ContentResolver;Landroid/util/SparseArray;I)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    .line 262
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-static {v0}, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->getInstance(Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;)Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPolicy:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mStateLoaded:Z

    goto :goto_0
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 783
    const/4 v0, 0x0

    .line 785
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 789
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 790
    :cond_0
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v1

    .line 792
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    return v1

    .line 786
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private incrementCocktailServiceRefCount(ILandroid/content/Intent$FilterComparison;)V
    .locals 2
    .param p1, "cocktailId"    # I
    .param p2, "fc"    # Landroid/content/Intent$FilterComparison;

    .prologue
    .line 944
    const/4 v0, 0x0

    .line 945
    .local v0, "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 951
    .restart local v0    # "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 952
    return-void

    .line 948
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 949
    .restart local v0    # "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private isContextualCocktail(Lcom/samsung/android/cocktailbar/CocktailInfo;)Z
    .locals 2
    .param p1, "cocktailInfo"    # Lcom/samsung/android/cocktailbar/CocktailInfo;

    .prologue
    .line 754
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v0

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 755
    const/4 v0, 0x1

    .line 757
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadCocktailListLocked()V
    .locals 9

    .prologue
    .line 294
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v3, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    iget v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v5, v3, v6, v7, v8}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 300
    .local v1, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 301
    .local v0, "N":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 302
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 303
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Lcom/samsung/android/cocktailbar/Cocktail;

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 300
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 305
    .end local v1    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v5

    .line 308
    :cond_1
    return-void
.end method

.method private lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 5
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 514
    const-string v3, "CocktailBarManagerServiceImpl"

    const-string v4, "lookupProviderLocked"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 516
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 517
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 518
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 522
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :goto_1
    return-object v1

    .line 516
    .restart local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 522
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private parseAndUpdateProviderInfoXml(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Z
    .locals 10
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 341
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 342
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    .line 344
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.samsung.android.cocktail.provider"

    invoke-virtual {v0, v8, v9}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 346
    if-nez v4, :cond_1

    .line 347
    const-string v7, "CocktailBarManagerServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No com.samsung.android.cocktail.provider meta-data for CocktailBar provider \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x27

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    if-eqz v4, :cond_0

    .line 374
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 376
    :cond_0
    :goto_1
    return v6

    .line 353
    :cond_1
    :try_start_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    .local v5, "type":I
    if-eq v5, v7, :cond_2

    const/4 v8, 0x2

    if-ne v5, v8, :cond_1

    .line 357
    :cond_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "nodeName":Ljava/lang/String;
    const-string v8, "cocktail-provider"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 359
    const-string v7, "CocktailBarManagerServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Meta-data does not start with cocktail-provider tag for CocktailBar provider \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x27

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-eqz v4, :cond_0

    goto :goto_0

    .line 363
    :cond_3
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v8, p3, p2, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;)Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v2

    .line 364
    .local v2, "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    invoke-virtual {p1, v2}, Lcom/samsung/android/cocktailbar/Cocktail;->setProviderInfo(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;)V

    .line 365
    iget-object v8, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v8}, Lcom/samsung/android/cocktailbar/Cocktail;->setUid(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    if-eqz v4, :cond_4

    .line 374
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    move v6, v7

    .line 376
    goto :goto_1

    .line 366
    .end local v2    # "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v5    # "type":I
    :catch_0
    move-exception v1

    .line 370
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "CocktailBarManagerServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XML parsing failed for CocktailBar provider \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x27

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    if-eqz v4, :cond_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_5

    .line 374
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 373
    :cond_5
    throw v6
.end method

.method private parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 331
    new-instance v0, Lcom/samsung/android/cocktailbar/Cocktail;

    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/Cocktail;-><init>(I)V

    .line 332
    .local v0, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->parseAndUpdateProviderInfoXml(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    .end local v0    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :goto_0
    return-object v0

    .restart local v0    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerForBroadcastsLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 13
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/4 v7, 0x1

    .line 581
    const-string v0, "CocktailBarManagerServiceImpl"

    const-string v1, "registerForBroadcastsLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v8

    .line 583
    .local v8, "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v8, :cond_1

    iget v0, v8, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    if-lez v0, :cond_1

    .line 584
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getBroadcast()Landroid/app/PendingIntent;

    move-result-object v6

    .line 585
    .local v6, "broadcast":Landroid/app/PendingIntent;
    if-eqz v6, :cond_2

    .line 586
    .local v7, "alreadyRegistered":Z
    :goto_0
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "cocktailId"

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 588
    iget-object v0, v8, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 589
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 591
    .local v10, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    new-instance v3, Landroid/os/UserHandle;

    iget v12, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v3, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v1, v9, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 594
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 596
    if-nez v7, :cond_1

    .line 597
    iget v0, v8, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    int-to-long v4, v0

    .line 598
    .local v4, "period":J
    const-wide/32 v0, 0x1b7740

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    .line 599
    const-wide/32 v4, 0x1b7740

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 605
    .end local v4    # "period":J
    .end local v6    # "broadcast":Landroid/app/PendingIntent;
    .end local v7    # "alreadyRegistered":Z
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "token":J
    :cond_1
    return-void

    .line 585
    .restart local v6    # "broadcast":Landroid/app/PendingIntent;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 594
    .restart local v7    # "alreadyRegistered":Z
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "token":J
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private removeCocktailInHostLocked(I)V
    .locals 3
    .param p1, "removeCocktailId"    # I

    .prologue
    .line 773
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCallbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    if-eqz v1, :cond_0

    .line 775
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCallbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->removeCocktail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCallbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    goto :goto_0
.end method

.method private removeCocktailLocked(I)V
    .locals 4
    .param p1, "cocktailId"    # I

    .prologue
    .line 761
    const-string v1, "CocktailBarManagerServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCocktailLocked : cocktailId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 763
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_0

    .line 764
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unbindCocktailRemoteViewsServicesLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 765
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V

    .line 766
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailInHostLocked(I)V

    .line 767
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendDisableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 768
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendDeleteIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 770
    :cond_0
    return-void
.end method

.method private removeProviderLocked(ILcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 509
    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(I)V

    .line 510
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 511
    return-void
.end method

.method private removeProvidersForPackageLocked(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 492
    const-string v4, "CocktailBarManagerServiceImpl"

    const-string v5, "removeProvidersForPackageLocked"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v3, 0x0

    .line 494
    .local v3, "providersRemoved":Z
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 495
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 496
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 497
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 498
    invoke-direct {p0, v2, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeProviderLocked(ILcom/samsung/android/cocktailbar/Cocktail;)V

    .line 499
    const/4 v3, 0x1

    .line 495
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 502
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1
    if-eqz v3, :cond_2

    .line 503
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->updateInstalledCocktails(Landroid/util/SparseArray;)V

    .line 505
    :cond_2
    return v3
.end method

.method private resetLoadedData()V
    .locals 2

    .prologue
    .line 268
    const-string v0, "CocktailBarManagerServiceImpl"

    const-string v1, "resetLoadedData"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 270
    return-void
.end method

.method private sendDeleteIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 4
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 571
    const-string v1, "CocktailBarManagerServiceImpl"

    const-string v2, "sendDeleteIntentLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->cancelBroadcasts(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 573
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cocktailId"

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 575
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 576
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 577
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 578
    return-void
.end method

.method private sendDisableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 4
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 563
    const-string v1, "CocktailBarManagerServiceImpl"

    const-string v2, "sendDisableIntentLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 566
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 567
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 568
    return-void
.end method

.method private sendEnableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 4
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 542
    const-string v1, "CocktailBarManagerServiceImpl"

    const-string v2, "sendEnableIntentLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->isEnabledCocktail(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 546
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 547
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 549
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;IZ)V
    .locals 4
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "cocktailId"    # I
    .param p3, "forcely"    # Z

    .prologue
    .line 552
    const-string v1, "CocktailBarManagerServiceImpl"

    const-string v2, "sendUpdateIntentLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPolicy:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->canSendUpdateIntent(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 555
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 556
    const-string v1, "cocktailId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 557
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 558
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 560
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private systemReady()V
    .locals 2

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 205
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 206
    monitor-exit v1

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unbindCocktailRemoteViewsServicesLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 5
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 893
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    .line 895
    .local v0, "cocktailId":I
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 896
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 897
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 898
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 899
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;

    .line 900
    .local v1, "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 901
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 902
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 905
    .end local v1    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->decrementCocktailServiceRefCount(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 906
    return-void
.end method

.method private updateFromSettingsLocked()V
    .locals 6

    .prologue
    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "addedCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v4, "removedCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-virtual {v5, v0, v4}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->getChangedCocktailIdsListLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 175
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 176
    .local v3, "id":I
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 177
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_0

    .line 178
    invoke-direct {p0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailInHostLocked(I)V

    .line 179
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendDisableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    goto :goto_0

    .line 182
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "id":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 183
    .restart local v3    # "id":I
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 184
    .restart local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_2

    .line 185
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 186
    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;IZ)V

    goto :goto_1

    .line 189
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "id":I
    :cond_3
    return-void
.end method

.method private updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 17
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 423
    .local p2, "removedProviders":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string v13, "CocktailBarManagerServiceImpl"

    const-string/jumbo v14, "updateProvidersForPackageLocked"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v9, 0x0

    .line 425
    .local v9, "providersUpdated":Z
    const/4 v12, 0x0

    .line 426
    .local v12, "toolsUpdated":Z
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 427
    .local v8, "keep":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v7, Landroid/content/Intent;

    const-string v13, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v13, v7, v14, v15, v0}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 439
    .local v3, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 440
    .local v1, "N":I
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_6

    .line 441
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 442
    .local v11, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 443
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v13, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v14, 0x40000

    and-int/2addr v13, v14

    if-eqz v13, :cond_2

    .line 440
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 434
    .end local v1    # "N":I
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "i":I
    .end local v11    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v10

    .line 436
    .local v10, "re":Landroid/os/RemoteException;
    const/4 v13, 0x0

    .line 488
    .end local v10    # "re":Landroid/os/RemoteException;
    :goto_3
    return v13

    .line 439
    .restart local v3    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 446
    .restart local v1    # "N":I
    .restart local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "i":I
    .restart local v11    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v13, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 447
    new-instance v5, Landroid/content/ComponentName;

    iget-object v13, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v14, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .local v5, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v4

    .line 449
    .local v4, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-nez v4, :cond_4

    .line 450
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 451
    iget-object v13, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v13

    iget v13, v13, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_3

    .line 453
    const/4 v12, 0x1

    .line 455
    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;IZ)V

    .line 456
    const/4 v9, 0x1

    goto :goto_2

    .line 459
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v11}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->parseAndUpdateProviderInfoXml(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Z

    .line 460
    iget-object v13, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v13

    iget v13, v13, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    .line 462
    const/4 v12, 0x1

    .line 464
    :cond_5
    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;IZ)V

    .line 465
    const/4 v9, 0x1

    goto :goto_2

    .line 470
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v11    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 471
    add-int/lit8 v6, v1, -0x1

    :goto_4
    if-ltz v6, :cond_9

    .line 472
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 473
    .restart local v4    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 475
    if-eqz p2, :cond_7

    .line 476
    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeProviderLocked(ILcom/samsung/android/cocktailbar/Cocktail;)V

    .line 479
    const/4 v9, 0x1

    .line 471
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 482
    .end local v4    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_9
    if-eqz v9, :cond_b

    .line 483
    if-eqz v12, :cond_a

    .line 484
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateToolLauncher()V

    .line 486
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v13, v14}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->updateInstalledCocktails(Landroid/util/SparseArray;)V

    :cond_b
    move v13, v9

    .line 488
    goto/16 :goto_3
.end method

.method private updateToolLauncher()V
    .locals 3

    .prologue
    .line 622
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCallbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    if-eqz v1, :cond_0

    .line 624
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCallbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->updateToolLauncher(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCallbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    goto :goto_0
.end method


# virtual methods
.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 17
    .param p1, "cocktailId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "connection"    # Landroid/os/IBinder;

    .prologue
    .line 811
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v14

    .line 812
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHasFeature:Z

    if-nez v13, :cond_0

    .line 813
    monitor-exit v14

    .line 863
    :goto_0
    return-void

    .line 815
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 816
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v2

    .line 817
    .local v2, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-nez v2, :cond_1

    .line 818
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v15, "bad cocktailId"

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 862
    .end local v2    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 820
    .restart local v2    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 822
    .local v3, "componentName":Landroid/content/ComponentName;
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    const/16 v15, 0x1000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v13, v3, v15, v0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v9

    .line 824
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    const-string v13, "android.permission.BIND_REMOTEVIEWS"

    iget-object v15, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 825
    new-instance v13, Ljava/lang/SecurityException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Selected service does not require android.permission.BIND_REMOTEVIEWS: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 828
    .end local v9    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v6

    .line 829
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown component "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 835
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v9    # "si":Landroid/content/pm/ServiceInfo;
    :cond_2
    const/4 v4, 0x0

    .line 836
    .local v4, "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    new-instance v7, Landroid/content/Intent$FilterComparison;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 837
    .local v7, "fc":Landroid/content/Intent$FilterComparison;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 838
    .local v8, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 839
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;

    .line 840
    .restart local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 841
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v5, v4

    .line 845
    .end local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .local v5, "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v13

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 846
    .local v12, "userId":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    if-eq v12, v13, :cond_4

    .line 847
    const-string v13, "CocktailBarManagerServiceImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CocktailServiceImpl of user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " binding to provider on user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    .line 854
    .local v10, "token":J
    :try_start_4
    new-instance v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;

    move-object/from16 v0, p3

    invoke-direct {v4, v8, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;-><init>(Landroid/util/Pair;Landroid/os/IBinder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 855
    .end local v5    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .restart local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v4, v15, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 857
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 859
    :try_start_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 861
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->incrementCocktailServiceRefCount(ILandroid/content/Intent$FilterComparison;)V

    .line 862
    monitor-exit v14

    goto/16 :goto_0

    .line 859
    .end local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .restart local v5    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    :catchall_1
    move-exception v13

    move-object v4, v5

    .end local v5    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .restart local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v13

    goto :goto_1
.end method

.method public closeCocktail(I)V
    .locals 5
    .param p1, "cocktailId"    # I

    .prologue
    .line 651
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 652
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 653
    .local v0, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isContextualCocktail(Lcom/samsung/android/cocktailbar/CocktailInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 654
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCallbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 656
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCallbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v2, p1, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->closeContextualCocktail(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 663
    return-void

    .line 657
    :catch_0
    move-exception v1

    .line 658
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCallbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    goto :goto_0

    .line 662
    .end local v0    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 1
    .param p1, "cocktailId"    # I

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    return-object v0
.end method

.method public getCocktailId(Ljava/lang/String;)I
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 725
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v6

    .line 726
    :try_start_0
    iget-boolean v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHasFeature:Z

    if-nez v7, :cond_0

    .line 727
    monitor-exit v6

    .line 749
    :goto_0
    return v5

    .line 729
    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getUidForPackage(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 738
    .local v4, "packageUid":I
    :try_start_2
    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 739
    .local v0, "N":I
    const/4 v1, 0x0

    .line 740
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 741
    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 742
    .restart local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/samsung/android/cocktailbar/Cocktail;->isSameProvider(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 746
    :cond_1
    if-eqz v1, :cond_3

    .line 747
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    monitor-exit v6

    goto :goto_0

    .line 750
    .end local v0    # "N":I
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "i":I
    .end local v4    # "packageUid":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 734
    :catch_0
    move-exception v2

    .line 735
    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packageName and uid don\'t match packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 740
    .end local v2    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "N":I
    .restart local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .restart local v3    # "i":I
    .restart local v4    # "packageUid":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 749
    :cond_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getCocktailIds()[I
    .locals 5

    .prologue
    .line 796
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 797
    .local v0, "N":I
    new-array v2, v0, [I

    .line 798
    .local v2, "cocktailIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 799
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 800
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    aput v4, v2, v3

    .line 798
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 802
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_0
    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1032
    const/4 v0, 0x0

    return v0
.end method

.method public notifyCocktailViewDataChanged(II)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I

    .prologue
    .line 666
    iget-boolean v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 674
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 670
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 671
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 672
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailViewDataChangedInstanceLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 673
    monitor-exit v2

    goto :goto_0

    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyCocktailViewDataChangedInstanceLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 11
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "viewId"    # I

    .prologue
    .line 677
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCallbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    if-eqz v8, :cond_0

    .line 679
    :try_start_0
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCallbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v9

    iget v10, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v8, v9, p2, v10}, Lcom/samsung/android/cocktailbar/ICocktailHost;->viewDataChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCallbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    if-nez v8, :cond_2

    .line 685
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 686
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent$FilterComparison;

    .line 687
    .local v3, "key":Landroid/content/Intent$FilterComparison;
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 688
    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 690
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$1;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    .line 710
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 712
    .local v7, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 714
    .local v5, "token":J
    :try_start_1
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v2, v0, v9, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v8

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 722
    .end local v0    # "conn":Landroid/content/ServiceConnection;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "key":Landroid/content/Intent$FilterComparison;
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .end local v5    # "token":J
    .end local v7    # "userId":I
    :cond_2
    return-void

    .line 680
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    .line 973
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 975
    .local v1, "added":Z
    const/4 v3, 0x0

    .line 976
    .local v3, "changed":Z
    const/4 v7, 0x0

    .line 977
    .local v7, "pkgList":[Ljava/lang/String;
    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 978
    const-string v10, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 979
    const/4 v1, 0x1

    .line 998
    :goto_0
    if-eqz v7, :cond_0

    array-length v10, v7

    if-nez v10, :cond_3

    .line 1027
    :cond_0
    :goto_1
    return-void

    .line 980
    :cond_1
    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 981
    const-string v10, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 982
    const/4 v1, 0x0

    goto :goto_0

    .line 984
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 985
    .local v9, "uri":Landroid/net/Uri;
    if-eqz v9, :cond_0

    .line 988
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 989
    .local v8, "pkgName":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 992
    const/4 v10, 0x1

    new-array v7, v10, [Ljava/lang/String;

    .end local v7    # "pkgList":[Ljava/lang/String;
    aput-object v8, v7, v11

    .line 995
    .restart local v7    # "pkgList":[Ljava/lang/String;
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 996
    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 1001
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_3
    if-nez v1, :cond_4

    if-eqz v3, :cond_8

    .line 1002
    :cond_4
    iget-object v11, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v11

    .line 1003
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 1004
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 1005
    .local v4, "extras":Landroid/os/Bundle;
    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    const-string v10, "android.intent.extra.REPLACING"

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1006
    :cond_5
    move-object v2, v7

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v6, :cond_7

    aget-object v8, v2, v5

    .line 1007
    .restart local v8    # "pkgName":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-direct {p0, v8, v10}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;)Z

    .line 1006
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1010
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_6
    move-object v2, v7

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v6, v2

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v6, :cond_7

    aget-object v8, v2, v5

    .line 1011
    .restart local v8    # "pkgName":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProvidersForPackageLocked(Ljava/lang/String;)Z

    .line 1010
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1014
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_7
    monitor-exit v11

    goto :goto_1

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 1016
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 1017
    .restart local v4    # "extras":Landroid/os/Bundle;
    if-eqz v4, :cond_9

    const-string v10, "android.intent.extra.REPLACING"

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1019
    :cond_9
    iget-object v11, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v11

    .line 1020
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 1021
    move-object v2, v7

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v6, v2

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_4
    if-ge v5, v6, :cond_a

    aget-object v8, v2, v5

    .line 1022
    .restart local v8    # "pkgName":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeProvidersForPackageLocked(Ljava/lang/String;)Z

    .line 1021
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1024
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_a
    monitor-exit v11

    goto/16 :goto_1

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v10
.end method

.method public onConfigurationChanged()V
    .locals 8

    .prologue
    .line 273
    const-string v6, "CocktailBarManagerServiceImpl"

    const-string v7, "onConfigurationChanged"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 275
    .local v5, "revised":Ljava/util/Locale;
    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocale:Ljava/util/Locale;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 276
    :cond_0
    iput-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocale:Ljava/util/Locale;

    .line 278
    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v7

    .line 279
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 280
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 281
    .local v4, "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 282
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 283
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 284
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    .line 285
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 286
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;)Z

    .line 282
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 289
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "cn":Landroid/content/ComponentName;
    :cond_2
    monitor-exit v7

    .line 291
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :cond_3
    return-void

    .line 289
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public requestToUpdateCocktail(I)Z
    .locals 5
    .param p1, "cocktailId"    # I

    .prologue
    const/4 v1, 0x1

    .line 243
    const-string v2, "CocktailBarManagerServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestToUpdateCocktail : cocktailId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 245
    .local v0, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_0

    .line 246
    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;IZ)V

    .line 249
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendInitialBroadcasts()V
    .locals 7

    .prologue
    .line 526
    const-string v4, "CocktailBarManagerServiceImpl"

    const-string v5, "sendInitialBroadcasts"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v5

    .line 528
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 529
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 530
    .local v1, "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 531
    .local v3, "id":I
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 532
    .local v0, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_0

    .line 533
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 534
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    const/4 v6, 0x0

    invoke-direct {p0, v0, v4, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;IZ)V

    .line 535
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->registerForBroadcastsLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    goto :goto_0

    .line 538
    .end local v0    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    return-void
.end method

.method public setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Lcom/samsung/android/cocktailbar/ICocktailHost;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 214
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 215
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCallbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    .line 216
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;Ljava/util/List;)[I
    .locals 8
    .param p1, "host"    # Lcom/samsung/android/cocktailbar/ICocktailHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/cocktailbar/ICocktailHost;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 221
    .local p3, "updatedCocktails":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    iget-boolean v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 222
    const/4 v5, 0x0

    new-array v4, v5, [I

    .line 238
    :goto_0
    return-object v4

    .line 224
    :cond_0
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v6

    .line 225
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 226
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCallbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    .line 227
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 228
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-virtual {v5}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object v2

    .line 229
    .local v2, "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 230
    .local v0, "N":I
    new-array v4, v0, [I

    .line 231
    .local v4, "updatedIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 232
    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 233
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    aput v5, v4, v3

    .line 235
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 238
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    monitor-exit v6

    goto :goto_0

    .line 239
    .end local v0    # "N":I
    .end local v2    # "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "i":I
    .end local v4    # "updatedIds":[I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;)V
    .locals 6
    .param p1, "cocktailId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 867
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v4

    .line 868
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_0

    .line 869
    monitor-exit v4

    .line 889
    :goto_0
    return-void

    .line 871
    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 873
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Landroid/content/Intent$FilterComparison;

    invoke-direct {v5, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 874
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 878
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 879
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-nez v0, :cond_1

    .line 880
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad cocktailId"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 888
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 883
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .restart local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;

    .line 884
    .local v1, "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 885
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 886
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateCocktailLocked(ILcom/samsung/android/cocktailbar/CocktailInfo;)V
    .locals 5
    .param p1, "cocktailId"    # I
    .param p2, "cocktailInfo"    # Lcom/samsung/android/cocktailbar/CocktailInfo;

    .prologue
    .line 632
    const-string v2, "CocktailBarManagerServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCocktailLocked : cocktailId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 634
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 635
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {v0, p2}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V

    .line 637
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPolicy:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    invoke-virtual {v2, v0}, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCallbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 640
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCallbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v2, p1, v0, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 647
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 648
    return-void

    .line 641
    :catch_0
    move-exception v1

    .line 642
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCallbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    goto :goto_0

    .line 647
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
