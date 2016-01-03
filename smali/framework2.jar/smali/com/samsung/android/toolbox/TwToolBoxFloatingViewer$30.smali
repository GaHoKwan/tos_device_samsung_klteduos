.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;
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

.field final synthetic val$m:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)V
    .locals 0

    .prologue
    .line 1584
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iput-object p2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;->val$m:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1597
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;->val$m:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isAnimating:Z

    .line 1592
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-virtual {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->invalidate()V

    .line 1593
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1595
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;->val$m:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isAnimating:Z

    .line 1588
    return-void
.end method
