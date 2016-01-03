.class Landroid/widget/AbsListView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 8793
    iput-object p1, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AbsListView;
    .param p2, "x1"    # Landroid/widget/AbsListView$1;

    .prologue
    .line 8793
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 8795
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 8892
    :cond_0
    :goto_0
    return-void

    .line 8797
    :pswitch_0
    const/4 v5, 0x0

    .line 8799
    .local v5, "offset":I
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    # setter for: Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J
    invoke-static {v7, v8, v9}, Landroid/widget/AbsListView;->access$6302(Landroid/widget/AbsListView;J)J

    .line 8800
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J
    invoke-static {v8}, Landroid/widget/AbsListView;->access$6300(Landroid/widget/AbsListView;)J

    move-result-wide v8

    iget-object v10, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J
    invoke-static {v10}, Landroid/widget/AbsListView;->access$6500(Landroid/widget/AbsListView;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    # setter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J
    invoke-static {v7, v8, v9}, Landroid/widget/AbsListView;->access$6402(Landroid/widget/AbsListView;J)J

    .line 8802
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsPenHovered:Z
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6600(Landroid/widget/AbsListView;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6300(Landroid/widget/AbsListView;)J

    move-result-wide v7

    iget-object v9, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollStartTime:J
    invoke-static {v9}, Landroid/widget/AbsListView;->access$6700(Landroid/widget/AbsListView;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    iget-object v9, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J
    invoke-static {v9}, Landroid/widget/AbsListView;->access$6800(Landroid/widget/AbsListView;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 8806
    :cond_1
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 8811
    .local v4, "count":I
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, v4

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget v8, v8, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v7, v8, :cond_8

    const/4 v1, 0x1

    .line 8813
    .local v1, "canScrollDown":Z
    :goto_1
    if-nez v1, :cond_3

    if-lez v4, :cond_3

    .line 8814
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8815
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/view/View;->mBottom:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$6900(Landroid/widget/AbsListView;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_9

    :cond_2
    const/4 v1, 0x1

    .line 8820
    .end local v3    # "child":Landroid/view/View;
    :cond_3
    :goto_2
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v7, :cond_a

    const/4 v2, 0x1

    .line 8822
    .local v2, "canScrollUp":Z
    :goto_3
    if-nez v2, :cond_4

    .line 8823
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_4

    .line 8824
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8825
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_b

    const/4 v2, 0x1

    .line 8829
    .end local v3    # "child":Landroid/view/View;
    :cond_4
    :goto_4
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6400(Landroid/widget/AbsListView;)J

    move-result-wide v7

    const-wide/16 v9, 0x2

    cmp-long v7, v7, v9

    if-lez v7, :cond_c

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6400(Landroid/widget/AbsListView;)J

    move-result-wide v7

    const-wide/16 v9, 0x4

    cmp-long v7, v7, v9

    if-gez v7, :cond_c

    .line 8830
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$7100(Landroid/widget/AbsListView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    # setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$7002(Landroid/widget/AbsListView;I)I

    .line 8838
    :goto_5
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7200(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_f

    .line 8839
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7000(Landroid/widget/AbsListView;)I

    move-result v7

    mul-int/lit8 v5, v7, -0x1

    .line 8844
    :goto_6
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x438

    if-lt v7, v8, :cond_5

    .line 8845
    mul-int/lit8 v5, v5, 0x2

    .line 8848
    :cond_5
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 8852
    if-gez v5, :cond_6

    if-nez v2, :cond_7

    :cond_6
    if-lez v5, :cond_10

    if-eqz v1, :cond_10

    .line 8853
    :cond_7
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 8854
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7400(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$HoverScrollHandler;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I
    invoke-static {v9}, Landroid/widget/AbsListView;->access$7300(Landroid/widget/AbsListView;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8811
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 8815
    .restart local v1    # "canScrollDown":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 8820
    .end local v3    # "child":Landroid/view/View;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 8825
    .restart local v2    # "canScrollUp":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 8831
    .end local v3    # "child":Landroid/view/View;
    :cond_c
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6400(Landroid/widget/AbsListView;)J

    move-result-wide v7

    const-wide/16 v9, 0x4

    cmp-long v7, v7, v9

    if-ltz v7, :cond_d

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6400(Landroid/widget/AbsListView;)J

    move-result-wide v7

    const-wide/16 v9, 0x5

    cmp-long v7, v7, v9

    if-gez v7, :cond_d

    .line 8832
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$7100(Landroid/widget/AbsListView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    # setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$7002(Landroid/widget/AbsListView;I)I

    goto/16 :goto_5

    .line 8833
    :cond_d
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6400(Landroid/widget/AbsListView;)J

    move-result-wide v7

    const-wide/16 v9, 0x5

    cmp-long v7, v7, v9

    if-ltz v7, :cond_e

    .line 8834
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$7100(Landroid/widget/AbsListView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x6

    # setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$7002(Landroid/widget/AbsListView;I)I

    goto/16 :goto_5

    .line 8836
    :cond_e
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$7100(Landroid/widget/AbsListView;)I

    move-result v8

    # setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$7002(Landroid/widget/AbsListView;I)I

    goto/16 :goto_5

    .line 8841
    :cond_f
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7000(Landroid/widget/AbsListView;)I

    move-result v7

    mul-int/lit8 v5, v7, 0x1

    goto/16 :goto_6

    .line 8857
    :cond_10
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getOverScrollMode()I

    move-result v6

    .line 8858
    .local v6, "overscrollMode":I
    if-eqz v6, :cond_11

    const/4 v7, 0x1

    if-ne v6, v7, :cond_16

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->contentFits()Z
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)Z

    move-result v7

    if-nez v7, :cond_16

    :cond_11
    const/4 v0, 0x1

    .line 8861
    .local v0, "canOverscroll":Z
    :goto_7
    if-eqz v0, :cond_15

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7500(Landroid/widget/AbsListView;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 8862
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7200(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_17

    .line 8863
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 8864
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3300(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_12

    .line 8865
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3300(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 8874
    :cond_12
    :goto_8
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3300(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_14

    .line 8876
    :cond_13
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 8879
    :cond_14
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x1

    # setter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$7502(Landroid/widget/AbsListView;Z)Z

    .line 8882
    :cond_15
    if-nez v0, :cond_0

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7500(Landroid/widget/AbsListView;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 8883
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x1

    # setter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$7502(Landroid/widget/AbsListView;Z)Z

    goto/16 :goto_0

    .line 8858
    .end local v0    # "canOverscroll":Z
    :cond_16
    const/4 v0, 0x0

    goto :goto_7

    .line 8867
    .restart local v0    # "canOverscroll":Z
    :cond_17
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7200(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_12

    .line 8868
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3300(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 8869
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_12

    .line 8870
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_8

    .line 8795
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
