.class Landroid/widget/AbsHorizontalListView$4;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 0

    .prologue
    .line 6443
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$4;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6446
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$4;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    .line 6447
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$4;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$4;->this$0:Landroid/widget/AbsHorizontalListView;

    iput-boolean v2, v1, Landroid/widget/AbsHorizontalListView;->mCachingActive:Z

    iput-boolean v2, v0, Landroid/widget/AbsHorizontalListView;->mCachingStarted:Z

    .line 6448
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$4;->this$0:Landroid/widget/AbsHorizontalListView;

    # invokes: Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V
    invoke-static {v0, v2}, Landroid/widget/AbsHorizontalListView;->access$4500(Landroid/widget/AbsHorizontalListView;Z)V

    .line 6449
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$4;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/view/ViewGroup;->mPersistentDrawingCache:I
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$4600(Landroid/widget/AbsHorizontalListView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 6450
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$4;->this$0:Landroid/widget/AbsHorizontalListView;

    # invokes: Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V
    invoke-static {v0, v2}, Landroid/widget/AbsHorizontalListView;->access$4700(Landroid/widget/AbsHorizontalListView;Z)V

    .line 6452
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$4;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6453
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$4;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 6456
    :cond_1
    return-void
.end method
