.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupViewContainer;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDimAmount:F

.field private mDimBehind:Z

.field private mDrawingLocation:[I

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsExtendActionBar:Z

.field private mIsShowing:Z

.field private mIsWindowPopupOutsideBound:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mShowForAllUsers:Z

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mStatusBarHeight:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 165
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 285
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 312
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 203
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 105
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 106
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 107
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 108
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 109
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 112
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 113
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 117
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    .line 118
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    .line 138
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 139
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 140
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 147
    const/16 v7, 0x3e8

    iput v7, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 150
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 152
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 153
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    .line 154
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    .line 157
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 160
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    .line 170
    new-instance v7, Landroid/widget/PopupWindow$1;

    invoke-direct {v7, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 221
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 222
    const-string/jumbo v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 224
    sget-object v7, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 228
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 230
    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 231
    .local v2, "animStyle":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    const v7, 0x10301f8

    if-ne v2, v7, :cond_0

    const/4 v2, -0x1

    .end local v2    # "animStyle":I
    :cond_0
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x111007a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsExtendActionBar:Z

    .line 248
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_2

    .line 249
    iget-object v3, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 252
    .local v3, "background":Landroid/graphics/drawable/StateListDrawable;
    sget-object v7, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    .line 256
    .local v1, "aboveAnchorStateIndex":I
    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    .line 257
    .local v5, "count":I
    const/4 v4, -0x1

    .line 258
    .local v4, "belowAnchorStateIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 259
    if-eq v6, v1, :cond_3

    .line 260
    move v4, v6

    .line 267
    :cond_1
    const/4 v7, -0x1

    if-eq v1, v7, :cond_4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    .line 268
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 269
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 275
    .end local v1    # "aboveAnchorStateIndex":I
    .end local v3    # "background":Landroid/graphics/drawable/StateListDrawable;
    .end local v4    # "belowAnchorStateIndex":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 258
    .restart local v1    # "aboveAnchorStateIndex":I
    .restart local v3    # "background":Landroid/graphics/drawable/StateListDrawable;
    .restart local v4    # "belowAnchorStateIndex":I
    .restart local v5    # "count":I
    .restart local v6    # "i":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 271
    :cond_4
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 272
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 297
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 328
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 105
    iput v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 106
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 107
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 108
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 109
    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 112
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 113
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 117
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    .line 138
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 139
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 147
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 150
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 152
    iput v1, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 153
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    .line 154
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    .line 157
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 160
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    .line 170
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 343
    if-eqz p1, :cond_0

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 345
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 347
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 348
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 349
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 350
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 351
    return-void
.end method

.method static synthetic access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 68
    invoke-direct/range {p0 .. p5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    .line 68
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 1166
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1167
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1168
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, 0x10301f2

    .line 1174
    :goto_0
    return v0

    .line 1168
    :cond_0
    const v0, 0x10301f1

    goto :goto_0

    .line 1172
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1174
    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3
    .param p1, "curFlags"    # I

    .prologue
    const/high16 v2, 0x20000

    .line 1122
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1130
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1131
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1133
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_9

    .line 1134
    or-int/lit8 p1, p1, 0x8

    .line 1135
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1136
    or-int/2addr p1, v2

    .line 1141
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1142
    or-int/lit8 p1, p1, 0x10

    .line 1144
    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1145
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1147
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 1148
    or-int/lit16 p1, p1, 0x200

    .line 1150
    :cond_4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1151
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1153
    :cond_5
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 1154
    or-int/lit16 p1, p1, 0x100

    .line 1156
    :cond_6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    .line 1157
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1159
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    .line 1160
    or-int/lit8 p1, p1, 0x20

    .line 1162
    :cond_8
    return p1

    .line 1138
    :cond_9
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1139
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1093
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1098
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1099
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1100
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1101
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1102
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1106
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1108
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    if-eqz v1, :cond_0

    .line 1109
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1110
    iget v1, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1113
    :cond_0
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1114
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1115
    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1118
    return-object v0

    .line 1104
    :cond_1
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 41
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    .line 1194
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1195
    .local v5, "anchorHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aget v38, v38, v39

    add-int v38, v38, p3

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget v38, v38, v39

    add-int v38, v38, v5

    add-int v38, v38, p4

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1199
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v38

    move/from16 v0, p5

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v38

    and-int/lit8 v11, v38, 0x7

    .line 1201
    .local v11, "hgrav":I
    const/16 v38, 0x5

    move/from16 v0, v38

    if-ne v11, v0, :cond_0

    .line 1203
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v39, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v40

    sub-int v39, v39, v40

    sub-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1206
    :cond_0
    const/4 v15, 0x0

    .line 1208
    .local v15, "onTop":Z
    const/16 v38, 0x33

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1211
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1212
    .local v8, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1219
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsExtendActionBar:Z

    move/from16 v38, v0

    if-eqz v38, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v38

    const/high16 v39, 0x40000000    # 2.0f

    and-int v38, v38, v39

    if-eqz v38, :cond_2

    .line 1220
    const/4 v12, 0x0

    .line 1221
    .local v12, "isStatusbarVisible":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v28

    .line 1222
    .local v28, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v28, :cond_1

    .line 1223
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewRootImpl;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v33

    .line 1224
    .local v33, "winLp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v33, :cond_1

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v38, v0

    move/from16 v0, v38

    and-int/lit16 v0, v0, 0x400

    move/from16 v38, v0

    if-nez v38, :cond_1

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v38, v0

    const/high16 v39, 0x4000000

    and-int v38, v38, v39

    if-eqz v38, :cond_1

    .line 1226
    const/4 v12, 0x1

    .line 1228
    .end local v33    # "winLp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    if-eqz v12, :cond_2

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x105000c

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v38

    move/from16 v0, v38

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 1234
    .end local v12    # "isStatusbarVisible":Z
    .end local v28    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget v38, v38, v39

    add-int v38, v38, v5

    add-int v21, v38, p4

    .line 1236
    .local v21, "screenY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v19

    .line 1238
    .local v19, "root":Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    .line 1239
    .local v32, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/16 v34, 0x0

    .line 1241
    .local v34, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v38, v0

    if-eqz v38, :cond_3

    move-object/from16 v34, v32

    .line 1242
    check-cast v34, Landroid/view/WindowManager$LayoutParams;

    .line 1244
    :cond_3
    new-instance v29, Landroid/graphics/Rect;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Rect;-><init>()V

    .line 1245
    .local v29, "visibleDisplayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1248
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    move/from16 v38, v0

    if-eqz v38, :cond_4

    .line 1249
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1251
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v38, v0

    add-int v38, v38, v21

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-gt v0, v1, :cond_5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v39, v0

    add-int v38, v38, v39

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v39

    sub-int v38, v38, v39

    if-lez v38, :cond_8

    .line 1256
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move/from16 v38, v0

    if-eqz v38, :cond_6

    .line 1257
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v22

    .line 1258
    .local v22, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v23

    .line 1259
    .local v23, "scrollY":I
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v38, v0

    add-int v38, v38, v22

    add-int v38, v38, p3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v39, v0

    add-int v39, v39, v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v40

    add-int v39, v39, v40

    add-int v39, v39, p4

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1261
    .local v17, "r":Landroid/graphics/Rect;
    const/16 v38, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 1266
    .end local v17    # "r":Landroid/graphics/Rect;
    .end local v22    # "scrollX":I
    .end local v23    # "scrollY":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aget v38, v38, v39

    add-int v38, v38, p3

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget v38, v38, v39

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v39

    add-int v38, v38, v39

    add-int v38, v38, p4

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1271
    const/16 v38, 0x5

    move/from16 v0, v38

    if-ne v11, v0, :cond_7

    .line 1272
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v39, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v40

    sub-int v39, v39, v40

    sub-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1276
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1277
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v39, v0

    const/16 v40, 0x1

    aget v39, v39, v40

    sub-int v38, v38, v39

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v39

    sub-int v38, v38, v39

    sub-int v38, v38, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v39, v0

    const/16 v40, 0x1

    aget v39, v39, v40

    sub-int v39, v39, p4

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_16

    const/4 v15, 0x1

    .line 1279
    :goto_0
    if-eqz v15, :cond_17

    .line 1280
    const/16 v38, 0x53

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1281
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v39, v0

    const/16 v40, 0x1

    aget v39, v39, v40

    sub-int v38, v38, v39

    add-int v38, v38, p4

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1288
    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v39, v0

    add-int v38, v38, v39

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v39

    sub-int v38, v38, v39

    if-lez v38, :cond_8

    .line 1289
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v39, v0

    add-int v38, v38, v39

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v39

    sub-int v7, v38, v39

    .line 1290
    .local v7, "diff":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    sub-int v38, v38, v7

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1291
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    if-gtz v38, :cond_8

    .line 1292
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1299
    .end local v7    # "diff":I
    :cond_8
    const/16 v27, 0x1

    .line 1300
    .local v27, "typeNormal":Z
    const/16 v26, 0x0

    .line 1301
    .local v26, "typeCascade":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    if-eqz v38, :cond_a

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v14

    .line 1303
    .local v14, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v14, :cond_a

    .line 1304
    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    if-eqz v38, :cond_9

    .line 1305
    const/16 v27, 0x0

    .line 1307
    :cond_9
    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_a

    .line 1308
    const/16 v26, 0x1

    .line 1313
    .end local v14    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v38, v0

    if-eqz v38, :cond_14

    if-nez v26, :cond_14

    .line 1317
    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v38, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v39, v0

    sub-int v9, v38, v39

    .line 1318
    .local v9, "displayFrameWidth":I
    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 1319
    .local v20, "rootLocation":[I
    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1321
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v39, v0

    add-int v18, v38, v39

    .line 1322
    .local v18, "right":I
    move/from16 v0, v18

    if-le v0, v9, :cond_b

    .line 1323
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    sub-int v39, v18, v9

    sub-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1325
    :cond_b
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v39, v0

    const/16 v40, 0x0

    aget v40, v20, v40

    sub-int v39, v39, v40

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_c

    .line 1326
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v38, v0

    const/16 v39, 0x0

    aget v39, v20, v39

    sub-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1327
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v38, v0

    move/from16 v0, v38

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1330
    :cond_c
    if-eqz v15, :cond_18

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget v38, v38, v39

    sub-int v38, v38, p4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v39, v0

    sub-int v16, v38, v39

    .line 1336
    .local v16, "popupTop":I
    const/16 v24, 0x0

    .line 1337
    .local v24, "statusBarHeight":I
    const-string/jumbo v38, "window"

    invoke-static/range {v38 .. v38}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v35

    .line 1339
    .local v35, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface/range {v35 .. v35}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v38

    if-eqz v38, :cond_d

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x105000c

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    .line 1347
    :cond_d
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_e

    .line 1348
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v38, v0

    sub-int v39, v24, v16

    sub-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1354
    .end local v16    # "popupTop":I
    .end local v24    # "statusBarHeight":I
    .end local v35    # "wm":Landroid/view/IWindowManager;
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    move/from16 v38, v0

    if-eqz v38, :cond_14

    if-eqz v34, :cond_14

    .line 1357
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v38, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v39, v0

    sub-int v31, v38, v39

    .line 1358
    .local v31, "visibleDisplayFrameWidth":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v39, v0

    sub-int v30, v38, v39

    .line 1360
    .local v30, "visibleDisplayFrameHeight":I
    const/16 v36, 0x0

    .line 1361
    .local v36, "xRootInScreen":I
    const/16 v37, 0x0

    .line 1363
    .local v37, "yRootInScreen":I
    const/16 v18, 0x0

    .line 1364
    const/4 v13, 0x0

    .line 1365
    .local v13, "left":I
    const/16 v25, 0x0

    .line 1366
    .local v25, "top":I
    const/4 v6, 0x0

    .line 1369
    .local v6, "bottom":I
    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x3

    const/16 v39, 0x3

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_19

    .line 1370
    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v36, v0

    .line 1383
    :cond_f
    :goto_4
    const/16 v38, 0x0

    aget v38, v20, v38

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v39, v0

    add-int v38, v38, v39

    add-int v18, v38, p3

    .line 1384
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v38, v0

    move/from16 v0, v18

    move/from16 v1, v38

    if-le v0, v1, :cond_10

    .line 1385
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v39, v0

    sub-int v39, v18, v39

    sub-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1388
    :cond_10
    const/16 v38, 0x0

    aget v38, v20, v38

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v39, v0

    add-int v13, v38, v39

    .line 1389
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v13, v0, :cond_11

    .line 1390
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v39, v0

    sub-int v39, v39, v13

    add-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1394
    :cond_11
    const/16 v38, 0x33

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget v38, v38, v39

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v39

    add-int v38, v38, v39

    add-int v38, v38, p4

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1397
    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x30

    const/16 v39, 0x30

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1b

    .line 1398
    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v37, v0

    .line 1405
    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1d

    .line 1406
    const/16 v38, 0x1

    aget v38, v20, v38

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v39, v0

    add-int v38, v38, v39

    add-int v6, v38, p4

    .line 1407
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-le v6, v0, :cond_13

    .line 1408
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v38, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v39, v0

    sub-int v39, v6, v39

    sub-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1409
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v38, v0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1412
    :cond_13
    const/16 v38, 0x1

    aget v38, v20, v38

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v39, v0

    add-int v25, v38, v39

    .line 1413
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v38, v0

    move/from16 v0, v25

    move/from16 v1, v38

    if-ge v0, v1, :cond_14

    .line 1414
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v38, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v39, v0

    sub-int v39, v39, v25

    add-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1431
    .end local v6    # "bottom":I
    .end local v9    # "displayFrameWidth":I
    .end local v13    # "left":I
    .end local v18    # "right":I
    .end local v20    # "rootLocation":[I
    .end local v25    # "top":I
    .end local v30    # "visibleDisplayFrameHeight":I
    .end local v31    # "visibleDisplayFrameWidth":I
    .end local v36    # "xRootInScreen":I
    .end local v37    # "yRootInScreen":I
    :cond_14
    :goto_6
    if-nez v27, :cond_15

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v38, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_15

    if-nez v15, :cond_15

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget v38, v38, v39

    add-int v38, v38, p4

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1435
    :cond_15
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v38, v0

    const/high16 v39, 0x10000000

    or-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1437
    return v15

    .line 1277
    .end local v26    # "typeCascade":Z
    .end local v27    # "typeNormal":Z
    :cond_16
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1283
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget v38, v38, v39

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v39

    add-int v38, v38, v39

    add-int v38, v38, p4

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_1

    .line 1342
    .restart local v9    # "displayFrameWidth":I
    .restart local v16    # "popupTop":I
    .restart local v18    # "right":I
    .restart local v20    # "rootLocation":[I
    .restart local v24    # "statusBarHeight":I
    .restart local v26    # "typeCascade":Z
    .restart local v27    # "typeNormal":Z
    .restart local v35    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v10

    .line 1343
    .local v10, "e":Landroid/os/RemoteException;
    const-string v38, "PopupWindow"

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1351
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v16    # "popupTop":I
    .end local v24    # "statusBarHeight":I
    .end local v35    # "wm":Landroid/view/IWindowManager;
    :cond_18
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v38, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v39, v0

    const/16 v40, 0x1

    aget v40, v20, v40

    sub-int v39, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    .line 1371
    .restart local v6    # "bottom":I
    .restart local v13    # "left":I
    .restart local v25    # "top":I
    .restart local v30    # "visibleDisplayFrameHeight":I
    .restart local v31    # "visibleDisplayFrameWidth":I
    .restart local v36    # "xRootInScreen":I
    .restart local v37    # "yRootInScreen":I
    :cond_19
    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x5

    const/16 v39, 0x5

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1a

    .line 1372
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v38, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v39

    sub-int v38, v38, v39

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v39, v0

    sub-int v36, v38, v39

    goto/16 :goto_4

    .line 1373
    :cond_1a
    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x1

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_f

    .line 1374
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v38, v0

    sub-int v38, v31, v38

    div-int/lit8 v38, v38, 0x2

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v39, v0

    add-int v36, v38, v39

    goto/16 :goto_4

    .line 1399
    :cond_1b
    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x50

    const/16 v39, 0x50

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1c

    .line 1400
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v39

    sub-int v38, v38, v39

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v39, v0

    sub-int v37, v38, v39

    goto/16 :goto_5

    .line 1401
    :cond_1c
    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x10

    const/16 v39, 0x10

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_12

    .line 1402
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v38, v0

    sub-int v38, v30, v38

    div-int/lit8 v38, v38, 0x2

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v39, v0

    add-int v37, v38, v39

    goto/16 :goto_5

    .line 1417
    :cond_1d
    const/16 v38, 0x1

    aget v38, v20, v38

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v39, v0

    add-int v38, v38, v39

    add-int v6, v38, p4

    .line 1418
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-le v6, v0, :cond_1e

    .line 1419
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v38, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v39, v0

    sub-int v39, v6, v39

    sub-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1422
    :cond_1e
    const/16 v38, 0x1

    aget v38, v20, v38

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v39, v0

    add-int v25, v38, v39

    .line 1423
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v38, v0

    move/from16 v0, v25

    move/from16 v1, v38

    if-ge v0, v1, :cond_14

    .line 1424
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v38, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v39, v0

    sub-int v39, v39, v25

    add-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_6
.end method

.method private getMultiWindowMaximumHeight(Landroid/view/View;IIZ)I
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "y"    # I
    .param p3, "height"    # I
    .param p4, "isAboveAnchor"    # Z

    .prologue
    .line 1817
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1818
    .local v0, "contentFrame":Landroid/graphics/Rect;
    move v3, p3

    .line 1819
    .local v3, "newHeight":I
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 1820
    if-nez p4, :cond_3

    .line 1821
    add-int v4, p2, p3

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_0

    .line 1822
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, p2

    .line 1823
    .local v1, "distanceToBottom":I
    move v3, v1

    .line 1831
    .end local v1    # "distanceToBottom":I
    :cond_0
    :goto_0
    if-eq v3, p3, :cond_2

    .line 1832
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 1833
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1834
    iget-object v4, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    :cond_1
    move p3, v3

    .line 1838
    .end local p3    # "height":I
    :cond_2
    return p3

    .line 1826
    .restart local p3    # "height":I
    :cond_3
    sub-int v4, p2, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_0

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-le p2, v4, :cond_0

    .line 1827
    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, p2, v4

    .line 1828
    .local v2, "distanceToTop":I
    move v3, v2

    goto :goto_0
.end method

.method private getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    .line 1442
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1482
    :cond_0
    :goto_0
    return-void

    .line 1446
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1447
    .local v0, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1449
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 1451
    .local v2, "root":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1452
    .local v5, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, 0x0

    .line 1454
    .local v6, "wlp":Landroid/view/WindowManager$LayoutParams;
    instance-of v7, v5, Landroid/view/WindowManager$LayoutParams;

    if-eqz v7, :cond_2

    move-object v6, v5

    .line 1455
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1457
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x200

    if-nez v7, :cond_5

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    .line 1460
    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1461
    .local v4, "visibleDisplayFrame":Landroid/graphics/Rect;
    iput v8, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 1462
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1463
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1465
    if-eqz v6, :cond_3

    .line 1466
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v7, v9

    .line 1467
    .local v3, "systemUiVisibility":I
    and-int/lit16 v7, v3, 0x404

    if-nez v7, :cond_3

    .line 1469
    iget-object v7, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x105000c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 1472
    .end local v3    # "systemUiVisibility":I
    :cond_3
    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 1473
    iget v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 1474
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 1475
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 1477
    iget-boolean v7, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    if-eqz v7, :cond_4

    .line 1478
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1481
    :cond_4
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1457
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "visibleDisplayFrame":Landroid/graphics/Rect;
    :cond_5
    const/4 v7, 0x1

    goto :goto_1
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1059
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1064
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    if-eqz v0, :cond_1

    .line 1065
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1069
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1070
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1071
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1072
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1018
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    .line 1019
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1023
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 1024
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1025
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 1026
    .local v0, "height":I
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 1028
    const/4 v0, -0x2

    .line 1033
    :cond_2
    new-instance v3, Landroid/widget/PopupWindow$PopupViewContainer;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/PopupWindow$PopupViewContainer;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1034
    .local v3, "popupViewContainer":Landroid/widget/PopupWindow$PopupViewContainer;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1037
    .local v2, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1038
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1040
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1044
    .end local v0    # "height":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "popupViewContainer":Landroid/widget/PopupWindow$PopupViewContainer;
    :goto_0
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 1046
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    .line 1047
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1048
    return-void

    .line 1042
    :cond_3
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    goto :goto_0

    .line 1044
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private registerForScrollChanged(Landroid/view/View;III)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 1997
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1999
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2000
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2001
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 2002
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2005
    :cond_0
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 2006
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 2007
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 2008
    return-void
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3

    .prologue
    .line 1075
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1076
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1077
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    .line 1078
    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1081
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setWindowPopup(Z)V
    .locals 0
    .param p1, "isWindowPopup"    # Z

    .prologue
    .line 1485
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    .line 1486
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .prologue
    .line 1984
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1985
    .local v1, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1986
    .local v0, "anchor":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1987
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "anchor":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 1989
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 1990
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1991
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1993
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1994
    return-void
.end method

.method private update(Landroid/view/View;ZIIZIII)V
    .locals 27
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "updateDimension"    # Z
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "gravity"    # I

    .prologue
    .line 1877
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 1971
    :cond_0
    :goto_0
    return-void

    .line 1881
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    .line 1882
    .local v16, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_b

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v5, v0, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v5, v0, :cond_b

    :cond_2
    const/4 v15, 0x1

    .line 1883
    .local v15, "needsUpdate":Z
    :goto_1
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    if-ne v5, v0, :cond_3

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v5, :cond_c

    .line 1884
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 1892
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 1894
    .local v7, "p":Landroid/view/WindowManager$LayoutParams;
    if-eqz p5, :cond_5

    .line 1895
    const/4 v5, -0x1

    move/from16 v0, p6

    if-ne v0, v5, :cond_d

    .line 1896
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 1900
    :goto_3
    const/4 v5, -0x1

    move/from16 v0, p7

    if-ne v0, v5, :cond_e

    .line 1901
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 1907
    :cond_5
    :goto_4
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    .line 1908
    .local v24, "x":I
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v25, v0

    .line 1910
    .local v25, "y":I
    if-eqz p2, :cond_f

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p8

    .line 1911
    invoke-direct/range {v5 .. v10}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1917
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v5, :cond_9

    .line 1918
    const/16 v26, 0x0

    .line 1919
    .local v26, "yRootInScreen":I
    const/16 v19, 0x0

    .line 1920
    .local v19, "top":I
    const/4 v14, 0x0

    .line 1922
    .local v14, "bottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v17

    .line 1924
    .local v17, "root":Landroid/view/View;
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v18, v0

    .line 1925
    .local v18, "rootLocation":[I
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1927
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    .line 1928
    .local v22, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/16 v23, 0x0

    .line 1930
    .local v23, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v22

    instance-of v5, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_6

    move-object/from16 v23, v22

    .line 1931
    check-cast v23, Landroid/view/WindowManager$LayoutParams;

    .line 1933
    :cond_6
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 1934
    .local v20, "visibleDisplayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1935
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v21, v5, v6

    .line 1936
    .local v21, "visibleDisplayFrameHeight":I
    if-eqz v23, :cond_9

    .line 1937
    move-object/from16 v0, v23

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-ne v5, v6, :cond_10

    .line 1938
    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v26, v0

    .line 1945
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    if-eqz v5, :cond_12

    .line 1946
    const/4 v5, 0x1

    aget v5, v18, v5

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v5, v6

    add-int v5, v5, p7

    add-int v14, v5, p4

    .line 1947
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    if-le v14, v5, :cond_8

    .line 1948
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v14, v5

    sub-int p7, p7, v5

    .line 1949
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1951
    :cond_8
    const/4 v5, 0x1

    aget v5, v18, v5

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v19, v5, v6

    .line 1952
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v19

    if-ge v0, v5, :cond_9

    .line 1953
    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v6, v6, v19

    add-int/2addr v5, v6

    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1970
    .end local v14    # "bottom":I
    .end local v17    # "root":Landroid/view/View;
    .end local v18    # "rootLocation":[I
    .end local v19    # "top":I
    .end local v20    # "visibleDisplayFrame":Landroid/graphics/Rect;
    .end local v21    # "visibleDisplayFrameHeight":I
    .end local v22    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .end local v26    # "yRootInScreen":I
    :cond_9
    :goto_7
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v0, v24

    if-ne v0, v5, :cond_a

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v0, v25

    if-eq v0, v5, :cond_14

    :cond_a
    const/4 v13, 0x1

    :goto_8
    move-object/from16 v8, p0

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_0

    .line 1882
    .end local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v15    # "needsUpdate":Z
    .end local v24    # "x":I
    .end local v25    # "y":I
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1885
    .restart local v15    # "needsUpdate":Z
    :cond_c
    if-eqz v15, :cond_4

    .line 1887
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1888
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 1889
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    goto/16 :goto_2

    .line 1898
    .restart local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupWidth:I

    goto/16 :goto_3

    .line 1903
    :cond_e
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    goto/16 :goto_4

    .line 1913
    .restart local v24    # "x":I
    .restart local v25    # "y":I
    :cond_f
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    goto/16 :goto_5

    .line 1939
    .restart local v14    # "bottom":I
    .restart local v17    # "root":Landroid/view/View;
    .restart local v18    # "rootLocation":[I
    .restart local v19    # "top":I
    .restart local v20    # "visibleDisplayFrame":Landroid/graphics/Rect;
    .restart local v21    # "visibleDisplayFrameHeight":I
    .restart local v22    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v23    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .restart local v26    # "yRootInScreen":I
    :cond_10
    move-object/from16 v0, v23

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v5, v5, 0x50

    const/16 v6, 0x50

    if-ne v5, v6, :cond_11

    .line 1940
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v26, v5, v6

    goto/16 :goto_6

    .line 1941
    :cond_11
    move-object/from16 v0, v23

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v5, v5, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_7

    .line 1942
    iget v5, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v5, v21, v5

    div-int/lit8 v5, v5, 0x2

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v26, v5, v6

    goto/16 :goto_6

    .line 1956
    :cond_12
    const/4 v5, 0x1

    aget v5, v18, v5

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v5, v6

    add-int v14, v5, p4

    .line 1957
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    if-le v14, v5, :cond_13

    .line 1958
    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v14, v6

    sub-int/2addr v5, v6

    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1961
    :cond_13
    const/4 v5, 0x1

    aget v5, v18, v5

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v19, v5, v6

    .line 1962
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v19

    if-ge v0, v5, :cond_9

    .line 1963
    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v6, v6, v19

    add-int/2addr v5, v6

    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_7

    .line 1970
    .end local v14    # "bottom":I
    .end local v17    # "root":Landroid/view/View;
    .end local v18    # "rootLocation":[I
    .end local v19    # "top":I
    .end local v20    # "visibleDisplayFrame":Landroid/graphics/Rect;
    .end local v21    # "visibleDisplayFrameHeight":I
    .end local v22    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .end local v26    # "yRootInScreen":I
    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_8
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .param p1, "aboveAnchor"    # Z

    .prologue
    .line 974
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 975
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 977
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 982
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 983
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 988
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1623
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1624
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1626
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1629
    :try_start_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1630
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1635
    :goto_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1638
    :cond_0
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1640
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 1641
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1645
    :cond_1
    return-void

    .line 1632
    :cond_2
    :try_start_1
    const-string v0, "PopupWindow"

    const-string/jumbo v1, "mPopupView\'s parent already removed. so we don\'t remove this view."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1635
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 1636
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1638
    :cond_3
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1640
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_4

    .line 1641
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1635
    :cond_4
    throw v1
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 791
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 1499
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .prologue
    .line 1514
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 21
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    .line 1535
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1536
    .local v4, "displayFrame":Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 1538
    .local v10, "isTypePenWindow":Z
    if-nez p1, :cond_1

    .line 1539
    const-string v19, "PopupWindow"

    const-string v20, "anchor is null, cannot do getMaxAvailableHeight."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    const/4 v14, -0x1

    .line 1612
    :cond_0
    :goto_0
    return v14

    .line 1543
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1547
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1548
    if-eqz p1, :cond_2

    .line 1549
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v15

    .line 1550
    .local v15, "root":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 1551
    .local v16, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/16 v17, 0x0

    .line 1553
    .local v17, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v17, v16

    .line 1554
    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    .line 1555
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-nez v19, :cond_7

    const/4 v11, 0x0

    .line 1556
    .local v11, "mIsWindowPopupOutsideBound":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/widget/PopupWindow;->setWindowPopup(Z)V

    .line 1561
    .end local v11    # "mIsWindowPopupOutsideBound":Z
    .end local v15    # "root":Landroid/view/View;
    .end local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v12

    .line 1563
    .local v12, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1564
    const/4 v10, 0x1

    .line 1570
    .end local v12    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsExtendActionBar:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    if-nez v19, :cond_4

    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v10, v0, :cond_4

    .line 1571
    const/4 v9, 0x0

    .line 1572
    .local v9, "isStatusBarVisible":Z
    const-string/jumbo v19, "window"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v18

    .line 1574
    .local v18, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/view/IWindowManager;->isStatusBarVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1580
    :goto_2
    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x105000c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1586
    .end local v9    # "isStatusBarVisible":Z
    .end local v18    # "wm":Landroid/view/IWindowManager;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 1587
    .local v2, "anchorPos":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1589
    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 1590
    .local v3, "bottomEdge":I
    if-eqz p3, :cond_5

    .line 1591
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 1592
    .local v13, "res":Landroid/content/res/Resources;
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1594
    .end local v13    # "res":Landroid/content/res/Resources;
    :cond_5
    const/16 v19, 0x1

    aget v19, v2, v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v20

    add-int v19, v19, v20

    sub-int v19, v3, v19

    sub-int v5, v19, p2

    .line 1595
    .local v5, "distanceToBottom":I
    const/16 v19, 0x1

    aget v19, v2, v19

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    add-int v6, v19, p2

    .line 1598
    .local v6, "distanceToTop":I
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1601
    .local v14, "returnedHeight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    if-nez v10, :cond_6

    .line 1602
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    div-int/lit8 v8, v19, 0x2

    .line 1603
    .local v8, "halfScreenSize":I
    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1607
    .end local v8    # "halfScreenSize":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    sub-int v14, v14, v19

    goto/16 :goto_0

    .line 1555
    .end local v2    # "anchorPos":[I
    .end local v3    # "bottomEdge":I
    .end local v5    # "distanceToBottom":I
    .end local v6    # "distanceToTop":I
    .end local v14    # "returnedHeight":I
    .restart local v15    # "root":Landroid/view/View;
    .restart local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_7
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 1575
    .end local v15    # "root":Landroid/view/View;
    .end local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .restart local v9    # "isStatusBarVisible":Z
    .restart local v18    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v7

    .line 1576
    .local v7, "e":Landroid/os/RemoteException;
    const-string v19, "PopupWindow"

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 817
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 744
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 1006
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 693
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 841
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 662
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 663
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 665
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 663
    goto :goto_0

    .line 665
    :cond_2
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 651
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 652
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    .prologue
    .line 411
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 412
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 369
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 370
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 640
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 641
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 642
    return-void

    .line 641
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 630
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 631
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 443
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 447
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setDimBehind(ZF)V
    .locals 0
    .param p1, "dimBehind"    # Z
    .param p2, "dimAmount"    # F

    .prologue
    .line 121
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    .line 122
    iput p2, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    .line 123
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    .prologue
    .line 488
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 489
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 806
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 807
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 394
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 514
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 515
    return-void
.end method

.method public setLayoutInMultiWindowScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2024
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 706
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 707
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 723
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 724
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 1653
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 1654
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 601
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 602
    return-void
.end method

.method public setShowForAllUsers(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2015
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    .line 2016
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 528
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 529
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 682
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 683
    return-void

    .line 682
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 457
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 458
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    .prologue
    .line 753
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 754
    return-void

    .line 753
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 568
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 569
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 832
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 833
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 779
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 780
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 781
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .prologue
    .line 735
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 736
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 910
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 911
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 930
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 931
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    const/4 v1, 0x1

    .line 951
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 957
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 958
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 960
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 961
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 963
    invoke-direct/range {v0 .. v5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 965
    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v0, :cond_2

    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 966
    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v0, :cond_3

    iget v0, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v0, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 968
    :cond_3
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 970
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 874
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 880
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 881
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 883
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 884
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 886
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 887
    if-nez p2, :cond_2

    .line 888
    const p2, 0x800033

    .line 890
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 891
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 892
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 893
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_3

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 894
    :cond_3
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_4

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 895
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 859
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 860
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 1664
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1689
    :cond_0
    :goto_0
    return-void

    .line 1668
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1671
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 1673
    .local v3, "update":Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    .line 1674
    .local v0, "newAnim":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 1675
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1676
    const/4 v3, 0x1

    .line 1679
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    .line 1680
    .local v1, "newFlags":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 1681
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1682
    const/4 v3, 0x1

    .line 1685
    :cond_3
    if-eqz v3, :cond_0

    .line 1686
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1687
    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1700
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1702
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1703
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1717
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1718
    return-void
.end method

.method public update(IIIIZ)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .prologue
    .line 1735
    const/4 v5, 0x0

    .line 1736
    .local v5, "isMultiWindow":Z
    iget-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1737
    .local v2, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1738
    .local v1, "anchor":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1739
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "anchor":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 1741
    .restart local v1    # "anchor":Landroid/view/View;
    :cond_0
    iget-object v11, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v11, :cond_1

    .line 1742
    iget-object v11, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    instance-of v11, v11, Landroid/app/Activity;

    if-eqz v11, :cond_1

    .line 1743
    iget-object v11, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    .line 1744
    .local v6, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    if-eqz v11, :cond_1

    .line 1746
    const/4 v5, 0x1

    .line 1750
    .end local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_1
    if-eqz v1, :cond_2

    .line 1751
    invoke-virtual {v1}, Landroid/view/View;->isMultiWindow()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v5, 0x1

    .line 1753
    :cond_2
    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    iget v11, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    .line 1754
    iget-boolean v11, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    move/from16 v0, p4

    invoke-direct {p0, v1, p2, v0, v11}, Landroid/widget/PopupWindow;->getMultiWindowMaximumHeight(Landroid/view/View;IIZ)I

    move-result p4

    .line 1757
    :cond_3
    const/4 v11, -0x1

    move/from16 v0, p3

    if-eq v0, v11, :cond_4

    .line 1758
    move/from16 v0, p3

    iput v0, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 1759
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1762
    :cond_4
    const/4 v11, -0x1

    move/from16 v0, p4

    if-eq v0, v11, :cond_5

    .line 1763
    move/from16 v0, p4

    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 1764
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1767
    :cond_5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v11, :cond_7

    .line 1813
    :cond_6
    :goto_0
    return-void

    .line 1771
    :cond_7
    iget-object v11, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager$LayoutParams;

    .line 1773
    .local v9, "p":Landroid/view/WindowManager$LayoutParams;
    move/from16 v10, p5

    .line 1775
    .local v10, "update":Z
    iget v11, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v11, :cond_e

    iget v4, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1776
    .local v4, "finalWidth":I
    :goto_1
    const/4 v11, -0x1

    move/from16 v0, p3

    if-eq v0, v11, :cond_8

    iget v11, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v11, v4, :cond_8

    .line 1777
    iput v4, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v4, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1778
    const/4 v10, 0x1

    .line 1781
    :cond_8
    iget v11, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v11, :cond_f

    iget v3, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 1782
    .local v3, "finalHeight":I
    :goto_2
    const/4 v11, -0x1

    move/from16 v0, p4

    if-eq v0, v11, :cond_9

    iget v11, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v11, v3, :cond_9

    .line 1783
    iput v3, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v3, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1784
    const/4 v10, 0x1

    .line 1787
    :cond_9
    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v11, p1, :cond_a

    .line 1788
    iput p1, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1789
    const/4 v10, 0x1

    .line 1792
    :cond_a
    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v11, p2, :cond_b

    .line 1793
    iput p2, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1794
    const/4 v10, 0x1

    .line 1797
    :cond_b
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v7

    .line 1798
    .local v7, "newAnim":I
    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v7, v11, :cond_c

    .line 1799
    iput v7, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1800
    const/4 v10, 0x1

    .line 1803
    :cond_c
    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v11}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v8

    .line 1804
    .local v8, "newFlags":I
    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v8, v11, :cond_d

    .line 1805
    iput v8, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1806
    const/4 v10, 0x1

    .line 1809
    :cond_d
    if-eqz v10, :cond_6

    .line 1810
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1811
    iget-object v11, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v12, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v11, v12, v9}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1775
    .end local v3    # "finalHeight":I
    .end local v4    # "finalWidth":I
    .end local v7    # "newAnim":I
    .end local v8    # "newFlags":I
    :cond_e
    iget v4, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    goto :goto_1

    .line 1781
    .restart local v4    # "finalWidth":I
    :cond_f
    iget v3, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 1852
    const/4 v5, 0x1

    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZIII)V

    .line 1853
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 1871
    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZIII)V

    .line 1872
    return-void
.end method
