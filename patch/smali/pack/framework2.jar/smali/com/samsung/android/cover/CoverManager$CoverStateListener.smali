.class public Lcom/samsung/android/cover/CoverManager$CoverStateListener;
.super Ljava/lang/Object;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/CoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoverStateListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    return-void
.end method


# virtual methods
.method public onCoverAttachStateChanged(Z)V
    .locals 0
    .param p1, "attached"    # Z

    .prologue
    .line 673
    return-void
.end method

.method public onCoverSwitchStateChanged(Z)V
    .locals 0
    .param p1, "switchState"    # Z

    .prologue
    .line 664
    return-void
.end method
