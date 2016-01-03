.class Landroid/widget/FHoverPopupWindow$FHPopupContainer;
.super Landroid/widget/HoverPopupWindow$HoverPopupContainer;
.source "FHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FHoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FHPopupContainer"
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "FHPopupContainer"


# instance fields
.field private final DEFAULT_BG_OUTLINE_THICKNESS:F

.field private final DEFAULT_BG_PADDING:F

.field private POPUPSTATE_CENTER:I

.field private POPUPSTATE_LEFT:I

.field private POPUPSTATE_RIGHT:I

.field private ani:Landroid/view/animation/Animation;

.field private isFHmoveAnimation:Z

.field private mAnimationAreaOffset:I

.field private mBGPaddingBottomPX:F

.field private mBGPaddingTopPX:F

.field private mFHPopCContext:Landroid/content/Context;

.field private mLeftLimit:I

.field private mPickerHeightPX:F

.field private mPickerLineColor:I

.field private mPickerLineColorOnBottom:I

.field private mPickerOutlineThicknessPX:I

.field private mPickerSpaceColor:I

.field private mPickerWidthPX:F

.field private mPopupState:I

.field private mRightLimit:I

.field private mTopPickerOffset:I

.field private mTotalLeftLimit:F

.field private mTotalRightLimit:F

.field private misMovetoRight:Z

.field final synthetic this$0:Landroid/widget/FHoverPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/FHoverPopupWindow;Landroid/content/Context;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1001
    iput-object p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    .line 1002
    invoke-direct {p0, p1, p2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    .line 952
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->DEFAULT_BG_PADDING:F

    .line 955
    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->DEFAULT_BG_OUTLINE_THICKNESS:F

    .line 957
    iput-boolean v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->isFHmoveAnimation:Z

    .line 959
    iput-object v5, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->ani:Landroid/view/animation/Animation;

    .line 961
    iput-object v5, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mFHPopCContext:Landroid/content/Context;

    .line 963
    iput-boolean v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->misMovetoRight:Z

    .line 965
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    .line 967
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    .line 969
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 971
    iput v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    .line 973
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    .line 975
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    .line 977
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColor:I

    .line 979
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColorOnBottom:I

    .line 981
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    .line 983
    iput v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    .line 985
    iput v4, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    .line 987
    iput v4, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    .line 989
    iput v6, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    .line 991
    iput v6, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    .line 993
    iput v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTopPickerOffset:I

    .line 995
    const/16 v1, 0x64

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    .line 997
    iput v4, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    .line 999
    iput v4, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    .line 1003
    iput-object p2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mFHPopCContext:Landroid/content/Context;

    .line 1004
    iget v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 1008
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1009
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x151

    const v2, -0xb88f7e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColor:I

    .line 1010
    const/16 v1, 0x152

    const v2, -0xa57f6f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColorOnBottom:I

    .line 1011
    const/16 v1, 0x153

    const v2, -0xd0a99c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    .line 1013
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1015
    iput v6, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    iput v6, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    .line 1017
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    .line 1018
    # getter for: Landroid/widget/FHoverPopupWindow;->TW:F
    invoke-static {p1}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)F

    move-result v1

    invoke-virtual {p1, v1, v5}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    .line 1019
    # getter for: Landroid/widget/FHoverPopupWindow;->H:F
    invoke-static {p1}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)F

    move-result v1

    invoke-virtual {p1, v1, v5}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    .line 1020
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1047
    invoke-super/range {p0 .. p1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->draw(Landroid/graphics/Canvas;)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 1437
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 1058
    const-string v23, "FHPopupContainer"

    const-string v24, "FHPopupContainer.draw(): mContentView is null, return"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1062
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    # setter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v23 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1302(Landroid/widget/FHoverPopupWindow;F)F

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    if-nez v23, :cond_3

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    new-instance v24, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    move/from16 v26, v0

    invoke-direct/range {v24 .. v26}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1402(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    new-instance v24, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    sub-float v25, v25, v26

    const/16 v26, 0x0

    invoke-direct/range {v24 .. v26}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1502(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    new-instance v24, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    const/16 v26, 0x0

    invoke-direct/range {v24 .. v26}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1602(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 1075
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_5

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050139

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x105013a

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    .line 1082
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v23

    if-lez v23, :cond_5

    .line 1083
    const/4 v14, 0x0

    .line 1084
    .local v14, "d":Landroid/graphics/drawable/Drawable;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1085
    .local v12, "child":Landroid/view/View;
    if-eqz v12, :cond_4

    .line 1086
    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1089
    :cond_4
    if-eqz v14, :cond_5

    .line 1090
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 1091
    .local v22, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1092
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 1093
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    .line 1100
    .end local v12    # "child":Landroid/view/View;
    .end local v14    # "d":Landroid/graphics/drawable/Drawable;
    .end local v22    # "r":Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineEndX()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1101
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_e

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1108
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineEndX()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v26, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v26 .. v26}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v26

    div-float v25, v25, v26

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1109
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_f

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1116
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1132
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_10

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v23

    div-int/lit8 v13, v23, 0x2

    .line 1137
    .local v13, "contentViewHalfWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    move/from16 v23, v0

    add-int v23, v23, v13

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    .line 1138
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, 0xa

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    .line 1152
    .end local v13    # "contentViewHalfWidth":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    sub-int v23, v23, v24

    div-int/lit8 v15, v23, 0x2

    .line 1161
    .local v15, "movelength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    .line 1165
    .local v21, "previousRightX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    .line 1166
    .local v20, "previousLeftX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    .line 1174
    .local v19, "previousCenterX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1800(Landroid/widget/FHoverPopupWindow;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_11

    if-gtz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move/from16 v0, v21

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move/from16 v0, v20

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move/from16 v0, v19

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1201
    .end local v19    # "previousCenterX":F
    .end local v20    # "previousLeftX":F
    .end local v21    # "previousRightX":F
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    .line 1205
    .restart local v21    # "previousRightX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    .line 1206
    .restart local v20    # "previousLeftX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    .line 1214
    .restart local v19    # "previousCenterX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getRight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1800(Landroid/widget/FHoverPopupWindow;)I

    move-result v24

    sub-int v23, v23, v24

    if-lez v23, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getRight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1800(Landroid/widget/FHoverPopupWindow;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gtz v23, :cond_12

    if-gtz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_12

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move/from16 v0, v21

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move/from16 v0, v20

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move/from16 v0, v19

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1239
    .end local v19    # "previousCenterX":F
    .end local v20    # "previousLeftX":F
    .end local v21    # "previousRightX":F
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_13

    .line 1251
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1266
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_14

    .line 1278
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1306
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_b

    .line 1313
    const/4 v11, 0x0

    .line 1315
    .local v11, "anchorViewCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/Rect;

    move-result-object v23

    if-eqz v23, :cond_a

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1800(Landroid/widget/FHoverPopupWindow;)I

    move-result v24

    sub-int v11, v23, v24

    .line 1331
    :cond_a
    if-eqz v11, :cond_b

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerXoffset:I
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$2000(Landroid/widget/FHoverPopupWindow;)I

    move-result v24

    add-int v24, v24, v11

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1345
    .end local v11    # "anchorViewCenter":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    rem-int/lit8 v23, v23, 0x2

    if-eqz v23, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    :goto_8
    div-int/lit8 v6, v23, 0x2

    .line 1346
    .local v6, "adjustPointer":I
    const/4 v7, 0x0

    .local v7, "adjustedLPointX":F
    const/4 v8, 0x0

    .local v8, "adjustedLPointY":F
    const/4 v9, 0x0

    .local v9, "adjustedRPointX":F
    const/4 v10, 0x0

    .line 1347
    .local v10, "adjustedRPointY":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_17

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    sub-float v7, v23, v24

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    add-float v9, v23, v24

    .line 1350
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_16

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    sub-float v8, v23, v24

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    sub-float v10, v23, v24

    .line 1367
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 1372
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1373
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_18

    .line 1374
    const/16 v23, 0x154

    const v24, -0xa29283

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    .line 1378
    :goto_a
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1381
    new-instance v3, Landroid/graphics/Paint;

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 1382
    .local v3, "Pnt":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1383
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1384
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1389
    new-instance v16, Landroid/graphics/Path;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Path;-><init>()V

    .line 1390
    .local v16, "path1":Landroid/graphics/Path;
    sget-object v23, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1391
    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1393
    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1394
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Path;->close()V

    .line 1395
    sget-object v23, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1396
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1399
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    .line 1400
    .local v17, "path2":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_19

    .line 1401
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColor:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1406
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1407
    sget-object v23, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1408
    sget-object v23, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1409
    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1411
    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1412
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->close()V

    .line 1413
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1420
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    .line 1421
    .local v18, "path3":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    rem-int/lit8 v5, v23, 0x2

    .line 1422
    .local v5, "adjustLineOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    sub-float v7, v23, v24

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    add-float v9, v23, v24

    .line 1426
    :cond_d
    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1427
    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1429
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    add-int v23, v23, v5

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1430
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1431
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1432
    sget-object v23, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1433
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->close()V

    .line 1434
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1104
    .end local v3    # "Pnt":Landroid/graphics/Paint;
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "adjustLineOffset":I
    .end local v6    # "adjustPointer":I
    .end local v7    # "adjustedLPointX":F
    .end local v8    # "adjustedLPointY":F
    .end local v9    # "adjustedRPointX":F
    .end local v10    # "adjustedRPointY":F
    .end local v15    # "movelength":I
    .end local v16    # "path1":Landroid/graphics/Path;
    .end local v17    # "path2":Landroid/graphics/Path;
    .end local v18    # "path3":Landroid/graphics/Path;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    .line 1112
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_2

    .line 1143
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)F

    move-result v24

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    .line 1144
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)F

    move-result v24

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    goto/16 :goto_3

    .line 1192
    .restart local v15    # "movelength":I
    .restart local v19    # "previousCenterX":F
    .restart local v20    # "previousLeftX":F
    .restart local v21    # "previousRightX":F
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 1234
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 1260
    .end local v19    # "previousCenterX":F
    .end local v20    # "previousLeftX":F
    .end local v21    # "previousRightX":F
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    goto/16 :goto_6

    .line 1287
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    goto/16 :goto_7

    .line 1345
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    goto/16 :goto_8

    .line 1355
    .restart local v6    # "adjustPointer":I
    .restart local v7    # "adjustedLPointX":F
    .restart local v8    # "adjustedLPointY":F
    .restart local v9    # "adjustedRPointX":F
    .restart local v10    # "adjustedRPointY":F
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    add-float v8, v23, v24

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    add-float v10, v23, v24

    goto/16 :goto_9

    .line 1360
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v9, v0, Landroid/graphics/PointF;->x:F

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v10, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_9

    .line 1376
    .restart local v4    # "a":Landroid/content/res/TypedArray;
    :cond_18
    const/16 v23, 0x153

    const v24, -0xa29283

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    goto/16 :goto_a

    .line 1404
    .restart local v3    # "Pnt":Landroid/graphics/Paint;
    .restart local v16    # "path1":Landroid/graphics/Path;
    .restart local v17    # "path2":Landroid/graphics/Path;
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColorOnBottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_b
.end method

.method public setFHmoveAnimation(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1023
    iput-boolean p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->isFHmoveAnimation:Z

    .line 1024
    return-void
.end method

.method public setFHmoveAnimationOffset(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 1040
    const-string v0, "FHPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FHPopupContainer(): setFHmoveAnimationOffset: offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    .line 1042
    const-string v0, "FHPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FHPopupContainer(): setFHmoveAnimationOffset: mAnimationAreaOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    return-void
.end method

.method public setOverTopPickerOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 1032
    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTopPickerOffset:I

    .line 1033
    return-void
.end method

.method public setPickerLimit(II)V
    .locals 0
    .param p1, "leftlimit"    # I
    .param p2, "rightlimit"    # I

    .prologue
    .line 1027
    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    .line 1028
    iput p2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    .line 1029
    return-void
.end method

.method public setPopupState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1036
    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 1037
    return-void
.end method
