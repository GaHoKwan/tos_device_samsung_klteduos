.class public Landroid/widget/HoverPopupWindow;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HoverPopupWindow$Gravity;,
        Landroid/widget/HoverPopupWindow$HoverPopupContainer;,
        Landroid/widget/HoverPopupWindow$TouchablePopupContainer;,
        Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;,
        Landroid/widget/HoverPopupWindow$HoverPopupListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final MSG_DISMISS_POPUP:I = 0x2

.field private static final MSG_SHOW_POPUP:I = 0x1

.field private static final POPUP_TIMEOUT_MS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "HoverPopupWindow"

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final UI_THREAD_BUSY_TIME_MS:I = 0x3e8


# instance fields
.field protected final ANCHORVIEW_COORDINATES_TYPE_NONE:I

.field protected final ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

.field protected final ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

.field private final ID_TOOLTIP_VIEW:I

.field protected final MARGIN_FOR_HOVER_RING:I

.field private mAnchorRect:Landroid/graphics/Rect;

.field protected mAnchorView:Landroid/view/View;

.field protected mAnimationStyle:I

.field protected mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

.field private mContentHeight:I

.field protected mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field protected mContentResId:I

.field protected mContentText:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field private mContentWidth:I

.field protected final mContext:Landroid/content/Context;

.field protected mCoordinatesOfAnchorView:I

.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field protected mDismissTouchableHPWOnActionUp:Z

.field private mDisplayFrame:Landroid/graphics/Rect;

.field protected mEnabled:Z

.field protected mGuideLineColor:I

.field protected mGuideLineFadeOffset:I

.field protected mGuideRingDrawableId:I

.field private mHashCodeForViewState:I

.field protected mHoverDetectTimeMS:I

.field private mHoverPaddingBottom:I

.field private mHoverPaddingLeft:I

.field private mHoverPaddingRight:I

.field private mHoverPaddingTop:I

.field protected mHoveringPointX:I

.field protected mHoveringPointY:I

.field protected mIsFHAnimationEnabled:Z

.field protected mIsFHAnimationEnabledByApp:Z

.field protected mIsFHGuideLineEnabled:Z

.field protected mIsFHGuideLineEnabledByApp:Z

.field protected mIsFHSoundAndHapticEnabled:Z

.field protected mIsGuideLineEnabled:Z

.field private mIsHoverPaddingEnabled:Z

.field protected mIsInfoPickerMoveEabled:Z

.field protected mIsInfoPickerMoveEabledByApp:Z

.field protected mIsPopupTouchable:Z

.field protected mIsProgressBar:Z

.field private mIsSPenPointChanged:Z

.field protected mIsSetInfoPickerColorToAndMoreBottomImg:Z

.field protected mIsShowMessageSent:Z

.field private mIsTryingShowPopup:Z

.field protected mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

.field protected mNeedToMeasureContentView:Z

.field protected mOverTopBoundary:Z

.field protected final mParentView:Landroid/view/View;

.field protected mPopup:Landroid/widget/PopupWindow;

.field protected mPopupGravity:I

.field protected mPopupOffsetX:I

.field protected mPopupOffsetY:I

.field protected mPopupPosX:I

.field protected mPopupPosY:I

.field protected mPopupType:I

.field protected mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

.field protected mShowPopupAlways:Z

.field private mShowPopupRunnable:Ljava/lang/Runnable;

.field protected mToolType:I

.field protected mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

.field protected mWindowGapX:I

.field protected mWindowGapY:I

.field protected misDialer:Z

.field protected misGravityBottomUnder:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 4
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const v0, 0x7010001

    iput v0, p0, Landroid/widget/HoverPopupWindow;->ID_TOOLTIP_VIEW:I

    .line 98
    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/HoverPopupWindow;->MARGIN_FOR_HOVER_RING:I

    .line 108
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 110
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    .line 160
    iput v1, p0, Landroid/widget/HoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_NONE:I

    .line 161
    iput v3, p0, Landroid/widget/HoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

    .line 162
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/HoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

    .line 180
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 182
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 184
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    .line 186
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    .line 189
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 191
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    .line 193
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 195
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 202
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    .line 206
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 245
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    .line 247
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 249
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->initInstance()V

    .line 250
    invoke-virtual {p0, p2}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 251
    return-void
.end method

.method static synthetic access$000(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->showPopup()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/HoverPopupWindow;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private dismissPopup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1871
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1872
    :cond_0
    const-string v0, "HoverPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissPopup(), remove message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1875
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1876
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 1877
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 1878
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    .line 1884
    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 1885
    const-string v0, "HoverPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissPopup(), close popup  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1888
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1890
    :cond_2
    return-void
.end method

.method private getStateHashCode()I
    .locals 4

    .prologue
    .line 1936
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 1937
    .local v0, "hashCode":I
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1939
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 1946
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 1947
    .local v1, "location":[I
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1948
    const/4 v2, 0x0

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x14

    const/4 v3, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 1951
    .end local v1    # "location":[I
    :cond_0
    return v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 731
    :goto_0
    return-object v0

    .line 728
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 729
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 731
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeToolTipContentView()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const v4, 0x7010001

    .line 936
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 938
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 940
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 951
    :goto_0
    return-void

    .line 943
    :cond_0
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 944
    :cond_1
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 945
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x109005f

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 946
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setHoverPopupType(I)V

    .line 947
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 949
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private playSoundAndHapticFeedback()V
    .locals 3

    .prologue
    .line 738
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 739
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 740
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 741
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 743
    :cond_0
    return-void
.end method

.method private pointInValidHoverArea(FF)Z
    .locals 2
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    .line 1919
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPopupContent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 889
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    packed-switch v3, :pswitch_data_0

    .line 913
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 918
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    if-eqz v3, :cond_1

    .line 919
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v3, v4, p0}, Landroid/widget/HoverPopupWindow$HoverPopupListener;->onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z

    .line 922
    :cond_1
    return-void

    .line 891
    :pswitch_0
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 894
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->makeToolTipContentView()V

    goto :goto_0

    .line 897
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->makeDefaultContentView()V

    goto :goto_0

    .line 900
    :pswitch_3
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 901
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    if-eqz v3, :cond_0

    .line 902
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 904
    .local v1, "inflater":Landroid/view/LayoutInflater;
    :try_start_0
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 905
    .local v2, "v":Landroid/view/View;
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 906
    .end local v2    # "v":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 907
    .local v0, "ie":Landroid/view/InflateException;
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 889
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPopup()V
    .locals 3

    .prologue
    .line 831
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getStateHashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 832
    const-string v0, "HoverPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showPopup() is cancelled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mHashCodeForViewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getStateHashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 850
    :goto_0
    return-void

    .line 837
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 840
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 841
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 844
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    .line 845
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->setPopupContent()V

    .line 846
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    .line 849
    const-string/jumbo v0, "timestamp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PERF][Hovering] Displayed ( view : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected computePopupPosition(Landroid/view/View;III)V
    .locals 42
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offX"    # I
    .param p4, "offY"    # I

    .prologue
    .line 963
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 1241
    :goto_0
    return-void

    .line 967
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 968
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 969
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 970
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 972
    if-eqz p1, :cond_b

    move-object/from16 v14, p1

    .line 973
    .local v14, "anchorView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    .line 976
    .local v26, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v13, 0x0

    .line 977
    .local v13, "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x2

    new-array v12, v4, [I

    .line 978
    .local v12, "anchorLocOnScr":[I
    const/4 v4, 0x2

    new-array v11, v4, [I

    .line 979
    .local v11, "anchorLocInWindow":[I
    invoke-virtual {v14, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 980
    invoke-virtual {v14, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 983
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .line 984
    .local v25, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v35

    .line 993
    .local v35, "rootview":Landroid/view/View;
    const/16 v29, 0x0

    .line 994
    .local v29, "isRootViewFullScreen":Z
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getWidth()I

    move-result v37

    .line 995
    .local v37, "rootviewWidth":I
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getHeight()I

    move-result v36

    .line 997
    .local v36, "rootviewHeight":I
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v0, v37

    if-ne v0, v4, :cond_1

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v0, v36

    if-ne v0, v4, :cond_1

    .line 999
    const/16 v29, 0x1

    .line 1003
    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_c

    .line 1006
    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x0

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 1007
    const/4 v4, 0x1

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 1008
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 1010
    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    const/4 v6, 0x0

    aget v6, v11, v6

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v6, v9

    const/4 v9, 0x1

    aget v9, v11, v9

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v13, v4, v5, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1032
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    :goto_2
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_3

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_3

    .line 1033
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v34

    .line 1034
    .local v34, "root":Landroid/view/View;
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v39

    .line 1036
    .local v39, "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v39

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_3

    move-object/from16 v41, v39

    .line 1037
    check-cast v41, Landroid/view/WindowManager$LayoutParams;

    .line 1038
    .local v41, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v41

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move-object/from16 v0, v41

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v4, v5

    and-int/lit16 v4, v4, 0x404

    if-nez v4, :cond_d

    const/16 v30, 0x1

    .line 1041
    .local v30, "isSystemUiVisible":Z
    :goto_3
    const/16 v38, 0x0

    .line 1043
    .local v38, "statusBarHeight":I
    move-object/from16 v0, v41

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x200

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    if-eqz v30, :cond_2

    .line 1044
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v38

    .line 1047
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1048
    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1049
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1050
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1055
    .end local v30    # "isSystemUiVisible":Z
    .end local v34    # "root":Landroid/view/View;
    .end local v38    # "statusBarHeight":I
    .end local v39    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v41    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1056
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 1066
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    if-nez v4, :cond_e

    .line 1067
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v40

    .line 1069
    .local v40, "widthMeasureSpec":I
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    .line 1092
    .local v27, "heightMeasureSpec":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move/from16 v0, v40

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1093
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 1094
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 1095
    .local v24, "contentWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    .line 1097
    .local v22, "contentHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1101
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v22

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 1106
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v32, v0

    .line 1107
    .local v32, "posX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v33, v0

    .line 1108
    .local v33, "posY":I
    const/4 v15, 0x0

    .line 1109
    .local v15, "canDraw":Z
    add-int v4, v33, v22

    iget v5, v13, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_4

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v33

    if-lt v0, v4, :cond_5

    .line 1110
    :cond_4
    const/4 v15, 0x1

    .line 1113
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v4, :cond_17

    if-eqz v15, :cond_17

    .line 1115
    const/16 v28, 0x1

    .line 1117
    .local v28, "isPopupAboveHorizontal":Z
    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v31

    .line 1121
    .local v31, "marginForHoverRing":I
    const/16 v16, 0x0

    .line 1122
    .local v16, "containerLeftOnWindow":I
    const/16 v21, 0x0

    .line 1123
    .local v21, "containerRightOnWindow":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    .line 1124
    iget v4, v13, Landroid/graphics/Rect;->left:I

    sub-int v4, v4, v31

    move/from16 v0, v32

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1126
    add-int v4, v32, v24

    iget v5, v13, Landroid/graphics/Rect;->right:I

    add-int v5, v5, v31

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 1139
    :cond_6
    :goto_5
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move/from16 v0, v33

    if-le v0, v4, :cond_12

    .line 1140
    const/16 v28, 0x0

    .line 1146
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-nez v4, :cond_7

    .line 1147
    new-instance v4, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 1148
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    .line 1153
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 1154
    .local v23, "contentLP":Landroid/view/ViewGroup$LayoutParams;
    if-nez v23, :cond_13

    .line 1155
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v24

    move/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1162
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1163
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1166
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_9

    .line 1167
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1170
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1174
    sub-int v4, v16, v32

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v18

    .line 1175
    .local v18, "containerPaddingLeft":I
    add-int v4, v32, v24

    sub-int v4, v21, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 1176
    .local v19, "containerPaddingRight":I
    const/16 v20, 0x0

    .line 1177
    .local v20, "containerPaddingTop":I
    const/16 v17, 0x0

    .line 1178
    .local v17, "containerPaddingBottom":I
    if-eqz v28, :cond_14

    .line 1179
    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    add-int v4, v4, v31

    add-int v5, v33, v22

    sub-int v17, v4, v5

    .line 1180
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1187
    :goto_8
    if-eqz v28, :cond_15

    .line 1188
    move/from16 v32, v16

    .line 1195
    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    sub-int v4, v4, v32

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int v7, v4, v5

    .line 1196
    .local v7, "hoverPointXonContainer":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    sub-int v4, v4, v33

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int v8, v4, v5

    .line 1197
    .local v8, "hoverPointYonContainer":I
    if-eqz v28, :cond_16

    .line 1198
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    .line 1235
    .end local v7    # "hoverPointXonContainer":I
    .end local v8    # "hoverPointYonContainer":I
    .end local v16    # "containerLeftOnWindow":I
    .end local v17    # "containerPaddingBottom":I
    .end local v18    # "containerPaddingLeft":I
    .end local v19    # "containerPaddingRight":I
    .end local v20    # "containerPaddingTop":I
    .end local v21    # "containerRightOnWindow":I
    .end local v23    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v28    # "isPopupAboveHorizontal":Z
    .end local v31    # "marginForHoverRing":I
    :cond_a
    :goto_a
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 1236
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 1238
    const-string v4, "HoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computePopupPosition: mPopupPosX = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const-string v4, "HoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computePopupPosition: mPopupPosY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const-string v4, "HoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computePopupPosition: mContentWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 972
    .end local v11    # "anchorLocInWindow":[I
    .end local v12    # "anchorLocOnScr":[I
    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    .end local v14    # "anchorView":Landroid/view/View;
    .end local v15    # "canDraw":Z
    .end local v22    # "contentHeight":I
    .end local v24    # "contentWidth":I
    .end local v25    # "displayFrame":Landroid/graphics/Rect;
    .end local v26    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v27    # "heightMeasureSpec":I
    .end local v29    # "isRootViewFullScreen":Z
    .end local v32    # "posX":I
    .end local v33    # "posY":I
    .end local v35    # "rootview":Landroid/view/View;
    .end local v36    # "rootviewHeight":I
    .end local v37    # "rootviewWidth":I
    .end local v40    # "widthMeasureSpec":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    .line 1015
    .restart local v11    # "anchorLocInWindow":[I
    .restart local v12    # "anchorLocOnScr":[I
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    .restart local v14    # "anchorView":Landroid/view/View;
    .restart local v25    # "displayFrame":Landroid/graphics/Rect;
    .restart local v26    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v29    # "isRootViewFullScreen":Z
    .restart local v35    # "rootview":Landroid/view/View;
    .restart local v36    # "rootviewHeight":I
    .restart local v37    # "rootviewWidth":I
    :cond_c
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 1016
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 1017
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 1019
    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v12, v5

    const/4 v6, 0x0

    aget v6, v12, v6

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v6, v9

    const/4 v9, 0x1

    aget v9, v12, v9

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v13, v4, v5, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1025
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1026
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1027
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 1028
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 1038
    .restart local v34    # "root":Landroid/view/View;
    .restart local v39    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v41    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    const/16 v30, 0x0

    goto/16 :goto_3

    .line 1072
    .end local v34    # "root":Landroid/view/View;
    .end local v39    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v41    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_f

    .line 1073
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v40

    .line 1081
    .restart local v40    # "widthMeasureSpec":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_10

    .line 1082
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    .restart local v27    # "heightMeasureSpec":I
    goto/16 :goto_4

    .line 1076
    .end local v27    # "heightMeasureSpec":I
    .end local v40    # "widthMeasureSpec":I
    :cond_f
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v40

    .restart local v40    # "widthMeasureSpec":I
    goto :goto_b

    .line 1085
    :cond_10
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    .restart local v27    # "heightMeasureSpec":I
    goto/16 :goto_4

    .line 1130
    .restart local v15    # "canDraw":Z
    .restart local v16    # "containerLeftOnWindow":I
    .restart local v21    # "containerRightOnWindow":I
    .restart local v22    # "contentHeight":I
    .restart local v24    # "contentWidth":I
    .restart local v28    # "isPopupAboveHorizontal":Z
    .restart local v31    # "marginForHoverRing":I
    .restart local v32    # "posX":I
    .restart local v33    # "posY":I
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 1131
    iget v4, v13, Landroid/graphics/Rect;->left:I

    sub-int v4, v4, v31

    move/from16 v0, v32

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1133
    add-int v4, v32, v24

    iget v5, v13, Landroid/graphics/Rect;->right:I

    add-int v5, v5, v31

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto/16 :goto_5

    .line 1142
    :cond_12
    const/16 v28, 0x1

    goto/16 :goto_6

    .line 1157
    .restart local v23    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    :cond_13
    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1158
    move/from16 v0, v22

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_7

    .line 1182
    .restart local v17    # "containerPaddingBottom":I
    .restart local v18    # "containerPaddingLeft":I
    .restart local v19    # "containerPaddingRight":I
    .restart local v20    # "containerPaddingTop":I
    :cond_14
    iget v4, v13, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, v31

    sub-int v20, v33, v4

    .line 1183
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_8

    .line 1191
    :cond_15
    move/from16 v32, v16

    .line 1192
    sub-int v33, v33, v20

    goto/16 :goto_9

    .line 1202
    .restart local v7    # "hoverPointXonContainer":I
    .restart local v8    # "hoverPointYonContainer":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_a

    .line 1209
    .end local v7    # "hoverPointXonContainer":I
    .end local v8    # "hoverPointYonContainer":I
    .end local v16    # "containerLeftOnWindow":I
    .end local v17    # "containerPaddingBottom":I
    .end local v18    # "containerPaddingLeft":I
    .end local v19    # "containerPaddingRight":I
    .end local v20    # "containerPaddingTop":I
    .end local v21    # "containerRightOnWindow":I
    .end local v23    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v28    # "isPopupAboveHorizontal":Z
    .end local v31    # "marginForHoverRing":I
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_1b

    .line 1210
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-nez v4, :cond_18

    .line 1211
    new-instance v4, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    .line 1213
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1a

    .line 1214
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1222
    :cond_19
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_a

    .line 1223
    const-string v4, "HoverPopupWindow"

    const-string v5, "computePopupPosition: Call resetTimeout()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    goto/16 :goto_a

    .line 1215
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 1216
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1217
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_c

    .line 1228
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_a

    .line 1230
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1231
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    goto/16 :goto_a
.end method

.method protected computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 15
    .param p1, "anchorRect"    # Landroid/graphics/Rect;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "contentWidth"    # I
    .param p4, "contentHeight"    # I

    .prologue
    .line 1250
    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 1251
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 1252
    move/from16 v0, p3

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    .line 1253
    move/from16 v0, p4

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    .line 1255
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 1256
    .local v4, "posX":I
    iget v5, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 1262
    .local v5, "posY":I
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    and-int/lit16 v2, v12, 0xf0f

    .line 1263
    .local v2, "hGravity":I
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    const v13, 0xf0f0

    and-int v9, v12, v13

    .line 1265
    .local v9, "vGravity":I
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    if-nez v12, :cond_5

    .line 1267
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    .line 1268
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    add-int v4, v12, v13

    .line 1269
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    add-int v5, v12, v13

    .line 1356
    :cond_0
    :goto_0
    const-string v12, "HoverPopupWindow"

    const-string v13, "computePopupPositionInternal: check window boundary "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-object v12, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->isScaleWindow()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1358
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    .line 1359
    iget-object v12, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1360
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    if-gez v4, :cond_6

    .line 1361
    const/4 v12, 0x0

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1364
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 1365
    const/high16 v12, 0x40e00000    # 7.0f

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v12

    add-int/2addr v4, v12

    .line 1397
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    :goto_1
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_12

    .line 1398
    iget-object v12, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1399
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v12, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    .line 1400
    .local v7, "root":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .local v10, "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object v11, v10

    .line 1401
    check-cast v11, Landroid/view/WindowManager$LayoutParams;

    .line 1402
    .local v11, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v12, v11, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v13, v11, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v12, v13

    and-int/lit16 v12, v12, 0x404

    if-nez v12, :cond_b

    const/4 v3, 0x1

    .line 1404
    .local v3, "isSystemUiVisible":Z
    :goto_2
    const/4 v8, 0x0

    .line 1406
    .local v8, "statusBarHeight":I
    if-eqz v3, :cond_2

    .line 1407
    iget-object v12, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x105000c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1409
    :cond_2
    if-ge v5, v8, :cond_f

    .line 1412
    const/16 v12, 0x3030

    if-ne v9, v12, :cond_e

    .line 1413
    iget v12, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    move/from16 v0, p4

    if-lt v12, v0, :cond_c

    .line 1414
    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 1415
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    add-int/2addr v5, v12

    .line 1416
    const-string v12, "HoverPopupWindow"

    const-string v13, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 1543
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "isSystemUiVisible":Z
    .end local v7    # "root":Landroid/view/View;
    .end local v8    # "statusBarHeight":I
    .end local v10    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    :goto_3
    iput v4, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 1544
    iput v5, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 1545
    return-void

    .line 1270
    :cond_4
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 1271
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 1272
    iget v5, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    goto/16 :goto_0

    .line 1276
    :cond_5
    sparse-switch v2, :sswitch_data_0

    .line 1314
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 1319
    :goto_4
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    add-int/2addr v4, v12

    .line 1323
    sparse-switch v9, :sswitch_data_1

    .line 1341
    iget v5, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 1346
    :goto_5
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    add-int/2addr v5, v12

    goto/16 :goto_0

    .line 1278
    :sswitch_0
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int v4, v12, p3

    .line 1279
    goto :goto_4

    .line 1282
    :sswitch_1
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 1283
    goto :goto_4

    .line 1286
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    sub-int v4, v12, p3

    .line 1287
    goto :goto_4

    .line 1290
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    div-int/lit8 v13, p3, 0x2

    sub-int v4, v12, v13

    .line 1291
    goto :goto_4

    .line 1294
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 1295
    goto :goto_4

    .line 1298
    :sswitch_5
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->right:I

    sub-int v4, v12, p3

    .line 1299
    goto :goto_4

    .line 1302
    :sswitch_6
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 1303
    goto :goto_4

    .line 1306
    :sswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    div-int/lit8 v13, p3, 0x2

    sub-int v4, v12, v13

    .line 1307
    goto :goto_4

    .line 1310
    :sswitch_8
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    div-int/lit8 v13, p3, 0x2

    sub-int/2addr v12, v13

    iget v13, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int v4, v12, v13

    .line 1311
    goto :goto_4

    .line 1325
    :sswitch_9
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v12, p4

    .line 1326
    goto :goto_5

    .line 1328
    :sswitch_a
    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 1329
    goto :goto_5

    .line 1331
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    div-int/lit8 v13, p4, 0x2

    sub-int v5, v12, v13

    .line 1332
    goto :goto_5

    .line 1334
    :sswitch_c
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v12, p4

    .line 1335
    goto :goto_5

    .line 1337
    :sswitch_d
    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 1338
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    goto :goto_5

    .line 1367
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_6
    add-int v12, v4, p3

    iget v13, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v12, v13, :cond_1

    .line 1368
    iget v12, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v12, v12, p3

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_1

    .line 1370
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_7
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 1371
    iget-object v12, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1372
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v4

    if-gtz v12, :cond_8

    .line 1373
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    sub-int v12, v12, p3

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1375
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->left:I

    neg-int v12, v12

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1378
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 1380
    const/high16 v12, 0x40e00000    # 7.0f

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v12

    add-int/2addr v4, v12

    goto/16 :goto_1

    .line 1382
    :cond_8
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v4

    add-int v12, v12, p3

    iget v13, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v12, v13, :cond_9

    .line 1383
    iget v12, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    sub-int v12, v12, p3

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_1

    .line 1385
    :cond_9
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->left:I

    if-lez v12, :cond_a

    .line 1386
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    sub-int v12, v12, p3

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1389
    :cond_a
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 1391
    const/high16 v12, 0x40e00000    # 7.0f

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v12

    add-int/2addr v4, v12

    goto/16 :goto_1

    .line 1402
    .restart local v7    # "root":Landroid/view/View;
    .restart local v10    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v11    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1418
    .restart local v3    # "isSystemUiVisible":Z
    .restart local v8    # "statusBarHeight":I
    :cond_c
    iget v12, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    if-le v12, v13, :cond_d

    .line 1419
    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 1421
    const-string v12, "HoverPopupWindow"

    const-string v13, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_3

    .line 1425
    :cond_d
    move v5, v8

    .line 1426
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 1427
    const-string v12, "HoverPopupWindow"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1432
    :cond_e
    const-string v12, "HoverPopupWindow"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto/16 :goto_3

    .line 1435
    :cond_f
    add-int v12, v5, p4

    iget v13, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v12, v13, :cond_11

    .line 1437
    const/16 v12, 0x5050

    if-ne v9, v12, :cond_10

    .line 1438
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, p4

    if-lt v12, v0, :cond_3

    .line 1439
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v12, p4

    .line 1440
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    sub-int/2addr v5, v12

    .line 1442
    const-string v12, "HoverPopupWindow"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3: misGravityBottomUnder = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-boolean v12, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 1444
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 1445
    const-string v12, "HoverPopupWindow"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1449
    :cond_10
    const-string v12, "HoverPopupWindow"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v12, p4

    goto/16 :goto_3

    .line 1454
    :cond_11
    const/16 v12, 0x3030

    if-ne v9, v12, :cond_3

    .line 1455
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 1456
    const-string v12, "HoverPopupWindow"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1459
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "isSystemUiVisible":Z
    .end local v7    # "root":Landroid/view/View;
    .end local v8    # "statusBarHeight":I
    .end local v10    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_12
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 1463
    iget-object v12, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    .line 1464
    .restart local v7    # "root":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .restart local v10    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object v11, v10

    .line 1465
    check-cast v11, Landroid/view/WindowManager$LayoutParams;

    .line 1466
    .restart local v11    # "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v12, v11, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v13, v11, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v12, v13

    and-int/lit16 v12, v12, 0x404

    if-nez v12, :cond_16

    const/4 v3, 0x1

    .line 1468
    .restart local v3    # "isSystemUiVisible":Z
    :goto_6
    const/4 v8, 0x0

    .line 1470
    .restart local v8    # "statusBarHeight":I
    if-eqz v3, :cond_13

    .line 1471
    iget-object v12, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x105000c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1473
    :cond_13
    move v6, v8

    .line 1474
    .local v6, "realStatusBarHeight":I
    iget-object v12, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1475
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    if-eq v12, v8, :cond_14

    .line 1476
    const/4 v8, 0x0

    .line 1478
    :cond_14
    if-gez v5, :cond_1c

    .line 1480
    const/16 v12, 0x3030

    if-ne v9, v12, :cond_1b

    .line 1481
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v8

    move/from16 v0, p4

    if-lt v12, v0, :cond_17

    .line 1482
    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 1483
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v8

    iget v13, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    sub-int/2addr v12, v13

    move/from16 v0, p4

    if-lt v12, v0, :cond_15

    .line 1484
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    add-int/2addr v5, v12

    .line 1486
    :cond_15
    const-string v12, "HoverPopupWindow"

    const-string v13, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_3

    .line 1466
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "isSystemUiVisible":Z
    .end local v6    # "realStatusBarHeight":I
    .end local v8    # "statusBarHeight":I
    :cond_16
    const/4 v3, 0x0

    goto :goto_6

    .line 1488
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v3    # "isSystemUiVisible":Z
    .restart local v6    # "realStatusBarHeight":I
    .restart local v8    # "statusBarHeight":I
    :cond_17
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v8

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v12, v13, :cond_18

    .line 1489
    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 1491
    const-string v12, "HoverPopupWindow"

    const-string v13, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_3

    .line 1494
    :cond_18
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v13

    sub-int v12, v12, p4

    sub-int/2addr v12, v6

    if-lez v12, :cond_19

    .line 1496
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_3

    .line 1497
    :cond_19
    iget v12, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v14

    sub-int/2addr v12, v13

    sub-int v12, v12, p4

    if-lez v12, :cond_1a

    .line 1499
    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 1500
    const-string v12, "HoverPopupWindow"

    const-string v13, "computePopupPositionInternal: Set mOverTopBoundary = true #1-2"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_3

    .line 1503
    :cond_1a
    move v5, v8

    .line 1504
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 1505
    const-string v12, "HoverPopupWindow"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1509
    :cond_1b
    const-string v12, "HoverPopupWindow"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    const/4 v12, 0x0

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto/16 :goto_3

    .line 1512
    :cond_1c
    add-int v12, v5, p4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    if-le v12, v13, :cond_1e

    .line 1513
    const/16 v12, 0x5050

    if-ne v9, v12, :cond_1d

    .line 1514
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, p4

    if-lt v12, v0, :cond_3

    .line 1515
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v12, p4

    .line 1516
    iget v12, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    sub-int/2addr v5, v12

    .line 1518
    const-string v12, "HoverPopupWindow"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3: misGravityBottomUnder = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iget-boolean v12, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 1520
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 1521
    const-string v12, "HoverPopupWindow"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1525
    :cond_1d
    const-string v12, "HoverPopupWindow"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    sub-int v12, v12, p4

    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto/16 :goto_3

    .line 1529
    :cond_1e
    const/16 v12, 0x3030

    if-ne v9, v12, :cond_3

    .line 1530
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 1531
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 1532
    if-ge v5, v8, :cond_1f

    .line 1533
    add-int v12, v5, p4

    add-int/2addr v12, v8

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v12, v13, :cond_1f

    .line 1534
    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 1535
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 1538
    :cond_1f
    const-string v12, "HoverPopupWindow"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1276
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_1
        0x5 -> :sswitch_5
        0x101 -> :sswitch_7
        0x103 -> :sswitch_2
        0x105 -> :sswitch_4
        0x201 -> :sswitch_8
        0x303 -> :sswitch_0
        0x505 -> :sswitch_6
    .end sparse-switch

    .line 1323
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_b
        0x30 -> :sswitch_a
        0x50 -> :sswitch_c
        0x3030 -> :sswitch_9
        0x5050 -> :sswitch_d
    .end sparse-switch
.end method

.method protected convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 2
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 1929
    if-nez p2, :cond_0

    .line 1930
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 1932
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected createPopupWindow()Landroid/widget/PopupWindow;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 859
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_1

    .line 860
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 861
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 862
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 863
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 864
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 865
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 866
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 868
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 869
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 870
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isScaleWindow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 871
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 874
    :cond_0
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 876
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v1

    .line 868
    :cond_2
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1860
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 1862
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->dismissPopup()V

    .line 1863
    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 543
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    return v0
.end method

.method public getFHAnimationEnabled()Z
    .locals 1

    .prologue
    .line 1752
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    return v0
.end method

.method public getFHGuideLineEnabled()Z
    .locals 1

    .prologue
    .line 1748
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    return v0
.end method

.method public getInfoPickerMoveEabled()Z
    .locals 1

    .prologue
    .line 1756
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    return v0
.end method

.method public getIsDismissTouchableHPWOnActionUp()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method protected getPriorityContentText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 717
    :goto_0
    return-object v0

    .line 714
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 715
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 717
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initInstance()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 257
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 258
    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    .line 259
    const/16 v1, 0x12c

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 261
    const/16 v1, 0x3031

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 262
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 263
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 264
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    .line 265
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    .line 266
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 267
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 268
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 269
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 270
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    .line 271
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    .line 272
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    .line 273
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    .line 275
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .line 276
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 278
    const v1, 0x1030354

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 280
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 282
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    .line 284
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->misDialer:Z

    .line 285
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsProgressBar:Z

    .line 287
    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    .line 288
    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    .line 289
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    .line 290
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    .line 291
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    .line 292
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    .line 293
    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    .line 294
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 295
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 296
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 298
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 299
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 300
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 301
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    .line 302
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 303
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    .line 304
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    .line 305
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 306
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mShowPopupAlways:Z

    .line 308
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 309
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x150

    const v2, 0x108044c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    .line 310
    const/16 v1, 0x14f

    const v2, -0x866e57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    .line 311
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 312
    return-void
.end method

.method public isDialer()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->misDialer:Z

    return v0
.end method

.method protected isFingerHoveringSettingsEnabled(I)Z
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, -0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 428
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v2

    .line 430
    .local v0, "isFingerHoveringOn":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 431
    if-eq p1, v2, :cond_0

    .line 433
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_information_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 435
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 462
    :cond_0
    :goto_1
    return v1

    .end local v0    # "isFingerHoveringOn":Z
    :cond_1
    move v0, v1

    .line 428
    goto :goto_0

    .line 440
    .restart local v0    # "isFingerHoveringOn":Z
    :cond_2
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v1, v2

    .line 442
    goto :goto_1

    .line 444
    :cond_3
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isDialer()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 445
    goto :goto_1

    .line 450
    :cond_4
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isDialer()Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 452
    goto :goto_1

    .line 454
    :cond_5
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 456
    goto :goto_1
.end method

.method public isHoverPopupPossible()Z
    .locals 3

    .prologue
    .line 332
    const/4 v0, 0x1

    .line 334
    .local v0, "ret":Z
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-nez v1, :cond_1

    .line 335
    const/4 v0, 0x0

    .line 345
    :cond_0
    :goto_0
    return v0

    .line 336
    :cond_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 337
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 340
    :cond_3
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 341
    const/4 v0, 0x0

    goto :goto_0

    .line 342
    :cond_4
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 343
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isHoveringSettingEnabled(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 374
    .local v0, "ret":Z
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 375
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isSPenHoveringSettingsEnabled(I)Z

    move-result v0

    .line 386
    :cond_0
    :goto_0
    return v0

    .line 377
    :cond_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 378
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isFingerHoveringSettingsEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 380
    :cond_2
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method public isLockScreenMode()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 494
    iget-object v9, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    iget-object v10, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v10, "keyguard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    .line 495
    .local v5, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v4, 0x0

    .line 496
    .local v4, "isLockState":Z
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    .line 498
    iget-object v9, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "window"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v6

    .line 499
    .local v6, "windowManager":Landroid/view/IWindowManager;
    const/4 v1, 0x1

    .line 500
    .local v1, "isCoverOpen":Z
    if-eqz v6, :cond_0

    .line 502
    :try_start_0
    invoke-interface {v6}, Landroid/view/IWindowManager;->isCoverOpen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 508
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 509
    .local v2, "isDayNoteRunning":Z
    iget-object v9, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "is_cover_note_running"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_1

    .line 510
    const/4 v2, 0x1

    .line 512
    :cond_1
    const/4 v3, 0x0

    .line 513
    .local v3, "isLockScreenAndExceptionalCase":Z
    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    move v3, v7

    .line 515
    :goto_1
    return v3

    .line 503
    .end local v2    # "isDayNoteRunning":Z
    .end local v3    # "isLockScreenAndExceptionalCase":Z
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Landroid/os/RemoteException;
    const-string v9, "HoverPopupWindow"

    const-string v10, "isLockScreenMode() : failed to windowManager.isCoverOpen()"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "isDayNoteRunning":Z
    .restart local v3    # "isLockScreenAndExceptionalCase":Z
    :cond_2
    move v3, v8

    .line 513
    goto :goto_1
.end method

.method protected isMouseHoveringSettingsEnabled(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiWindows()Z
    .locals 2

    .prologue
    .line 533
    const-string v0, "1"

    const-string/jumbo v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isProgressBar()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsProgressBar:Z

    return v0
.end method

.method protected isSPenHoveringSettingsEnabled(I)Z
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, -0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 392
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 393
    .local v0, "isSPenHoveringOn":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 394
    if-ne p1, v1, :cond_2

    .line 395
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_icon_label"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 424
    :cond_0
    :goto_1
    return v1

    .end local v0    # "isSPenHoveringOn":Z
    :cond_1
    move v0, v2

    .line 392
    goto :goto_0

    .line 397
    .restart local v0    # "isSPenHoveringOn":Z
    :cond_2
    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 398
    :cond_3
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    .line 413
    goto :goto_1

    :cond_4
    move v1, v2

    .line 424
    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 638
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeDefaultContentView()V
    .locals 0

    .prologue
    .line 929
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->makeToolTipContentView()V

    .line 930
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1763
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1764
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 1765
    .local v8, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 1767
    .local v9, "y":F
    const/16 v10, 0x9

    if-ne v0, v10, :cond_3

    .line 1769
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    sub-long v6, v10, v12

    .line 1770
    .local v6, "timeDealy":J
    const-wide/16 v10, 0x3e8

    cmp-long v10, v6, v10

    if-lez v10, :cond_0

    .line 1771
    const-string v10, "HoverPopupWindow"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not show HoverPopup because UI thread seems busy.1  event delay : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    const/4 v10, 0x1

    .line 1841
    .end local v6    # "timeDealy":J
    :goto_0
    return v10

    .line 1776
    .restart local v6    # "timeDealy":J
    :cond_0
    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v10, :cond_1

    .line 1777
    invoke-direct {p0, v8, v9}, Landroid/widget/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v2

    .line 1779
    .local v2, "isPointInValidHoverArea":Z
    if-eqz v2, :cond_2

    .line 1780
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1841
    .end local v2    # "isPointInValidHoverArea":Z
    .end local v6    # "timeDealy":J
    :cond_1
    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1782
    .restart local v2    # "isPointInValidHoverArea":Z
    .restart local v6    # "timeDealy":J
    :cond_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    goto :goto_1

    .line 1785
    .end local v2    # "isPointInValidHoverArea":Z
    .end local v6    # "timeDealy":J
    :cond_3
    const/4 v10, 0x7

    if-ne v0, v10, :cond_9

    .line 1786
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v4, v10

    .line 1787
    .local v4, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v5, v10

    .line 1788
    .local v5, "rawY":I
    invoke-virtual {p0, v4, v5}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 1790
    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v10, :cond_6

    .line 1791
    invoke-direct {p0, v8, v9}, Landroid/widget/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v2

    .line 1793
    .restart local v2    # "isPointInValidHoverArea":Z
    if-eqz v2, :cond_5

    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-nez v10, :cond_5

    .line 1797
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    sub-long v6, v10, v12

    .line 1798
    .restart local v6    # "timeDealy":J
    const-wide/16 v10, 0x3e8

    cmp-long v10, v6, v10

    if-lez v10, :cond_4

    .line 1799
    const-string v10, "HoverPopupWindow"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not show HoverPopup because UI thread seems busy.2  event delay : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1801
    const/4 v10, 0x1

    goto :goto_0

    .line 1806
    :cond_4
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1807
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->show()V

    .line 1808
    const/4 v10, 0x1

    goto :goto_0

    .line 1809
    .end local v6    # "timeDealy":J
    :cond_5
    if-nez v2, :cond_6

    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-nez v10, :cond_6

    .line 1813
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1814
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 1815
    const/4 v10, 0x1

    goto :goto_0

    .line 1820
    .end local v2    # "isPointInValidHoverArea":Z
    :cond_6
    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v10, :cond_7

    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v10, :cond_1

    :cond_7
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1821
    iget-object v10, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    .line 1822
    .local v3, "popupView":Landroid/view/View;
    instance-of v10, v3, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v10, :cond_1

    move-object v1, v3

    .line 1823
    check-cast v1, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 1824
    .local v1, "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    iget v10, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    sub-int v10, v4, v10

    iget v11, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    sub-int v11, v5, v11

    iget v12, p0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int/2addr v11, v12

    invoke-virtual {v1, v10, v11}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    .line 1827
    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v10, :cond_8

    .line 1828
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setFHGuideLineForCotainer(Z)V

    .line 1831
    :cond_8
    invoke-virtual {v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    goto/16 :goto_1

    .line 1834
    .end local v1    # "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .end local v3    # "popupView":Landroid/view/View;
    .end local v4    # "rawX":I
    .end local v5    # "rawY":I
    :cond_9
    const/16 v10, 0xa

    if-ne v0, v10, :cond_1

    .line 1837
    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1838
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method protected postDismiss(I)V
    .locals 4
    .param p1, "ms"    # I

    .prologue
    .line 1846
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Landroid/widget/HoverPopupWindow$3;

    invoke-direct {v1, p0}, Landroid/widget/HoverPopupWindow$3;-><init>(Landroid/widget/HoverPopupWindow;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1853
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 676
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 677
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 2
    .param p1, "aniStyle"    # I

    .prologue
    .line 1625
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 1626
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1627
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1629
    :cond_0
    return-void
.end method

.method public setContent(I)V
    .locals 1
    .param p1, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 583
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 585
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 593
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    return-void

    .line 593
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 604
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 605
    iput-object p2, p0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 607
    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 616
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 618
    return-void
.end method

.method public setDismissTouchableHPWOnActionUp(Z)V
    .locals 0
    .param p1, "bDismissTouchableHPWOnActionUp"    # Z

    .prologue
    .line 525
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    .line 526
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 538
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    .line 539
    return-void
.end method

.method public setFHAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1679
    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    .line 1680
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabledByApp(ZZ)V

    .line 1682
    return-void
.end method

.method public setFHAnimationEnabledByApp(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1685
    if-ne p2, v1, :cond_1

    .line 1686
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    .line 1695
    :cond_0
    :goto_0
    return-void

    .line 1689
    :cond_1
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    if-eq v0, v1, :cond_0

    .line 1692
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    goto :goto_0
.end method

.method public setFHGuideLineEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1654
    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    .line 1655
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabledByApp(ZZ)V

    .line 1656
    return-void
.end method

.method public setFHGuideLineEnabledByApp(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1659
    if-ne p2, v1, :cond_1

    .line 1660
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    .line 1662
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-ne v0, v1, :cond_0

    .line 1663
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 1676
    :cond_0
    :goto_0
    return-void

    .line 1666
    :cond_1
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    if-eq v0, v1, :cond_0

    .line 1669
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    .line 1671
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-ne v0, v1, :cond_0

    .line 1672
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0
.end method

.method public setFHSoundAndHapticEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1722
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    .line 1723
    return-void
.end method

.method public setGuideLineEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1649
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 1650
    return-void
.end method

.method public setGuideLineFadeOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 1732
    int-to-float v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 1733
    return-void
.end method

.method public setGuideLineStyle(II)V
    .locals 0
    .param p1, "ringDrawable"    # I
    .param p2, "lineColor"    # I

    .prologue
    .line 1739
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    .line 1740
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    .line 1741
    return-void
.end method

.method public setHoverDetectTime(I)V
    .locals 0
    .param p1, "ms"    # I

    .prologue
    .line 648
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 649
    return-void
.end method

.method public setHoverPaddingArea(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 653
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    .line 654
    iput p3, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    .line 655
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    .line 656
    iput p4, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    .line 658
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    if-eqz v0, :cond_1

    .line 660
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 662
    :cond_1
    return-void
.end method

.method public setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .prologue
    .line 562
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .line 563
    return-void
.end method

.method public setHoverPopupPreShowListener(Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    .prologue
    .line 572
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    .line 573
    return-void
.end method

.method public setHoverPopupToolType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 487
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    .line 488
    return-void
.end method

.method public setHoveringPoint(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 706
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    .line 707
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    .line 708
    return-void
.end method

.method public setInfoPickerColorToAndMoreBottomImg(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1718
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    .line 1719
    return-void
.end method

.method public setInfoPickerMoveEabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1698
    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    .line 1699
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setInfoPickerMoveEabledByApp(ZZ)V

    .line 1701
    return-void
.end method

.method public setInfoPickerMoveEabledByApp(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1705
    if-ne p2, v1, :cond_1

    .line 1706
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    .line 1715
    :cond_0
    :goto_0
    return-void

    .line 1709
    :cond_1
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    if-eq v0, v1, :cond_0

    .line 1712
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    goto :goto_0
.end method

.method protected setInstanceByType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 319
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 320
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 321
    const/16 v0, 0x3133

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 322
    const v0, 0x1030354

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 324
    :cond_0
    return-void
.end method

.method public setInstanceOfDialer(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 353
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->misDialer:Z

    .line 354
    return-void
.end method

.method public setInstanceOfProgressBar(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 361
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsProgressBar:Z

    .line 362
    return-void
.end method

.method public setPopupGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 685
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 686
    return-void
.end method

.method public setPopupPosOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 695
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 696
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 697
    return-void
.end method

.method public setShowPopupAlways(Z)V
    .locals 0
    .param p1, "always"    # Z

    .prologue
    .line 665
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mShowPopupAlways:Z

    .line 666
    return-void
.end method

.method public setTouchablePopup(Z)V
    .locals 2
    .param p1, "isTouchable"    # Z

    .prologue
    .line 1637
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    .line 1638
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1639
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1641
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 747
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->show(I)V

    .line 748
    return-void
.end method

.method public show(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x1

    .line 759
    const-string/jumbo v0, "timestamp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PERF][Hovering] Focused ( view : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-eq p1, v0, :cond_0

    .line 762
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 763
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 767
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v0, :cond_2

    .line 768
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    invoke-interface {v0}, Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;->onHoverPopupPreShow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 823
    :cond_1
    :goto_0
    return-void

    .line 774
    :cond_2
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isLockScreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v0, :cond_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isHoveringSettingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 782
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getStateHashCode()I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mHashCodeForViewState:I

    .line 785
    invoke-virtual {p0, v4}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 789
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_sound_and_haptic_feedback"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 792
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->playSoundAndHapticFeedback()V

    .line 796
    :cond_4
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-ne v0, v4, :cond_5

    .line 797
    new-instance v0, Landroid/widget/HoverPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/HoverPopupWindow$1;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 804
    :cond_5
    new-instance v0, Landroid/widget/HoverPopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/HoverPopupWindow$2;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 813
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 814
    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    goto :goto_0
.end method

.method protected showPenPointEffect(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1893
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1894
    if-ne p1, v3, :cond_1

    .line 1898
    const/16 v1, 0xa

    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1903
    :goto_0
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    .line 1916
    :cond_0
    :goto_1
    return-void

    .line 1899
    :catch_0
    move-exception v0

    .line 1900
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HoverPopupWindow"

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_MORE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1904
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    if-ne v1, v3, :cond_0

    .line 1908
    const/16 v1, 0x14

    const/4 v2, -0x1

    :try_start_1
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1913
    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_1

    .line 1909
    :catch_1
    move-exception v0

    .line 1910
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "HoverPopupWindow"

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_HOVERPOPUP_DEFAULT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public updateHoverPopup()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1551
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    if-nez v0, :cond_0

    .line 1552
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 1553
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1557
    :goto_0
    return-void

    .line 1555
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_1
.end method

.method public updateHoverPopup(Landroid/view/View;III)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .prologue
    const/4 v5, 0x0

    .line 1563
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1616
    :goto_0
    return-void

    .line 1569
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/HoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    .line 1571
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    if-nez v1, :cond_1

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    if-nez v1, :cond_1

    .line 1572
    const-string v1, "HoverPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHoverPopup(), returns dueto content size 0   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1577
    :cond_1
    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-eqz v1, :cond_2

    .line 1578
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1593
    :goto_1
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1594
    const-string v1, "HoverPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHoverPopup(), returns dueto mPopup.getContentView()==null   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1579
    :cond_2
    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v1, :cond_3

    .line 1580
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 1582
    :cond_3
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 1584
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1585
    .local v0, "oldParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_4

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 1586
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "oldParent":Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1590
    :cond_4
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 1599
    :cond_5
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1600
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    iget v5, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0

    .line 1603
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_7

    .line 1604
    const-string v1, "HoverPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent view may be on sub-panel window, popup will be attached with Application Token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto/16 :goto_0

    .line 1609
    :cond_7
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v1, p1, v5, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method
