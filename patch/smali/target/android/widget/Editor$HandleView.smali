.class abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field protected static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xfa0

.field static final HANDLE_TYPE_END:I = 0x2

.field static final HANDLE_TYPE_INSERT:I = 0x3

.field static final HANDLE_TYPE_NONE:I = 0x0

.field static final HANDLE_TYPE_START:I = 0x1

.field private static final HISTORY_SIZE:I = 0x5

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private mActionPopupShower:Ljava/lang/Runnable;

.field protected mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mCurCursorPosTop:Z

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtrTop:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtlTop:Landroid/graphics/drawable/Drawable;

.field public mHandleType:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mInitPositionX:I

.field private mInitPositionY:I

.field private mInitRawY:F

.field protected mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mNewActionPopupHider:Ljava/lang/Runnable;

.field private mNewActionPopupShower:Ljava/lang/Runnable;

.field protected mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

.field private mNumberPreviousOffsets:I

.field protected mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field protected mbFlipCursor:Z

.field protected mbSwitchCursor:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "drawableLtrTop"    # Landroid/graphics/drawable/Drawable;
    .param p5, "drawableRtlTop"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4363
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 4364
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4341
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4343
    iput-boolean v6, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4354
    iput v5, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    .line 4411
    new-array v1, v2, [J

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 4412
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 4413
    iput v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4414
    iput v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4864
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mbFlipCursor:Z

    .line 4865
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mCurCursorPosTop:Z

    .line 4365
    new-instance v1, Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x10102c8

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 4367
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 4368
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 4369
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 4370
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4372
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 4373
    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 4375
    iput-object p4, p0, Landroid/widget/Editor$HandleView;->mDrawableLtrTop:Landroid/graphics/drawable/Drawable;

    .line 4376
    iput-object p5, p0, Landroid/widget/Editor$HandleView;->mDrawableRtlTop:Landroid/graphics/drawable/Drawable;

    .line 4379
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4382
    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {p1}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4383
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->recalHandleView()V

    .line 4390
    :goto_0
    return-void

    .line 4385
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 4386
    .local v0, "handleHeight":I
    const v1, -0x41666666    # -0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 4387
    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    goto :goto_0
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 4422
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4423
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 4424
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 4425
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4426
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 9

    .prologue
    .line 4429
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 4430
    .local v3, "now":J
    const/4 v0, 0x0

    .line 4431
    .local v0, "i":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4432
    .local v2, "index":I
    iget v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4433
    .local v1, "iMax":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x96

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 4434
    add-int/lit8 v0, v0, 0x1

    .line 4435
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x5

    rem-int/lit8 v2, v5, 0x5

    goto :goto_0

    .line 4438
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 4440
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4442
    :cond_1
    return-void
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 4558
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 4559
    const/4 v0, 0x1

    .line 4566
    :goto_0
    return v0

    .line 4562
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4563
    const/4 v0, 0x0

    goto :goto_0

    .line 4566
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    # invokes: Landroid/widget/Editor;->isPositionVisible(II)Z
    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;II)Z

    move-result v0

    goto :goto_0
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 4417
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4418
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 4419
    return-void
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 4851
    const/4 v0, 0x1

    return v0
.end method

.method protected dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4466
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4467
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4468
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 4469
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    .line 4470
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 4473
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 4475
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1500(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 4476
    return-void
.end method

.method protected tos_org_hideActionPopupWindow()V
    .locals 2

    .prologue
    .line 4495
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4496
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4498
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 4499
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    .line 4501
    :cond_1
    return-void
.end method

.method hideNewActionPopupWindow()V
    .locals 1

    .prologue
    .line 4540
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v0, :cond_0

    .line 4541
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$NewPinnedPopupWindow;->hide()V

    .line 4543
    :cond_0
    return-void
.end method

.method hideNewActionPopupWindowAfterDelay()V
    .locals 4

    .prologue
    .line 4526
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 4527
    new-instance v0, Landroid/widget/Editor$HandleView$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$HandleView$2;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    .line 4535
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4537
    return-void

    .line 4533
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->removeNewActionPopupHiderCallback()V

    goto :goto_0
.end method

.method public initPreviousOffset()V
    .locals 1

    .prologue
    .line 4860
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4861
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 4831
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method protected abstract isHandleViewAtTop()Z
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 4553
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4445
    iget v1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 4842
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 4844
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideNewActionPopupWindow()V

    .line 4846
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 4689
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4690
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4691
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 4835
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 4837
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideNewActionPopupWindow()V

    .line 4839
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 4450
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 4451
    return-void
.end method

.method public tos_org_onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4700
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 4827
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 4702
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 4706
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4707
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4710
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$HandleView;->mPositionX:I

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/Editor$HandleView;->mInitPositionX:I

    .line 4711
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/Editor$HandleView;->mInitPositionY:I

    .line 4712
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/Editor$HandleView;->mInitRawY:F

    .line 4714
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1500(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v11

    .line 4715
    .local v11, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v11}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4716
    invoke-virtual {v11}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 4717
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    goto :goto_0

    .line 4724
    .end local v11    # "positionListener":Landroid/widget/Editor$PositionListener;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    .line 4725
    .local v13, "rawX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v14

    .line 4728
    .local v14, "rawY":F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v4, v4

    sub-float v12, v1, v4

    .line 4729
    .local v12, "previousVerticalOffset":F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v1, v1

    sub-float v1, v14, v1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v4, v4

    sub-float v7, v1, v4

    .line 4731
    .local v7, "currentVerticalOffset":F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v1, v12, v1

    if-gez v1, :cond_3

    .line 4732
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 4733
    .local v10, "newVerticalOffset":F
    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 4743
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v1, v1

    add-float/2addr v1, v10

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4746
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v1, v13, v1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v4, v4

    add-float v8, v1, v4

    .line 4747
    .local v8, "newPosX":F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float v1, v14, v1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float v9, v1, v4

    .line 4750
    .local v9, "newPosY":F
    const/4 v15, 0x0

    .line 4751
    .local v15, "scaleRatio":Landroid/graphics/PointF;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v15

    .line 4752
    iget v1, v15, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1

    .line 4753
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/Editor$HandleView;->mInitPositionX:I

    int-to-float v4, v4

    add-float v16, v1, v4

    .line 4754
    .local v16, "tempX":F
    sub-float v1, v13, v16

    iget v4, v15, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/Editor$HandleView;->mInitPositionX:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v4, v4

    add-float v8, v1, v4

    .line 4757
    .end local v16    # "tempX":F
    :cond_1
    iget v1, v15, Landroid/graphics/PointF;->y:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    .line 4758
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$HandleView;->mInitRawY:F

    sub-float v1, v14, v1

    iget v4, v15, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/Editor$HandleView;->mInitPositionY:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float v9, v1, v4

    .line 4761
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    goto/16 :goto_0

    .line 4735
    .end local v8    # "newPosX":F
    .end local v9    # "newPosY":F
    .end local v10    # "newVerticalOffset":F
    .end local v15    # "scaleRatio":Landroid/graphics/PointF;
    :cond_3
    cmpg-float v1, v7, v12

    if-gez v1, :cond_4

    .line 4736
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 4737
    .restart local v10    # "newVerticalOffset":F
    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    goto/16 :goto_1

    .line 4740
    .end local v10    # "newVerticalOffset":F
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 4741
    .restart local v10    # "newVerticalOffset":F
    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    goto/16 :goto_1

    .line 4766
    .end local v7    # "currentVerticalOffset":F
    .end local v10    # "newVerticalOffset":F
    .end local v12    # "previousVerticalOffset":F
    .end local v13    # "rawX":F
    .end local v14    # "rawY":F
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp()V

    .line 4767
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4770
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v1}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4771
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->refreshForSwitchingCursor()Z

    .line 4773
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    if-le v1, v4, :cond_5

    .line 4774
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    invoke-static {v1, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4779
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$HandleView;->mHandleType:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_6

    .line 4780
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4781
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->recalHandleView()V

    .line 4783
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4785
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1500(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/Editor$HandleView;->mPositionX:I

    add-int v2, v1, v4

    .line 4788
    .local v2, "positionX":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->isHandleViewAtTop()Z

    move-result v1

    if-nez v1, :cond_7

    .line 4789
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1500(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int v3, v1, v4

    .line 4794
    .local v3, "positionY":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4795
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isScaleWindow()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4796
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 4809
    .end local v2    # "positionX":I
    .end local v3    # "positionY":I
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$HandleView;->mHandleType:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v1}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v1}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4810
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v1, :cond_0

    .line 4811
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v1}, Landroid/widget/Editor$NewPinnedPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4812
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4813
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hideAllNewActionPopup()V

    goto/16 :goto_0

    .line 4791
    .restart local v2    # "positionX":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1500(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int/2addr v1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v3, v1, v4

    .restart local v3    # "positionY":I
    goto :goto_2

    .line 4798
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_3

    .line 4801
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3

    .line 4816
    .end local v2    # "positionX":I
    .end local v3    # "positionY":I
    :cond_a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/widget/Editor$HandleView;->showNewActionPopupWindow(I)V

    goto/16 :goto_0

    .line 4824
    :pswitch_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 4700
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 8
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    const/4 v5, 0x1

    .line 4581
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 4582
    .local v2, "layout":Landroid/text/Layout;
    if-nez v2, :cond_1

    .line 4584
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 4622
    :cond_0
    :goto_0
    return-void

    .line 4588
    :cond_1
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v1

    .line 4589
    .local v1, "hintLayout":Landroid/text/Layout;
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4592
    move-object v2, v1

    .line 4595
    :cond_2
    iget v6, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    if-eq p1, v6, :cond_5

    move v4, v5

    .line 4596
    .local v4, "offsetChanged":Z
    :goto_1
    if-nez v4, :cond_3

    if-eqz p2, :cond_0

    .line 4597
    :cond_3
    if-eqz v4, :cond_4

    .line 4598
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    .line 4599
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 4601
    :cond_4
    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 4602
    .local v3, "line":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    const/high16 v0, 0x3f000000    # 0.5f

    .line 4604
    .local v0, "compensation":F
    :goto_2
    invoke-virtual {v2, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    add-float/2addr v6, v0

    iget v7, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4605
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    iput v6, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4608
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isHandleViewAtTop()Z

    move-result v6

    if-nez v6, :cond_7

    .line 4609
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    iput v6, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4616
    :goto_3
    iget v6, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4617
    iget v6, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4619
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4620
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    goto :goto_0

    .line 4595
    .end local v0    # "compensation":F
    .end local v3    # "line":I
    .end local v4    # "offsetChanged":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 4602
    .restart local v3    # "line":I
    .restart local v4    # "offsetChanged":Z
    :cond_6
    const/high16 v0, -0x41000000    # -0.5f

    goto :goto_2

    .line 4611
    .restart local v0    # "compensation":F
    :cond_7
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    iput v6, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    goto :goto_3
.end method

.method public recalHandleView()V
    .locals 3

    .prologue
    .line 4868
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 4869
    .local v0, "handleHeight":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isHandleViewAtTop()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4870
    const v1, -0x41666666    # -0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 4871
    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 4876
    :goto_0
    return-void

    .line 4873
    :cond_0
    const v1, 0x3e99999a    # 0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 4874
    const v1, -0x40cccccd    # -0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    goto :goto_0
.end method

.method public refreshForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 4854
    const/4 v0, 0x1

    return v0
.end method

.method removeNewActionPopupHiderCallback()V
    .locals 2

    .prologue
    .line 4546
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4547
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4549
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 4454
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4463
    :goto_0
    return-void

    .line 4456
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1500(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 4459
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4460
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4462
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    goto :goto_0
.end method

.method tos_org_showActionPopupWindow(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 4479
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 4480
    new-instance v0, Landroid/widget/Editor$ActionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 4482
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 4483
    new-instance v0, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    .line 4491
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4492
    return-void

    .line 4489
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method showNewActionPopupWindow(I)V
    .locals 3
    .param p1, "delay"    # I

    .prologue
    .line 4505
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-nez v0, :cond_0

    .line 4506
    new-instance v0, Landroid/widget/Editor$NewActionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$NewActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    .line 4508
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$NewActionPopupWindow;->show()V

    .line 4523
    return-void
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 4393
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 4394
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 4396
    .local v0, "isRtlCharAtOffset":Z
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isHandleViewAtTop()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4397
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4402
    :goto_1
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 4403
    return-void

    .line 4397
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 4399
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtlTop:Landroid/graphics/drawable/Drawable;

    :goto_2
    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtrTop:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public abstract updatePosition(FF)V
.end method

.method public tos_org_updatePosition(IIZZ)V
    .locals 7
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 4626
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-virtual {p0, v0, p4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4627
    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v0, :cond_4

    .line 4628
    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 4630
    iget v0, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v0, :cond_2

    .line 4631
    :cond_1
    iget v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4632
    iget v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4633
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4634
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 4637
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 4640
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4641
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4642
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->removeAllNewActionPopupHider()V

    .line 4648
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4649
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    add-int v1, p1, v0

    .line 4652
    .local v1, "positionX":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isHandleViewAtTop()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4653
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int v2, p2, v0

    .line 4659
    .local v2, "positionY":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4660
    invoke-virtual {p0}, Landroid/view/View;->isScaleWindow()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4661
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 4677
    .end local v1    # "positionX":I
    .end local v2    # "positionY":I
    :goto_1
    iput-boolean v6, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4680
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4681
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->relocateNewActionPopupWindow()V

    .line 4685
    :cond_4
    return-void

    .line 4655
    .restart local v1    # "positionX":I
    :cond_5
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int/2addr v0, p2

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v2, v0, v4

    .restart local v2    # "positionY":I
    goto :goto_0

    .line 4663
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    .line 4666
    :cond_7
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v3, v6, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 4670
    .end local v1    # "positionX":I
    .end local v2    # "positionY":I
    :cond_8
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4671
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    goto :goto_1

    .line 4673
    :cond_9
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)V

    goto :goto_1
.end method

.method protected abstract updateSelection(I)V
.end method

.method protected hideActionPopupWindow()V
    .locals 0
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "QROM: framework xposed rebuild ::stafensong::20150526"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    .line 3333
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->tos_org_hideActionPopupWindow()V

    .line 3334
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "QROM: framework xposed rebuild ::stafensong::20150526"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3476
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 3477
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    iput v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 3478
    iput-object p0, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 3479
    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 3480
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3482
    const-string v1, "android.widget.Editor$HandleView#onTouchEvent"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 3483
    invoke-virtual {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->returnEarly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3484
    invoke-virtual {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3487
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->tos_org_onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method showActionPopupWindow(I)V
    .locals 4
    .param p1, "delay"    # I
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "QROM: framework xposed rebuild ::stafensong::20150526"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3294
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 3295
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    iput v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 3296
    iput-object p0, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 3297
    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 3298
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3300
    const-string v1, "android.widget.Editor$HandleView#showActionPopupWindow"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 3301
    invoke-virtual {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->returnEarly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3306
    :goto_0
    return-void

    .line 3305
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->tos_org_showActionPopupWindow(I)V

    goto :goto_0
.end method

.method public updatePosition(IIZZ)V
    .locals 5
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "QROM: framework xposed rebuild ::stafensong::20150526"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 3407
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 3408
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    iput v4, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 3409
    iput-object p0, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 3410
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 3411
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3412
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 3413
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3414
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3416
    const-string v1, "android.widget.Editor$HandleView#updatePosition"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 3417
    invoke-virtual {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->returnEarly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3423
    :goto_0
    return-void

    .line 3421
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/Editor$HandleView;->tos_org_updatePosition(IIZZ)V

    goto :goto_0
.end method
