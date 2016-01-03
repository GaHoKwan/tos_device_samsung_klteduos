.class Landroid/widget/TextView$StylusEventListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private final DELTA:I

.field private mDirLTR:Z

.field private mMaxX:F

.field private mOldCursorPostion:I

.field private mPressed:Z

.field private mStartX:F

.field private mStartY:F

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 11668
    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11669
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$StylusEventListener;->mDirLTR:Z

    .line 11670
    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mOldCursorPostion:I

    .line 11671
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 11672
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 11673
    iput-boolean v2, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 11674
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 11675
    const/16 v0, 0xf

    iput v0, p0, Landroid/widget/TextView$StylusEventListener;->DELTA:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/TextView;
    .param p2, "x1"    # Landroid/widget/TextView$1;

    .prologue
    .line 11668
    invoke-direct {p0, p1}, Landroid/widget/TextView$StylusEventListener;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "clipboardId"    # I

    .prologue
    .line 11678
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 11679
    .local v0, "action":I
    const/4 v6, 0x0

    .line 11680
    .local v6, "startCurPosition":I
    const/4 v1, 0x0

    .line 11683
    .local v1, "endCurPosition":I
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 11804
    :cond_0
    :goto_0
    return-void

    .line 11687
    :cond_1
    const-string v8, "TextView"

    const-string/jumbo v9, "onStylusButtonEvent start"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11689
    packed-switch v0, :pswitch_data_0

    .line 11803
    :cond_2
    :goto_1
    const-string v8, "TextView"

    const-string/jumbo v9, "onStylusButtonEvent END"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11691
    :pswitch_0
    iget-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-eqz v8, :cond_2

    .line 11695
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4

    .line 11696
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    const/high16 v10, 0x41700000    # 15.0f

    add-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    .line 11697
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mDirLTR:Z

    .line 11698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    goto :goto_1

    .line 11699
    :cond_3
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    const/high16 v10, 0x41700000    # 15.0f

    add-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 11700
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mDirLTR:Z

    .line 11701
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    goto :goto_1

    .line 11703
    :cond_4
    iget-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mDirLTR:Z

    if-eqz v8, :cond_6

    .line 11704
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_5

    .line 11705
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    goto :goto_1

    .line 11706
    :cond_5
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    const/high16 v10, 0x41700000    # 15.0f

    add-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 11707
    const-string v8, "TextView"

    const-string v9, "TextSelection is canceled because of wrong X position, DirLTR"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11708
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    .line 11710
    :cond_6
    iget-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mDirLTR:Z

    if-nez v8, :cond_2

    .line 11711
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_7

    .line 11712
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    goto/16 :goto_1

    .line 11713
    :cond_7
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    const/high16 v9, 0x41700000    # 15.0f

    add-float/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 11714
    const-string v8, "TextView"

    const-string v9, "TextSelection is canceled because of wrong X position, DirRTL"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11715
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    .line 11722
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 11723
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 11724
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 11725
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    goto/16 :goto_1

    .line 11731
    :pswitch_2
    const/4 v2, 0x0

    .line 11732
    .local v2, "endX":F
    const/4 v3, 0x0

    .line 11734
    .local v3, "endY":F
    iget-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-eqz v8, :cond_0

    .line 11737
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 11738
    .local v5, "rect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 11739
    .local v4, "offset":Landroid/graphics/Point;
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8, v5, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 11740
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 11741
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 11742
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    iget v9, v5, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_8

    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_8

    iget v8, v5, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    cmpg-float v8, v3, v8

    if-ltz v8, :cond_8

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    cmpl-float v8, v3, v8

    if-lez v8, :cond_9

    .line 11743
    :cond_8
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    .line 11747
    :cond_9
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mSingleLine:Z
    invoke-static {v8}, Landroid/widget/TextView;->access$1400(Landroid/widget/TextView;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 11748
    iget v8, v4, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v9}, Landroid/widget/TextView;->access$1500(Landroid/widget/TextView;)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Point;->x:I

    .line 11750
    :cond_a
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    iget v9, v4, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 11751
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    iget v9, v4, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 11752
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_b

    .line 11753
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 11755
    :cond_b
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_c

    .line 11756
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 11758
    :cond_c
    iget v8, v4, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    sub-float/2addr v2, v8

    .line 11759
    iget v8, v4, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float/2addr v3, v8

    .line 11760
    const/4 v8, 0x0

    cmpg-float v8, v2, v8

    if-gez v8, :cond_d

    .line 11761
    const/4 v2, 0x0

    .line 11763
    :cond_d
    const/4 v8, 0x0

    cmpg-float v8, v3, v8

    if-gez v8, :cond_e

    .line 11764
    const/4 v3, 0x0

    .line 11766
    :cond_e
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v8

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v9

    if-eq v8, v9, :cond_f

    .line 11767
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 11768
    const-string v8, "TextView"

    const-string v9, "TextSelection is canceled because the lines are different."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 11771
    :cond_f
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    iget v10, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v6

    .line 11772
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 11773
    if-ne v6, v1, :cond_10

    .line 11774
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 11775
    const-string v8, "TextView"

    const-string v9, "TextSelection is canceled because the positions are same."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 11778
    :cond_10
    if-le v6, v1, :cond_11

    .line 11779
    move v7, v1

    .line 11780
    .local v7, "temp":I
    move v1, v6

    .line 11781
    move v6, v7

    .line 11783
    .end local v7    # "temp":I
    :cond_11
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mOldCursorPostion:I

    .line 11784
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v8}, Landroid/widget/TextView;->access$1600(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v8}, Landroid/widget/TextView;->access$1600(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v8

    iget-boolean v8, v8, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v8, :cond_12

    .line 11785
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v8}, Landroid/widget/TextView;->access$1600(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 11787
    :cond_12
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/16 v9, 0x16

    invoke-virtual {v8, v9}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 11788
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/widget/TextView;->access$1700(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spannable;

    invoke-static {v8, v6, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 11789
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v8}, Landroid/widget/TextView;->access$1600(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 11790
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v8}, Landroid/widget/TextView;->access$1600(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v8

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 11792
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    .line 11798
    .end local v2    # "endX":F
    .end local v3    # "endY":F
    .end local v4    # "offset":Landroid/graphics/Point;
    .end local v5    # "rect":Landroid/graphics/Rect;
    :pswitch_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    .line 11689
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
