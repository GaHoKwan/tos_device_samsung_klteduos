.class Landroid/widget/AbsListView$PerformClick;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    .prologue
    .line 3496
    iput-object p1, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AbsListView;
    .param p2, "x1"    # Landroid/widget/AbsListView$1;

    .prologue
    .line 3496
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 3503
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mForcedClick:Z
    invoke-static {v6}, Landroid/widget/AbsListView;->access$700(Landroid/widget/AbsListView;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-boolean v6, v6, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v6, :cond_1

    .line 3546
    :cond_0
    :goto_0
    return-void

    .line 3505
    :cond_1
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v6, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3506
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v4, p0, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 3507
    .local v4, "motionPosition":I
    const/4 v3, 0x0

    .line 3508
    .local v3, "handledNotifykeyPress":Z
    const/4 v2, 0x0

    .line 3509
    .local v2, "handledNotifyMultiSelect":Z
    if-eqz v0, :cond_0

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v6, :cond_0

    if-eq v4, v9, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView$WindowRunnnable;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3512
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v7, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3515
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 3517
    :try_start_0
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    invoke-virtual {v6, v5, v4, v7, v8}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3519
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z
    invoke-static {v6}, Landroid/widget/AbsListView;->access$800(Landroid/widget/AbsListView;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z
    invoke-static {v6}, Landroid/widget/AbsListView;->access$900(Landroid/widget/AbsListView;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3520
    :cond_2
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    invoke-virtual {v6, v5, v4, v7, v8}, Landroid/widget/AbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    move-result v3

    .line 3521
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    # invokes: Landroid/widget/AbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z
    invoke-static {v6, v5, v4, v7, v8}, Landroid/widget/AbsListView;->access$1000(Landroid/widget/AbsListView;Landroid/view/View;IJ)Z

    move-result v2

    .line 3525
    :cond_3
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z
    invoke-static {v6}, Landroid/widget/AbsListView;->access$800(Landroid/widget/AbsListView;)Z

    move-result v6

    if-eq v6, v10, :cond_4

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z
    invoke-static {v6}, Landroid/widget/AbsListView;->access$900(Landroid/widget/AbsListView;)Z

    move-result v6

    if-ne v6, v10, :cond_0

    :cond_4
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwPressItemListIndex:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)I

    move-result v6

    iget-object v7, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v7, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 3527
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z
    invoke-static {v6}, Landroid/widget/AbsListView;->access$900(Landroid/widget/AbsListView;)Z

    move-result v6

    if-ne v6, v10, :cond_5

    .line 3528
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    const/4 v7, -0x1

    # invokes: Landroid/widget/AbsListView;->addToPressItemListArray(II)V
    invoke-static {v6, v4, v7}, Landroid/widget/AbsListView;->access$1200(Landroid/widget/AbsListView;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3541
    :catch_0
    move-exception v1

    .line 3542
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 3529
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    :try_start_1
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z
    invoke-static {v6}, Landroid/widget/AbsListView;->access$800(Landroid/widget/AbsListView;)Z

    move-result v6

    if-ne v6, v10, :cond_0

    .line 3530
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 3531
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFirstPressedPoint:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$1300(Landroid/widget/AbsListView;)I

    move-result v6

    if-ne v6, v9, :cond_6

    .line 3532
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    const/4 v7, -0x1

    # invokes: Landroid/widget/AbsListView;->addToPressItemListArray(II)V
    invoke-static {v6, v4, v7}, Landroid/widget/AbsListView;->access$1200(Landroid/widget/AbsListView;II)V

    .line 3533
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # setter for: Landroid/widget/AbsListView;->mFirstPressedPoint:I
    invoke-static {v6, v4}, Landroid/widget/AbsListView;->access$1302(Landroid/widget/AbsListView;I)I

    goto/16 :goto_0

    .line 3535
    :cond_6
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v7, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFirstPressedPoint:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$1300(Landroid/widget/AbsListView;)I

    move-result v7

    # invokes: Landroid/widget/AbsListView;->addToPressItemListArray(II)V
    invoke-static {v6, v7, v4}, Landroid/widget/AbsListView;->access$1200(Landroid/widget/AbsListView;II)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
