.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$29;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPositionOneShot(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$29;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1423
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$29;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z
    invoke-static {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 1419
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1421
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$29;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z
    invoke-static {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 1415
    return-void
.end method
