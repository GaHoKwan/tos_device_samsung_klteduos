.class public abstract Lcom/samsung/android/airbutton/view/AbsAirButtonView;
.super Landroid/widget/FrameLayout;
.source "AbsAirButtonView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;
    }
.end annotation


# static fields
.field protected static final HOVER_DISABLE_TIME:I = 0x1f4

.field public static final INVALID_IDX:I = -0x1

.field public static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AirButtonWidget"

.field protected static final TOUCH_PRESS_DISTANCE_LIMIT:I = 0x1e

.field protected static TOUCH_PRESS_DISTANCE_LIMIT_PIXEL:I = 0x0

.field protected static final TOUCH_PRESS_TIME_LIMIT:I = 0x12c


# instance fields
.field protected mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

.field protected mAddedViewIdx:I

.field protected mAttrs:Lcom/samsung/android/airbutton/Attributes;

.field protected mDisplayAdditionalViewCnt:I

.field protected mEndViewIdx:I

.field protected mFocusedViewIdx:I

.field protected mIsHoverEventEnabled:Z

.field protected mIsKeyEventEnabled:Z

.field protected mIsReservedToFinish:Z

.field protected mIsReservedToResetPosition:Z

.field protected mIsStartUp:Z

.field protected mIsTouchEventEnabled:Z

.field protected mIsTouchPressEnabled:Z

.field protected mIsViewInitialized:[Z

.field protected mMaxMenuItemCnt:I

.field protected mOldStartViewIdx:I

.field protected mOnHoverListener:Landroid/view/View$OnHoverListener;

.field protected mOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mSelectedViewIdx:I

.field protected mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

.field protected mStartViewIdx:I

.field protected mTotalViewCnt:I

.field protected mTouchDownStartTime:J

.field protected mTouchDownX:I

.field protected mTouchDownY:I

.field protected mTouchUpX:I

.field protected mTouchUpY:I

.field protected mViewBaseX:[I

.field protected mViewBaseY:[I

.field protected mViewList:[Landroid/view/View;

.field protected mWidgetCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

.field protected misFlickering:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->TOUCH_PRESS_DISTANCE_LIMIT_PIXEL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;
    .param p3, "attrs"    # Lcom/samsung/android/airbutton/Attributes;

    .prologue
    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    .line 41
    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 42
    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mWidgetCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    .line 48
    iput-boolean v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsStartUp:Z

    .line 49
    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    .line 50
    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsViewInitialized:[Z

    .line 51
    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    .line 52
    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    .line 53
    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    .line 54
    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOldStartViewIdx:I

    .line 55
    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    .line 56
    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    .line 57
    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    .line 58
    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    .line 59
    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    .line 60
    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAddedViewIdx:I

    .line 61
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mMaxMenuItemCnt:I

    .line 62
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToResetPosition:Z

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownStartTime:J

    .line 73
    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownX:I

    .line 74
    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownY:I

    .line 75
    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpX:I

    .line 76
    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpY:I

    .line 77
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsKeyEventEnabled:Z

    .line 78
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsHoverEventEnabled:Z

    .line 79
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchEventEnabled:Z

    .line 80
    iput-boolean v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchPressEnabled:Z

    .line 81
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->misFlickering:Z

    .line 82
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToFinish:Z

    .line 83
    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    .line 274
    new-instance v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView$2;-><init>(Lcom/samsung/android/airbutton/view/AbsAirButtonView;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 284
    new-instance v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;-><init>(Lcom/samsung/android/airbutton/view/AbsAirButtonView;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 93
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    .line 95
    iput-object p3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 96
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-direct {v0, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    .line 97
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, v4}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->resetVariables(Z)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    new-instance v1, Lcom/samsung/android/airbutton/view/AbsAirButtonView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView$1;-><init>(Lcom/samsung/android/airbutton/view/AbsAirButtonView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->setOnSideButtonClickedListener(Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;)V

    .line 105
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->initWithAdapter()V

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->initWithAttributes()V

    .line 109
    return-void
.end method

.method private initWithAdapter()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 112
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    .line 113
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 114
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mMaxMenuItemCnt:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mMaxMenuItemCnt:I

    :goto_0
    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    .line 116
    :cond_0
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    .line 117
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsViewInitialized:[Z

    .line 118
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    .line 119
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    .line 121
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-ge v0, v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsViewInitialized:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 123
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aput v3, v1, v0

    .line 124
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    aput v3, v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    .end local v0    # "idx":I
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    goto :goto_0

    .line 126
    .restart local v0    # "idx":I
    :cond_2
    return-void
.end method

.method private initWithAttributes()V
    .locals 2

    .prologue
    .line 129
    const/high16 v0, 0x41f00000    # 30.0f

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->TOUCH_PRESS_DISTANCE_LIMIT_PIXEL:I

    .line 130
    return-void
.end method


# virtual methods
.method protected addViewIfNeeded(I)V
    .locals 2
    .param p1, "viewIdx"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getView(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, p1

    .line 319
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 321
    iput p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAddedViewIdx:I

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 327
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 330
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 332
    :cond_2
    return-void
.end method

.method protected adjustViewDelta(I)V
    .locals 2
    .param p1, "viewIdx"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsViewInitialized:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 377
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 223
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsKeyEventEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v1, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onHover(Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 226
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsKeyEventEnabled:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onFinishing()V

    .line 218
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected finish(ZZ)V
    .locals 2
    .param p1, "isSendItemSelectedNoti"    # Z
    .param p2, "isFinishAirButton"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mWidgetCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mWidgetCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;->onFinished(IZZ)V

    .line 135
    :cond_0
    return-void
.end method

.method protected getDistance(DDDD)D
    .locals 6
    .param p1, "pointX1"    # D
    .param p3, "pointY1"    # D
    .param p5, "pointX2"    # D
    .param p7, "pointY2"    # D

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 345
    sub-double v0, p5, p1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v2, p7, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract initAllViewDelta()V
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 145
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 169
    return-void
.end method

.method protected onFinishing()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 380
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->finish(ZZ)V

    .line 381
    return-void
.end method

.method protected abstract onHoverEnter(I)V
.end method

.method protected abstract onHoverExit(I)V
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 149
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 151
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onStart()V

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onLayoutChanged()V

    goto :goto_0
.end method

.method protected onLayoutChanged()V
    .locals 0

    .prologue
    .line 373
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method protected onTouchDown(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 385
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 231
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchEventEnabled:Z

    if-nez v0, :cond_0

    move v0, v12

    .line 271
    :goto_0
    return v0

    .line 234
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 271
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 236
    :pswitch_0
    iput-boolean v13, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchPressEnabled:Z

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownX:I

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownY:I

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownStartTime:J

    .line 241
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 244
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 247
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpX:I

    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpY:I

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownStartTime:J

    sub-long v10, v0, v2

    .line 251
    .local v10, "touchPressTimeInterval":J
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchPressEnabled:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x12c

    cmp-long v0, v10, v0

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownX:I

    int-to-double v1, v0

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownY:I

    int-to-double v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v5, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->getDistance(DDDD)D

    move-result-wide v0

    sget v2, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->TOUCH_PRESS_DISTANCE_LIMIT_PIXEL:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 254
    iput-boolean v13, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToFinish:Z

    .line 256
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onTouchUp(Landroid/view/MotionEvent;)V

    .line 258
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->misFlickering:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToFinish:Z

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    .line 260
    .local v9, "audionManager":Landroid/media/AudioManager;
    const/16 v0, 0xa

    invoke-virtual {v9, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onFinishing()V

    .line 267
    .end local v9    # "audionManager":Landroid/media/AudioManager;
    :goto_2
    iput-boolean v12, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToFinish:Z

    goto :goto_1

    .line 264
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    goto :goto_2

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onTouchMove(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 386
    return-void
.end method

.method protected onTouchUp(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 387
    return-void
.end method

.method public reAdjustViewYPosition(II)V
    .locals 3
    .param p1, "yPosition"    # I
    .param p2, "parentViewHeight"    # I

    .prologue
    .line 349
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 353
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    if-ge v1, v2, :cond_3

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    .line 355
    .local v0, "displayItemCnt":I
    :goto_1
    add-int v1, p1, p2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    if-le v1, v2, :cond_4

    .line 356
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v1, v0

    sub-int/2addr p1, v1

    .line 361
    .end local v0    # "displayItemCnt":I
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    if-eq v1, p1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p1, v2, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    iput p1, v1, Lcom/samsung/android/airbutton/Attributes;->y:I

    .line 363
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToResetPosition:Z

    goto :goto_0

    .line 353
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v1, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    goto :goto_1

    .line 358
    .restart local v0    # "displayItemCnt":I
    :cond_4
    add-int/2addr p1, p2

    goto :goto_2
.end method

.method protected removeViewIfNeeded(I)V
    .locals 4
    .param p1, "viewIdx"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 335
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 337
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 340
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 342
    :cond_0
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 308
    return-void
.end method

.method public setAirButtonViewCallback(Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mWidgetCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    .line 401
    return-void
.end method

.method protected setEndViewIdx()V
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    .line 202
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-lt v0, v1, :cond_0

    .line 203
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    .line 204
    :cond_0
    return-void
.end method

.method protected setStartViewIdx(I)V
    .locals 3
    .param p1, "startViewIdx"    # I

    .prologue
    .line 177
    if-gez p1, :cond_0

    .line 178
    const/4 p1, 0x0

    .line 180
    :cond_0
    iput p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    .line 181
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOldStartViewIdx:I

    if-ne v1, v2, :cond_1

    .line 197
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setEndViewIdx()V

    .line 186
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-lt v1, v2, :cond_2

    .line 187
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    .line 189
    :cond_2
    const/4 v0, 0x0

    .local v0, "viewIdx":I
    :goto_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-ge v0, v1, :cond_4

    .line 190
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    if-gt v1, v0, :cond_3

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_3

    .line 191
    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->addViewIfNeeded(I)V

    .line 189
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->removeViewIfNeeded(I)V

    goto :goto_2

    .line 196
    :cond_4
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOldStartViewIdx:I

    goto :goto_0
.end method
