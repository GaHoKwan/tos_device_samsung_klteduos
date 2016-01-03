.class Lcom/android/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeView"
.end annotation


# static fields
.field private static final DEFAULT_TRANSITION_DURATION:J = 0x96L

.field public static final DEFAULT_TRANSITION_DURATION_UP:J = 0x12cL


# instance fields
.field public hasUpPadding:Z

.field private mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field public mIconView:Landroid/widget/ImageView;

.field private mIsParentThemeDeviceDefault:Z

.field mScafe:Ljava/lang/String;

.field final mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mStartOffset:I

.field private mUpIndicatorRes:I

.field private mUpMargin:I

.field private mUpView:Landroid/widget/ImageView;

.field private mUpWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2049
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2050
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    .line 2053
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2015
    const-string/jumbo v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mScafe:Ljava/lang/String;

    .line 2019
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->hasUpPadding:Z

    .line 2025
    new-instance v2, Lcom/android/internal/widget/ActionBarView$HomeView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/ActionBarView$HomeView$1;-><init>(Lcom/android/internal/widget/ActionBarView$HomeView;)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 2035
    new-instance v2, Lcom/android/internal/widget/ActionBarView$HomeView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/ActionBarView$HomeView$2;-><init>(Lcom/android/internal/widget/ActionBarView$HomeView;)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 2055
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2056
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101046c

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2057
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 2058
    iput-boolean v4, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIsParentThemeDeviceDefault:Z

    .line 2061
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpMargin:I

    .line 2063
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    .line 2064
    .local v1, "t":Landroid/animation/LayoutTransition;
    if-eqz v1, :cond_1

    .line 2066
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 2068
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIsParentThemeDeviceDefault:Z

    if-eqz v2, :cond_1

    .line 2069
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 2073
    :cond_1
    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/ActionBarView$HomeView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView$HomeView;

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2176
    invoke-virtual {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2155
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2156
    const/4 v0, 0x1

    return v0
.end method

.method public getShowIcon()Z
    .locals 1

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShowUp()Z
    .locals 1

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStartOffset()I
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 2203
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIsParentThemeDeviceDefault:Z

    if-eqz v1, :cond_1

    .line 2204
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpMargin:I

    .line 2206
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    goto :goto_0
.end method

.method public getUpWidth()I
    .locals 1

    .prologue
    .line 2212
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2146
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2147
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz v0, :cond_0

    .line 2149
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 2151
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 2181
    const v2, 0x10202b6

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 2182
    const v2, 0x102002c

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 2183
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 2186
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIsParentThemeDeviceDefault:Z

    if-eqz v2, :cond_1

    .line 2187
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2188
    .local v1, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2190
    .local v0, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 2191
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mScafe:Ljava/lang/String;

    const-string v3, "capuccino"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mScafe:Ljava/lang/String;

    const-string/jumbo v3, "macchiato"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mScafe:Ljava/lang/String;

    const-string v3, "latte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2192
    iget v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpMargin:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 2194
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 2195
    iget v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpMargin:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 2199
    .end local v0    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 27
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 2287
    sub-int v25, p5, p3

    div-int/lit8 v23, v25, 0x2

    .line 2288
    .local v23, "vCenter":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v13

    .line 2289
    .local v13, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v24

    .line 2290
    .local v24, "width":I
    const/16 v19, 0x0

    .line 2291
    .local v19, "upOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 2292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/FrameLayout$LayoutParams;

    .line 2293
    .local v18, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 2294
    .local v16, "upHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    .line 2295
    .local v22, "upWidth":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v25, v25, v22

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v19, v25, v26

    .line 2296
    div-int/lit8 v25, v16, 0x2

    sub-int v21, v23, v25

    .line 2297
    .local v21, "upTop":I
    add-int v15, v21, v16

    .line 2301
    .local v15, "upBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIsParentThemeDeviceDefault:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 2302
    if-eqz v13, :cond_1

    .line 2303
    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v0

    sub-int v20, v24, v25

    .line 2304
    .local v20, "upRight":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v0

    sub-int v25, v20, v25

    sub-int v17, v25, v22

    .line 2305
    .local v17, "upLeft":I
    sub-int p4, p4, v19

    .line 2323
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/view/View;->layout(IIII)V

    .line 2326
    .end local v15    # "upBottom":I
    .end local v16    # "upHeight":I
    .end local v17    # "upLeft":I
    .end local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v20    # "upRight":I
    .end local v21    # "upTop":I
    .end local v22    # "upWidth":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 2327
    .local v9, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 2328
    .local v7, "iconHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 2329
    .local v12, "iconWidth":I
    sub-int v25, p4, p2

    div-int/lit8 v5, v25, 0x2

    .line 2330
    .local v5, "hCenter":I
    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v25, v0

    div-int/lit8 v26, v7, 0x2

    sub-int v26, v23, v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 2331
    .local v11, "iconTop":I
    add-int v6, v11, v7

    .line 2334
    .local v6, "iconBottom":I
    invoke-virtual {v9}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v14

    .line 2335
    .local v14, "marginStart":I
    div-int/lit8 v25, v12, 0x2

    sub-int v25, v5, v25

    move/from16 v0, v25

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2337
    .local v4, "delta":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIsParentThemeDeviceDefault:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 2338
    if-eqz v13, :cond_4

    .line 2339
    sub-int v25, v24, v19

    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v26, v0

    sub-int v10, v25, v26

    .line 2340
    .local v10, "iconRight":I
    sub-int v8, v10, v12

    .line 2355
    .local v8, "iconLeft":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v11, v10, v6}, Landroid/view/View;->layout(IIII)V

    .line 2356
    return-void

    .line 2307
    .end local v4    # "delta":I
    .end local v5    # "hCenter":I
    .end local v6    # "iconBottom":I
    .end local v7    # "iconHeight":I
    .end local v8    # "iconLeft":I
    .end local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "iconRight":I
    .end local v11    # "iconTop":I
    .end local v12    # "iconWidth":I
    .end local v14    # "marginStart":I
    .restart local v15    # "upBottom":I
    .restart local v16    # "upHeight":I
    .restart local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v21    # "upTop":I
    .restart local v22    # "upWidth":I
    :cond_1
    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v20, v25, v22

    .line 2308
    .restart local v20    # "upRight":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v17, v0

    .line 2309
    .restart local v17    # "upLeft":I
    add-int p2, p2, v19

    goto/16 :goto_0

    .line 2312
    .end local v17    # "upLeft":I
    .end local v20    # "upRight":I
    :cond_2
    if-eqz v13, :cond_3

    .line 2313
    move/from16 v20, v24

    .line 2314
    .restart local v20    # "upRight":I
    sub-int v17, v20, v22

    .line 2315
    .restart local v17    # "upLeft":I
    sub-int p4, p4, v19

    goto/16 :goto_0

    .line 2317
    .end local v17    # "upLeft":I
    .end local v20    # "upRight":I
    :cond_3
    move/from16 v20, v22

    .line 2318
    .restart local v20    # "upRight":I
    const/16 v17, 0x0

    .line 2319
    .restart local v17    # "upLeft":I
    add-int p2, p2, v19

    goto/16 :goto_0

    .line 2342
    .end local v15    # "upBottom":I
    .end local v16    # "upHeight":I
    .end local v17    # "upLeft":I
    .end local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v20    # "upRight":I
    .end local v21    # "upTop":I
    .end local v22    # "upWidth":I
    .restart local v4    # "delta":I
    .restart local v5    # "hCenter":I
    .restart local v6    # "iconBottom":I
    .restart local v7    # "iconHeight":I
    .restart local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "iconTop":I
    .restart local v12    # "iconWidth":I
    .restart local v14    # "marginStart":I
    :cond_4
    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v8, v19, v25

    .line 2343
    .restart local v8    # "iconLeft":I
    add-int v10, v8, v12

    .restart local v10    # "iconRight":I
    goto :goto_1

    .line 2346
    .end local v8    # "iconLeft":I
    .end local v10    # "iconRight":I
    :cond_5
    if-eqz v13, :cond_6

    .line 2347
    sub-int v25, v24, v19

    sub-int v10, v25, v4

    .line 2348
    .restart local v10    # "iconRight":I
    sub-int v8, v10, v12

    .restart local v8    # "iconLeft":I
    goto :goto_1

    .line 2350
    .end local v8    # "iconLeft":I
    .end local v10    # "iconRight":I
    :cond_6
    add-int v8, v19, v4

    .line 2351
    .restart local v8    # "iconLeft":I
    add-int v10, v8, v12

    .restart local v10    # "iconRight":I
    goto :goto_1
.end method

.method public onMagneticUI(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2362
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 2390
    :cond_0
    :goto_0
    return-void

    .line 2364
    :pswitch_0
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "mouse_hovering"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_0

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "mouse_hovering_magnetic_ui"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_0

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 2367
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 2368
    .local v5, "r":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 2369
    .local v3, "posX":I
    const/4 v4, 0x0

    .line 2371
    .local v4, "posY":I
    invoke-virtual {p0, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2373
    iget v6, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v3, v6, v7

    .line 2374
    iget v6, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 2376
    const-string v6, "ActionBarView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_HOVER_ENTER  posX: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " posY : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2379
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "com.sec.android.spc.eventcontrol.ACTION_SET_MOUSE_POS"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2380
    new-instance v1, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.spc.eventcontrol"

    const-string v7, "com.sec.android.spc.eventcontrol.SpcEventControlReceiver"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2382
    const-string v6, "event"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2383
    const-string/jumbo v6, "x"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2384
    const-string/jumbo v6, "y"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2386
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2362
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 2220
    .local v11, "temp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v12, v1

    .line 2222
    .local v12, "tempPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2223
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIsParentThemeDeviceDefault:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->hasUpPadding:Z

    if-eqz v1, :cond_1

    .end local v12    # "tempPadding":I
    :goto_0
    iput v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2227
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 2230
    .local v13, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v14, v1, v2

    .line 2236
    .local v14, "upMargins":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v12, v1

    .line 2238
    .restart local v12    # "tempPadding":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .end local v12    # "tempPadding":I
    :goto_2
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    .line 2240
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    add-int/2addr v1, v14

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    .line 2241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    const/4 v4, 0x0

    .line 2242
    .local v4, "width":I
    :goto_3
    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v7, v1, v2

    .line 2244
    .local v7, "height":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_6

    .line 2245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 2247
    .local v10, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v4, v1

    .line 2248
    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2255
    .end local v10    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 2256
    .local v15, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 2257
    .local v8, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 2258
    .local v16, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 2260
    .local v9, "heightSize":I
    sparse-switch v15, :sswitch_data_0

    .line 2271
    :goto_5
    sparse-switch v8, :sswitch_data_1

    .line 2282
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 2283
    return-void

    .line 2223
    .end local v4    # "width":I
    .end local v7    # "height":I
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v13    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v14    # "upMargins":I
    .end local v15    # "widthMode":I
    .end local v16    # "widthSize":I
    .restart local v12    # "tempPadding":I
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2225
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIsParentThemeDeviceDefault:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->hasUpPadding:Z

    if-eqz v1, :cond_3

    .end local v12    # "tempPadding":I
    :goto_7
    iput v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_1

    .restart local v12    # "tempPadding":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_7

    .line 2238
    .restart local v13    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v14    # "upMargins":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    goto/16 :goto_2

    .line 2241
    .end local v12    # "tempPadding":I
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    goto/16 :goto_3

    .line 2250
    .restart local v4    # "width":I
    .restart local v7    # "height":I
    :cond_6
    if-gez v14, :cond_0

    .line 2252
    sub-int/2addr v4, v14

    goto :goto_4

    .line 2262
    .restart local v8    # "heightMode":I
    .restart local v9    # "heightSize":I
    .restart local v15    # "widthMode":I
    .restart local v16    # "widthSize":I
    :sswitch_0
    move/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2263
    goto :goto_5

    .line 2265
    :sswitch_1
    move/from16 v4, v16

    .line 2266
    goto :goto_5

    .line 2273
    :sswitch_2
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2274
    goto :goto_6

    .line 2276
    :sswitch_3
    move v7, v9

    .line 2277
    goto :goto_6

    .line 2260
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 2271
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2161
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2162
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2163
    .local v0, "cdesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2164
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2166
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2132
    return-void
.end method

.method public setShowIcon(Z)V
    .locals 2
    .param p1, "showIcon"    # Z

    .prologue
    .line 2120
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2121
    return-void

    .line 2120
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setShowUp(Z)V
    .locals 2
    .param p1, "isUp"    # Z

    .prologue
    .line 2076
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2077
    return-void

    .line 2076
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setUpIndicator(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 2140
    iput p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 2141
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2142
    return-void

    .line 2141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2136
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 2137
    return-void

    .line 2135
    .restart local p1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setUpWithAnimation(ZJ)V
    .locals 11
    .param p1, "isUp"    # Z
    .param p2, "duration"    # J

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2087
    if-eqz p1, :cond_0

    .line 2088
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const-string v5, "alpha"

    new-array v6, v9, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2089
    .local v3, "upAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2090
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2091
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2093
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2094
    .local v2, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 2096
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const-string/jumbo v5, "translationX"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2097
    .local v0, "a":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2098
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2100
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 2116
    :goto_0
    return-void

    .line 2102
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v2    # "set":Landroid/animation/AnimatorSet;
    .end local v3    # "upAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const-string v5, "alpha"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2103
    .restart local v3    # "upAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2104
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2105
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2107
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2108
    .restart local v2    # "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 2110
    .restart local v1    # "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const-string/jumbo v5, "translationX"

    new-array v6, v9, [F

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2111
    .restart local v0    # "a":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2112
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2114
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
