.class final Landroid/widget/AbsHorizontalListView$CheckForTap;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 0

    .prologue
    .line 3794
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 3797
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v4, v4, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    if-nez v4, :cond_3

    .line 3798
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iput v8, v4, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3799
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v5, v5, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v6, v6, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3801
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3802
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    # setter for: Landroid/widget/AbsHorizontalListView;->mIsChildViewEnabled:Z
    invoke-static {v4, v5}, Landroid/widget/AbsHorizontalListView;->access$1002(Landroid/widget/AbsHorizontalListView;Z)Z

    .line 3805
    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3806
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 3808
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v4, v4, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v4, :cond_6

    .line 3809
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3810
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3811
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    .line 3812
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v5, v5, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    invoke-virtual {v4, v5, v0}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 3813
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4}, Landroid/view/View;->refreshDrawableState()V

    .line 3815
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 3816
    .local v3, "longPressTimeout":I
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4}, Landroid/view/View;->isLongClickable()Z

    move-result v2

    .line 3818
    .local v2, "longClickable":Z
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v4, v4, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 3819
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v4, v4, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3820
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_1

    .line 3821
    if-eqz v2, :cond_4

    .line 3822
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3829
    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    .line 3830
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$1100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_2

    .line 3831
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    new-instance v5, Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsHorizontalListView$CheckForLongPress;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    # setter for: Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;
    invoke-static {v4, v5}, Landroid/widget/AbsHorizontalListView;->access$1102(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$CheckForLongPress;)Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    .line 3835
    :cond_2
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    # invokes: Landroid/widget/AbsHorizontalListView;->unregisterIRListener()V
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$1300(Landroid/widget/AbsHorizontalListView;)V

    .line 3836
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    # setter for: Landroid/widget/AbsHorizontalListView;->mAirScrollUnregisterByLongClick:Z
    invoke-static {v4, v8}, Landroid/widget/AbsHorizontalListView;->access$1402(Landroid/widget/AbsHorizontalListView;Z)Z

    .line 3838
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$1100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 3839
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView;->access$1100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3848
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_3
    :goto_1
    return-void

    .line 3824
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "longClickable":Z
    .restart local v3    # "longPressTimeout":I
    :cond_4
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 3841
    :cond_5
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iput v7, v4, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    goto :goto_1

    .line 3844
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_6
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iput v7, v4, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    goto :goto_1
.end method
