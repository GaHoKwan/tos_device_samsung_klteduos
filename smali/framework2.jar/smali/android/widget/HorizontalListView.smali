.class public Landroid/widget/HorizontalListView;
.super Landroid/widget/AbsHorizontalListView;
.source "HorizontalListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HorizontalListView$ArrowScrollFocusResult;,
        Landroid/widget/HorizontalListView$FocusSelector;,
        Landroid/widget/HorizontalListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Landroid/widget/HorizontalListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 148
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 114
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 128
    iput-boolean v9, p0, Landroid/widget/HorizontalListView;->mAreAllItemsSelectable:Z

    .line 130
    iput-boolean v8, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    .line 133
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 138
    new-instance v6, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;-><init>(Landroid/widget/HorizontalListView$1;)V

    iput-object v6, p0, Landroid/widget/HorizontalListView;->mArrowScrollFocusResult:Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    .line 154
    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 157
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 159
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 160
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 165
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 167
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 172
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 173
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :cond_2
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 178
    .local v4, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 179
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 183
    :cond_3
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 185
    .local v2, "dividerHeight":I
    if-eqz v2, :cond_4

    .line 186
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->setDividerHeight(I)V

    .line 189
    :cond_4
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/HorizontalListView;->mHeaderDividersEnabled:Z

    .line 190
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/HorizontalListView;->mFooterDividersEnabled:Z

    .line 192
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    return-void
.end method

.method static synthetic access$200(Landroid/widget/HorizontalListView;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private addViewLeftSide(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 3115
    add-int/lit8 v2, p2, -0x1

    .line 3116
    .local v2, "abovePosition":I
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/AbsHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3117
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v5, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3118
    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Landroid/widget/HorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3120
    return-object v1
.end method

.method private addViewRightSide(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 3124
    add-int/lit8 v2, p2, 0x1

    .line 3125
    .local v2, "belowPosition":I
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/AbsHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3126
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3127
    .local v3, "edgeOfNewChild":I
    const/4 v4, 0x1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/HorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3129
    return-object v1
.end method

.method private adjustViewsLeftOrRight()V
    .locals 6

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 211
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 214
    iget-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 217
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 218
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v4

    .line 219
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 222
    iget v3, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 224
    :cond_0
    if-gez v2, :cond_1

    .line 226
    const/4 v2, 0x0

    .line 244
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 245
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->twOffsetChildrenLeftAndRight(I)V

    .line 248
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    .line 230
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 231
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 233
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 236
    iget v3, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 239
    :cond_4
    if-lez v2, :cond_1

    .line 240
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .prologue
    .line 2724
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v5, v10, v11

    .line 2725
    .local v5, "listRight":I
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    .line 2727
    .local v4, "listLeft":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 2729
    .local v7, "numChildren":I
    const/16 v10, 0x42

    if-ne p1, v10, :cond_6

    .line 2730
    add-int/lit8 v3, v7, -0x1

    .line 2731
    .local v3, "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2732
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2734
    :cond_0
    :goto_0
    if-gt v7, v3, :cond_1

    .line 2736
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v10, v11}, Landroid/widget/HorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    .line 2737
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2739
    :cond_1
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2740
    .local v8, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2742
    .local v9, "viewToMakeVisible":Landroid/view/View;
    move v2, v5

    .line 2743
    .local v2, "goalRight":I
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_2

    .line 2744
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v2, v10

    .line 2747
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    if-gt v10, v2, :cond_3

    .line 2749
    const/4 v10, 0x0

    .line 2801
    .end local v2    # "goalRight":I
    :goto_1
    return v10

    .line 2752
    .restart local v2    # "goalRight":I
    :cond_3
    const/4 v10, -0x1

    if-eq p2, v10, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v2, v10

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_4

    .line 2755
    const/4 v10, 0x0

    goto :goto_1

    .line 2758
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v0, v10, v2

    .line 2760
    .local v0, "amountToScroll":I
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v10, v11, :cond_5

    .line 2762
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v6, v10, v5

    .line 2763
    .local v6, "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2766
    .end local v6    # "max":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1

    .line 2768
    .end local v0    # "amountToScroll":I
    .end local v2    # "goalRight":I
    .end local v3    # "indexToMakeVisible":I
    .end local v8    # "positionToMakeVisible":I
    .end local v9    # "viewToMakeVisible":Landroid/view/View;
    :cond_6
    const/4 v3, 0x0

    .line 2769
    .restart local v3    # "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_7

    .line 2770
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2772
    :cond_7
    :goto_2
    if-gez v3, :cond_8

    .line 2774
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v10, v11}, Landroid/widget/HorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    .line 2775
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2776
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    goto :goto_2

    .line 2778
    :cond_8
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2779
    .restart local v8    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2780
    .restart local v9    # "viewToMakeVisible":Landroid/view/View;
    move v1, v4

    .line 2781
    .local v1, "goalLeft":I
    if-lez v8, :cond_9

    .line 2782
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v1, v10

    .line 2784
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v10, v1, :cond_a

    .line 2786
    const/4 v10, 0x0

    goto :goto_1

    .line 2789
    :cond_a
    const/4 v10, -0x1

    if-eq p2, v10, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_b

    .line 2792
    const/4 v10, 0x0

    goto :goto_1

    .line 2795
    :cond_b
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v0, v1, v10

    .line 2796
    .restart local v0    # "amountToScroll":I
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v10, :cond_c

    .line 2798
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v6, v4, v10

    .line 2799
    .restart local v6    # "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2801
    .end local v6    # "max":I
    :cond_c
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_1
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .prologue
    .line 2993
    const/4 v0, 0x0

    .line 2994
    .local v0, "amountToScroll":I
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2995
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2996
    const/16 v2, 0x11

    if-ne p1, v2, :cond_1

    .line 2997
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    .line 2998
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 2999
    if-lez p3, :cond_0

    .line 3000
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3012
    :cond_0
    :goto_0
    return v0

    .line 3004
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    .line 3005
    .local v1, "listRight":I
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-le v2, v1, :cond_0

    .line 3006
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v1

    .line 3007
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 3008
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Landroid/widget/HorizontalListView$ArrowScrollFocusResult;
    .locals 17
    .param p1, "direction"    # I

    .prologue
    .line 2891
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v12

    .line 2893
    .local v12, "selectedView":Landroid/view/View;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2894
    invoke-virtual {v12}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 2895
    .local v8, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2920
    .end local v8    # "oldFocus":Landroid/view/View;
    .local v7, "newFocus":Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    .line 2921
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/HorizontalListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 2925
    .local v9, "positionOfNewFocus":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    .line 2926
    invoke-direct/range {p0 .. p1}, Landroid/widget/HorizontalListView;->lookForSelectablePositionOnScreen(I)I

    move-result v11

    .line 2927
    .local v11, "selectablePosition":I
    const/4 v14, -0x1

    if-eq v11, v14, :cond_a

    const/16 v14, 0x42

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    if-lt v11, v9, :cond_1

    :cond_0
    const/16 v14, 0x11

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-le v11, v9, :cond_a

    .line 2930
    :cond_1
    const/4 v14, 0x0

    .line 2952
    .end local v9    # "positionOfNewFocus":I
    .end local v11    # "selectablePosition":I
    :goto_1
    return-object v14

    .line 2897
    .end local v7    # "newFocus":Landroid/view/View;
    :cond_2
    const/16 v14, 0x42

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 2898
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v14, :cond_3

    const/4 v3, 0x1

    .line 2899
    .local v3, "leftFadingEdgeShowing":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_3
    add-int v4, v15, v14

    .line 2901
    .local v4, "listLeft":I
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    if-le v14, v4, :cond_5

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 2905
    .local v13, "xSearchPoint":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2917
    .end local v3    # "leftFadingEdgeShowing":Z
    .end local v4    # "listLeft":I
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "newFocus":Landroid/view/View;
    goto :goto_0

    .line 2898
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v13    # "xSearchPoint":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 2899
    .restart local v3    # "leftFadingEdgeShowing":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .restart local v4    # "listLeft":I
    :cond_5
    move v13, v4

    .line 2901
    goto :goto_4

    .line 2907
    .end local v3    # "leftFadingEdgeShowing":Z
    .end local v4    # "listLeft":I
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v14, v15, :cond_7

    const/4 v10, 0x1

    .line 2909
    .local v10, "rightFadingEdgeShowing":Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int v15, v14, v15

    if-eqz v10, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_7
    sub-int v5, v15, v14

    .line 2911
    .local v5, "listRight":I
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v14

    if-ge v14, v5, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    .line 2915
    .restart local v13    # "xSearchPoint":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 2907
    .end local v5    # "listRight":I
    .end local v10    # "rightFadingEdgeShowing":Z
    .end local v13    # "xSearchPoint":I
    :cond_7
    const/4 v10, 0x0

    goto :goto_6

    .line 2909
    .restart local v10    # "rightFadingEdgeShowing":Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    .restart local v5    # "listRight":I
    :cond_9
    move v13, v5

    .line 2911
    goto :goto_8

    .line 2934
    .end local v5    # "listRight":I
    .end local v10    # "rightFadingEdgeShowing":Z
    .restart local v7    # "newFocus":Landroid/view/View;
    .restart local v9    # "positionOfNewFocus":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Landroid/widget/HorizontalListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v2

    .line 2936
    .local v2, "focusScroll":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getMaxScrollAmount()I

    move-result v6

    .line 2937
    .local v6, "maxScrollAmount":I
    if-ge v2, v6, :cond_b

    .line 2939
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2940
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mArrowScrollFocusResult:Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v2}, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;->populate(II)V

    .line 2941
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mArrowScrollFocusResult:Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 2942
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/HorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    .line 2947
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2948
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mArrowScrollFocusResult:Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;->populate(II)V

    .line 2949
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mArrowScrollFocusResult:Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 2952
    .end local v2    # "focusScroll":I
    .end local v6    # "maxScrollAmount":I
    .end local v9    # "positionOfNewFocus":I
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 12
    .param p1, "direction"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v11, -0x1

    const/4 v9, 0x0

    .line 2504
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 2582
    :cond_0
    :goto_0
    return v9

    .line 2508
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2509
    .local v6, "selectedView":Landroid/view/View;
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 2511
    .local v5, "selectedPos":I
    invoke-direct {p0, v6, v5, p1}, Landroid/widget/HorizontalListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v4

    .line 2512
    .local v4, "nextSelectedPosition":I
    invoke-direct {p0, p1, v4}, Landroid/widget/HorizontalListView;->amountToScroll(II)I

    move-result v0

    .line 2515
    .local v0, "amountToScroll":I
    iget-boolean v7, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_c

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->arrowScrollFocused(I)Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2516
    .local v1, "focusResult":Landroid/widget/HorizontalListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_2

    .line 2517
    invoke-virtual {v1}, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2518
    invoke-virtual {v1}, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2521
    :cond_2
    if-eqz v1, :cond_d

    move v3, v8

    .line 2522
    .local v3, "needToRedraw":Z
    :goto_2
    if-eq v4, v11, :cond_4

    .line 2523
    if-eqz v1, :cond_e

    move v7, v8

    :goto_3
    invoke-direct {p0, v6, p1, v4, v7}, Landroid/widget/HorizontalListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2524
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2525
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2526
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2527
    move v5, v4

    .line 2528
    iget-boolean v7, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    .line 2531
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2532
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2533
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2536
    .end local v2    # "focused":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 2537
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 2540
    :cond_4
    if-lez v0, :cond_6

    .line 2542
    const-string v7, "eng"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2543
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->logActivity()V

    .line 2545
    :cond_5
    const/16 v7, 0x11

    if-ne p1, v7, :cond_f

    .end local v0    # "amountToScroll":I
    :goto_4
    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->scrollListItemsBy(I)V

    .line 2546
    const/4 v3, 0x1

    .line 2551
    :cond_6
    iget-boolean v7, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_8

    if-nez v1, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2553
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2554
    .restart local v2    # "focused":Landroid/view/View;
    invoke-direct {p0, v2, p0}, Landroid/widget/HorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-direct {p0, v2}, Landroid/widget/HorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_8

    .line 2555
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2560
    .end local v2    # "focused":Landroid/view/View;
    :cond_8
    if-ne v4, v11, :cond_9

    if-eqz v6, :cond_9

    invoke-direct {p0, v6, p0}, Landroid/widget/HorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 2562
    const/4 v6, 0x0

    .line 2563
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->hideSelector()V

    .line 2567
    iput v11, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 2570
    :cond_9
    if-eqz v3, :cond_0

    .line 2571
    if-eqz v6, :cond_a

    .line 2572
    invoke-virtual {p0, v5, v6}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 2573
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    .line 2575
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_b

    .line 2576
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2578
    :cond_b
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V

    move v9, v8

    .line 2579
    goto/16 :goto_0

    .line 2515
    .end local v1    # "focusResult":Landroid/widget/HorizontalListView$ArrowScrollFocusResult;
    .end local v3    # "needToRedraw":Z
    .restart local v0    # "amountToScroll":I
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1    # "focusResult":Landroid/widget/HorizontalListView$ArrowScrollFocusResult;
    :cond_d
    move v3, v9

    .line 2521
    goto/16 :goto_2

    .restart local v3    # "needToRedraw":Z
    :cond_e
    move v7, v9

    .line 2523
    goto/16 :goto_3

    .line 2545
    :cond_f
    neg-int v0, v0

    goto :goto_4
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 533
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/HorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 534
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 536
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 537
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/HorizontalListView$FixedViewInfo;

    iget-object v0, v4, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 538
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 539
    .local v3, "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 540
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->recycledHeaderFooter:Z

    .line 536
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 544
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x42

    const/16 v6, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2137
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v4, v3

    .line 2288
    :cond_1
    :goto_0
    return v4

    .line 2141
    :cond_2
    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v5, :cond_3

    .line 2142
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->layoutChildren()V

    .line 2145
    :cond_3
    const/4 v2, 0x0

    .line 2146
    .local v2, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2148
    .local v0, "action":I
    if-eq v0, v4, :cond_4

    .line 2149
    sparse-switch p1, :sswitch_data_0

    .line 2269
    :cond_4
    :goto_1
    if-nez v2, :cond_1

    .line 2273
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/AbsHorizontalListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2277
    packed-switch v0, :pswitch_data_0

    move v4, v3

    .line 2288
    goto :goto_0

    .line 2151
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2152
    :cond_5
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    .line 2153
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2154
    if-nez v2, :cond_4

    move v1, p2

    .line 2155
    .end local p2    # "count":I
    .local v1, "count":I
    :goto_2
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_4

    .line 2156
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2157
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    .line 2163
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_6
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2164
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    move v2, v4

    :goto_3
    goto :goto_1

    :cond_8
    move v2, v3

    goto :goto_3

    .line 2169
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2170
    :cond_9
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    .line 2171
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2172
    if-nez v2, :cond_4

    move v1, p2

    .line 2173
    .end local p2    # "count":I
    .restart local v1    # "count":I
    :goto_4
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_4

    .line 2174
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2175
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_4

    .line 2181
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_a
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2182
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    move v2, v4

    :goto_5
    goto :goto_1

    :cond_c
    move v2, v3

    goto :goto_5

    .line 2187
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2188
    :cond_d
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    .line 2189
    const/16 v5, 0x21

    invoke-direct {p0, v5}, Landroid/widget/HorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    .line 2194
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2195
    :cond_e
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    .line 2196
    const/16 v5, 0x82

    invoke-direct {p0, v5}, Landroid/widget/HorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    .line 2202
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2203
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2204
    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 2206
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->keyPressed()V

    .line 2207
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2213
    :sswitch_5
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_f

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2214
    :cond_f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2215
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_10
    move v2, v4

    .line 2219
    :cond_11
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_12
    move v2, v3

    .line 2215
    goto :goto_6

    .line 2216
    :cond_13
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2217
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_14
    move v2, v4

    :goto_7
    goto :goto_6

    :cond_15
    move v2, v3

    goto :goto_7

    .line 2224
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2225
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_16
    move v2, v4

    :goto_8
    goto/16 :goto_1

    :cond_17
    move v2, v3

    goto :goto_8

    .line 2226
    :cond_18
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2227
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    :cond_19
    move v2, v4

    :goto_9
    goto/16 :goto_1

    :cond_1a
    move v2, v3

    goto :goto_9

    .line 2232
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2233
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_1b
    move v2, v4

    :goto_a
    goto/16 :goto_1

    :cond_1c
    move v2, v3

    goto :goto_a

    .line 2234
    :cond_1d
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2235
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1e
    move v2, v4

    :goto_b
    goto/16 :goto_1

    :cond_1f
    move v2, v3

    goto :goto_b

    .line 2240
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2241
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_21

    :cond_20
    move v2, v4

    :goto_c
    goto/16 :goto_1

    :cond_21
    move v2, v3

    goto :goto_c

    .line 2246
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2247
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_22

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_23

    :cond_22
    move v2, v4

    :goto_d
    goto/16 :goto_1

    :cond_23
    move v2, v3

    goto :goto_d

    .line 2279
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsHorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2282
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsHorizontalListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2285
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2149
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 2277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .param p1, "childCount"    # I

    .prologue
    .line 1395
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v4, v7, -0x1

    .line 1396
    .local v4, "lastPosition":I
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_2

    if-lez p1, :cond_2

    .line 1399
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1402
    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1405
    .local v5, "lastRight":I
    iget v7, p0, Landroid/view/View;->mRight:I

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v0, v7, v8

    .line 1409
    .local v0, "end":I
    sub-int v6, v0, v5

    .line 1410
    .local v6, "rightOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1411
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1415
    .local v2, "firstLeft":I
    if-lez v6, :cond_2

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v2, v7, :cond_2

    .line 1416
    :cond_0
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1418
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1421
    :cond_1
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->twOffsetChildrenLeftAndRight(I)V

    .line 1422
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1425
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1427
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    .line 1432
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstLeft":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "lastRight":I
    .end local v6    # "rightOffset":I
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .param p1, "childCount"    # I

    .prologue
    .line 1444
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1447
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1450
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1453
    .local v2, "firstLeft":I
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->left:I

    .line 1456
    .local v7, "start":I
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    .line 1460
    .local v0, "end":I
    sub-int v6, v2, v7

    .line 1461
    .local v6, "leftOffset":I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1462
    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1463
    .local v5, "lastRight":I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v4, v8, -0x1

    .line 1467
    .local v4, "lastPosition":I
    if-lez v6, :cond_2

    .line 1468
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v4, v8, :cond_0

    if-le v5, v0, :cond_3

    .line 1469
    :cond_0
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_1

    .line 1471
    sub-int v8, v5, v0

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1474
    :cond_1
    neg-int v8, v6

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->twOffsetChildrenLeftAndRight(I)V

    .line 1475
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_2

    .line 1478
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1480
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    .line 1487
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstLeft":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v4    # "lastPosition":I
    .end local v5    # "lastRight":I
    .end local v6    # "leftOffset":I
    .end local v7    # "start":I
    :cond_2
    :goto_0
    return-void

    .line 1482
    .restart local v0    # "end":I
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v2    # "firstLeft":I
    .restart local v3    # "lastChild":Landroid/view/View;
    .restart local v4    # "lastPosition":I
    .restart local v5    # "lastRight":I
    .restart local v6    # "leftOffset":I
    .restart local v7    # "start":I
    :cond_3
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_2

    .line 1483
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    .line 3023
    const/4 v0, 0x0

    .line 3024
    .local v0, "distance":I
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3025
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3026
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    .line 3027
    .local v1, "listRight":I
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_1

    .line 3028
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 3032
    :cond_0
    :goto_0
    return v0

    .line 3029
    :cond_1
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v2, v1, :cond_0

    .line 3030
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillFromLeft(I)Landroid/view/View;
    .locals 2
    .param p1, "nextLeft"    # I

    .prologue
    .line 758
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 759
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 760
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 761
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 763
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .param p1, "childrenLeft"    # I
    .param p2, "childrenRight"    # I

    .prologue
    const/4 v3, 0x1

    .line 778
    sub-int v8, p2, p1

    .line 780
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->reconcileSelectedPosition()I

    move-result v1

    .line 782
    .local v1, "position":I
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 784
    .local v6, "sel":Landroid/view/View;
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 786
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 787
    .local v7, "selWidth":I
    if-gt v7, v8, :cond_0

    .line 788
    sub-int v0, v8, v7

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v6, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 791
    :cond_0
    invoke-direct {p0, v6, v1}, Landroid/widget/HorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    .line 793
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 794
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->correctTooHigh(I)V

    .line 799
    :goto_0
    return-object v6

    .line 796
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedLeft"    # I
    .param p2, "childrenLeft"    # I
    .param p3, "childrenRight"    # I

    .prologue
    .line 834
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v7

    .line 835
    .local v7, "fadingEdgeLength":I
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 839
    .local v2, "selectedPosition":I
    move/from16 v0, p2

    invoke-direct {p0, v0, v7, v2}, Landroid/widget/HorizontalListView;->getLeftSelectionPixel(III)I

    move-result v8

    .line 841
    .local v8, "leftSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v7, v2}, Landroid/widget/HorizontalListView;->getRightSelectionPixel(III)I

    move-result v10

    .line 844
    .local v10, "rightSelectionPixel":I
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v11

    .line 848
    .local v11, "sel":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v10, :cond_1

    .line 851
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v12, v1, v8

    .line 855
    .local v12, "spaceLeft":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v13, v1, v10

    .line 856
    .local v13, "spaceRight":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 859
    .local v9, "offset":I
    neg-int v1, v9

    invoke-virtual {v11, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 875
    .end local v9    # "offset":I
    .end local v12    # "spaceLeft":I
    .end local v13    # "spaceRight":I
    :cond_0
    :goto_0
    invoke-direct {p0, v11, v2}, Landroid/widget/HorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    .line 877
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 878
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/HorizontalListView;->correctTooHigh(I)V

    .line 883
    :goto_1
    return-object v11

    .line 860
    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v8, :cond_0

    .line 863
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v12, v8, v1

    .line 867
    .restart local v12    # "spaceLeft":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v13, v10, v1

    .line 868
    .restart local v13    # "spaceRight":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 871
    .restart local v9    # "offset":I
    invoke-virtual {v11, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 880
    .end local v9    # "offset":I
    .end local v12    # "spaceLeft":I
    .end local v13    # "spaceRight":I
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/HorizontalListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillLeft(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextRight"    # I

    .prologue
    const/4 v3, 0x0

    .line 723
    const/4 v8, 0x0

    .line 725
    .local v8, "selectedView":Landroid/view/View;
    const/4 v7, 0x0

    .line 726
    .local v7, "end":I
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 727
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 730
    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    if-ltz p1, :cond_3

    .line 732
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 733
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 735
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 736
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 737
    if-eqz v5, :cond_1

    .line 738
    move-object v8, v6

    .line 741
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 742
    goto :goto_0

    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    move v5, v3

    .line 732
    goto :goto_1

    .line 744
    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 745
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsHorizontalListView;->setVisibleRangeHint(II)V

    .line 746
    return-object v8
.end method

.method private fillLeftAndRight(Landroid/view/View;I)V
    .locals 3
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 810
    iget v0, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .line 811
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 812
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 813
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    .line 814
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    .line 820
    :goto_0
    return-void

    .line 816
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    .line 817
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    .line 818
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillRight(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextLeft"    # I

    .prologue
    const/4 v3, 0x1

    .line 687
    const/4 v8, 0x0

    .line 689
    .local v8, "selectedView":Landroid/view/View;
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int v7, v0, v1

    .line 690
    .local v7, "end":I
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 691
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    .line 694
    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge p1, v0, :cond_3

    .line 696
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    move v5, v3

    .line 697
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 699
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 700
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 701
    if-eqz v5, :cond_1

    .line 702
    move-object v8, v6

    .line 705
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 706
    goto :goto_0

    .line 696
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 708
    :cond_3
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsHorizontalListView;->setVisibleRangeHint(II)V

    .line 709
    return-object v8
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "left"    # I

    .prologue
    const/4 v3, 0x1

    .line 1347
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1348
    .local v5, "tempIsSelected":Z
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1350
    .local v10, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1355
    iget v7, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .line 1356
    .local v7, "dividerHeight":I
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1357
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v8

    .line 1359
    .local v8, "leftSide":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    .line 1360
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v9

    .line 1361
    .local v9, "rightSide":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1362
    .local v6, "childCount":I
    if-lez v6, :cond_0

    .line 1363
    invoke-direct {p0, v6}, Landroid/widget/HorizontalListView;->correctTooHigh(I)V

    .line 1376
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1381
    .end local v10    # "temp":Landroid/view/View;
    :goto_2
    return-object v10

    .line 1347
    .end local v5    # "tempIsSelected":Z
    .end local v6    # "childCount":I
    .end local v7    # "dividerHeight":I
    .end local v8    # "leftSide":Landroid/view/View;
    .end local v9    # "rightSide":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1366
    .restart local v5    # "tempIsSelected":Z
    .restart local v7    # "dividerHeight":I
    .restart local v10    # "temp":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v9

    .line 1368
    .restart local v9    # "rightSide":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    .line 1369
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v8

    .line 1370
    .restart local v8    # "leftSide":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1371
    .restart local v6    # "childCount":I
    if-lez v6, :cond_0

    .line 1372
    invoke-direct {p0, v6}, Landroid/widget/HorizontalListView;->correctTooLow(I)V

    goto :goto_1

    .line 1378
    :cond_3
    if-eqz v8, :cond_4

    move-object v10, v8

    .line 1379
    goto :goto_2

    :cond_4
    move-object v10, v9

    .line 1381
    goto :goto_2
.end method

.method private getAccessibilityFocusedChild()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1747
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 1748
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-nez v2, :cond_1

    move-object v0, v3

    .line 1767
    :cond_0
    :goto_0
    return-object v0

    .line 1752
    :cond_1
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    .line 1753
    .local v0, "focusedView":Landroid/view/View;
    if-nez v0, :cond_2

    move-object v0, v3

    .line 1754
    goto :goto_0

    .line 1757
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1758
    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_1
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_3

    if-eq v1, p0, :cond_3

    move-object v0, v1

    .line 1759
    check-cast v0, Landroid/view/View;

    .line 1760
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    .line 1763
    :cond_3
    instance-of v4, v1, Landroid/view/View;

    if-nez v4, :cond_0

    move-object v0, v3

    .line 1764
    goto :goto_0
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2708
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getLeftSelectionPixel(III)I
    .locals 1
    .param p1, "childrenLeft"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 913
    move v0, p1

    .line 914
    .local v0, "leftSelectionPixel":I
    if-lez p3, :cond_0

    .line 915
    add-int/2addr v0, p2

    .line 917
    :cond_0
    return v0
.end method

.method private getRightSelectionPixel(III)I
    .locals 2
    .param p1, "childrenRight"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 896
    move v0, p1

    .line 897
    .local v0, "rightSelectionPixel":I
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 898
    sub-int/2addr v0, p2

    .line 900
    :cond_0
    return v0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .prologue
    .line 2600
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2601
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2611
    :cond_0
    const/4 v0, 0x0

    .line 2612
    .local v0, "leftSelected":Z
    iget v8, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v7, v8, v9

    .line 2613
    .local v7, "selectedIndex":I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p3, v8

    .line 2614
    .local v3, "nextSelectedIndex":I
    const/16 v8, 0x11

    if-ne p2, v8, :cond_3

    .line 2615
    move v2, v3

    .line 2616
    .local v2, "leftViewIndex":I
    move v6, v7

    .line 2617
    .local v6, "rightViewIndex":I
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2618
    .local v1, "leftView":Landroid/view/View;
    move-object v5, p1

    .line 2619
    .local v5, "rightView":Landroid/view/View;
    const/4 v0, 0x1

    .line 2627
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 2630
    .local v4, "numChildren":I
    if-eqz v1, :cond_1

    .line 2631
    if-nez p4, :cond_4

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2632
    invoke-direct {p0, v1, v2, v4}, Landroid/widget/HorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    .line 2636
    :cond_1
    if-eqz v5, :cond_2

    .line 2637
    if-nez p4, :cond_5

    if-nez v0, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v5, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2638
    invoke-direct {p0, v5, v6, v4}, Landroid/widget/HorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    .line 2640
    :cond_2
    return-void

    .line 2621
    .end local v1    # "leftView":Landroid/view/View;
    .end local v2    # "leftViewIndex":I
    .end local v4    # "numChildren":I
    .end local v5    # "rightView":Landroid/view/View;
    .end local v6    # "rightViewIndex":I
    :cond_3
    move v2, v7

    .line 2622
    .restart local v2    # "leftViewIndex":I
    move v6, v3

    .line 2623
    .restart local v6    # "rightViewIndex":I
    move-object v1, p1

    .line 2624
    .restart local v1    # "leftView":Landroid/view/View;
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "rightView":Landroid/view/View;
    goto :goto_0

    .line 2631
    .restart local v4    # "numChildren":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 2637
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private handleVerticalFocusWithinListItem(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    .line 2393
    const/16 v5, 0x21

    if-eq p1, v5, :cond_0

    const/16 v5, 0x82

    if-eq p1, v5, :cond_0

    .line 2394
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2398
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 2399
    .local v3, "numChildren":I
    iget-boolean v5, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2400
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2401
    .local v4, "selectedView":Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 2404
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2405
    .local v0, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "selectedView":Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2407
    .local v2, "nextFocus":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2409
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2410
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2411
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2412
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2413
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/View;->playSoundEffect(I)V

    .line 2414
    const/4 v5, 0x1

    .line 2428
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :goto_0
    return v5

    .line 2421
    .restart local v0    # "currentFocus":Landroid/view/View;
    .restart local v2    # "nextFocus":Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2423
    .local v1, "globalNextFocus":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2424
    invoke-direct {p0, v1, p0}, Landroid/widget/HorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 2428
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v1    # "globalNextFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 2975
    if-ne p1, p2, :cond_1

    .line 2980
    :cond_0
    :goto_0
    return v1

    .line 2979
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2980
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/HorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logActivity()V
    .locals 1

    .prologue
    .line 3888
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Landroid/widget/HorizontalListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    .line 3889
    return-void
.end method

.method private logActivity(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/View;

    .prologue
    .line 3823
    const-string/jumbo v3, "service.gate.enabled"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3885
    :cond_0
    :goto_0
    return-void

    .line 3829
    :cond_1
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v2, p1

    .line 3830
    check-cast v2, Landroid/view/ViewGroup;

    .line 3831
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3832
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 3833
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/widget/HorizontalListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    .line 3832
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3837
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_2
    instance-of v3, p1, Landroid/widget/CheckBox;

    if-eqz v3, :cond_3

    .line 3839
    const-string v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "CHECKED"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    :cond_3
    instance-of v3, p1, Landroid/widget/RadioButton;

    if-eqz v3, :cond_4

    .line 3845
    const-string v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "CHECKED"

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    :cond_4
    if-eqz p2, :cond_5

    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    move-object v3, p1

    .line 3851
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 3852
    const-string v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>MENUTEXT:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3857
    :cond_5
    instance-of v3, p1, Landroid/widget/AbsHorizontalListView;

    if-eqz v3, :cond_0

    .line 3858
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Landroid/widget/HorizontalListView$1;

    invoke-direct {v4, p0, p1}, Landroid/widget/HorizontalListView$1;-><init>(Landroid/widget/HorizontalListView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_0

    .line 3839
    :cond_6
    const-string v3, "UNCHECKED"

    goto/16 :goto_2

    .line 3845
    :cond_7
    const-string v3, "UNCHECKED"

    goto :goto_3
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v6, -0x1

    .line 2838
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2839
    .local v1, "firstPosition":I
    const/16 v7, 0x42

    if-ne p1, v7, :cond_5

    .line 2840
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_1

    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 2843
    .local v5, "startPos":I
    :goto_0
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_2

    move v4, v6

    .line 2878
    :cond_0
    :goto_1
    return v4

    .end local v5    # "startPos":I
    :cond_1
    move v5, v1

    .line 2840
    goto :goto_0

    .line 2846
    .restart local v5    # "startPos":I
    :cond_2
    if-ge v5, v1, :cond_3

    .line 2847
    move v5, v1

    .line 2850
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    .line 2851
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2852
    .local v0, "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, "pos":I
    :goto_2
    if-gt v4, v3, :cond_b

    .line 2853
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2852
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2859
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "pos":I
    .end local v5    # "startPos":I
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 2860
    .local v2, "last":I
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 2863
    .restart local v5    # "startPos":I
    :goto_3
    if-ltz v5, :cond_6

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_8

    :cond_6
    move v4, v6

    .line 2864
    goto :goto_1

    .line 2860
    .end local v5    # "startPos":I
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    .line 2866
    .restart local v5    # "startPos":I
    :cond_8
    if-le v5, v2, :cond_9

    .line 2867
    move v5, v2

    .line 2870
    :cond_9
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2871
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4    # "pos":I
    :goto_4
    if-lt v4, v1, :cond_b

    .line 2872
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2871
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2    # "last":I
    :cond_b
    move v4, v6

    .line 2878
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "x"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenTop"    # I
    .param p5, "selected"    # Z

    .prologue
    .line 1788
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1790
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1791
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1794
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/HorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1808
    .end local v1    # "child":Landroid/view/View;
    .local v8, "child":Landroid/view/View;
    :goto_0
    return-object v8

    .line 1801
    .end local v8    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1805
    .restart local v1    # "child":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1806
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/HorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    :cond_1
    move-object v8, v1

    .line 1808
    .end local v1    # "child":Landroid/view/View;
    .restart local v8    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustRight(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .prologue
    .line 2650
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2651
    .local v1, "oldWidth":I
    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->measureItem(Landroid/view/View;)V

    .line 2652
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 2654
    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2657
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v2, v3, v1

    .line 2658
    .local v2, "widthDelta":I
    add-int/lit8 v0, p2, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 2659
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2658
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2662
    .end local v0    # "i":I
    .end local v2    # "widthDelta":I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 2670
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2671
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2672
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2677
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mHeightMeasureSpec:I

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 2679
    .local v0, "childHeightSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2681
    .local v2, "lpWidth":I
    if-lez v2, :cond_1

    .line 2682
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2686
    .local v1, "childWidthSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2687
    return-void

    .line 2684
    .end local v1    # "childWidthSpec":I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childWidthSpec":I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 1194
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 1195
    .local v3, "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1196
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    check-cast v3, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 1197
    .restart local v3    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1199
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    .line 1200
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->forceAdd:Z

    .line 1202
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1204
    .local v0, "childHeightSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1206
    .local v2, "lpWidth":I
    if-lez v2, :cond_1

    .line 1207
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1211
    .local v1, "childWidthSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1212
    return-void

    .line 1209
    .end local v1    # "childWidthSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childWidthSpec":I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 20
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenLeft"    # I
    .param p5, "childrenRight"    # I

    .prologue
    .line 959
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v10

    .line 960
    .local v10, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 964
    .local v17, "selectedPosition":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/HorizontalListView;->getLeftSelectionPixel(III)I

    move-result v12

    .line 966
    .local v12, "leftSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/HorizontalListView;->getRightSelectionPixel(III)I

    move-result v15

    .line 969
    .local v15, "rightSelectionPixel":I
    if-lez p3, :cond_2

    .line 991
    add-int/lit8 v4, v17, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 994
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .line 997
    .local v9, "dividerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int v5, v3, v9

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1001
    .local v16, "sel":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v15, :cond_0

    .line 1004
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v18, v3, v12

    .line 1007
    .local v18, "spaceLeft":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v19, v3, v15

    .line 1010
    .local v19, "spaceRight":I
    sub-int v3, p5, p4

    div-int/lit8 v11, v3, 0x2

    .line 1011
    .local v11, "halfHorizontalSpace":I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1012
    .local v14, "offset":I
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1015
    neg-int v3, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1017
    neg-int v3, v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1021
    .end local v11    # "halfHorizontalSpace":I
    .end local v14    # "offset":I
    .end local v18    # "spaceLeft":I
    .end local v19    # "spaceRight":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1022
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1023
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    .line 1024
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1105
    .end local v9    # "dividerHeight":I
    :goto_0
    return-object v16

    .line 1026
    .restart local v9    # "dividerHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1027
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    .line 1028
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    goto :goto_0

    .line 1030
    .end local v9    # "dividerHeight":I
    .end local v16    # "sel":Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1051
    if-eqz p2, :cond_4

    .line 1053
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1063
    .restart local v16    # "sel":Landroid/view/View;
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v12, :cond_3

    .line 1065
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v18, v12, v3

    .line 1068
    .restart local v18    # "spaceLeft":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v19, v15, v3

    .line 1071
    .restart local v19    # "spaceRight":I
    sub-int v3, p5, p4

    div-int/lit8 v11, v3, 0x2

    .line 1072
    .restart local v11    # "halfHorizontalSpace":I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1073
    .restart local v14    # "offset":I
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1076
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1080
    .end local v11    # "halfHorizontalSpace":I
    .end local v14    # "offset":I
    .end local v18    # "spaceLeft":I
    .end local v19    # "spaceRight":I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/HorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    goto :goto_0

    .line 1058
    .end local v16    # "sel":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16    # "sel":Landroid/view/View;
    goto :goto_1

    .line 1083
    .end local v16    # "sel":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1088
    .local v5, "oldLeft":I
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1091
    .restart local v16    # "sel":Landroid/view/View;
    move/from16 v0, p4

    if-ge v5, v0, :cond_6

    .line 1094
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v13

    .line 1095
    .local v13, "newRight":I
    add-int/lit8 v3, p4, 0x14

    if-ge v13, v3, :cond_6

    .line 1097
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, p4, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1102
    .end local v13    # "newRight":I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/HorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 8
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .prologue
    const/16 v7, 0x42

    const/4 v4, -0x1

    .line 2469
    if-ne p3, v7, :cond_2

    .line 2470
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v2, v5, v6

    .line 2471
    .local v2, "listRight":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    if-gt v5, v2, :cond_0

    .line 2472
    if-eq p2, v4, :cond_1

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lt p2, v5, :cond_1

    add-int/lit8 v3, p2, 0x1

    .line 2490
    .end local v2    # "listRight":I
    .local v3, "nextSelected":I
    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v3, v5, :cond_4

    .line 2493
    .end local v3    # "nextSelected":I
    :cond_0
    :goto_1
    return v4

    .line 2472
    .restart local v2    # "listRight":I
    :cond_1
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_0

    .line 2479
    .end local v2    # "listRight":I
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 2480
    .local v1, "listLeft":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v5, v1, :cond_0

    .line 2481
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x1

    .line 2482
    .local v0, "lastPos":I
    if-eq p2, v4, :cond_3

    if-gt p2, v0, :cond_3

    add-int/lit8 v3, p2, -0x1

    .line 2485
    .restart local v3    # "nextSelected":I
    :goto_2
    goto :goto_0

    .end local v3    # "nextSelected":I
    :cond_3
    move v3, v0

    .line 2482
    goto :goto_2

    .line 2493
    .end local v0    # "lastPos":I
    .end local v1    # "listLeft":I
    .restart local v3    # "nextSelected":I
    :cond_4
    if-ne p3, v7, :cond_5

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {p0, v3, v4}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v4

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .param p1, "newFocus"    # Landroid/view/View;

    .prologue
    .line 2960
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 2961
    .local v2, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2962
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2963
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2964
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 2961
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2967
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2695
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2696
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2697
    .local v4, "h":I
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2698
    .local v1, "childLeft":I
    add-int v2, v1, v5

    .line 2699
    .local v2, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2700
    .local v3, "childTop":I
    add-int v0, v3, v4

    .line 2701
    .local v0, "childBottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2702
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/HorizontalListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 334
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 335
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalListView$FixedViewInfo;

    .line 336
    .local v1, "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 337
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 341
    .end local v1    # "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    :cond_0
    return-void

    .line 334
    .restart local v1    # "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .param p1, "amount"    # I

    .prologue
    const/4 v11, 0x0

    .line 3043
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->twOffsetChildrenLeftAndRight(I)V

    .line 3045
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v6, v9, v10

    .line 3046
    .local v6, "listRight":I
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v9, Landroid/graphics/Rect;->left:I

    .line 3047
    .local v5, "listLeft":I
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    .line 3049
    .local v8, "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    if-gez p1, :cond_3

    .line 3053
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 3054
    .local v7, "numChildren":I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3055
    .local v1, "last":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_0

    .line 3056
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 3057
    .local v3, "lastVisiblePosition":I
    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_0

    .line 3058
    invoke-direct {p0, v1, v3}, Landroid/widget/HorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3059
    add-int/lit8 v7, v7, 0x1

    .line 3063
    goto :goto_0

    .line 3068
    .end local v3    # "lastVisiblePosition":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_1

    .line 3069
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->twOffsetChildrenLeftAndRight(I)V

    .line 3073
    :cond_1
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3074
    .local v0, "first":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v5, :cond_7

    .line 3075
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 3076
    .local v4, "layoutParams":Landroid/widget/AbsHorizontalListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3077
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3079
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 3080
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3081
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_1

    .line 3085
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .end local v7    # "numChildren":I
    :cond_3
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3088
    .restart local v0    # "first":Landroid/view/View;
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_4

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 3089
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Landroid/widget/HorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3090
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_2

    .line 3095
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_5

    .line 3096
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->twOffsetChildrenLeftAndRight(I)V

    .line 3099
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3100
    .local v2, "lastIndex":I
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3103
    .restart local v1    # "last":Landroid/view/View;
    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v6, :cond_7

    .line 3104
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 3105
    .restart local v4    # "layoutParams":Landroid/widget/AbsHorizontalListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3106
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3108
    :cond_6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 3109
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3110
    goto :goto_3

    .line 3112
    .end local v2    # "lastIndex":I
    .end local v4    # "layoutParams":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_7
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "flowRightSide"    # Z
    .param p5, "childrenTop"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z

    .prologue
    .line 1827
    const-wide/16 v19, 0x8

    const-string/jumbo v21, "setupListItem"

    invoke-static/range {v19 .. v21}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1829
    if-eqz p6, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_9

    const/4 v11, 0x1

    .line 1830
    .local v11, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_a

    const/16 v17, 0x1

    .line 1831
    .local v17, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 1832
    .local v13, "mode":I
    if-lez v13, :cond_b

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    .line 1834
    .local v10, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_c

    const/16 v16, 0x1

    .line 1835
    .local v16, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_d

    :cond_0
    const/4 v14, 0x1

    .line 1839
    .local v14, "needToMeasure":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 1840
    .local v15, "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-nez v15, :cond_1

    .line 1841
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .end local v15    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    check-cast v15, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 1843
    .restart local v15    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    .line 1845
    if-eqz p7, :cond_2

    iget-boolean v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    :cond_2
    iget-boolean v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    iget v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 1847
    :cond_3
    if-eqz p4, :cond_e

    const/16 v19, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1856
    :goto_6
    if-eqz v17, :cond_4

    .line 1857
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 1860
    :cond_4
    if-eqz v16, :cond_5

    .line 1861
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 1864
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1865
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v19, p1

    .line 1866
    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1873
    :cond_6
    :goto_7
    if-eqz v14, :cond_14

    .line 1874
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHeightMeasureSpec:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1876
    .local v5, "childHeightSpec":I
    iget v12, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1878
    .local v12, "lpWidth":I
    if-lez v12, :cond_13

    .line 1879
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1883
    .local v8, "childWidthSpec":I
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 1888
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpWidth":I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 1889
    .local v18, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1890
    .local v9, "h":I
    if-eqz p4, :cond_15

    move/from16 v6, p3

    .line 1892
    .local v6, "childLeft":I
    :goto_a
    if-eqz v14, :cond_16

    .line 1893
    add-int v7, v6, v18

    .line 1894
    .local v7, "childRight":I
    add-int v4, p5, v9

    .line 1895
    .local v4, "childBottom":I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1, v7, v4}, Landroid/view/View;->layout(IIII)V

    .line 1901
    .end local v4    # "childBottom":I
    .end local v7    # "childRight":I
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-nez v19, :cond_7

    .line 1902
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1905
    :cond_7
    if-eqz p7, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/AbsHorizontalListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_8

    .line 1907
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1910
    :cond_8
    const-wide/16 v19, 0x8

    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 1911
    return-void

    .line 1829
    .end local v6    # "childLeft":I
    .end local v9    # "h":I
    .end local v10    # "isPressed":Z
    .end local v11    # "isSelected":Z
    .end local v13    # "mode":I
    .end local v14    # "needToMeasure":Z
    .end local v15    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .end local v16    # "updateChildPressed":Z
    .end local v17    # "updateChildSelected":Z
    .end local v18    # "w":I
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1830
    .restart local v11    # "isSelected":Z
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1832
    .restart local v13    # "mode":I
    .restart local v17    # "updateChildSelected":Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1834
    .restart local v10    # "isPressed":Z
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1835
    .restart local v16    # "updateChildPressed":Z
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1847
    .restart local v14    # "needToMeasure":Z
    .restart local v15    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 1849
    :cond_f
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->forceAdd:Z

    .line 1850
    iget v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 1851
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1853
    :cond_10
    if-eqz p4, :cond_11

    const/16 v19, -0x1

    :goto_c
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_11
    const/16 v19, 0x0

    goto :goto_c

    .line 1867
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 1869
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_7

    .line 1881
    .restart local v5    # "childHeightSpec":I
    .restart local v12    # "lpWidth":I
    :cond_13
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childWidthSpec":I
    goto/16 :goto_8

    .line 1885
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpWidth":I
    :cond_14
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_9

    .line 1890
    .restart local v9    # "h":I
    .restart local v18    # "w":I
    :cond_15
    sub-int v6, p3, v18

    goto/16 :goto_a

    .line 1897
    .restart local v6    # "childLeft":I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v6, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1898
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b
.end method

.method private showingLeftFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 550
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int v0, v2, v3

    .line 551
    .local v0, "listLeft":I
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private showingRightFadingEdge()Z
    .locals 6

    .prologue
    .line 558
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 559
    .local v0, "childCount":I
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 560
    .local v3, "rightOfRightChild":I
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, -0x1

    .line 562
    .local v1, "lastVisiblePosition":I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 564
    .local v2, "listRight":I
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_0

    if-ge v3, v2, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 395
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/HorizontalListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 396
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 360
    new-instance v0, Landroid/widget/HorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalListView$FixedViewInfo;-><init>(Landroid/widget/HorizontalListView;)V

    .line 361
    .local v0, "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 362
    iput-object p2, v0, Landroid/widget/HorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 363
    iput-boolean p3, v0, Landroid/widget/HorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 364
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    if-nez v1, :cond_0

    .line 369
    new-instance v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewHorizontalListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 374
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 375
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->onChanged()V

    .line 378
    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 302
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/HorizontalListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 303
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 267
    new-instance v0, Landroid/widget/HorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalListView$FixedViewInfo;-><init>(Landroid/widget/HorizontalListView;)V

    .line 268
    .local v0, "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 269
    iput-object p2, v0, Landroid/widget/HorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 270
    iput-boolean p3, v0, Landroid/widget/HorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 271
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    if-nez v1, :cond_0

    .line 276
    new-instance v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewHorizontalListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 281
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->onChanged()V

    .line 285
    :cond_1
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .locals 1

    .prologue
    .line 3506
    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .locals 1

    .prologue
    .line 3483
    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method arrowScroll(I)Z
    .locals 4
    .param p1, "direction"    # I

    .prologue
    const/4 v3, 0x0

    .line 2440
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2441
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->logActivity()V

    .line 2444
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2445
    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2446
    .local v0, "handled":Z
    if-eqz v0, :cond_1

    .line 2447
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2451
    :cond_1
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2449
    return v0

    .line 2451
    .end local v0    # "handled":Z
    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Landroid/widget/AdapterView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1915
    invoke-super {p0}, Landroid/widget/AdapterView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mCachingStarted:Z

    move/from16 v39, v0

    if-eqz v39, :cond_0

    .line 3224
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mCachingActive:Z

    .line 3228
    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .line 3229
    .local v9, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    .line 3230
    .local v33, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    .line 3231
    .local v32, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v33, :cond_d

    const/4 v12, 0x1

    .line 3232
    .local v12, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v32, :cond_e

    const/4 v11, 0x1

    .line 3233
    .local v11, "drawOverscrollFooter":Z
    :goto_1
    if-lez v9, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v39, v0

    if-eqz v39, :cond_f

    const/4 v10, 0x1

    .line 3235
    .local v10, "drawDividers":Z
    :goto_2
    if-nez v10, :cond_1

    if-nez v12, :cond_1

    if-eqz v11, :cond_17

    .line 3237
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 3238
    .local v6, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v39, v0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3239
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3241
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 3242
    .local v8, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 3243
    .local v19, "headerCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v26, v0

    .line 3244
    .local v26, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    sub-int v18, v26, v39

    .line 3245
    .local v18, "footerLimit":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalListView;->mHeaderDividersEnabled:Z

    move/from16 v20, v0

    .line 3246
    .local v20, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalListView;->mFooterDividersEnabled:Z

    move/from16 v17, v0

    .line 3247
    .local v17, "footerDividers":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v16, v0

    .line 3248
    .local v16, "first":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/HorizontalListView;->mAreAllItemsSelectable:Z

    .line 3249
    .local v5, "areAllItemsSelectable":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3254
    .local v4, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->isOpaque()Z

    move-result v39

    if-eqz v39, :cond_10

    invoke-super/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v39

    if-nez v39, :cond_10

    const/4 v15, 0x1

    .line 3256
    .local v15, "fillForMissingDividers":Z
    :goto_3
    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    if-nez v39, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalListView;->mIsCacheColorOpaque:Z

    move/from16 v39, v0

    if-eqz v39, :cond_2

    .line 3257
    new-instance v39, Landroid/graphics/Paint;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3258
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getCacheColorHint()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Landroid/graphics/Paint;->setColor(I)V

    .line 3260
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    .line 3262
    .local v34, "paint":Landroid/graphics/Paint;
    const/4 v13, 0x0

    .line 3263
    .local v13, "effectivePaddingLeft":I
    const/4 v14, 0x0

    .line 3264
    .local v14, "effectivePaddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v39, v0

    and-int/lit8 v39, v39, 0x22

    const/16 v40, 0x22

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_3

    .line 3265
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v13, v0, Landroid/graphics/Rect;->left:I

    .line 3266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v14, v0, Landroid/graphics/Rect;->right:I

    .line 3269
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    sub-int v39, v39, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v40, v0

    add-int v29, v39, v40

    .line 3270
    .local v29, "listRight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    move/from16 v39, v0

    if-nez v39, :cond_18

    .line 3271
    const/16 v36, 0x0

    .line 3274
    .local v36, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v37, v0

    .line 3275
    .local v37, "scrollX":I
    if-lez v8, :cond_4

    if-gez v37, :cond_4

    .line 3276
    if-eqz v12, :cond_11

    .line 3277
    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3278
    move/from16 v0, v37

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3279
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/HorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3287
    :cond_4
    :goto_4
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_5
    move/from16 v0, v21

    if-ge v0, v8, :cond_16

    .line 3288
    add-int v27, v16, v21

    .line 3289
    .local v27, "itemIndex":I
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    const/16 v24, 0x1

    .line 3290
    .local v24, "isHeader":Z
    :goto_6
    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_13

    const/16 v23, 0x1

    .line 3291
    .local v23, "isFooter":Z
    :goto_7
    if-nez v20, :cond_5

    if-nez v24, :cond_c

    :cond_5
    if-nez v17, :cond_6

    if-nez v23, :cond_c

    .line 3292
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3293
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v36

    .line 3294
    add-int/lit8 v39, v8, -0x1

    move/from16 v0, v21

    move/from16 v1, v39

    if-ne v0, v1, :cond_14

    const/16 v25, 0x1

    .line 3296
    .local v25, "isLastItem":Z
    :goto_8
    if-eqz v10, :cond_c

    move/from16 v0, v36

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    if-eqz v11, :cond_7

    if-nez v25, :cond_c

    .line 3298
    :cond_7
    add-int/lit8 v30, v27, 0x1

    .line 3301
    .local v30, "nextIndex":I
    if-nez v5, :cond_b

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-nez v39, :cond_9

    if-eqz v20, :cond_8

    if-nez v24, :cond_9

    :cond_8
    if-eqz v17, :cond_15

    if-eqz v23, :cond_15

    :cond_9
    if-nez v25, :cond_b

    move/from16 v0, v30

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-nez v39, :cond_b

    if-eqz v20, :cond_a

    move/from16 v0, v30

    move/from16 v1, v19

    if-lt v0, v1, :cond_b

    :cond_a
    if-eqz v17, :cond_15

    move/from16 v0, v30

    move/from16 v1, v18

    if-lt v0, v1, :cond_15

    .line 3307
    :cond_b
    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3308
    add-int v39, v36, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3309
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3287
    .end local v7    # "child":Landroid/view/View;
    .end local v25    # "isLastItem":Z
    .end local v30    # "nextIndex":I
    :cond_c
    :goto_9
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_5

    .line 3231
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v8    # "count":I
    .end local v10    # "drawDividers":Z
    .end local v11    # "drawOverscrollFooter":Z
    .end local v12    # "drawOverscrollHeader":Z
    .end local v13    # "effectivePaddingLeft":I
    .end local v14    # "effectivePaddingRight":I
    .end local v15    # "fillForMissingDividers":Z
    .end local v16    # "first":I
    .end local v17    # "footerDividers":Z
    .end local v18    # "footerLimit":I
    .end local v19    # "headerCount":I
    .end local v20    # "headerDividers":Z
    .end local v21    # "i":I
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v26    # "itemCount":I
    .end local v27    # "itemIndex":I
    .end local v29    # "listRight":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "right":I
    .end local v37    # "scrollX":I
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3232
    .restart local v12    # "drawOverscrollHeader":Z
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 3233
    .restart local v11    # "drawOverscrollFooter":Z
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 3254
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v6    # "bounds":Landroid/graphics/Rect;
    .restart local v8    # "count":I
    .restart local v10    # "drawDividers":Z
    .restart local v16    # "first":I
    .restart local v17    # "footerDividers":Z
    .restart local v18    # "footerLimit":I
    .restart local v19    # "headerCount":I
    .restart local v20    # "headerDividers":Z
    .restart local v26    # "itemCount":I
    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 3280
    .restart local v13    # "effectivePaddingLeft":I
    .restart local v14    # "effectivePaddingRight":I
    .restart local v15    # "fillForMissingDividers":Z
    .restart local v29    # "listRight":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    .restart local v36    # "right":I
    .restart local v37    # "scrollX":I
    :cond_11
    if-eqz v10, :cond_4

    .line 3281
    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3282
    neg-int v0, v9

    move/from16 v39, v0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3283
    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_4

    .line 3289
    .restart local v21    # "i":I
    .restart local v27    # "itemIndex":I
    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_6

    .line 3290
    .restart local v24    # "isHeader":Z
    :cond_13
    const/16 v23, 0x0

    goto/16 :goto_7

    .line 3294
    .restart local v7    # "child":Landroid/view/View;
    .restart local v23    # "isFooter":Z
    :cond_14
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 3310
    .restart local v25    # "isLastItem":Z
    .restart local v30    # "nextIndex":I
    :cond_15
    if-eqz v15, :cond_c

    .line 3311
    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3312
    add-int v39, v36, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3313
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_9

    .line 3319
    .end local v7    # "child":Landroid/view/View;
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v25    # "isLastItem":Z
    .end local v27    # "itemIndex":I
    .end local v30    # "nextIndex":I
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v40, v0

    add-int v31, v39, v40

    .line 3320
    .local v31, "overFooterRight":I
    if-eqz v11, :cond_17

    add-int v39, v16, v8

    move/from16 v0, v39

    move/from16 v1, v26

    if-ne v0, v1, :cond_17

    move/from16 v0, v31

    move/from16 v1, v36

    if-le v0, v1, :cond_17

    .line 3322
    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3323
    move/from16 v0, v31

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3324
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/HorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3388
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v8    # "count":I
    .end local v13    # "effectivePaddingLeft":I
    .end local v14    # "effectivePaddingRight":I
    .end local v15    # "fillForMissingDividers":Z
    .end local v16    # "first":I
    .end local v17    # "footerDividers":Z
    .end local v18    # "footerLimit":I
    .end local v19    # "headerCount":I
    .end local v20    # "headerDividers":Z
    .end local v21    # "i":I
    .end local v26    # "itemCount":I
    .end local v29    # "listRight":I
    .end local v31    # "overFooterRight":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "right":I
    .end local v37    # "scrollX":I
    :cond_17
    :goto_a
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsHorizontalListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3389
    return-void

    .line 3329
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v6    # "bounds":Landroid/graphics/Rect;
    .restart local v8    # "count":I
    .restart local v13    # "effectivePaddingLeft":I
    .restart local v14    # "effectivePaddingRight":I
    .restart local v15    # "fillForMissingDividers":Z
    .restart local v16    # "first":I
    .restart local v17    # "footerDividers":Z
    .restart local v18    # "footerLimit":I
    .restart local v19    # "headerCount":I
    .restart local v20    # "headerDividers":Z
    .restart local v26    # "itemCount":I
    .restart local v29    # "listRight":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v37, v0

    .line 3331
    .restart local v37    # "scrollX":I
    if-lez v8, :cond_19

    if-eqz v12, :cond_19

    .line 3332
    move/from16 v0, v37

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3333
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLeft()I

    move-result v39

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3334
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/HorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3337
    :cond_19
    if-eqz v12, :cond_21

    const/16 v38, 0x1

    .line 3338
    .local v38, "start":I
    :goto_b
    move/from16 v21, v38

    .restart local v21    # "i":I
    :goto_c
    move/from16 v0, v21

    if-ge v0, v8, :cond_26

    .line 3339
    add-int v27, v16, v21

    .line 3340
    .restart local v27    # "itemIndex":I
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_22

    const/16 v24, 0x1

    .line 3341
    .restart local v24    # "isHeader":Z
    :goto_d
    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_23

    const/16 v23, 0x1

    .line 3342
    .restart local v23    # "isFooter":Z
    :goto_e
    if-nez v20, :cond_1a

    if-nez v24, :cond_20

    :cond_1a
    if-nez v17, :cond_1b

    if-nez v23, :cond_20

    .line 3343
    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3344
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v28

    .line 3345
    .local v28, "left":I
    if-eqz v10, :cond_20

    move/from16 v0, v28

    if-le v0, v13, :cond_20

    .line 3346
    move/from16 v0, v21

    move/from16 v1, v38

    if-ne v0, v1, :cond_24

    const/16 v22, 0x1

    .line 3347
    .local v22, "isFirstItem":Z
    :goto_f
    add-int/lit8 v35, v27, -0x1

    .line 3350
    .local v35, "previousIndex":I
    if-nez v5, :cond_1f

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-nez v39, :cond_1d

    if-eqz v20, :cond_1c

    if-nez v24, :cond_1d

    :cond_1c
    if-eqz v17, :cond_25

    if-eqz v23, :cond_25

    :cond_1d
    if-nez v22, :cond_1f

    move/from16 v0, v35

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-nez v39, :cond_1f

    if-eqz v20, :cond_1e

    move/from16 v0, v35

    move/from16 v1, v19

    if-lt v0, v1, :cond_1f

    :cond_1e
    if-eqz v17, :cond_25

    move/from16 v0, v35

    move/from16 v1, v18

    if-lt v0, v1, :cond_25

    .line 3356
    :cond_1f
    sub-int v39, v28, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3357
    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3362
    add-int/lit8 v39, v21, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3338
    .end local v7    # "child":Landroid/view/View;
    .end local v22    # "isFirstItem":Z
    .end local v28    # "left":I
    .end local v35    # "previousIndex":I
    :cond_20
    :goto_10
    add-int/lit8 v21, v21, 0x1

    goto :goto_c

    .line 3337
    .end local v21    # "i":I
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v27    # "itemIndex":I
    .end local v38    # "start":I
    :cond_21
    const/16 v38, 0x0

    goto/16 :goto_b

    .line 3340
    .restart local v21    # "i":I
    .restart local v27    # "itemIndex":I
    .restart local v38    # "start":I
    :cond_22
    const/16 v24, 0x0

    goto :goto_d

    .line 3341
    .restart local v24    # "isHeader":Z
    :cond_23
    const/16 v23, 0x0

    goto :goto_e

    .line 3346
    .restart local v7    # "child":Landroid/view/View;
    .restart local v23    # "isFooter":Z
    .restart local v28    # "left":I
    :cond_24
    const/16 v22, 0x0

    goto :goto_f

    .line 3363
    .restart local v22    # "isFirstItem":Z
    .restart local v35    # "previousIndex":I
    :cond_25
    if-eqz v15, :cond_20

    .line 3364
    sub-int v39, v28, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3365
    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3366
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_10

    .line 3372
    .end local v7    # "child":Landroid/view/View;
    .end local v22    # "isFirstItem":Z
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v27    # "itemIndex":I
    .end local v28    # "left":I
    .end local v35    # "previousIndex":I
    :cond_26
    if-lez v8, :cond_17

    if-lez v37, :cond_17

    .line 3373
    if-eqz v11, :cond_27

    .line 3374
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    .line 3375
    .local v3, "absListRight":I
    iput v3, v6, Landroid/graphics/Rect;->left:I

    .line 3376
    add-int v39, v3, v37

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3377
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/HorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_a

    .line 3378
    .end local v3    # "absListRight":I
    :cond_27
    if-eqz v10, :cond_17

    .line 3379
    move/from16 v0, v29

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3380
    add-int v39, v29, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3381
    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_a
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2108
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2109
    .local v1, "handled":Z
    if-nez v1, :cond_0

    .line 2111
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2112
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2115
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/HorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2118
    .end local v0    # "focused":Landroid/view/View;
    :cond_0
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 3393
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3394
    .local v0, "more":Z
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mCachingActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_0

    .line 3395
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mCachingActive:Z

    .line 3397
    :cond_0
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 3411
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3413
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3414
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3415
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3205
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 3207
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3208
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3210
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 3211
    .local v0, "span":I
    if-ge v0, v1, :cond_0

    .line 3212
    iget v2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Rect;->right:I

    .line 3215
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3216
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3219
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3188
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 3190
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3191
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3193
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 3194
    .local v0, "span":I
    if-ge v0, v1, :cond_0

    .line 3195
    iget v2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Rect;->left:I

    .line 3198
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3199
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3202
    return-void
.end method

.method fillGap(Z)V
    .locals 6
    .param p1, "rightSide"    # Z

    .prologue
    const/16 v5, 0x22

    .line 653
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 654
    .local v0, "count":I
    if-eqz p1, :cond_2

    .line 655
    const/4 v1, 0x0

    .line 656
    .local v1, "paddingLeft":I
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_0

    .line 657
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getListPaddingLeft()I

    move-result v1

    .line 659
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 661
    .local v3, "startOffset":I
    :goto_0
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    .line 662
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/HorizontalListView;->correctTooHigh(I)V

    .line 673
    .end local v1    # "paddingLeft":I
    :goto_1
    return-void

    .end local v3    # "startOffset":I
    .restart local v1    # "paddingLeft":I
    :cond_1
    move v3, v1

    .line 659
    goto :goto_0

    .line 664
    .end local v1    # "paddingLeft":I
    :cond_2
    const/4 v2, 0x0

    .line 665
    .local v2, "paddingRight":I
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_3

    .line 666
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getListPaddingRight()I

    move-result v2

    .line 668
    :cond_3
    if-lez v0, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 670
    .restart local v3    # "startOffset":I
    :goto_2
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 671
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/HorizontalListView;->correctTooLow(I)V

    goto :goto_1

    .line 668
    .end local v3    # "startOffset":I
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v3, v4, v2

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 1314
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1315
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 1316
    iget-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1317
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1318
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1319
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1320
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1332
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return v3

    .line 1317
    .restart local v1    # "i":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1324
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 1325
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1326
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1327
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1324
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1332
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p3, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3739
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/HorizontalListView$FixedViewInfo;>;"
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_1

    .line 3740
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3743
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3744
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3746
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3747
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3749
    if-eqz v2, :cond_0

    .line 3755
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 3743
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3755
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3717
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3718
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3719
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/HorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3720
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3729
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .line 3724
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/HorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3725
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3726
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3729
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3644
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/HorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3645
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3648
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3649
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3651
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3652
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3654
    if-eqz v2, :cond_0

    .line 3660
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 3648
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3660
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 3625
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3626
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3627
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/HorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3628
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3636
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .line 3631
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/HorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3632
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3633
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3636
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3690
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/HorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3691
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3694
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3695
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3697
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3698
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3700
    if-eqz v2, :cond_0

    .line 3706
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 3694
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3706
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 3670
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3671
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3672
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/HorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3673
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3682
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .line 3677
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/HorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3678
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3679
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3682
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2352
    const/4 v1, 0x0

    .line 2353
    .local v1, "moved":Z
    const/16 v3, 0x11

    if-ne p1, v3, :cond_3

    .line 2354
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eqz v3, :cond_1

    .line 2355
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/HorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2356
    .local v2, "position":I
    if-ltz v2, :cond_0

    .line 2357
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 2358
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->setSelectionInt(I)V

    .line 2359
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 2361
    :cond_0
    const/4 v1, 0x1

    .line 2377
    .end local v2    # "position":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2378
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 2379
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2382
    :cond_2
    return v1

    .line 2363
    :cond_3
    const/16 v3, 0x42

    if-ne p1, v3, :cond_1

    .line 2364
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v0, v3, -0x1

    .line 2365
    .local v0, "lastItem":I
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ge v3, v0, :cond_1

    .line 2366
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v0, v4}, Landroid/widget/HorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2368
    .restart local v2    # "position":I
    if-ltz v2, :cond_4

    .line 2369
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 2370
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->setSelectionInt(I)V

    .line 2371
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 2373
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3770
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3771
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 3800
    :cond_0
    :goto_0
    return-object v5

    .line 3776
    :cond_1
    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 3777
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3778
    .local v7, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3779
    .local v3, "count":I
    new-array v5, v3, [J

    .line 3780
    .local v5, "ids":[J
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3782
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3783
    .local v1, "checkedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v2, v1

    .end local v1    # "checkedCount":I
    .local v2, "checkedCount":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 3784
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3785
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3783
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "checkedCount":I
    .restart local v2    # "checkedCount":I
    goto :goto_1

    .line 3791
    :cond_2
    if-eq v2, v3, :cond_0

    .line 3794
    new-array v6, v2, [J

    .line 3795
    .local v6, "result":[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    .line 3797
    goto :goto_0

    .line 3800
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "checkedCount":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    .end local v6    # "result":[J
    .end local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v5, v10, [J

    goto :goto_0

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "checkedCount":I
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "ids":[J
    .restart local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    goto :goto_2
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3423
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3448
    iget v0, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3150
    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 200
    const v0, 0x3ea8f5c3    # 0.33f

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3545
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3526
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 3155
    iget-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mCachingActive:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/HorizontalListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/HorizontalListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const/4 v4, 0x1

    .line 3157
    .local v4, "retValue":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 3159
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 3160
    .local v2, "listLeft":I
    :goto_1
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3161
    .local v0, "first":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v2, :cond_6

    :cond_2
    move v4, v6

    .line 3171
    .end local v0    # "first":Landroid/view/View;
    .end local v2    # "listLeft":I
    .end local v4    # "retValue":Z
    :cond_3
    :goto_2
    return v4

    :cond_4
    move v4, v6

    .line 3155
    goto :goto_0

    .line 3159
    .restart local v4    # "retValue":Z
    :cond_5
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    goto :goto_1

    .line 3164
    .restart local v0    # "first":Landroid/view/View;
    .restart local v2    # "listLeft":I
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    :goto_3
    sub-int v3, v7, v5

    .line 3166
    .local v3, "listRight":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3167
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v5, v3, :cond_3

    :cond_7
    move v4, v6

    .line 3168
    goto :goto_2

    .line 3164
    .end local v1    # "last":Landroid/view/View;
    .end local v3    # "listRight":I
    :cond_8
    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_3
.end method

.method protected layoutChildren()V
    .locals 28

    .prologue
    .line 1491
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1492
    .local v10, "blockLayoutRequests":Z
    if-eqz v10, :cond_1

    .line 1740
    :cond_0
    :goto_0
    return-void

    .line 1496
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1499
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    .line 1501
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1503
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_2

    .line 1504
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->resetList()V

    .line 1505
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1736
    if-nez v10, :cond_0

    .line 1737
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 1509
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 1510
    .local v6, "childrenLeft":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v26, v0

    sub-int v2, v2, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v7, v2, v26

    .line 1511
    .local v7, "childrenRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    .line 1513
    .local v12, "childCount":I
    const/16 v18, 0x0

    .line 1514
    .local v18, "index":I
    const/4 v5, 0x0

    .line 1517
    .local v5, "delta":I
    const/4 v3, 0x0

    .line 1518
    .local v3, "oldSel":Landroid/view/View;
    const/16 v20, 0x0

    .line 1519
    .local v20, "oldFirst":Landroid/view/View;
    const/4 v4, 0x0

    .line 1522
    .local v4, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    .line 1537
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v18, v2, v26

    .line 1538
    if-ltz v18, :cond_3

    move/from16 v0, v18

    if-ge v0, v12, :cond_3

    .line 1539
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1543
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1545
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v2, :cond_4

    .line 1546
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v26, v0

    sub-int v5, v2, v26

    .line 1550
    :cond_4
    add-int v2, v18, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1554
    :cond_5
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1555
    .local v13, "dataChanged":Z
    if-eqz v13, :cond_6

    .line 1556
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->handleDataChanged()V

    .line 1561
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v2, :cond_7

    .line 1562
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->resetList()V

    .line 1563
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 1736
    if-nez v10, :cond_0

    goto/16 :goto_1

    .line 1524
    .end local v13    # "dataChanged":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v18, v2, v26

    .line 1525
    if-ltz v18, :cond_5

    move/from16 v0, v18

    if-ge v0, v12, :cond_5

    .line 1526
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_2

    .line 1565
    .restart local v13    # "dataChanged":Z
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    move/from16 v0, v26

    if-eq v2, v0, :cond_9

    .line 1566
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ") with Adapter("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ")]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1736
    .end local v3    # "oldSel":Landroid/view/View;
    .end local v4    # "newSel":Landroid/view/View;
    .end local v5    # "delta":I
    .end local v6    # "childrenLeft":I
    .end local v7    # "childrenRight":I
    .end local v12    # "childCount":I
    .end local v13    # "dataChanged":Z
    .end local v18    # "index":I
    .end local v20    # "oldFirst":Landroid/view/View;
    :catchall_0
    move-exception v2

    if-nez v10, :cond_8

    .line 1737
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1736
    :cond_8
    throw v2

    .line 1574
    .restart local v3    # "oldSel":Landroid/view/View;
    .restart local v4    # "newSel":Landroid/view/View;
    .restart local v5    # "delta":I
    .restart local v6    # "childrenLeft":I
    .restart local v7    # "childrenRight":I
    .restart local v12    # "childCount":I
    .restart local v13    # "dataChanged":Z
    .restart local v18    # "index":I
    .restart local v20    # "oldFirst":Landroid/view/View;
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 1578
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getAccessibilityFocusedChild()Landroid/view/View;

    move-result-object v8

    .line 1579
    .local v8, "accessFocusedChild":Landroid/view/View;
    if-eqz v8, :cond_b

    .line 1580
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v9

    .line 1581
    .local v9, "accessibilityFocusPosition":I
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1589
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v16

    .line 1590
    .local v16, "focusedChild":Landroid/view/View;
    if-eqz v16, :cond_a

    .line 1591
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1596
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1597
    .local v14, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    move-object/from16 v22, v0

    .line 1598
    .local v22, "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    if-eqz v13, :cond_c

    .line 1599
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    move/from16 v0, v17

    if-ge v0, v12, :cond_d

    .line 1600
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v26, v14, v17

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1599
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 1583
    .end local v9    # "accessibilityFocusPosition":I
    .end local v14    # "firstPosition":I
    .end local v16    # "focusedChild":Landroid/view/View;
    .end local v17    # "i":I
    .end local v22    # "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    :cond_b
    const/4 v9, -0x1

    .restart local v9    # "accessibilityFocusPosition":I
    goto :goto_3

    .line 1603
    .restart local v14    # "firstPosition":I
    .restart local v16    # "focusedChild":Landroid/view/View;
    .restart local v22    # "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    :cond_c
    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v14}, Landroid/widget/AbsHorizontalListView$RecycleBin;->fillActiveViews(II)V

    .line 1607
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 1608
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsHorizontalListView$RecycleBin;->removeSkippedScrap()V

    .line 1610
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    .line 1637
    if-nez v12, :cond_15

    .line 1638
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    if-nez v2, :cond_14

    .line 1639
    const/4 v2, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1640
    .local v21, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 1641
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/HorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v24

    .line 1662
    .end local v6    # "childrenLeft":I
    .end local v21    # "position":I
    .local v24, "sel":Landroid/view/View;
    :goto_5
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsHorizontalListView$RecycleBin;->scrapActiveViews()V

    .line 1664
    if-eqz v24, :cond_1f

    .line 1665
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    if-eqz v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/16 v25, 0x1

    .line 1666
    .local v25, "shouldPlaceFocus":Z
    :goto_6
    if-eqz v16, :cond_1b

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/16 v19, 0x1

    .line 1667
    .local v19, "maintainedFocus":Z
    :goto_7
    if-eqz v25, :cond_1e

    if-nez v19, :cond_1e

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1668
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1670
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1671
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1683
    :goto_8
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    .line 1698
    .end local v19    # "maintainedFocus":Z
    .end local v25    # "shouldPlaceFocus":Z
    :cond_e
    :goto_9
    if-eqz v8, :cond_f

    .line 1699
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1703
    invoke-virtual {v8}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, -0x1

    if-eq v9, v2, :cond_f

    .line 1706
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v2, v9, v2

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v21

    .line 1708
    .restart local v21    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 1709
    .local v23, "restoreView":Landroid/view/View;
    if-eqz v23, :cond_f

    .line 1710
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 1715
    .end local v21    # "position":I
    .end local v23    # "restoreView":Landroid/view/View;
    :cond_f
    if-eqz v16, :cond_10

    .line 1716
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1719
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 1720
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1721
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_11

    .line 1722
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1723
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/AbsHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1725
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1726
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1728
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->updateScrollIndicators()V

    .line 1730
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v2, :cond_12

    .line 1731
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 1734
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 1736
    if-nez v10, :cond_0

    goto/16 :goto_1

    .line 1612
    .end local v24    # "sel":Landroid/view/View;
    .restart local v6    # "childrenLeft":I
    :pswitch_2
    if-eqz v4, :cond_13

    .line 1613
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Landroid/widget/HorizontalListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_5

    .line 1615
    .end local v24    # "sel":Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/widget/HorizontalListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v24

    .line 1617
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_5

    .line 1619
    .end local v24    # "sel":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v2, v1}, Landroid/widget/HorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .line 1620
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_5

    .line 1622
    .end local v24    # "sel":Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v24

    .line 1623
    .restart local v24    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    goto/16 :goto_5

    .line 1626
    .end local v24    # "sel":Landroid/view/View;
    :pswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1627
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/HorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v24

    .line 1628
    .restart local v24    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    goto/16 :goto_5

    .line 1631
    .end local v24    # "sel":Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v2, v1}, Landroid/widget/HorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .line 1632
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_5

    .end local v24    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v2, p0

    .line 1634
    invoke-direct/range {v2 .. v7}, Landroid/widget/HorizontalListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v24

    .line 1635
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_5

    .line 1643
    .end local v24    # "sel":Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1644
    .restart local v21    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 1645
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v24

    .line 1646
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_5

    .line 1648
    .end local v21    # "position":I
    .end local v24    # "sel":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v2, v0, :cond_17

    .line 1649
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-nez v3, :cond_16

    .end local v6    # "childrenLeft":I
    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/HorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_5

    .end local v24    # "sel":Landroid/view/View;
    .restart local v6    # "childrenLeft":I
    :cond_16
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    goto :goto_a

    .line 1651
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v2, v0, :cond_19

    .line 1652
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v20, :cond_18

    .end local v6    # "childrenLeft":I
    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/HorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_5

    .end local v24    # "sel":Landroid/view/View;
    .restart local v6    # "childrenLeft":I
    :cond_18
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v6

    goto :goto_b

    .line 1655
    :cond_19
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/HorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_5

    .line 1665
    .end local v6    # "childrenLeft":I
    :cond_1a
    const/16 v25, 0x0

    goto/16 :goto_6

    .line 1666
    .restart local v25    # "shouldPlaceFocus":Z
    :cond_1b
    const/16 v19, 0x0

    goto/16 :goto_7

    .line 1674
    .restart local v19    # "maintainedFocus":Z
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v15

    .line 1675
    .local v15, "focused":Landroid/view/View;
    if-eqz v15, :cond_1d

    .line 1676
    invoke-virtual {v15}, Landroid/view/View;->clearFocus()V

    .line 1678
    :cond_1d
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_8

    .line 1681
    .end local v15    # "focused":Landroid/view/View;
    :cond_1e
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_8

    .line 1687
    .end local v19    # "maintainedFocus":Z
    .end local v25    # "shouldPlaceFocus":Z
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v2, v0, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v2, v0, :cond_21

    .line 1688
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v2, v2, v26

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1689
    .local v11, "child":Landroid/view/View;
    if-eqz v11, :cond_e

    .line 1690
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 1693
    .end local v11    # "child":Landroid/view/View;
    :cond_21
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    .line 1694
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_9

    .line 1522
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1610
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v2, -0x1

    .line 2010
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2011
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2034
    :cond_0
    :goto_0
    return v2

    .line 2015
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2016
    .local v1, "count":I
    iget-boolean v3, p0, Landroid/widget/HorizontalListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_3

    .line 2017
    if-eqz p2, :cond_2

    .line 2018
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2019
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2020
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2023
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2024
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2025
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2030
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2034
    goto :goto_0
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .locals 6
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .prologue
    const/4 v3, -0x1

    .line 2050
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2051
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v3

    .line 2082
    :cond_1
    :goto_0
    return v1

    .line 2056
    :cond_2
    invoke-virtual {p0, p2, p3}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2057
    .local v1, "after":I
    if-ne v1, v3, :cond_1

    .line 2062
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2063
    .local v2, "count":I
    add-int/lit8 v4, v2, -0x1

    invoke-static {p1, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 2064
    if-eqz p3, :cond_4

    .line 2065
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2066
    :goto_1
    if-le p2, p1, :cond_3

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2067
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 2069
    :cond_3
    if-gt p2, p1, :cond_6

    move v1, v3

    .line 2070
    goto :goto_0

    .line 2073
    :cond_4
    const/4 v4, 0x0

    add-int/lit8 v5, p2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2074
    :goto_2
    if-ge p2, p1, :cond_5

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2075
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 2077
    :cond_5
    if-lt p2, p1, :cond_6

    move v1, v3

    .line 2078
    goto :goto_0

    :cond_6
    move v1, p2

    .line 2082
    goto :goto_0
.end method

.method final measureWidthOfChildren(IIIII)I
    .locals 12
    .param p1, "heightMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxWidth"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 1253
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1254
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 1255
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v6, v10, v11

    .line 1309
    :cond_0
    :goto_0
    return v6

    .line 1259
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v9, v10, v11

    .line 1260
    .local v9, "returnedWidth":I
    iget v10, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Landroid/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .line 1263
    .local v3, "dividerHeight":I
    :goto_1
    const/4 v6, 0x0

    .line 1268
    .local v6, "prevWidthWithoutPartialChild":I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1269
    :cond_2
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    .line 1270
    .local v7, "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->recycleOnMeasure()Z

    move-result v8

    .line 1271
    .local v8, "recyle":Z
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mIsScrap:[Z

    .line 1273
    .local v5, "isScrap":[Z
    move v4, p2

    .local v4, "i":I
    :goto_2
    if-gt v4, p3, :cond_9

    .line 1274
    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1276
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Landroid/widget/HorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1278
    if-lez v4, :cond_3

    .line 1280
    add-int/2addr v9, v3

    .line 1284
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsHorizontalListView$LayoutParams;

    iget v10, v10, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1286
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1289
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    .line 1291
    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    .line 1294
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto :goto_0

    .line 1260
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "dividerHeight":I
    .end local v4    # "i":I
    .end local v5    # "isScrap":[Z
    .end local v6    # "prevWidthWithoutPartialChild":I
    .end local v7    # "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    .end local v8    # "recyle":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1302
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "dividerHeight":I
    .restart local v4    # "i":I
    .restart local v5    # "isScrap":[Z
    .restart local v6    # "prevWidthWithoutPartialChild":I
    .restart local v7    # "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    .restart local v8    # "recyle":Z
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    .line 1303
    move v6, v9

    .line 1273
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2    # "child":Landroid/view/View;
    :cond_9
    move v6, v9

    .line 1309
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3607
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 3609
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3610
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 3611
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3612
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->addHeaderView(Landroid/view/View;)V

    .line 3611
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3614
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->removeAllViews()V

    .line 3616
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 15
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3550
    invoke-super/range {p0 .. p3}, Landroid/widget/AbsHorizontalListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3552
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3553
    .local v2, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    .line 3554
    .local v5, "closetChildIndex":I
    const/4 v4, 0x0

    .line 3555
    .local v4, "closestChildLeft":I
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 3556
    iget v12, p0, Landroid/view/View;->mScrollX:I

    iget v13, p0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 3560
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    iget v14, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    .line 3561
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 3562
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->layoutChildren()V

    .line 3567
    :cond_0
    iget-object v11, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 3568
    .local v11, "otherRect":Landroid/graphics/Rect;
    const v9, 0x7fffffff

    .line 3569
    .local v9, "minDistance":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 3570
    .local v3, "childCount":I
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3572
    .local v7, "firstPosition":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 3574
    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 3572
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3578
    :cond_2
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3579
    .local v10, "other":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3580
    invoke-virtual {p0, v10, v11}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3581
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Landroid/widget/HorizontalListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 3583
    .local v6, "distance":I
    if-ge v6, v9, :cond_1

    .line 3584
    move v9, v6

    .line 3585
    move v5, v8

    .line 3586
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v4

    goto :goto_1

    .line 3591
    .end local v3    # "childCount":I
    .end local v6    # "distance":I
    .end local v7    # "firstPosition":I
    .end local v8    # "i":I
    .end local v9    # "minDistance":I
    .end local v10    # "other":Landroid/view/View;
    .end local v11    # "otherRect":Landroid/graphics/Rect;
    :cond_3
    if-ltz v5, :cond_4

    .line 3592
    iget v12, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Landroid/widget/HorizontalListView;->setSelectionFromTop(II)V

    .line 3596
    :goto_2
    return-void

    .line 3594
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3805
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3806
    const-class v0, Landroid/widget/HorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 3807
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 3811
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3812
    const-class v2, Landroid/widget/HorizontalListView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3814
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    .line 3815
    .local v1, "count":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 3816
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 3817
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3902
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsHorizontalListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3904
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 3905
    .local v2, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-eqz v2, :cond_0

    iget v5, v2, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_0

    move v0, v3

    .line 3906
    .local v0, "isHeading":Z
    :goto_0
    invoke-static {v4, v3, p2, v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v1

    .line 3907
    .local v1, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 3908
    return-void

    .end local v0    # "isHeading":Z
    .end local v1    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    :cond_0
    move v0, v4

    .line 3905
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2123
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/HorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2128
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2133
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/HorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1144
    invoke-super {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->onMeasure(II)V

    .line 1146
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1147
    .local v12, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1148
    .local v10, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1149
    .local v4, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 1151
    .local v11, "heightSize":I
    const/4 v9, 0x0

    .line 1152
    .local v9, "childWidth":I
    const/4 v7, 0x0

    .line 1153
    .local v7, "childHeight":I
    const/4 v8, 0x0

    .line 1155
    .local v8, "childState":I
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1156
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v12, :cond_0

    if-nez v10, :cond_1

    .line 1158
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/AbsHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1160
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6, v2, p2}, Landroid/widget/HorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1162
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1163
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1164
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Landroid/widget/HorizontalListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1166
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    iget v0, v0, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1168
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1172
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    if-nez v10, :cond_5

    .line 1173
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getHorizontalScrollbarHeight()I

    move-result v1

    add-int v11, v0, v1

    .line 1179
    :goto_1
    if-nez v12, :cond_2

    .line 1180
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1184
    :cond_2
    const/high16 v0, -0x80000000

    if-ne v12, v0, :cond_3

    move-object v0, p0

    move v1, p2

    move v5, v3

    .line 1186
    invoke-virtual/range {v0 .. v5}, Landroid/widget/HorizontalListView;->measureWidthOfChildren(IIIII)I

    move-result v4

    .line 1189
    :cond_3
    invoke-virtual {p0, v4, v11}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1190
    iput p2, p0, Landroid/widget/AbsHorizontalListView;->mHeightMeasureSpec:I

    .line 1191
    return-void

    .line 1155
    :cond_4
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 1176
    :cond_5
    const/high16 v0, -0x1000000

    and-int/2addr v0, v8

    or-int/2addr v11, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1125
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1126
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1127
    .local v2, "focusedChild":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1128
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v0, v5, v6

    .line 1129
    .local v0, "childPosition":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1130
    .local v1, "childRight":I
    const/4 v5, 0x0

    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v6, p1, v6

    sub-int v6, v1, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1131
    .local v4, "offset":I
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v3, v5, v4

    .line 1132
    .local v3, "left":I
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mFocusSelector:Landroid/widget/HorizontalListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1133
    new-instance v5, Landroid/widget/HorizontalListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/HorizontalListView$FocusSelector;-><init>(Landroid/widget/HorizontalListView;Landroid/widget/HorizontalListView$1;)V

    iput-object v5, p0, Landroid/widget/HorizontalListView;->mFocusSelector:Landroid/widget/HorizontalListView$FocusSelector;

    .line 1135
    :cond_0
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mFocusSelector:Landroid/widget/HorizontalListView$FocusSelector;

    invoke-virtual {v5, v0, v3}, Landroid/widget/HorizontalListView$FocusSelector;->setup(II)Landroid/widget/HorizontalListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1138
    .end local v0    # "childPosition":I
    .end local v1    # "childRight":I
    .end local v2    # "focusedChild":Landroid/view/View;
    .end local v3    # "left":I
    .end local v4    # "offset":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsHorizontalListView;->onSizeChanged(IIII)V

    .line 1139
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 3892
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->onWindowFocusChanged(Z)V

    .line 3893
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3894
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->logActivity()V

    .line 3896
    :cond_0
    return-void
.end method

.method pageScroll(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2300
    const-string v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2301
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->logActivity()V

    .line 2306
    :cond_0
    const/16 v5, 0x11

    if-ne p1, v5, :cond_5

    .line 2307
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2308
    .local v0, "nextPage":I
    const/4 v2, 0x0

    .line 2316
    .local v2, "rightSide":Z
    :goto_0
    if-ltz v0, :cond_4

    .line 2317
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v5, v0, v2}, Landroid/widget/HorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    .line 2318
    .local v1, "position":I
    if-ltz v1, :cond_4

    .line 2319
    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 2320
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2322
    if-eqz v2, :cond_1

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v3, v5

    if-le v1, v3, :cond_1

    .line 2323
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 2326
    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2327
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 2330
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->setSelectionInt(I)V

    .line 2331
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 2332
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2333
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    move v3, v4

    .line 2340
    .end local v0    # "nextPage":I
    .end local v1    # "position":I
    .end local v2    # "rightSide":Z
    :cond_4
    return v3

    .line 2309
    :cond_5
    const/16 v5, 0x42

    if-ne p1, v5, :cond_4

    .line 2310
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2311
    .restart local v0    # "nextPage":I
    const/4 v2, 0x1

    .restart local v2    # "rightSide":Z
    goto :goto_0
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1221
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 411
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewHorizontalListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->onChanged()V

    .line 417
    :cond_0
    const/4 v0, 0x1

    .line 419
    :cond_1
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/HorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 422
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 318
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewHorizontalListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->onChanged()V

    .line 324
    :cond_0
    const/4 v0, 0x1

    .line 326
    :cond_1
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/HorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 329
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 572
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 575
    .local v8, "rectLeftWithinChild":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 576
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 578
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 579
    .local v12, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    .line 580
    .local v6, "listUnfadedLeft":I
    add-int v7, v6, v12

    .line 581
    .local v7, "listUnfadedRight":I
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v4

    .line 583
    .local v4, "fadingEdge":I
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->showingLeftFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 585
    iget v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v8, v4, :cond_1

    .line 586
    :cond_0
    add-int/2addr v6, v4

    .line 590
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 591
    .local v1, "childCount":I
    add-int/lit8 v13, v1, -0x1

    invoke-virtual {p0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v9

    .line 593
    .local v9, "rightOfRightChild":I
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->showingRightFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 595
    iget v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v14, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int v14, v9, v4

    if-ge v13, v14, :cond_3

    .line 597
    :cond_2
    sub-int/2addr v7, v4

    .line 601
    :cond_3
    const/4 v11, 0x0

    .line 603
    .local v11, "scrollXDelta":I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    if-le v13, v6, :cond_7

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v13, v12, :cond_6

    .line 610
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v6

    add-int/2addr v11, v13

    .line 617
    :goto_0
    sub-int v3, v9, v7

    .line 618
    .local v3, "distanceToRight":I
    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 638
    .end local v3    # "distanceToRight":I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    .line 639
    .local v10, "scroll":Z
    :goto_2
    if-eqz v10, :cond_5

    .line 640
    neg-int v13, v11

    invoke-direct {p0, v13}, Landroid/widget/HorizontalListView;->scrollListItemsBy(I)V

    .line 641
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 642
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    iput v13, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    .line 643
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 645
    :cond_5
    return v10

    .line 613
    .end local v10    # "scroll":Z
    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_0

    .line 619
    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    if-ge v13, v6, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-ge v13, v7, :cond_4

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v13, v12, :cond_8

    .line 626
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 633
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 634
    .local v5, "left":I
    sub-int v2, v5, v6

    .line 635
    .local v2, "deltaToLeft":I
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 629
    .end local v2    # "deltaToLeft":I
    .end local v5    # "left":I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int v13, v6, v13

    sub-int/2addr v11, v13

    goto :goto_3

    .line 638
    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 525
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 527
    invoke-super {p0}, Landroid/widget/AbsHorizontalListView;->resetList()V

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 530
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 80
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 464
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 468
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resetList()V

    .line 469
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->clear()V

    .line 471
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 472
    :cond_1
    new-instance v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/HeaderViewHorizontalListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 477
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 478
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 481
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 483
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    .line 484
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/HorizontalListView;->mAreAllItemsSelectable:Z

    .line 485
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 486
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 487
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 489
    new-instance v1, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    .line 490
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 492
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsHorizontalListView$RecycleBin;->setViewTypeCount(I)V

    .line 495
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    .line 496
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 500
    .local v0, "position":I
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 501
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 503
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v1, :cond_2

    .line 505
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 514
    .end local v0    # "position":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    .line 515
    return-void

    .line 474
    :cond_3
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 498
    :cond_4
    invoke-virtual {p0, v4, v5}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_1

    .line 508
    .end local v0    # "position":I
    :cond_5
    iput-boolean v5, p0, Landroid/widget/HorizontalListView;->mAreAllItemsSelectable:Z

    .line 509
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 511
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 3176
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 3177
    .local v0, "opaque":Z
    :goto_0
    iput-boolean v0, p0, Landroid/widget/HorizontalListView;->mIsCacheColorOpaque:Z

    .line 3178
    if-eqz v0, :cond_1

    .line 3179
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 3180
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3182
    :cond_0
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3184
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->setCacheColorHint(I)V

    .line 3185
    return-void

    .line 3176
    .end local v0    # "opaque":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 3433
    if-eqz p1, :cond_2

    .line 3434
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .line 3438
    :goto_0
    iput-object p1, p0, Landroid/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3439
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Landroid/widget/HorizontalListView;->mDividerIsOpaque:Z

    .line 3440
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    .line 3441
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3442
    return-void

    .line 3436
    :cond_2
    iput v0, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 3458
    iput p1, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .line 3459
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    .line 3460
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3461
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    .prologue
    .line 3496
    iput-boolean p1, p0, Landroid/widget/HorizontalListView;->mFooterDividersEnabled:Z

    .line 3497
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3498
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z

    .prologue
    .line 3473
    iput-boolean p1, p0, Landroid/widget/HorizontalListView;->mHeaderDividersEnabled:Z

    .line 3474
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3475
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .param p1, "itemsCanFocus"    # Z

    .prologue
    .line 3139
    iput-boolean p1, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    .line 3140
    if-nez p1, :cond_0

    .line 3141
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 3143
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3537
    iput-object p1, p0, Landroid/widget/HorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3538
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3539
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3516
    iput-object p1, p0, Landroid/widget/HorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3517
    iget v0, p0, Landroid/view/View;->mScrollX:I

    if-gez v0, :cond_0

    .line 3518
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3520
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 446
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 447
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1927
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalListView;->setSelectionFromTop(II)V

    .line 1928
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 2090
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2091
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 2092
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 2103
    :goto_0
    return-void

    .line 2096
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2097
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->setSelection(I)V

    goto :goto_0

    .line 2099
    :cond_1
    iput v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 2100
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "x"    # I

    .prologue
    .line 1940
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 1967
    :cond_0
    :goto_0
    return-void

    .line 1944
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1945
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 1946
    if-ltz p1, :cond_2

    .line 1947
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1953
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 1954
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 1955
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1957
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 1958
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1959
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1962
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v0, :cond_4

    .line 1963
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 1965
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    goto :goto_0

    .line 1950
    :cond_5
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1976
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1977
    const/4 v0, 0x0

    .line 1979
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1981
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_0

    .line 1982
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    .line 1983
    const/4 v0, 0x1

    .line 1989
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v2, :cond_1

    .line 1990
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 1993
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->layoutChildren()V

    .line 1995
    if-eqz v0, :cond_2

    .line 1996
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 1998
    :cond_2
    return-void

    .line 1984
    :cond_3
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 1985
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 937
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->smoothScrollByOffset(I)V

    .line 938
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 927
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->smoothScrollToPosition(I)V

    .line 928
    return-void
.end method
