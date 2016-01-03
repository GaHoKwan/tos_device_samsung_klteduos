.class Landroid/widget/Editor$ActionPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionPopupWindow"
.end annotation


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = 0x10900d0

.field private static final TW_NEW_POPUP_DIVIDER_LAYOUT:I = 0x1090121

.field private static final TW_NEW_POPUP_TEXT_LAYOUT:I = 0x1090123

.field private static final TW_POPUP_DIVIDER_LAYOUT:I = 0x1090116

.field private static final TW_POPUP_TEXT_LAYOUT:I = 0x1090117


# instance fields
.field private mClipboardTextView:Landroid/widget/TextView;

.field private mDividerImageView:Landroid/widget/ImageView;

.field private mItemWidth:I

.field private mPasteTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 2

    .prologue
    .line 3412
    iput-object p1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    .line 3431
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42a40000    # 82.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mItemWidth:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 3412
    invoke-direct {p0, p1}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 8
    .param p1, "positionY"    # I

    .prologue
    .line 3621
    iget-object v6, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    .line 3622
    .local v0, "densityScale":F
    const/16 v5, 0x19

    .line 3624
    .local v5, "statusbarHeight":I
    const/high16 v6, 0x41c80000    # 25.0f

    mul-float/2addr v6, v0

    float-to-int v6, v6

    if-ge p1, v6, :cond_0

    .line 3625
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->getTextOffset()I

    move-result v4

    .line 3626
    .local v4, "offset":I
    iget-object v6, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 3627
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 3628
    .local v3, "line":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr p1, v6

    .line 3629
    iget-object v6, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr p1, v6

    .line 3632
    iget-object v6, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    iget v7, v7, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3634
    .local v1, "handle":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr p1, v6

    .line 3637
    .end local v1    # "handle":Landroid/graphics/drawable/Drawable;
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    .end local v4    # "offset":I
    :cond_0
    return p1
.end method

.method protected createPopupWindow()V
    .locals 4

    .prologue
    .line 3436
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3438
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3439
    return-void
.end method

.method protected getTextOffset()I
    .locals 2

    .prologue
    .line 3609
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 3614
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected initContentView()V
    .locals 13

    .prologue
    const v12, 0x1090123

    const v11, 0x1090117

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 3443
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3444
    .local v4, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3446
    const/16 v7, 0x11

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3448
    iput-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 3450
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v7}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3452
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v7}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3453
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    iget v8, v8, Landroid/widget/TextView;->mTextEditNewActionPopupBackGroundRes:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3454
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10500e9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mItemWidth:I

    .line 3464
    :goto_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v0, v10, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3468
    .local v0, "dividerImageViewLayout":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 3471
    .local v3, "inflater":Landroid/view/LayoutInflater;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3475
    .local v6, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mItemWidth:I

    invoke-direct {v5, v7, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3479
    .local v5, "textLayout":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v7}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3481
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v7}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3482
    invoke-virtual {v3, v12, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 3492
    :goto_1
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v7}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v7}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3493
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3498
    :goto_2
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3499
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v8, 0x104000b

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 3500
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3502
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v7}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3504
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v7}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3505
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    iget v8, v8, Landroid/widget/TextView;->mTextEditNewActionPopupPasteRes:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3506
    .local v1, "drawable1":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v9, v1, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3517
    .end local v1    # "drawable1":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_3
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v7}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mClipboardEnable:Z

    if-eqz v7, :cond_1

    .line 3520
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v7}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3521
    const v7, 0x1090121

    invoke-virtual {v3, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mDividerImageView:Landroid/widget/ImageView;

    .line 3525
    :goto_4
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mDividerImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3526
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mDividerImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3530
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v7}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3531
    invoke-virtual {v3, v12, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    .line 3536
    :goto_5
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v7}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3537
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3542
    :goto_6
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3543
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    const v8, 0x1040018

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 3544
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3546
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v7}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 3547
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    iget v8, v8, Landroid/widget/TextView;->mTextEditNewActionPopupClipboardRes:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3548
    .local v2, "drawable3":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v9, v2, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3556
    .end local v2    # "drawable3":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_7
    return-void

    .line 3456
    .end local v0    # "dividerImageViewLayout":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "textLayout":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v8, 0x10800b8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 3460
    :cond_3
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v8, 0x108093a

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 3484
    .restart local v0    # "dividerImageViewLayout":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "textLayout":Landroid/view/ViewGroup$LayoutParams;
    .restart local v6    # "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {v3, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 3488
    :cond_5
    const v7, 0x10900d0

    invoke-virtual {v3, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 3495
    :cond_6
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 3508
    :cond_7
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10800b6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3509
    .restart local v1    # "drawable1":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v1, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 3523
    .end local v1    # "drawable1":Landroid/graphics/drawable/Drawable;
    :cond_8
    const v7, 0x1090116

    invoke-virtual {v3, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mDividerImageView:Landroid/widget/ImageView;

    goto/16 :goto_4

    .line 3533
    :cond_9
    invoke-virtual {v3, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    goto/16 :goto_5

    .line 3539
    :cond_a
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 3550
    :cond_b
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10800b7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3551
    .restart local v2    # "drawable3":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3586
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3587
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3588
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    .line 3605
    :cond_0
    :goto_0
    return-void

    .line 3597
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 3598
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x10202c1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3599
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    .line 3601
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideControllers()V

    goto :goto_0
.end method

.method public show()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 3560
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    .line 3561
    .local v0, "canPaste":Z
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z
    invoke-static {v4}, Landroid/widget/Editor;->access$3000(Landroid/widget/Editor;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 3562
    .local v1, "canSuggest":Z
    :goto_0
    iget-object v6, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move v4, v3

    :goto_1
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3566
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "clipboardEx"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/ClipboardExManager;

    .line 3567
    .local v2, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v4}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v4, v4, Landroid/widget/Editor;->mClipboardEnable:Z

    if-eqz v4, :cond_0

    .line 3568
    iget-object v6, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v3

    :goto_2
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3569
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mDividerImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3575
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v3}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3576
    if-nez v0, :cond_7

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v3, v3, Landroid/widget/Editor;->mClipboardEnable:Z

    if-nez v3, :cond_7

    .line 3582
    :cond_1
    :goto_4
    return-void

    .end local v1    # "canSuggest":Z
    .end local v2    # "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    :cond_2
    move v1, v3

    .line 3561
    goto :goto_0

    .restart local v1    # "canSuggest":Z
    :cond_3
    move v4, v5

    .line 3562
    goto :goto_1

    .restart local v2    # "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    :cond_4
    move v4, v5

    .line 3568
    goto :goto_2

    :cond_5
    move v3, v5

    .line 3569
    goto :goto_3

    .line 3578
    :cond_6
    if-eqz v0, :cond_1

    .line 3581
    :cond_7
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    goto :goto_4
.end method
