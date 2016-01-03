.class public Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final KEYGUARD_CLASS:Ljava/lang/String; = "com.android.keyguard.KeyguardService"

.field public static final KEYGUARD_PACKAGE:Ljava/lang/String; = "com.android.keyguard"

.field private static final TAG:Ljava/lang/String; = "KeyguardServiceDelegate"


# instance fields
.field private final INFORMATIVE_SCREEN_CLASS:Ljava/lang/String;

.field private final INFORMATIVE_SCREEN_PACKAGE:Ljava/lang/String;

.field private final MSG_INFORMATIVE_SCREEN_SETTING_UPDATED:I

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInformativeScreenConnection:Landroid/content/ServiceConnection;

.field private mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

.field private mIsBound:Z

.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field protected mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

.field private mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

.field private mScrim:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    invoke-direct {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 155
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 449
    const-string v1, "com.sec.android.app.informativescreen"

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->INFORMATIVE_SCREEN_PACKAGE:Ljava/lang/String;

    .line 450
    const-string v1, "com.sec.android.app.informativescreen.InformativeScreenService"

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->INFORMATIVE_SCREEN_CLASS:Ljava/lang/String;

    .line 451
    const/16 v1, 0x12f0

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->MSG_INFORMATIVE_SCREEN_SETTING_UPDATED:I

    .line 456
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mHandler:Landroid/os/Handler;

    .line 468
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$7;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenConnection:Landroid/content/ServiceConnection;

    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.keyguard"

    const-string v2, "com.android.keyguard.KeyguardService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->createScrim(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mScrim:Landroid/view/View;

    .line 126
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    const-string v1, "KeyguardServiceDelegate"

    const-string v2, "*** Keyguard: can\'t bind to com.android.keyguard.KeyguardService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mContext:Landroid/content/Context;

    .line 135
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mContentObserver:Landroid/database/ContentObserver;

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "informative_screen_switch_onoff"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 150
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->handleSettingUpdated()V

    .line 153
    return-void

    .line 130
    :cond_0
    const-string v1, "KeyguardServiceDelegate"

    const-string v2, "*** Keyguard started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isFactoryMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mScrim:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->handleSettingUpdated()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;)Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    return-object p1
.end method

.method private static final createScrim(Landroid/content/Context;)Landroid/view/View;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 345
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 347
    .local v8, "view":Landroid/view/View;
    const v4, 0x110900

    .line 353
    .local v4, "flags":I
    const/4 v6, -0x1

    .line 354
    .local v6, "stretch":I
    const/16 v7, 0x7ed

    .line 355
    .local v7, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7ed

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 357
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 358
    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 359
    const-string v1, "KeyguardScrim"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 360
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 361
    .local v9, "wm":Landroid/view/WindowManager;
    invoke-interface {v9, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    const/high16 v1, 0x3610000

    invoke-virtual {v8, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 370
    return-object v8
.end method

.method private handleSettingUpdated()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 493
    const-string v4, "KeyguardServiceDelegate"

    const-string v5, "*** handleSettingUpdated"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "informative_screen_switch_onoff"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 496
    .local v1, "isInformativeScreenOn":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 497
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 498
    .local v0, "Informativeintent":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.informativescreen"

    const-string v4, "com.sec.android.app.informativescreen.InformativeScreenService"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 500
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenConnection:Landroid/content/ServiceConnection;

    const/high16 v5, 0x20000000

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 502
    const-string v2, "KeyguardServiceDelegate"

    const-string v3, "*** InformativeScreen: can\'t bind to com.sec.android.app.informativescreen.InformativeScreenService"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .end local v0    # "Informativeintent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .end local v1    # "isInformativeScreenOn":Z
    :cond_1
    move v1, v3

    .line 494
    goto :goto_0

    .line 504
    .restart local v0    # "Informativeintent":Landroid/content/Intent;
    .restart local v1    # "isInformativeScreenOn":Z
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mIsBound:Z

    .line 506
    const-string v2, "KeyguardServiceDelegate"

    const-string v3, "*** InformativeScreen started"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 510
    :cond_3
    const-string v2, "KeyguardServiceDelegate"

    const-string v3, "*** InformativeScreen can\'t start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 513
    .end local v0    # "Informativeintent":Landroid/content/Intent;
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mIsBound:Z

    if-eqz v2, :cond_0

    .line 514
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 515
    .restart local v0    # "Informativeintent":Landroid/content/Intent;
    const-string v2, "com.sec.android.app.informativescreen"

    const-string v4, "com.sec.android.app.informativescreen.InformativeScreenService"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 518
    const-string v2, "KeyguardServiceDelegate"

    const-string v4, "*** InformativeScreen stoped"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mIsBound:Z

    goto :goto_1

    .line 522
    :cond_5
    const-string v2, "KeyguardServiceDelegate"

    const-string v3, "*** InformativeScreen can\'t stop"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static isFactoryMode()Z
    .locals 2

    .prologue
    .line 443
    const-string v1, "ro.factory.factory_binary"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "strFactoryProp":Ljava/lang/String;
    const-string v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->dismiss()V

    .line 231
    :cond_0
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 329
    :cond_0
    return-void
.end method

.method public hideScrim()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mScrim:Landroid/view/View;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method

.method public isDismissable()Z
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->isDismissable()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->dismissable:Z

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->dismissable:Z

    return v0
.end method

.method public isInputRestricted()Z
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->isInputRestricted()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    return v0
.end method

.method public isKeyguardHidden()Z
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->isKeyguardHidden()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->keyguardHidden:Z

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->keyguardHidden:Z

    return v0
.end method

.method public isSecure()Z
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->isSecure()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->isShowing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->isShowingAndNotHidden()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->showingAndNotHidden:Z

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->showingAndNotHidden:Z

    return v0
.end method

.method public keyguardDone(ZZ)V
    .locals 1
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->keyguardDone(ZZ)V

    .line 218
    :cond_0
    return-void
.end method

.method public onBootCompleted()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->onBootCompleted()V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    .line 403
    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->onDreamingStarted()V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    .line 245
    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->onDreamingStopped()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    .line 252
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->onScreenTurnedOff(I)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->onScreenTurnedOff(I)V

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput p1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->offReason:I

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->screenIsOn:Z

    .line 293
    return-void
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V
    .locals 3
    .param p1, "showListener"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_1

    .line 268
    const-string v0, "KeyguardServiceDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn(showListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 277
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->screenIsOn:Z

    .line 278
    return-void

    .line 272
    :cond_1
    const-string v0, "KeyguardServiceDelegate"

    const-string v1, "onScreenTurnedOn(): no keyguard service!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;->onShown(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->onSystemReady()V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->onSystemReady()V

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_1
    const-string v0, "KeyguardServiceDelegate"

    const-string v1, "onSystemReady() called before keyguard service was ready"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    goto :goto_0
.end method

.method public removeAdaptiveEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->removeAdaptiveEvent(Ljava/lang/String;)V

    .line 434
    :cond_0
    return-void
.end method

.method public removeContextualEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->removeContextualEvent(Ljava/lang/String;)V

    .line 416
    :cond_0
    return-void
.end method

.method public setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 428
    :cond_0
    return-void
.end method

.method public setContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->setContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    .line 410
    :cond_0
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->setCurrentUser(I)V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput p1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    .line 342
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .param p1, "isHidden"    # Z

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->setHidden(Z)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean p1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->hidden:Z

    .line 225
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->setKeyguardEnabled(Z)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean p1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    .line 300
    return-void
.end method

.method public showAssistant()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->showAssistant()V

    .line 335
    :cond_0
    return-void
.end method

.method public showScrim()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mScrim:Landroid/view/View;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 380
    return-void
.end method

.method public updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 440
    :cond_0
    return-void
.end method

.method public updateContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->updateContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    .line 422
    :cond_0
    return-void
.end method

.method public verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 2
    .param p1, "onKeyguardExitResult"    # Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 212
    :cond_0
    return-void
.end method
