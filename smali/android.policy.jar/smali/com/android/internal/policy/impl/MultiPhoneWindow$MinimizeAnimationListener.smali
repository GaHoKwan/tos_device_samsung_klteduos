.class Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MinimizeAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .locals 0

    .prologue
    .line 1827
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1828
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v4, -0x1

    .line 1852
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v2

    .line 1856
    .local v2, "state":I
    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 1906
    :cond_0
    :goto_0
    return-void

    .line 1862
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1865
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1866
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v4, :cond_4

    .line 1868
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    .line 1869
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    goto :goto_0

    .line 1873
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1874
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v4

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizedDrawable(Landroid/widget/ImageView;)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4300(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/widget/ImageView;)V

    .line 1876
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1877
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v4, 0x0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    .line 1878
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x10a0059

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1879
    .local v0, "a":Landroid/view/animation/Animation;
    new-instance v3, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener$1;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1903
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1904
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1844
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v4, 0x8

    .line 1832
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v2

    .line 1833
    .local v2, "state":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1841
    :cond_0
    return-void

    .line 1836
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1837
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1838
    .local v0, "contents":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 1839
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
