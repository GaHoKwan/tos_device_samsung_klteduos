.class public Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;
.super Ljava/lang/Object;
.source "CocktailBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/utils/CocktailBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailBarSettings"
.end annotation


# static fields
.field private static final COCKTAIL_BAR_SEPARATER:C = ';'


# instance fields
.field private mCocktailMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUserId:I

.field private mEnabledCocktailListCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private mEnabledCocktailsStrCache:Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/util/SparseArray;I)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "cocktailArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p0, p3}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->setCurrentUserId(I)V

    .line 37
    iput-object p1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mResolver:Landroid/content/ContentResolver;

    .line 38
    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 39
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->initCocktailMapLocked(Landroid/util/SparseArray;)V

    .line 40
    invoke-direct {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->initCocktailListLocked()V

    .line 41
    monitor-exit v1

    .line 42
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initCocktailListLocked()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->updateEnabledCocktailListLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->loadCscDefaultCocktailListLocked()V

    .line 57
    :cond_0
    return-void
.end method

.method private initCocktailMapLocked(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "cocktailArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    iget-object v3, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 46
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 47
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 48
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 49
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    iget-object v3, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_0
    return-void
.end method

.method private loadCscDefaultCocktailListLocked()V
    .locals 7

    .prologue
    .line 60
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "com.example.cocktailsampleprovider"

    aput-object v6, v2, v5

    .line 61
    .local v2, "defaultCocktails":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 62
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 63
    .local v1, "cocktailName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 64
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "cocktailName":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->setEnabledCocktails(Ljava/util/ArrayList;)V

    .line 68
    return-void
.end method

.method private putEnabledCocktailsStr(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "cocktail_bar_enabled_cocktails"

    iget v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCurrentUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 95
    iput-object p1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    .line 96
    const-string v0, "CocktailBarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putEnabledCocktailsStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method private updateEnabledCocktailListLocked()Z
    .locals 5

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "changed":Z
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->getEnabledCocktailsStr()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "enabledCocktailsStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 121
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    const/4 v4, 0x0

    .line 137
    :goto_0
    return v4

    .line 124
    :cond_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 125
    :goto_1
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "cocktailName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 128
    .local v0, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    .line 129
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 134
    .end local v0    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "cocktailName":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 135
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->setEnabledCocktails(Ljava/util/ArrayList;)V

    .line 137
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getChangedCocktailIdsListLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "addedCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "removedCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 152
    .local v0, "backupEnabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 153
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->getEnabledCocktailsStr()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    .line 154
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 155
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    iget-object v6, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 156
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 157
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "cocktailName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 159
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_0

    .line 160
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 162
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "cocktailName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 168
    .local v4, "oldCocktailName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 169
    .restart local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_2

    .line 170
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 171
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v4    # "oldCocktailName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public getEnableCocktailIds()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v1, "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 109
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 110
    .local v0, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .end local v0    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getEnabledCocktailsStr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "cocktail_bar_enabled_cocktails"

    iget v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    .line 102
    const-string v0, "CocktailBarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnabledCocktailsStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabledCocktail(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cocktailName"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const/4 v2, 0x1

    .line 146
    .end local v1    # "str":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setCurrentUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCurrentUserId:I

    .line 79
    return-void
.end method

.method public setEnabledCocktails(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "cocktails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 83
    .local v0, "N":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 85
    if-lez v2, :cond_0

    .line 86
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->putEnabledCocktailsStr(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public updateInstalledCocktails(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "cocktailArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 72
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->initCocktailMapLocked(Landroid/util/SparseArray;)V

    .line 73
    invoke-direct {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->updateEnabledCocktailListLocked()Z

    .line 74
    monitor-exit v1

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
