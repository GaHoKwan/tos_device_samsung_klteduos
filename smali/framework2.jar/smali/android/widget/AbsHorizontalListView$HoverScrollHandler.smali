.class Landroid/widget/AbsHorizontalListView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "AbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 0

    .prologue
    .line 8694
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p2, "x1"    # Landroid/widget/AbsHorizontalListView$1;

    .prologue
    .line 8694
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;-><init>(Landroid/widget/AbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 8696
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 8792
    :cond_0
    :goto_0
    return-void

    .line 8698
    :pswitch_0
    const/4 v5, 0x0

    .line 8700
    .local v5, "offset":I
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v8, v8

    # setter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v7, v8}, Landroid/widget/AbsHorizontalListView;->access$6102(Landroid/widget/AbsHorizontalListView;I)I

    .line 8701
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v8}, Landroid/widget/AbsHorizontalListView;->access$6100(Landroid/widget/AbsHorizontalListView;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I
    invoke-static {v9}, Landroid/widget/AbsHorizontalListView;->access$6300(Landroid/widget/AbsHorizontalListView;)I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit16 v8, v8, 0x3e8

    # setter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7, v8}, Landroid/widget/AbsHorizontalListView;->access$6202(Landroid/widget/AbsHorizontalListView;I)I

    .line 8703
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6100(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I
    invoke-static {v8}, Landroid/widget/AbsHorizontalListView;->access$6400(Landroid/widget/AbsHorizontalListView;)I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollTimeInterval:I
    invoke-static {v8}, Landroid/widget/AbsHorizontalListView;->access$6500(Landroid/widget/AbsHorizontalListView;)I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 8706
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 8711
    .local v4, "count":I
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v7, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, v4

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v8, v8, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v7, v8, :cond_7

    const/4 v2, 0x1

    .line 8713
    .local v2, "canScrollRight":Z
    :goto_1
    if-nez v2, :cond_2

    if-lez v4, :cond_2

    .line 8714
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8715
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/view/View;->mRight:I
    invoke-static {v8}, Landroid/widget/AbsHorizontalListView;->access$6600(Landroid/widget/AbsHorizontalListView;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v9, v9, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v9, v9, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_8

    :cond_1
    const/4 v2, 0x1

    .line 8720
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    :goto_2
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v7, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v7, :cond_9

    const/4 v1, 0x1

    .line 8722
    .local v1, "canScrollLeft":Z
    :goto_3
    if-nez v1, :cond_3

    .line 8723
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 8724
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8725
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v8, v8, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v7, v8, :cond_a

    const/4 v1, 0x1

    .line 8729
    .end local v3    # "child":Landroid/view/View;
    :cond_3
    :goto_4
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6200(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_b

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6200(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_b

    .line 8730
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsHorizontalListView;->access$6800(Landroid/widget/AbsHorizontalListView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    # setter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsHorizontalListView;->access$6702(Landroid/widget/AbsHorizontalListView;I)I

    .line 8738
    :goto_5
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6900(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_e

    .line 8739
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6700(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    mul-int/lit8 v5, v7, -0x1

    .line 8744
    :goto_6
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x438

    if-lt v7, v8, :cond_4

    .line 8745
    mul-int/lit8 v5, v5, 0x2

    .line 8748
    :cond_4
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 8752
    if-gez v5, :cond_5

    if-nez v1, :cond_6

    :cond_5
    if-lez v5, :cond_f

    if-eqz v2, :cond_f

    .line 8753
    :cond_6
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(II)V

    .line 8754
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$7100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I
    invoke-static {v9}, Landroid/widget/AbsHorizontalListView;->access$7000(Landroid/widget/AbsHorizontalListView;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8711
    .end local v1    # "canScrollLeft":Z
    .end local v2    # "canScrollRight":Z
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 8715
    .restart local v2    # "canScrollRight":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 8720
    .end local v3    # "child":Landroid/view/View;
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 8725
    .restart local v1    # "canScrollLeft":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    .line 8731
    .end local v3    # "child":Landroid/view/View;
    :cond_b
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6200(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_c

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6200(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    const/4 v8, 0x5

    if-ge v7, v8, :cond_c

    .line 8732
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsHorizontalListView;->access$6800(Landroid/widget/AbsHorizontalListView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    # setter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsHorizontalListView;->access$6702(Landroid/widget/AbsHorizontalListView;I)I

    goto :goto_5

    .line 8733
    :cond_c
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6200(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_d

    .line 8734
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsHorizontalListView;->access$6800(Landroid/widget/AbsHorizontalListView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x6

    # setter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsHorizontalListView;->access$6702(Landroid/widget/AbsHorizontalListView;I)I

    goto/16 :goto_5

    .line 8736
    :cond_d
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsHorizontalListView;->access$6800(Landroid/widget/AbsHorizontalListView;)I

    move-result v8

    # setter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsHorizontalListView;->access$6702(Landroid/widget/AbsHorizontalListView;I)I

    goto/16 :goto_5

    .line 8741
    :cond_e
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6700(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    mul-int/lit8 v5, v7, 0x1

    goto/16 :goto_6

    .line 8757
    :cond_f
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v7}, Landroid/view/View;->getOverScrollMode()I

    move-result v6

    .line 8758
    .local v6, "overscrollMode":I
    if-eqz v6, :cond_10

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # invokes: Landroid/widget/AbsHorizontalListView;->contentFits()Z
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2900(Landroid/widget/AbsHorizontalListView;)Z

    move-result v7

    if-nez v7, :cond_15

    :cond_10
    const/4 v0, 0x1

    .line 8761
    .local v0, "canOverscroll":Z
    :goto_7
    if-eqz v0, :cond_14

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$7200(Landroid/widget/AbsHorizontalListView;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 8762
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6900(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_16

    .line 8763
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$3000(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 8764
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$3100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_11

    .line 8765
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$3100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 8774
    :cond_11
    :goto_8
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$3000(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$3000(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$3100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_13

    .line 8776
    :cond_12
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 8779
    :cond_13
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v8, 0x1

    # setter for: Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z
    invoke-static {v7, v8}, Landroid/widget/AbsHorizontalListView;->access$7202(Landroid/widget/AbsHorizontalListView;Z)Z

    .line 8782
    :cond_14
    if-nez v0, :cond_0

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$7200(Landroid/widget/AbsHorizontalListView;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 8783
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v8, 0x1

    # setter for: Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z
    invoke-static {v7, v8}, Landroid/widget/AbsHorizontalListView;->access$7202(Landroid/widget/AbsHorizontalListView;Z)Z

    goto/16 :goto_0

    .line 8758
    .end local v0    # "canOverscroll":Z
    :cond_15
    const/4 v0, 0x0

    goto :goto_7

    .line 8767
    .restart local v0    # "canOverscroll":Z
    :cond_16
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6900(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_11

    .line 8768
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$3100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 8769
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$3000(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_11

    .line 8770
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$3000(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_8

    .line 8696
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
