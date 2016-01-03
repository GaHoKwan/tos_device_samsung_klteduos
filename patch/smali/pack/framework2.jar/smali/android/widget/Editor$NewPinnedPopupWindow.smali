.class abstract Landroid/widget/Editor$NewPinnedPopupWindow;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "NewPinnedPopupWindow"
.end annotation


# instance fields
.field protected final ITEM_WIDTH:I

.field protected mContentView:Landroid/view/ViewGroup;

.field protected mDividerWidth:I

.field protected mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field protected mItemWidth:I

.field protected mMenuItemCount:I

.field protected mPopupBgPaddingHeight:I

.field protected mPopupBgPaddingWidth:I

.field protected mPopupWidthLandscape:I

.field protected mPopupWidthPortrait:I

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3662
    iput-object p1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3647
    const/16 v0, 0x47

    iput v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->ITEM_WIDTH:I

    .line 3648
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mItemWidth:I

    .line 3649
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthPortrait:I

    .line 3650
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthLandscape:I

    .line 3651
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingWidth:I

    .line 3652
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingHeight:I

    .line 3653
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mDividerWidth:I

    .line 3654
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mMenuItemCount:I

    .line 3663
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->createPopupWindow()V

    .line 3665
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 3666
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3667
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3669
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->initContentView()V

    .line 3670
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->setHeight()V

    .line 3671
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3672
    return-void
.end method

.method private computeLocalPosition()V
    .locals 2

    .prologue
    .line 3770
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->measureContent()V

    .line 3771
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 3772
    .local v0, "position":[I
    invoke-virtual {p0, v0}, Landroid/widget/Editor$NewPinnedPopupWindow;->getNewActionPopupPosition([I)V

    .line 3773
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionX:I

    .line 3774
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionY:I

    .line 3775
    return-void
.end method

.method private getMenuLimit()I
    .locals 2

    .prologue
    .line 3735
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3736
    const/4 v0, 0x4

    .line 3738
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private setPopupWindowWidth(I)V
    .locals 4
    .param p1, "menuLimit"    # I

    .prologue
    .line 3743
    iget v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mMenuItemCount:I

    if-ge v0, p1, :cond_0

    .line 3744
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mDividerWidth:I

    iget v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mMenuItemCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mItemWidth:I

    iget v3, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mMenuItemCount:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3752
    :goto_0
    return-void

    .line 3746
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3747
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_0

    .line 3749
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthLandscape:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method private updateNewActionPopupPosition()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 3779
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3780
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 3785
    :goto_0
    return-void

    .line 3782
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionX:I

    iget v4, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract createPopupWindow()V
.end method

.method protected abstract getNewActionPopupPosition([I)V
.end method

.method protected abstract getTextOffset()I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 3788
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3789
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1500(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 3790
    return-void
.end method

.method protected abstract initContentView()V
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 3804
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 3755
    iget-object v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3757
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 3763
    return-void
.end method

.method public relocateNewActionPopupWindow(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 3808
    if-ltz p1, :cond_0

    .line 3809
    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->computeLocalPosition()V

    .line 3810
    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->getMenuLimit()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$NewPinnedPopupWindow;->setPopupWindowWidth(I)V

    .line 3811
    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->updateNewActionPopupPosition()V

    .line 3813
    :cond_0
    return-void
.end method

.method protected abstract setHeight()V
.end method

.method public show()V
    .locals 17

    .prologue
    .line 3676
    const/4 v8, 0x1

    .line 3677
    .local v8, "menuItemCount":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->canCut()Z

    move-result v3

    .line 3678
    .local v3, "canCut":Z
    if-eqz v3, :cond_0

    add-int/lit8 v8, v8, 0x1

    .line 3679
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->canCopy()Z

    move-result v2

    .line 3680
    .local v2, "canCopy":Z
    if-eqz v2, :cond_1

    add-int/lit8 v8, v8, 0x1

    .line 3681
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->canPaste()Z

    move-result v5

    .line 3682
    .local v5, "canPaste":Z
    if-eqz v5, :cond_2

    add-int/lit8 v8, v8, 0x1

    .line 3683
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "clipboardEx"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/sec/clipboard/ClipboardExManager;

    .line 3684
    .local v7, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v12}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    instance-of v12, v12, Landroid/text/Editable;

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v12

    if-eqz v12, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v12

    if-lez v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v12, v12, Landroid/widget/Editor;->mClipboardEnable:Z

    if-eqz v12, :cond_9

    const/4 v1, 0x1

    .line 3687
    .local v1, "canClipboard":Z
    :goto_0
    if-eqz v1, :cond_3

    add-int/lit8 v8, v8, 0x1

    .line 3688
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->canTranslate()Z

    move-result v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v12, v12, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    if-eqz v12, :cond_a

    const/4 v6, 0x1

    .line 3689
    .local v6, "canTranslate":Z
    :goto_1
    if-eqz v6, :cond_4

    add-int/lit8 v8, v8, 0x1

    .line 3690
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v12, v12, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v12, :cond_5

    add-int/lit8 v8, v8, 0x1

    .line 3691
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v12, v12, Landroid/widget/Editor;->mWebSearchEnable:Z

    if-eqz v12, :cond_6

    add-int/lit8 v8, v8, 0x1

    .line 3692
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isDictionaryEnabled()Z
    invoke-static {v12}, Landroid/widget/Editor;->access$2700(Landroid/widget/Editor;)Z

    move-result v4

    .line 3693
    .local v4, "canDictionary":Z
    if-eqz v4, :cond_7

    add-int/lit8 v8, v8, 0x1

    .line 3694
    :cond_7
    move-object/from16 v0, p0

    iput v8, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mMenuItemCount:I

    .line 3696
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->computeLocalPosition()V

    .line 3698
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->getMenuLimit()I

    move-result v10

    .line 3699
    .local v10, "menuLimit":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/widget/Editor$NewPinnedPopupWindow;->setPopupWindowWidth(I)V

    .line 3701
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v12}, Landroid/widget/PopupWindow;->update()V

    .line 3702
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionY:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3704
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v12}, Landroid/widget/Editor;->access$1500(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 3706
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->updateNewActionPopupPosition()V

    .line 3708
    if-le v8, v10, :cond_8

    .line 3709
    sub-int v9, v8, v10

    .line 3711
    .local v9, "menuItemDiff":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    mul-int/lit8 v14, v9, 0x64

    int-to-float v14, v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 3712
    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Landroid/widget/Editor$NewPinnedPopupWindow$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v9}, Landroid/widget/Editor$NewPinnedPopupWindow$1;-><init>(Landroid/widget/Editor$NewPinnedPopupWindow;I)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3730
    .local v11, "thread":Ljava/lang/Thread;
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 3732
    .end local v9    # "menuItemDiff":I
    .end local v11    # "thread":Ljava/lang/Thread;
    :cond_8
    return-void

    .line 3684
    .end local v1    # "canClipboard":Z
    .end local v4    # "canDictionary":Z
    .end local v6    # "canTranslate":Z
    .end local v10    # "menuLimit":I
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 3688
    .restart local v1    # "canClipboard":Z
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method public updatePosition(IIZZ)V
    .locals 2
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 3795
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->getTextOffset()I

    move-result v1

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$1600(Landroid/widget/Editor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3796
    if-eqz p4, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->computeLocalPosition()V

    .line 3797
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->updateNewActionPopupPosition()V

    .line 3801
    :goto_0
    return-void

    .line 3799
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->hide()V

    goto :goto_0
.end method
