.class final Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeyguardState"
.end annotation


# instance fields
.field public bootCompleted:Z

.field public currentUser:I

.field public dismissable:Z

.field dreaming:Z

.field public enabled:Z

.field hidden:Z

.field inputRestricted:Z

.field keyguardHidden:Z

.field public offReason:I

.field public screenIsOn:Z

.field secure:Z

.field showing:Z

.field showingAndNotHidden:Z

.field systemIsReady:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isFactoryMode()Z
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$000()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 57
    const-string v0, "KeyguardServiceDelegate"

    const-string v1, "Factory mode enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->showingAndNotHidden:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->showingAndNotHidden:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    goto :goto_0
.end method
