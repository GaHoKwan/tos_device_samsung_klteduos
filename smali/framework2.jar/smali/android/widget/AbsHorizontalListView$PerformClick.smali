.class Landroid/widget/AbsHorizontalListView$PerformClick;
.super Landroid/widget/AbsHorizontalListView$WindowRunnnable;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 1

    .prologue
    .line 3469
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsHorizontalListView$WindowRunnnable;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p2, "x1"    # Landroid/widget/AbsHorizontalListView$1;

    .prologue
    .line 3469
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView$PerformClick;-><init>(Landroid/widget/AbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 3476
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mForcedClick:Z
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView;->access$700(Landroid/widget/AbsHorizontalListView;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v5, v5, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v5, :cond_1

    .line 3516
    :cond_0
    :goto_0
    return-void

    .line 3478
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v0, v5, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3479
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v3, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->mClickMotionPosition:I

    .line 3480
    .local v3, "motionPosition":I
    const/4 v2, 0x0

    .line 3481
    .local v2, "handledNotifykeyPress":Z
    if-eqz v0, :cond_0

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v5, v5, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v5, :cond_0

    if-eq v3, v8, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView$WindowRunnnable;->sameWindow()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3484
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v6, v6, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3487
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 3489
    :try_start_0
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v5, v4, v3, v6, v7}, Landroid/widget/AbsHorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3491
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView;->access$800(Landroid/widget/AbsHorizontalListView;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView;->access$900(Landroid/widget/AbsHorizontalListView;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3492
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v5, v4, v3, v6, v7}, Landroid/widget/AbsHorizontalListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    move-result v2

    .line 3495
    :cond_3
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView;->access$800(Landroid/widget/AbsHorizontalListView;)Z

    move-result v5

    if-eq v5, v9, :cond_4

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView;->access$900(Landroid/widget/AbsHorizontalListView;)Z

    move-result v5

    if-ne v5, v9, :cond_0

    :cond_4
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v5, v5, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v6, v6, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 3497
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView;->access$900(Landroid/widget/AbsHorizontalListView;)Z

    move-result v5

    if-ne v5, v9, :cond_5

    .line 3498
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v6, -0x1

    invoke-virtual {v5, v3, v6}, Landroid/widget/AbsHorizontalListView;->addToPressItemListArray(II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3511
    :catch_0
    move-exception v1

    .line 3512
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 3499
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    :try_start_1
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView;->access$800(Landroid/widget/AbsHorizontalListView;)Z

    move-result v5

    if-ne v5, v9, :cond_0

    .line 3500
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v5}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    .line 3501
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v5, v5, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    if-ne v5, v8, :cond_6

    .line 3502
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v6, -0x1

    invoke-virtual {v5, v3, v6}, Landroid/widget/AbsHorizontalListView;->addToPressItemListArray(II)V

    .line 3503
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iput v3, v5, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    goto/16 :goto_0

    .line 3505
    :cond_6
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v6, v6, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    invoke-virtual {v5, v6, v3}, Landroid/widget/AbsHorizontalListView;->addToPressItemListArray(II)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
