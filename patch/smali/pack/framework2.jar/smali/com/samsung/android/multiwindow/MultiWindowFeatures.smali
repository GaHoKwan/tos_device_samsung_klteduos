.class public Lcom/samsung/android/multiwindow/MultiWindowFeatures;
.super Ljava/lang/Object;
.source "MultiWindowFeatures.java"


# static fields
.field public static final MULTIWINDOW_ENABLED:Z = true

.field private static sQueriedTypeMultiWindow:Z

.field private static sSupportCommonUI:Z

.field private static sSupportFixedSplitView:Z

.field private static sSupportFreeStyle:Z

.field private static sSupportFreeStyleDocking:Z

.field private static sSupportFreeStyleLaunch:Z

.field private static sSupportMinimize:Z

.field private static sSupportMultiInstance:Z

.field private static sSupportMultiWindow:Z

.field private static sSupportMultiWindowLaunch:Z

.field private static sSupportQuadView:Z

.field private static sSupportScaleWindow:Z

.field private static sSupportSplitFullScreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sQueriedTypeMultiWindow:Z

    .line 19
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiWindow:Z

    .line 20
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyle:Z

    .line 21
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMinimize:Z

    .line 22
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportQuadView:Z

    .line 23
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFixedSplitView:Z

    .line 24
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyleDocking:Z

    .line 25
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyleLaunch:Z

    .line 26
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportScaleWindow:Z

    .line 27
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiWindowLaunch:Z

    .line 28
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportSplitFullScreen:Z

    .line 29
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiInstance:Z

    .line 30
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportCommonUI:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkMultiWindowFeature(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sQueriedTypeMultiWindow:Z

    if-nez v2, :cond_1

    .line 35
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sQueriedTypeMultiWindow:Z

    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 42
    :cond_0
    if-eqz v1, :cond_2

    .line 43
    :try_start_0
    const-string v2, "com.sec.feature.multiwindow"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiWindow:Z

    .line 44
    const-string v2, "com.sec.feature.multiwindow.freestyle"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyle:Z

    .line 45
    const-string v2, "com.sec.feature.multiwindow.minimize"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMinimize:Z

    .line 46
    const-string v2, "com.sec.feature.multiwindow.quadview"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportQuadView:Z

    .line 47
    const-string v2, "com.sec.feature.multiwindow.fixedsplitview"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFixedSplitView:Z

    .line 49
    const-string v2, "com.sec.feature.multiwindow.freestylelaunch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyleLaunch:Z

    .line 50
    const-string v2, "com.sec.feature.multiwindow.scalewindow"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportScaleWindow:Z

    .line 51
    const-string v2, "com.sec.feature.multiwindow.multiwindowlaunch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiWindowLaunch:Z

    .line 52
    const-string v2, "com.sec.feature.multiwindow.splitfullscreen"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportSplitFullScreen:Z

    .line 53
    const-string v2, "com.sec.feature.multiwindow.multiinstance"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiInstance:Z

    .line 54
    const-string v2, "com.sec.feature.multiwindow.commonui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportCommonUI:Z

    .line 74
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 57
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiWindow:Z

    .line 58
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.freestyle.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyle:Z

    .line 59
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.minimize.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMinimize:Z

    .line 60
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.quadview.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportQuadView:Z

    .line 61
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.fixedsplitview"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFixedSplitView:Z

    .line 62
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.freestyledocking.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyleDocking:Z

    .line 63
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.freestylelaunch.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyleLaunch:Z

    .line 64
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.scalewindow.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportScaleWindow:Z

    .line 65
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.multiwindowlaunch.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiWindowLaunch:Z

    .line 66
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.splitfullscreen.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportSplitFullScreen:Z

    .line 67
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.multiinstance.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiInstance:Z

    .line 68
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.commonui.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportCommonUI:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sQueriedTypeMultiWindow:Z

    goto/16 :goto_0
.end method

.method public static isSupportCommonUI(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 182
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportCommonUI:Z

    return v0
.end method

.method public static isSupportFixedSplitView(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 142
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFixedSplitView:Z

    return v0
.end method

.method public static isSupportFreeStyle(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 94
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyle:Z

    return v0
.end method

.method public static isSupportFreeStyleDocking(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 150
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyleDocking:Z

    return v0
.end method

.method public static isSupportFreeStyleLaunch(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 158
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyleLaunch:Z

    return v0
.end method

.method public static isSupportMinimize(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 124
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMinimize:Z

    return v0
.end method

.method public static isSupportMultiInstance(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 104
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiInstance:Z

    return v0
.end method

.method public static isSupportMultiWindow(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 84
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiWindow:Z

    return v0
.end method

.method public static isSupportMultiWindowLaunch(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 166
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiWindowLaunch:Z

    return v0
.end method

.method public static isSupportQuadView(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 114
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportQuadView:Z

    return v0
.end method

.method public static isSupportScaleWindow(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 134
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportScaleWindow:Z

    return v0
.end method

.method public static isSupportSplitFullScreen(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 174
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportSplitFullScreen:Z

    return v0
.end method
