.class Landroid/webkitsec/WebViewClassic$OnTrimMemoryListener;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnTrimMemoryListener"
.end annotation


# static fields
.field private static sInstance:Landroid/webkitsec/WebViewClassic$OnTrimMemoryListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2313
    const/4 v0, 0x0

    sput-object v0, Landroid/webkitsec/WebViewClassic$OnTrimMemoryListener;->sInstance:Landroid/webkitsec/WebViewClassic$OnTrimMemoryListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 2321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2322
    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 2323
    return-void
.end method

.method static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 2316
    sget-object v0, Landroid/webkitsec/WebViewClassic$OnTrimMemoryListener;->sInstance:Landroid/webkitsec/WebViewClassic$OnTrimMemoryListener;

    if-nez v0, :cond_0

    .line 2317
    new-instance v0, Landroid/webkitsec/WebViewClassic$OnTrimMemoryListener;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkitsec/WebViewClassic$OnTrimMemoryListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkitsec/WebViewClassic$OnTrimMemoryListener;->sInstance:Landroid/webkitsec/WebViewClassic$OnTrimMemoryListener;

    .line 2319
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2328
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 2333
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 2344
    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    .line 2345
    invoke-static {}, Landroid/webkitsec/HTML5VideoInline;->cleanupSurfaceTexture()V

    .line 2346
    invoke-static {}, Landroid/webkitsec/HTML5VideoView;->release()V

    .line 2348
    :cond_0
    # invokes: Landroid/webkitsec/WebViewClassic;->nativeOnTrimMemory(I)V
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic;->access$2500(I)V

    .line 2349
    return-void
.end method
