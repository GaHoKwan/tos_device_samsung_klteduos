.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->prepareToolBoxLinear()V
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
    .line 1794
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1815
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v1

    neg-int v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z
    invoke-static {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6502(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 1806
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->mLongPressPanelRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 1808
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateLongPressPanelRect:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1810
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1811
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1813
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v1

    neg-int v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z
    invoke-static {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6502(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 1799
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1800
    return-void
.end method
