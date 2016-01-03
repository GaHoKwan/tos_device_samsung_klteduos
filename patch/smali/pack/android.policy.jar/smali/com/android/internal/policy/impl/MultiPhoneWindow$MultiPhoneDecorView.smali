.class final Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;
.super Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultiPhoneDecorView"
.end annotation


# instance fields
.field private mBorderPaintInner:Landroid/graphics/Paint;

.field private mBorderPaintOutter:Landroid/graphics/Paint;

.field private mFixedRatio:F

.field private mGuideViewBound:Landroid/graphics/Rect;

.field private mIsResize:Z

.field private mLastDiagonal:Z

.field private mLastHoverEdge:Z

.field private mLastMoveX:I

.field private mLastMoveY:I

.field private mOutSideMoving:Z

.field private mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/content/Context;I)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "featureId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 564
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .line 565
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V

    .line 558
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 559
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    .line 560
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-direct {v0, v2, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    .line 561
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    .line 562
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mOutSideMoving:Z

    .line 566
    return-void
.end method

.method private dispatchOutSideTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 763
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mOutSideMoving:Z

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 788
    :cond_0
    :goto_0
    return v0

    .line 767
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 772
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 788
    goto :goto_0

    .line 774
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mOutSideMoving:Z

    .line 775
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 779
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 784
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 785
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mOutSideMoving:Z

    goto :goto_1

    .line 772
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 860
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    .line 861
    .local v6, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v7, 0x800

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 862
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 929
    :goto_0
    return v7

    .line 864
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 865
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 868
    :cond_2
    const/4 v1, -0x1

    .line 869
    .local v1, "hoverIcon":I
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    const/4 v5, 0x1

    .line 870
    .local v5, "isMouse":Z
    :goto_1
    const/high16 v7, 0x10000

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    .line 872
    .local v4, "isFixedSize":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_15

    .line 875
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->clear()V

    .line 876
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 878
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->check(II)V

    .line 880
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge()Z

    move-result v3

    .line 881
    .local v3, "isEdge":Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isDiagonal()Z

    move-result v2

    .line 883
    .local v2, "isDiagonal":Z
    if-nez v4, :cond_10

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    if-eq v7, v3, :cond_10

    if-nez v2, :cond_10

    .line 884
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 885
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 886
    if-eqz v5, :cond_7

    const/16 v1, 0x6d

    .line 897
    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    .line 898
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastDiagonal:Z

    .line 918
    .end local v2    # "isDiagonal":Z
    .end local v3    # "isEdge":Z
    :cond_4
    :goto_3
    if-lez v1, :cond_5

    .line 919
    if-eqz v5, :cond_17

    .line 920
    const/4 v7, -0x1

    :try_start_0
    invoke-static {v1, v7}, Landroid/view/PointerIcon;->setMouseIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :cond_5
    :goto_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto/16 :goto_0

    .line 869
    .end local v4    # "isFixedSize":Z
    .end local v5    # "isMouse":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 886
    .restart local v2    # "isDiagonal":Z
    .restart local v3    # "isEdge":Z
    .restart local v4    # "isFixedSize":Z
    .restart local v5    # "isMouse":Z
    :cond_7
    const/16 v1, 0x9

    goto :goto_2

    .line 887
    :cond_8
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 888
    if-eqz v5, :cond_9

    const/16 v1, 0x6c

    :goto_5
    goto :goto_2

    :cond_9
    const/16 v1, 0x8

    goto :goto_5

    .line 890
    :cond_a
    if-eqz v5, :cond_b

    const/16 v1, 0x6b

    :goto_6
    goto :goto_2

    :cond_b
    const/4 v1, 0x7

    goto :goto_6

    .line 892
    :cond_c
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 893
    if-eqz v5, :cond_d

    const/16 v1, 0x6a

    :goto_7
    goto :goto_2

    :cond_d
    const/4 v1, 0x6

    goto :goto_7

    .line 895
    :cond_e
    if-eqz v5, :cond_f

    const/16 v1, 0x65

    :goto_8
    goto :goto_2

    :cond_f
    const/4 v1, 0x1

    goto :goto_8

    .line 900
    :cond_10
    if-nez v4, :cond_4

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastDiagonal:Z

    if-eq v7, v2, :cond_4

    .line 901
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 902
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 903
    if-eqz v5, :cond_12

    const/16 v1, 0x6d

    .line 908
    :cond_11
    :goto_9
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastDiagonal:Z

    .line 909
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    goto :goto_3

    .line 903
    :cond_12
    const/16 v1, 0x9

    goto :goto_9

    .line 904
    :cond_13
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 905
    if-eqz v5, :cond_14

    const/16 v1, 0x6c

    :goto_a
    goto :goto_9

    :cond_14
    const/16 v1, 0x8

    goto :goto_a

    .line 911
    .end local v2    # "isDiagonal":Z
    .end local v3    # "isEdge":Z
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_4

    .line 912
    if-eqz v5, :cond_16

    const/16 v1, 0x65

    .line 913
    :goto_b
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    .line 914
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastDiagonal:Z

    goto/16 :goto_3

    .line 912
    :cond_16
    const/4 v1, 0x1

    goto :goto_b

    .line 922
    :cond_17
    const/4 v7, -0x1

    :try_start_1
    invoke-static {v1, v7}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 925
    :catch_0
    move-exception v0

    .line 926
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "MultiPhoneWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to change Pen Point to HOVERING / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v15

    .line 571
    .local v15, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v17, 0x800

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v17

    if-nez v17, :cond_0

    .line 572
    invoke-super/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 758
    :goto_0
    return v17

    .line 575
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->dispatchOutSideTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 576
    invoke-super/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    goto :goto_0

    .line 580
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->clear()V

    .line 582
    invoke-super/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    goto :goto_0

    .line 585
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 758
    :cond_3
    :goto_1
    invoke-super/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    goto :goto_0

    .line 587
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V
    invoke-static/range {v17 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->clear()V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 592
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    .line 593
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->check(II)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    .line 599
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v18

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V
    invoke-static/range {v17 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1100(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V

    .line 606
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 607
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 600
    :catch_0
    move-exception v6

    .line 601
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 612
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge()Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 614
    .local v3, "display":Landroid/view/Display;
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    .line 615
    .local v14, "size":Landroid/graphics/Point;
    invoke-virtual {v3, v14}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 616
    const/4 v12, 0x0

    .line 617
    .local v12, "minWidth":I
    const/4 v11, 0x0

    .line 618
    .local v11, "minHeight":I
    iget v10, v14, Landroid/graphics/Point;->x:I

    .line 619
    .local v10, "maxWidth":I
    iget v9, v14, Landroid/graphics/Point;->y:I

    .line 620
    .local v9, "maxHeight":I
    const v17, 0x8000

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isDiagonal()Z

    move-result v17

    if-eqz v17, :cond_11

    :cond_4
    const/4 v7, 0x1

    .line 622
    .local v7, "fixedRatio":Z
    :goto_3
    const/high16 v17, 0x10000

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v17

    if-nez v17, :cond_d

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 624
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 625
    .local v4, "dx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v18, v18, v4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v18, v18, v4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 637
    .end local v4    # "dx":I
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 638
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v5, v0

    .line 639
    .local v5, "dy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 645
    .end local v5    # "dy":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v13

    .line 647
    .local v13, "requestedOrientation":I
    if-nez v13, :cond_7

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v13, v0, Landroid/content/res/Configuration;->orientation:I

    .line 650
    :cond_7
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_13

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 658
    :goto_5
    const/16 v17, 0x800

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v17

    if-nez v17, :cond_8

    .line 659
    const/4 v12, 0x1

    .line 660
    const/4 v11, 0x1

    .line 663
    :cond_8
    const/high16 v17, 0x10000

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 668
    :cond_9
    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v12, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v11, :cond_c

    .line 669
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_a

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    .line 672
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 673
    .local v16, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 674
    .local v8, "height":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v8

    move/from16 v18, v0

    div-float v2, v17, v18

    .line 676
    .local v2, "curRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v17

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 677
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 678
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    move/from16 v18, v0

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v18, v18, v8

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 685
    .end local v2    # "curRatio":F
    .end local v8    # "height":I
    .end local v16    # "width":I
    :cond_c
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    .line 686
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->check(II)V

    .line 689
    .end local v13    # "requestedOrientation":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    if-gt v0, v12, :cond_15

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v18, v18, v12

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 704
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v17

    if-nez v17, :cond_f

    if-eqz v7, :cond_10

    .line 705
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    if-gt v0, v11, :cond_19

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v18, v18, v11

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 712
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v12, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v11, :cond_1a

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static/range {v17 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1200(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    .line 718
    :goto_9
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 720
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 620
    .end local v7    # "fixedRatio":Z
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 630
    .restart local v7    # "fixedRatio":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 631
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 632
    .restart local v4    # "dx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v18, v18, v4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v18, v18, v4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    .line 654
    .end local v4    # "dx":I
    .restart local v13    # "requestedOrientation":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v11

    goto/16 :goto_5

    .line 681
    .restart local v2    # "curRatio":F
    .restart local v8    # "height":I
    .restart local v16    # "width":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_6

    .line 693
    .end local v2    # "curRatio":F
    .end local v8    # "height":I
    .end local v13    # "requestedOrientation":I
    .end local v16    # "width":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v10, :cond_e

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v18, v18, v10

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_7

    .line 696
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge(I)Z

    move-result v17

    if-nez v17, :cond_17

    if-eqz v7, :cond_e

    .line 697
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    if-gt v0, v12, :cond_18

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v18, v18, v12

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_7

    .line 699
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v10, :cond_e

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v18, v18, v10

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_7

    .line 707
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v9, :cond_10

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_8

    .line 716
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static/range {v17 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1200(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    goto/16 :goto_9

    .line 721
    .end local v3    # "display":Landroid/view/Display;
    .end local v7    # "fixedRatio":Z
    .end local v9    # "maxHeight":I
    .end local v10    # "maxWidth":I
    .end local v11    # "minHeight":I
    .end local v12    # "minWidth":I
    .end local v14    # "size":Landroid/graphics/Point;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isCandidate()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 722
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    .line 723
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->check(II)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    .line 728
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 732
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v18

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V
    invoke-static/range {v17 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1100(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V

    .line 735
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 736
    const/16 v17, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_1

    .line 729
    :catch_1
    move-exception v6

    .line 730
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 743
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_2
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 744
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->isEdge()Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V
    invoke-static/range {v17 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;Z)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->setEmpty()V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->setEmpty()V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    .line 752
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 754
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->clear()V

    goto/16 :goto_1

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, -0x2

    .line 811
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->draw(Landroid/graphics/Canvas;)V

    .line 813
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 814
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 815
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v6, :cond_1

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v6, :cond_1

    .line 817
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2202(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    .line 857
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 821
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    if-nez v4, :cond_2

    .line 822
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    .line 823
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusLineColor:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 824
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessBorderPaintInner:F
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 827
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintOutter:Landroid/graphics/Paint;

    if-nez v4, :cond_3

    .line 828
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintOutter:Landroid/graphics/Paint;

    .line 829
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintOutter:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOutLineColor:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 830
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintOutter:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessBorderPaintOuter:F
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 833
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 834
    .local v2, "right":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 836
    .local v1, "bottom":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->drawBorderLine(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    invoke-static {v4, p1, v2, v1, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2600(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    .line 837
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintOutter:Landroid/graphics/Paint;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->drawBorderLine(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    invoke-static {v4, p1, v2, v1, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2600(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    goto :goto_0

    .line 838
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "bottom":I
    .end local v2    # "right":I
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasWindowFocus:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 839
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 840
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v6, :cond_5

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, v6, :cond_0

    .line 845
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 846
    .restart local v2    # "right":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 847
    .restart local v1    # "bottom":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v4, v2, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v4, v1, :cond_7

    .line 848
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v3

    .line 849
    .local v3, "stackBound":Landroid/graphics/Rect;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lt v4, v2, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lt v4, v1, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThickness:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThickness:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_0

    .line 855
    .end local v3    # "stackBound":Landroid/graphics/Rect;
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->drawBorderBitmap(Landroid/graphics/Canvas;II)V
    invoke-static {v4, p1, v2, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3100(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Canvas;II)V

    goto/16 :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 934
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->onAttachedToWindow()V

    .line 936
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->hackTurnOffWindowResizeAnim(Z)V

    .line 938
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    .line 940
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->register()V

    .line 941
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->unregister()V

    .line 971
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 796
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->onWindowFocusChanged(Z)V

    .line 797
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasWindowFocus:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 798
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 807
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasWindowFocus:Z
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1802(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    .line 808
    return-void

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 800
    if-eqz p1, :cond_2

    .line 801
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusLineColor:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 805
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 803
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mBorderPaintInner:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnFocusLineColor:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x1

    .line 945
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 946
    if-nez p1, :cond_0

    .line 947
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object p1

    .line 949
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v2

    if-eq p1, v2, :cond_3

    .line 950
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 951
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 952
    .local v0, "contents":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 953
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 955
    .end local v0    # "contents":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p0, v3}, Landroid/view/View;->hackTurnOffWindowResizeAnim(Z)V

    .line 967
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    return-void

    .line 960
    :cond_3
    if-nez p1, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 961
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 966
    :goto_2
    invoke-virtual {p0, v3}, Landroid/view/View;->hackTurnOffWindowResizeAnim(Z)V

    goto :goto_1

    .line 963
    :cond_4
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
