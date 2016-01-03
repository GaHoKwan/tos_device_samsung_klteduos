.class public Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;
.super Ljava/lang/Object;
.source "CocktailBarPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CocktailBarPolicy"

.field private static mInstance:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;


# instance fields
.field private mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mInstance:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;)V
    .locals 0
    .param p1, "settings"    # Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    .line 25
    return-void
.end method

.method public static getInstance(Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;)Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;
    .locals 1
    .param p0, "settings"    # Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    .prologue
    .line 17
    sget-object v0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mInstance:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;-><init>(Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;)V

    sput-object v0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mInstance:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    .line 20
    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mInstance:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    return-object v0
.end method


# virtual methods
.method public canSendUpdateIntent(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .locals 2
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->isEnabledCocktail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .locals 4
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    .line 36
    .local v0, "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v0, :cond_0

    .line 37
    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    packed-switch v2, :pswitch_data_0

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->isEnabledCocktail(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    :goto_0
    :pswitch_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
