.class Landroid/widget/AbsHorizontalListView$3;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsHorizontalListView;->onTouchUp(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Landroid/widget/AbsHorizontalListView$PerformClick;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Landroid/widget/AbsHorizontalListView$PerformClick;)V
    .locals 0

    .prologue
    .line 4838
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$3;->this$0:Landroid/widget/AbsHorizontalListView;

    iput-object p2, p0, Landroid/widget/AbsHorizontalListView$3;->val$child:Landroid/view/View;

    iput-object p3, p0, Landroid/widget/AbsHorizontalListView$3;->val$performClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4841
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$3;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, 0x0

    # setter for: Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Landroid/widget/AbsHorizontalListView;->access$1702(Landroid/widget/AbsHorizontalListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4842
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$3;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4843
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$3;->val$child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 4844
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$3;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 4845
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$3;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mForcedClick:Z
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$700(Landroid/widget/AbsHorizontalListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$3;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$3;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4846
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$3;->val$performClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView$PerformClick;->run()V

    .line 4848
    :cond_1
    return-void
.end method
