.class public Lcom/samsung/android/sdk/look/SlookImpl;
.super Ljava/lang/Object;
.source "SlookImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/SlookImpl$VERSION_CODES;
    }
.end annotation


# static fields
.field private static final AIRBUTTON:I = 0x1

.field private static final COCKTAIL_BAR:I = 0x6

.field public static final DEBUG:Z = true

.field private static final SDK_INT:I

.field private static final SMARTCLIP:I = 0x2

.field private static final SPEN_HOVER_ICON:I = 0x4

.field private static final WRITINGBUDDY:I = 0x3

.field private static sCocktailLevel:I

.field private static sUspLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 16
    const-string/jumbo v0, "ro.slook.ver"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->SDK_INT:I

    .line 43
    sput v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    .line 45
    sput v2, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static getVersionCode()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/samsung/android/sdk/look/SlookImpl;->SDK_INT:I

    return v0
.end method

.method public static isFeatureEnabled(I)Z
    .locals 6
    .param p0, "type"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 62
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v2, v3

    .line 95
    :cond_0
    :goto_0
    return v2

    .line 64
    :pswitch_1
    sget v4, Lcom/samsung/android/sdk/look/SlookImpl;->SDK_INT:I

    if-nez v4, :cond_0

    .line 69
    :pswitch_2
    sget v4, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-ne v4, v5, :cond_1

    .line 70
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 71
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v1, :cond_1

    .line 73
    :try_start_0
    const-string v4, "com.sec.feature.spen_usp"

    invoke-interface {v1, v4}, Landroid/content/pm/IPackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :cond_1
    sget v4, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .line 74
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 82
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :pswitch_3
    sget v4, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-ne v4, v5, :cond_2

    .line 83
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 84
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    if-eqz v1, :cond_2

    .line 86
    :try_start_1
    const-string v4, "com.sec.feature.cocktailbar"

    invoke-interface {v1, v4}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    sput v4, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :cond_2
    sget v4, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-eq v4, v2, :cond_0

    move v2, v3

    goto :goto_0

    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    :cond_3
    move v4, v3

    .line 86
    goto :goto_1

    .line 87
    :catch_1
    move-exception v0

    .line 88
    .restart local v0    # "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
